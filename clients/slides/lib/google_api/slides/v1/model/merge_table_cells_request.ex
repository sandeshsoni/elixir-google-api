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

defmodule GoogleApi.Slides.V1.Model.MergeTableCellsRequest do
  @moduledoc """
  Merges cells in a Table.

  ## Attributes

  - objectId (String.t): The object ID of the table. Defaults to: `null`.
  - tableRange (TableRange): The table range specifying which cells of the table to merge.  Any text in the cells being merged will be concatenated and stored in the upper-left (\&quot;head\&quot;) cell of the range. If the range is non-rectangular (which can occur in some cases where the range covers cells that are already merged), a 400 bad request error is returned. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :objectId => any(),
          :tableRange => GoogleApi.Slides.V1.Model.TableRange.t()
        }

  field(:objectId)
  field(:tableRange, as: GoogleApi.Slides.V1.Model.TableRange)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.MergeTableCellsRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.MergeTableCellsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.MergeTableCellsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
