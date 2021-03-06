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

defmodule GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher do
  @moduledoc """
  Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.

  ## Attributes

  - config (SecurityPolicyRuleMatcherConfig): The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified. Defaults to: `null`.
  - versionedExpr (String.t): Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config. Defaults to: `null`.
    - Enum - one of [SRC_IPS_V1]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcherConfig.t(),
          :versionedExpr => any()
        }

  field(:config, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcherConfig)
  field(:versionedExpr)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
