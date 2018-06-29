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

defmodule GoogleApi.Slides.V1.Model.Group do
  @moduledoc """
  A PageElement kind representing a joined collection of PageElements.

  ## Attributes

  - children ([PageElement]): The collection of elements in the group. The minimum size of a group is 2. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :children => list(GoogleApi.Slides.V1.Model.PageElement.t())
        }

  field(:children, as: GoogleApi.Slides.V1.Model.PageElement, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Group do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Group.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Group do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
