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

defmodule GoogleApi.YouTube.V3.Api.VideoCategories do
  @moduledoc """
  API calls for all endpoints tagged `VideoCategories`.
  """

  alias GoogleApi.YouTube.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns a list of categories that can be associated with YouTube videos.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - part (String.t): The part parameter specifies the videoCategory resource properties that the API response will include. Set the parameter value to snippet.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :hl (String.t): The hl parameter specifies the language that should be used for text values in the API response.
    - :id (String.t): The id parameter specifies a comma-separated list of video category IDs for the resources that you are retrieving.
    - :regionCode (String.t): The regionCode parameter instructs the API to return the list of video categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.VideoCategoryListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_video_categories_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.VideoCategoryListResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtube_video_categories_list(connection, part, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :hl => :query,
      :id => :query,
      :regionCode => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/youtube/v3/videoCategories")
      |> Request.add_param(:query, :part, part)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTube.V3.Model.VideoCategoryListResponse{}])
  end
end
