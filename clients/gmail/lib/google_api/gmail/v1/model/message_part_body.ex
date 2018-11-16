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

defmodule GoogleApi.Gmail.V1.Model.MessagePartBody do
  @moduledoc """
  The body of a single MIME message part.

  ## Attributes

  - attachmentId (String.t): When present, contains the ID of an external attachment that can be retrieved in a separate messages.attachments.get request. When not present, the entire content of the message part body is contained in the data field. Defaults to: `null`.
  - data (binary()): The body data of a MIME message part as a base64url encoded string. May be empty for MIME container types that have no message body or when the body data is sent as a separate attachment. An attachment ID is present if the body data is contained in a separate attachment. Defaults to: `null`.
  - size (integer()): Number of bytes for the message part data (encoding notwithstanding). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachmentId => any(),
          :data => any(),
          :size => any()
        }

  field(:attachmentId)
  field(:data)
  field(:size)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.MessagePartBody do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.MessagePartBody.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.MessagePartBody do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end