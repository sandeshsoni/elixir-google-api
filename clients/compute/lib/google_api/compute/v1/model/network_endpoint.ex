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

defmodule GoogleApi.Compute.V1.Model.NetworkEndpoint do
  @moduledoc """
  The network endpoint.

  ## Attributes

  - instance (String.t): The name for a specific VM instance that the IP address belongs to. This is required for network endpoints of type GCE_VM_IP_PORT. The instance must be in the same zone of network endpoint group.  The name must be 1-63 characters long, and comply with RFC1035. Defaults to: `null`.
  - ipAddress (String.t): Optional IPv4 address of network endpoint. The IP address must belong to a VM in GCE (either the primary IP or as part of an aliased IP range). If the IP address is not specified, then the primary IP address for the VM instance in the network that the network endpoint group belongs to will be used. Defaults to: `null`.
  - port (integer()): Optional port number of network endpoint. If not specified and the NetworkEndpointGroup.network_endpoint_type is GCE_IP_PORT, the defaultPort for the network endpoint group will be used. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instance => any(),
          :ipAddress => any(),
          :port => any()
        }

  field(:instance)
  field(:ipAddress)
  field(:port)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkEndpoint do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkEndpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkEndpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
