#version 330 core

struct Material {
  vec3 ambient;
  vec3 diffuse;
  vec3 specular;
  float shininess;
};

struct Light {
  vec3 position;
  vec3 ambient;
  vec3 diffuse;
  vec3 specular;
};

in vec3 frag_nor;
in vec3 frag_pos;

out vec4 out_color;

uniform vec3 cam_pos;

uniform Material material;
uniform Light light;

void main() {
  // Ambient
  vec3 ambient = light.ambient * material.ambient;
  // Diffuse
  vec3 norm = normalize(frag_nor);
  vec3 lightDir = normalize(light.position - frag_pos);
  float diff = max(dot(norm, lightDir), 0.0);
  vec3 diffuse = light.diffuse * (diff * material.diffuse);
  // Specular
  vec3 viewDir = normalize(cam_pos - frag_pos);
  vec3 reflectDir = reflect(-lightDir, norm);
  float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
  vec3 specular = light.specular * (spec * material.specular);  
  // Final
  out_color = vec4((ambient + diffuse + specular), 1.0);
}
