# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Backend do
  @moduledoc """
  Message containing information of one individual backend.

  ## Attributes

  - balancingMode (String.t): Specifies the balancing mode for this backend. For global HTTP(S) or TCP/SSL load balancing, the default is UTILIZATION. Valid values are UTILIZATION, RATE (for HTTP(S)) and CONNECTION (for TCP/SSL).  For Internal Load Balancing, the default and only supported mode is CONNECTION. Defaults to: `null`.
    - Enum - one of [CONNECTION, RATE, UTILIZATION]
  - capacityScaler (float()): A multiplier applied to the group&#39;s maximum servicing capacity (based on UTILIZATION, RATE or CONNECTION). Default value is 1, which means the group will serve up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available Capacity. Valid range is [0.0,1.0].  This cannot be used for internal load balancing. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - group (String.t): The fully-qualified URL of an Instance Group or Network Endpoint Group resource. In case of instance group this defines the list of instances that serve traffic. Member virtual machine instances from each instance group must live in the same zone as the instance group itself. No two backends in a backend service are allowed to use same Instance Group resource.  For Network Endpoint Groups this defines list of endpoints. All endpoints of Network Endpoint Group must be hosted on instances located in the same zone as the Network Endpoint Group.  Backend service can not contain mix of Instance Group and Network Endpoint Group backends.  Note that you must specify an Instance Group or Network Endpoint Group resource using the fully-qualified URL, rather than a partial URL.  When the BackendService has load balancing scheme INTERNAL, the instance group must be within the same region as the BackendService. Network Endpoint Groups are not supported for INTERNAL load balancing scheme. Defaults to: `null`.
  - maxConnections (integer()): The max number of simultaneous connections for the group. Can be used with either CONNECTION or UTILIZATION balancing modes. For CONNECTION mode, either maxConnections or maxConnectionsPerInstance must be set.  This cannot be used for internal load balancing. Defaults to: `null`.
  - maxConnectionsPerEndpoint (integer()): The max number of simultaneous connections that a single backend network endpoint can handle. This is used to calculate the capacity of the group. Can be used in either CONNECTION or UTILIZATION balancing modes. For CONNECTION mode, either maxConnections or maxConnectionsPerEndpoint must be set.  This cannot be used for internal load balancing. Defaults to: `null`.
  - maxConnectionsPerInstance (integer()): The max number of simultaneous connections that a single backend instance can handle. This is used to calculate the capacity of the group. Can be used in either CONNECTION or UTILIZATION balancing modes. For CONNECTION mode, either maxConnections or maxConnectionsPerInstance must be set.  This cannot be used for internal load balancing. Defaults to: `null`.
  - maxRate (integer()): The max requests per second (RPS) of the group. Can be used with either RATE or UTILIZATION balancing modes, but required if RATE mode. For RATE mode, either maxRate or maxRatePerInstance must be set.  This cannot be used for internal load balancing. Defaults to: `null`.
  - maxRatePerEndpoint (float()): The max requests per second (RPS) that a single backend network endpoint can handle. This is used to calculate the capacity of the group. Can be used in either balancing mode. For RATE mode, either maxRate or maxRatePerEndpoint must be set.  This cannot be used for internal load balancing. Defaults to: `null`.
  - maxRatePerInstance (float()): The max requests per second (RPS) that a single backend instance can handle. This is used to calculate the capacity of the group. Can be used in either balancing mode. For RATE mode, either maxRate or maxRatePerInstance must be set.  This cannot be used for internal load balancing. Defaults to: `null`.
  - maxUtilization (float()): Used when balancingMode is UTILIZATION. This ratio defines the CPU utilization target for the group. The default is 0.8. Valid range is [0.0, 1.0].  This cannot be used for internal load balancing. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :balancingMode => any(),
          :capacityScaler => any(),
          :description => any(),
          :group => any(),
          :maxConnections => any(),
          :maxConnectionsPerEndpoint => any(),
          :maxConnectionsPerInstance => any(),
          :maxRate => any(),
          :maxRatePerEndpoint => any(),
          :maxRatePerInstance => any(),
          :maxUtilization => any()
        }

  field(:balancingMode)
  field(:capacityScaler)
  field(:description)
  field(:group)
  field(:maxConnections)
  field(:maxConnectionsPerEndpoint)
  field(:maxConnectionsPerInstance)
  field(:maxRate)
  field(:maxRatePerEndpoint)
  field(:maxRatePerInstance)
  field(:maxUtilization)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Backend do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Backend.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Backend do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
