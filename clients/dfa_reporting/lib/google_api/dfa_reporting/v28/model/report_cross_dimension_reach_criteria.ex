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

defmodule GoogleApi.DFAReporting.V28.Model.ReportCrossDimensionReachCriteria do
  @moduledoc """
  The report criteria for a report of type \&quot;CROSS_DIMENSION_REACH\&quot;.

  ## Attributes

  - breakdown ([SortedDimension]): The list of dimensions the report should include. Defaults to: `null`.
  - dateRange (DateRange): The date range this report should be run for. Defaults to: `null`.
  - dimension (String.t): The dimension option. Defaults to: `null`.
    - Enum - one of [ADVERTISER, CAMPAIGN, SITE_BY_ADVERTISER, SITE_BY_CAMPAIGN]
  - dimensionFilters ([DimensionValue]): The list of filters on which dimensions are filtered. Defaults to: `null`.
  - metricNames ([String.t]): The list of names of metrics the report should include. Defaults to: `null`.
  - overlapMetricNames ([String.t]): The list of names of overlap metrics the report should include. Defaults to: `null`.
  - pivoted (boolean()): Whether the report is pivoted or not. Defaults to true. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :breakdown => list(GoogleApi.DFAReporting.V28.Model.SortedDimension.t()),
          :dateRange => GoogleApi.DFAReporting.V28.Model.DateRange.t(),
          :dimension => any(),
          :dimensionFilters => list(GoogleApi.DFAReporting.V28.Model.DimensionValue.t()),
          :metricNames => list(any()),
          :overlapMetricNames => list(any()),
          :pivoted => any()
        }

  field(:breakdown, as: GoogleApi.DFAReporting.V28.Model.SortedDimension, type: :list)
  field(:dateRange, as: GoogleApi.DFAReporting.V28.Model.DateRange)
  field(:dimension)
  field(:dimensionFilters, as: GoogleApi.DFAReporting.V28.Model.DimensionValue, type: :list)
  field(:metricNames, type: :list)
  field(:overlapMetricNames, type: :list)
  field(:pivoted)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ReportCrossDimensionReachCriteria do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ReportCrossDimensionReachCriteria.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ReportCrossDimensionReachCriteria do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end