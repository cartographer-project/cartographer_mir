-- Copyright 2019 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "mir-100-mapping.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
  max_submaps_to_keep = 3,
}
MAP_BUILDER.num_background_threads = 1
POSE_GRAPH.optimize_every_n_nodes = 5
POSE_GRAPH.constraint_builder.sampling_ratio = 0.05
POSE_GRAPH.global_constraint_search_after_n_seconds = 200
POSE_GRAPH.global_sampling_ratio = 0.00001

TRAJECTORY_BUILDER_2D.min_range = 0.1
TRAJECTORY_BUILDER_2D.max_range = 28.
TRAJECTORY_BUILDER_2D.missing_data_ray_length = 5.
TRAJECTORY_BUILDER_2D.adaptive_voxel_filter.min_num_points = 200

-- switch to base_link as we disable IMU usage here.
TRAJECTORY_BUILDER_2D.use_imu_data = false
options.tracking_frame = "base_link"

return options
