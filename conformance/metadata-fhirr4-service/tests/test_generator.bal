// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/test;
import ballerinax/health.fhir.r4.international401;

@test:Config {groups: ["Generator"]}
function testGenerateCapabilityStatement() returns error? {
    international401:CapabilityStatement|error capabilityStatement = generateCapabilityStatement();

    if capabilityStatement is international401:CapabilityStatement {
        test:assertTrue(true, "Capability generation success");
    } else {
        test:assertFail("Capability generation failed");
    }
}
