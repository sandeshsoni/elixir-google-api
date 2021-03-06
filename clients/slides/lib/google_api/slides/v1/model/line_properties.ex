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

defmodule GoogleApi.Slides.V1.Model.LineProperties do
  @moduledoc """
  The properties of the Line.  When unset, these fields default to values that match the appearance of new lines created in the Slides editor.

  ## Attributes

  - dashStyle (String.t): The dash style of the line. Defaults to: `null`.
    - Enum - one of [DASH_STYLE_UNSPECIFIED, SOLID, DOT, DASH, DASH_DOT, LONG_DASH, LONG_DASH_DOT]
  - endArrow (String.t): The style of the arrow at the end of the line. Defaults to: `null`.
    - Enum - one of [ARROW_STYLE_UNSPECIFIED, NONE, STEALTH_ARROW, FILL_ARROW, FILL_CIRCLE, FILL_SQUARE, FILL_DIAMOND, OPEN_ARROW, OPEN_CIRCLE, OPEN_SQUARE, OPEN_DIAMOND]
  - endConnection (LineConnection): The connection at the end of the line. If unset, there is no connection.  Only lines with a Type indicating it is a \&quot;connector\&quot; can have an &#x60;end_connection&#x60;. Defaults to: `null`.
  - lineFill (LineFill): The fill of the line. The default line fill matches the defaults for new lines created in the Slides editor. Defaults to: `null`.
  - link (Link): The hyperlink destination of the line. If unset, there is no link. Defaults to: `null`.
  - startArrow (String.t): The style of the arrow at the beginning of the line. Defaults to: `null`.
    - Enum - one of [ARROW_STYLE_UNSPECIFIED, NONE, STEALTH_ARROW, FILL_ARROW, FILL_CIRCLE, FILL_SQUARE, FILL_DIAMOND, OPEN_ARROW, OPEN_CIRCLE, OPEN_SQUARE, OPEN_DIAMOND]
  - startConnection (LineConnection): The connection at the beginning of the line. If unset, there is no connection.  Only lines with a Type indicating it is a \&quot;connector\&quot; can have a &#x60;start_connection&#x60;. Defaults to: `null`.
  - weight (Dimension): The thickness of the line. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dashStyle => any(),
          :endArrow => any(),
          :endConnection => GoogleApi.Slides.V1.Model.LineConnection.t(),
          :lineFill => GoogleApi.Slides.V1.Model.LineFill.t(),
          :link => GoogleApi.Slides.V1.Model.Link.t(),
          :startArrow => any(),
          :startConnection => GoogleApi.Slides.V1.Model.LineConnection.t(),
          :weight => GoogleApi.Slides.V1.Model.Dimension.t()
        }

  field(:dashStyle)
  field(:endArrow)
  field(:endConnection, as: GoogleApi.Slides.V1.Model.LineConnection)
  field(:lineFill, as: GoogleApi.Slides.V1.Model.LineFill)
  field(:link, as: GoogleApi.Slides.V1.Model.Link)
  field(:startArrow)
  field(:startConnection, as: GoogleApi.Slides.V1.Model.LineConnection)
  field(:weight, as: GoogleApi.Slides.V1.Model.Dimension)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.LineProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.LineProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.LineProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
