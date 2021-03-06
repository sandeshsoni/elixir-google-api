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

defmodule GoogleApi.ServiceControl.V1.Model.Peer do
  @moduledoc """
  This message defines attributes for a node that handles a network request. The node can be either a service or an application that sends, forwards, or receives the request. Service peers should fill in the &#x60;service&#x60;, &#x60;principal&#x60;, and &#x60;labels&#x60; as appropriate.

  ## Attributes

  - ip (String.t): The IP address of the peer. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): The labels associated with the peer. Defaults to: `null`.
  - port (String.t): The network port of the peer. Defaults to: `null`.
  - principal (String.t): The identity of this peer. Similar to &#x60;Request.auth.principal&#x60;, but relative to the peer instead of the request. For example, the idenity associated with a load balancer that forwared the request. Defaults to: `null`.
  - regionCode (String.t): The CLDR country/region code associated with the above IP address. If the IP address is private, the &#x60;region_code&#x60; should reflect the physical location where this peer is running. Defaults to: `null`.
  - service (String.t): The canonical service name of the peer.  NOTE: different systems may have different service naming schemes. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ip => any(),
          :labels => map(),
          :port => any(),
          :principal => any(),
          :regionCode => any(),
          :service => any()
        }

  field(:ip)
  field(:labels, type: :map)
  field(:port)
  field(:principal)
  field(:regionCode)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.Peer do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.Peer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.Peer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
