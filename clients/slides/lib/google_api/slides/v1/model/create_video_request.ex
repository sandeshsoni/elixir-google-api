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

defmodule GoogleApi.Slides.V1.Model.CreateVideoRequest do
  @moduledoc """
  Creates a video.  NOTE: Creating a video from Google Drive requires that the requesting app have at least one of the drive, drive.readonly, or drive.file OAuth scopes.

  ## Attributes

  - elementProperties (PageElementProperties): The element properties for the video.  The PageElementProperties.size property is optional. If you don&#39;t specify a size, a default size is chosen by the server.  The PageElementProperties.transform property is optional. The transform must not have shear components. If you don&#39;t specify a transform, the video will be placed at the top left corner of the page. Defaults to: `null`.
  - id (String.t): The video source&#39;s unique identifier for this video.  e.g. For YouTube video https://www.youtube.com/watch?v&#x3D;7U3axjORYZ0, the ID is 7U3axjORYZ0. For a Google Drive video https://drive.google.com/file/d/1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q the ID is 1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q. Defaults to: `null`.
  - objectId (String.t): A user-supplied object ID.  If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex &#x60;[a-zA-Z0-9_]&#x60;); remaining characters may include those as well as a hyphen or colon (matches regex &#x60;[a-zA-Z0-9_-:]&#x60;). The length of the ID must not be less than 5 or greater than 50.  If you don&#39;t specify an ID, a unique one is generated. Defaults to: `null`.
  - source (String.t): The video source. Defaults to: `null`.
    - Enum - one of [SOURCE_UNSPECIFIED, YOUTUBE, DRIVE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :elementProperties => GoogleApi.Slides.V1.Model.PageElementProperties.t(),
          :id => any(),
          :objectId => any(),
          :source => any()
        }

  field(:elementProperties, as: GoogleApi.Slides.V1.Model.PageElementProperties)
  field(:id)
  field(:objectId)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CreateVideoRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.CreateVideoRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.CreateVideoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
