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

defmodule GoogleApi.ToolResults.V1beta3.Model.CpuInfo do
  @moduledoc """


  ## Attributes

  - cpuProcessor (String.t): description of the device processor ie &#39;1.8 GHz hexa core 64-bit ARMv8-A&#39; Defaults to: `null`.
  - cpuSpeedInGhz (float()): the CPU clock speed in GHz Defaults to: `null`.
  - numberOfCores (integer()): the number of CPU cores Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuProcessor => any(),
          :cpuSpeedInGhz => any(),
          :numberOfCores => any()
        }

  field(:cpuProcessor)
  field(:cpuSpeedInGhz)
  field(:numberOfCores)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.CpuInfo do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.CpuInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.CpuInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
