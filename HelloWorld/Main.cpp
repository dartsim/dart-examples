#include <iostream>
#include <dart/dart.hpp>

using namespace dart;

int main(int argc, char* argv[])
{
  auto* world = std::make_shared<simulation::World>;
  world->getNumSkeletons();

  return 0;
}
