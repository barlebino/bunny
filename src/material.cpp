#include "material.hpp"

#include <glm/gtc/type_ptr.hpp>
#include <glm/gtc/matrix_transform.hpp>

Material emerald = {
  glm::vec3(0.0215f, 0.1745f, 0.0215f),
  glm::vec3(0.07568f, 0.61424f, 0.07568f),
  glm::vec3(0.633f, 0.727811f, 0.633f),
  0.6f
};

Material jade = {
  glm::vec3(0.135f, 0.2225f, 0.1575f),
  glm::vec3(0.54f, 0.89f, 0.63f),
  glm::vec3(0.316228f, 0.316228f, 0.316228f),
  0.1f
};

Material copper = {
  glm::vec3(0.19125f, 0.0735f, 0.0225f),
  glm::vec3(0.7038f, 0.27048f, 0.0828f),
  glm::vec3(0.256777f, 0.137622f, 0.086014f),
  0.1f
};