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

defmodule GoogleApi.DoubleClickSearch.V2.Model.ReportRequest do
  @moduledoc """
  A request object used to create a DoubleClick Search report.

  ## Attributes

  - columns ([ReportApiColumnSpec]): The columns to include in the report. This includes both DoubleClick Search columns and saved columns. For DoubleClick Search columns, only the columnName parameter is required. For saved columns only the savedColumnName parameter is required. Both columnName and savedColumnName cannot be set in the same stanza. The maximum number of columns per request is 300. Defaults to: `null`.
  - downloadFormat (String.t): Format that the report should be returned in. Currently csv or tsv is supported. Defaults to: `null`.
  - filters ([ReportRequestFilters]): A list of filters to be applied to the report. The maximum number of filters per request is 300. Defaults to: `null`.
  - includeDeletedEntities (boolean()): Determines if removed entities should be included in the report. Defaults to false. Deprecated, please use includeRemovedEntities instead. Defaults to: `null`.
  - includeRemovedEntities (boolean()): Determines if removed entities should be included in the report. Defaults to false. Defaults to: `null`.
  - maxRowsPerFile (integer()): Asynchronous report only. The maximum number of rows per report file. A large report is split into many files based on this field. Acceptable values are 1000000 to 100000000, inclusive. Defaults to: `null`.
  - orderBy ([ReportRequestOrderBy]): Synchronous report only. A list of columns and directions defining sorting to be performed on the report rows. The maximum number of orderings per request is 300. Defaults to: `null`.
  - reportScope (ReportRequestReportScope):  Defaults to: `null`.
  - reportType (String.t): Determines the type of rows that are returned in the report. For example, if you specify reportType: keyword, each row in the report will contain data about a keyword. See the Types of Reports reference for the columns that are available for each type. Defaults to: `null`.
  - rowCount (integer()): Synchronous report only. The maximum number of rows to return; additional rows are dropped. Acceptable values are 0 to 10000, inclusive. Defaults to 10000. Defaults to: `10000`.
  - startRow (integer()): Synchronous report only. Zero-based index of the first row to return. Acceptable values are 0 to 50000, inclusive. Defaults to 0. Defaults to: `0`.
  - statisticsCurrency (String.t): Specifies the currency in which monetary will be returned. Possible values are: usd, agency (valid if the report is scoped to agency or lower), advertiser (valid if the report is scoped to * advertiser or lower), or account (valid if the report is scoped to engine account or lower). Defaults to: `null`.
  - timeRange (ReportRequestTimeRange):  Defaults to: `null`.
  - verifySingleTimeZone (boolean()): If true, the report would only be created if all the requested stat data are sourced from a single timezone. Defaults to false. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columns => list(GoogleApi.DoubleClickSearch.V2.Model.ReportApiColumnSpec.t()),
          :downloadFormat => any(),
          :filters => list(GoogleApi.DoubleClickSearch.V2.Model.ReportRequestFilters.t()),
          :includeDeletedEntities => any(),
          :includeRemovedEntities => any(),
          :maxRowsPerFile => any(),
          :orderBy => list(GoogleApi.DoubleClickSearch.V2.Model.ReportRequestOrderBy.t()),
          :reportScope => GoogleApi.DoubleClickSearch.V2.Model.ReportRequestReportScope.t(),
          :reportType => any(),
          :rowCount => any(),
          :startRow => any(),
          :statisticsCurrency => any(),
          :timeRange => GoogleApi.DoubleClickSearch.V2.Model.ReportRequestTimeRange.t(),
          :verifySingleTimeZone => any()
        }

  field(:columns, as: GoogleApi.DoubleClickSearch.V2.Model.ReportApiColumnSpec, type: :list)
  field(:downloadFormat)
  field(:filters, as: GoogleApi.DoubleClickSearch.V2.Model.ReportRequestFilters, type: :list)
  field(:includeDeletedEntities)
  field(:includeRemovedEntities)
  field(:maxRowsPerFile)
  field(:orderBy, as: GoogleApi.DoubleClickSearch.V2.Model.ReportRequestOrderBy, type: :list)
  field(:reportScope, as: GoogleApi.DoubleClickSearch.V2.Model.ReportRequestReportScope)
  field(:reportType)
  field(:rowCount)
  field(:startRow)
  field(:statisticsCurrency)
  field(:timeRange, as: GoogleApi.DoubleClickSearch.V2.Model.ReportRequestTimeRange)
  field(:verifySingleTimeZone)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportRequest do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.ReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
