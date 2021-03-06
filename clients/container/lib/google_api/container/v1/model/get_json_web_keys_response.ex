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

defmodule GoogleApi.Container.V1.Model.GetJsonWebKeysResponse do
  @moduledoc """
  GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517

  ## Attributes

  - keys ([Jwk]): The public component of the keys used by the cluster to sign token requests. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keys => list(GoogleApi.Container.V1.Model.Jwk.t())
        }

  field(:keys, as: GoogleApi.Container.V1.Model.Jwk, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.GetJsonWebKeysResponse do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.GetJsonWebKeysResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.GetJsonWebKeysResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
