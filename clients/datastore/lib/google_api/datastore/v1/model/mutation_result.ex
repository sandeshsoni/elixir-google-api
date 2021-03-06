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

defmodule GoogleApi.Datastore.V1.Model.MutationResult do
  @moduledoc """
  The result of applying a mutation.

  ## Attributes

  - conflictDetected (boolean()): Whether a conflict was detected for this mutation. Always false when a conflict detection strategy field is not set in the mutation. Defaults to: `null`.
  - key (Key): The automatically allocated key. Set only when the mutation allocated a key. Defaults to: `null`.
  - version (String.t): The version of the entity on the server after processing the mutation. If the mutation doesn&#39;t change anything on the server, then the version will be the version of the current entity or, if no entity is present, a version that is strictly greater than the version of any previous entity and less than the version of any possible future entity. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conflictDetected => any(),
          :key => GoogleApi.Datastore.V1.Model.Key.t(),
          :version => any()
        }

  field(:conflictDetected)
  field(:key, as: GoogleApi.Datastore.V1.Model.Key)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.MutationResult do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.MutationResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.MutationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
