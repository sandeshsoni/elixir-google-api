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

defmodule GoogleApi.DFAReporting.V28.Model.GeoTargeting do
  @moduledoc """
  Geographical Targeting.

  ## Attributes

  - cities ([City]): Cities to be targeted. For each city only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a city, do not target or exclude the country of the city, and do not target the metro or region of the city. Defaults to: `null`.
  - countries ([Country]): Countries to be targeted or excluded from targeting, depending on the setting of the excludeCountries field. For each country only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting or excluding a country, do not target regions, cities, metros, or postal codes in the same country. Defaults to: `null`.
  - excludeCountries (boolean()): Whether or not to exclude the countries in the countries field from targeting. If false, the countries field refers to countries which will be targeted by the ad. Defaults to: `null`.
  - metros ([Metro]): Metros to be targeted. For each metro only dmaId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a metro, do not target or exclude the country of the metro. Defaults to: `null`.
  - postalCodes ([PostalCode]): Postal codes to be targeted. For each postal code only id is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a postal code, do not target or exclude the country of the postal code. Defaults to: `null`.
  - regions ([Region]): Regions to be targeted. For each region only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a region, do not target or exclude the country of the region. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cities => list(GoogleApi.DFAReporting.V28.Model.City.t()),
          :countries => list(GoogleApi.DFAReporting.V28.Model.Country.t()),
          :excludeCountries => any(),
          :metros => list(GoogleApi.DFAReporting.V28.Model.Metro.t()),
          :postalCodes => list(GoogleApi.DFAReporting.V28.Model.PostalCode.t()),
          :regions => list(GoogleApi.DFAReporting.V28.Model.Region.t())
        }

  field(:cities, as: GoogleApi.DFAReporting.V28.Model.City, type: :list)
  field(:countries, as: GoogleApi.DFAReporting.V28.Model.Country, type: :list)
  field(:excludeCountries)
  field(:metros, as: GoogleApi.DFAReporting.V28.Model.Metro, type: :list)
  field(:postalCodes, as: GoogleApi.DFAReporting.V28.Model.PostalCode, type: :list)
  field(:regions, as: GoogleApi.DFAReporting.V28.Model.Region, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.GeoTargeting do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.GeoTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.GeoTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end