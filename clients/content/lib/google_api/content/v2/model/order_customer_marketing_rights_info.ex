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

defmodule GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo do
  @moduledoc """


  ## Attributes

  - explicitMarketingPreference (String.t): Last known user selection regarding marketing preferences. In certain cases this selection might not be known, so this field would be empty. Defaults to: `null`.
  - lastUpdatedTimestamp (String.t): Timestamp when last time marketing preference was updated. Could be empty, if user wasn&#39;t offered a selection yet. Defaults to: `null`.
  - marketingEmailAddress (String.t): Email address that can be used for marketing purposes. The field may be empty even if explicitMarketingPreference is &#39;granted&#39;. This happens when retrieving an old order from the customer who deleted their account. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explicitMarketingPreference => any(),
          :lastUpdatedTimestamp => any(),
          :marketingEmailAddress => any()
        }

  field(:explicitMarketingPreference)
  field(:lastUpdatedTimestamp)
  field(:marketingEmailAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
