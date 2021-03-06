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

defmodule GoogleApi.Analytics.V3.Model.ProfileRef do
  @moduledoc """
  JSON template for a linked view (profile).

  ## Attributes

  - accountId (String.t): Account ID to which this view (profile) belongs. Defaults to: `null`.
  - href (String.t): Link for this view (profile). Defaults to: `null`.
  - id (String.t): View (Profile) ID. Defaults to: `null`.
  - internalWebPropertyId (String.t): Internal ID for the web property to which this view (profile) belongs. Defaults to: `null`.
  - kind (String.t): Analytics view (profile) reference. Defaults to: `null`.
  - name (String.t): Name of this view (profile). Defaults to: `null`.
  - webPropertyId (String.t): Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :href => any(),
          :id => any(),
          :internalWebPropertyId => any(),
          :kind => any(),
          :name => any(),
          :webPropertyId => any()
        }

  field(:accountId)
  field(:href)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:name)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.ProfileRef do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.ProfileRef.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.ProfileRef do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
