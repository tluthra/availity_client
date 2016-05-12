def stub_coverage_index_response
  body = {"totalCount" =>  1,"count" =>  1,"offset" =>  0,"limit" =>  1,"links" =>  {"self" =>  {"href" =>  "https => //api.availity.com/demo/v1/coverages?payerId=BCBSF&providerNpi=1234567893&memberId=H39522358&patientLastName=KOVAL&patientFirstName=GEORGE&submitterId=G2509&serviceType=30&patientBirthDate=1999-01-01"}},"coverages" =>  [{"links" =>  {"self" =>  {"href" =>  "https => //api.availity.com/demo/v1/coverages/123"}},"id" =>  "123","customerId" =>  "4321","controlNumber" =>  "9876543","status" =>  "Complete","statusCode" =>  "4","createdDate" =>  "2014-10-15T16 => 31 => 07.000+0000","updatedDate" =>  "2014-10-15T16 => 31 => 07.000+0000","expirationDate" =>  "2014-10-16T16 => 31 => 07.000+0000","asOfDate" =>  "2014-10-15T04 => 00 => 00.000+0000","requestedServiceType" =>  [{"code" =>  "30","value" =>  "Health Benefit Plan Coverage"}],"validationMessages" =>  [],"subscriber" =>  {"firstName" =>  "ZENA","lastName" =>  "MARDIN","memberId" =>  "H123","gender" =>  "Female","genderCode" =>  "F","birthDate" =>  "1942-09-15T04 => 00 => 00.000+0000"},"patient" =>  {"firstName" =>  "ZENA","lastName" =>  "MARDIN","subscriberRelationship" =>  "Self","subscriberRelationshipCode" =>  "18","gender" =>  "Female","genderCode" =>  "F","birthDate" =>  "1942-09-15T04 => 00 => 00.000+0000"},"payer" =>  {"name" =>  "BCBSF","payerId" =>  "BCBSF"},"requestingProvider" =>  {"npi" =>  "1234567893","taxId" =>  "123123123"},"plans" =>  [{"status" =>  "Active - Services Capitated","statusCode" =>  "3"}]}]}

  response = OpenStruct.new(body: body.to_json, status: 200)
  allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(response)
end

def stub_params_coverage_index_request
  body = {"totalCount" =>  1,"count" =>  1,"offset" =>  0,"limit" =>  1,"links" =>  {"self" =>  {"href" =>  "https => //api.availity.com/demo/v1/coverages?payerId=BCBSF&providerNpi=1234567893&memberId=H39522358&patientLastName=KOVAL&patientFirstName=GEORGE&submitterId=G2509&serviceType=30&patientBirthDate=1999-01-01"}},"coverages" =>  [{"links" =>  {"self" =>  {"href" =>  "https => //api.availity.com/demo/v1/coverages/123"}},"id" =>  "123","customerId" =>  "4321","controlNumber" =>  "9876543","status" =>  "Complete","statusCode" =>  "4","createdDate" =>  "2014-10-15T16 => 31 => 07.000+0000","updatedDate" =>  "2014-10-15T16 => 31 => 07.000+0000","expirationDate" =>  "2014-10-16T16 => 31 => 07.000+0000","asOfDate" =>  "2014-10-15T04 => 00 => 00.000+0000","requestedServiceType" =>  [{"code" =>  "30","value" =>  "Health Benefit Plan Coverage"}],"validationMessages" =>  [],"subscriber" =>  {"firstName" =>  "Peter","lastName" =>  "Parker","memberId" =>  "PBHR123456","gender" =>  "Female","genderCode" =>  "F","birthDate" =>  "1990-01-01"},"patient" =>  {"firstName" =>  "Peter","lastName" =>  "Parker","subscriberRelationship" =>  "Self","subscriberRelationshipCode" =>  "18","gender" =>  "Female","genderCode" =>  "F","birthDate" =>  "1990-01-01"},"payer" =>  {"name" =>  "BCBSF","payerId" =>  "BCBSF"},"requestingProvider" =>  {"npi" =>  "1234567893","taxId" =>  "123456789"},"plans" =>  [{"status" =>  "Active - Services Capitated","statusCode" =>  "3"}]}]}

  response = OpenStruct.new(body: body.to_json, status: 200)
  allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(response)
end

def stub_single_coverage_request
  body = {"links" =>  {"self" =>  {"href" =>  "https => //api.availity.com/demo/v1/coverages/123"}},"id" =>  "123","customerId" =>  "4321","controlNumber" =>  "9876543","status" =>  "Complete","statusCode" =>  "4","createdDate" =>  "2014-10-15T16 => 31 => 07.000+0000","updatedDate" =>  "2014-10-15T16 => 31 => 07.000+0000","expirationDate" =>  "2014-10-16T16 => 31 => 07.000+0000","asOfDate" =>  "2014-10-15T04 => 00 => 00.000+0000","requestedServiceType" =>  [{"code" =>  "30","value" =>  "Health Benefit Plan Coverage"}],"validationMessages" =>  [],"subscriber" =>  {"firstName" =>  "ZENA","lastName" =>  "MARDIN","memberId" =>  "H123","gender" =>  "Female","genderCode" =>  "F","birthDate" =>  "1942-09-15T04 => 00 => 00.000+0000","address" =>  {"line1" =>  "123 MAIN ST","line2" =>  "LOT M","city" =>  "BELHAVEN","state" =>  "North Carolina","stateCode" =>  "NC","zipCode" =>  "278106580"}},"patient" =>  {"firstName" =>  "ZENA","lastName" =>  "MARDIN","subscriberRelationship" =>  "Self","subscriberRelationshipCode" =>  "18","gender" =>  "Female","genderCode" =>  "F","birthDate" =>  "1942-09-15T04 => 00 => 00.000+0000","address" =>  {"line1" =>  "123 MAIN ST","line2" =>  "LOT M","city" =>  "BELHAVEN","state" =>  "North Carolina","stateCode" =>  "NC","zipCode" =>  "278106580"},"updateYourRecords" =>  false},"payer" =>  {"name" =>  "BCBSF","payerId" =>  "BCBSF"},"requestingProvider" =>  {"npi" =>  "1234567893","taxId" =>  "123123123"},"plans" =>  [{"status" =>  "Active - Services Capitated","statusCode" =>  "3","groupNumber" =>  "P12345678","groupName" =>  "BCBSF INSURANCE COMPANY","serviceDate" =>  "2014-09-24T04 => 00 => 00.000+0000","planStartDate" =>  "2009-08-01T04 => 00 => 00.000+0000","benefits" =>  [{"name" =>  "Health Benefit Plan Coverage","type" =>  "30","status" =>  "Active - Services Capitated","statusCode" =>  "3","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated","statusCode" =>  "3","level" =>  "Employee Only","levelCode" =>  "EMP","description" =>  "037 002","payerNotes" =>  ["MEDICARE PDP"]}]},"limitations" =>  {"noNetwork" =>  [{"quantity" =>  "19","quantityQualifier" =>  "Years","quantityQualifierCode" =>  "YY","payerNotes" =>  ["MAX DEPENDENT AGE"]},{"quantity" =>  "25","quantityQualifier" =>  "Years","quantityQualifierCode" =>  "YY","payerNotes" =>  ["MAX STUDENT AGE"]}]}},{"name" =>  "Chiropractic","type" =>  "33","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Dental Care","type" =>  "35","nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Emergency Services","type" =>  "86","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Hospital","type" =>  "47","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Hospital - Inpatient","type" =>  "48","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Hospital - Outpatient","type" =>  "50","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Medical Care","type" =>  "1","nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Mental Health","type" =>  "MH","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Pharmacy","type" =>  "88","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"amounts" =>  {"coPayment" =>  {"noNetwork" =>  [{"amount" =>  "2.55","units" =>  "USD","payerNotes" =>  ["Seq#002","GENERIC STEP 4"]},{"amount" =>  "6.35","units" =>  "USD","payerNotes" =>  ["Seq#002","NONG STG 4"]},{"amount" =>  "2","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "5","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "42","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "92","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "33","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "6","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "10","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "45","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "95","units" =>  "USD","payerNotes" =>  ["Seq#002"]},{"amount" =>  "100","units" =>  "USD","payerNotes" =>  ["Seq#002"]}]},"deductibles" =>  {"noNetwork" =>  [{"amount" =>  "0","units" =>  "USD","payerNotes" =>  ["Seq#001"]}]},"coInsurance" =>  {"noNetwork" =>  [{"amount" =>  ".95","units" =>  "Percent","payerNotes" =>  ["Seq#003","GEN STG 4"]},{"amount" =>  ".95","units" =>  "Percent","payerNotes" =>  ["Seq#003","NONG STG 4"]}]}}},{"name" =>  "Professional (Physician) Visit - Office","type" =>  "98","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Urgent Care","type" =>  "UC","status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active - Services Capitated to Primary Care Physician","statusCode" =>  "4"}]},"nonCovered" =>  {"noNetwork" =>  [{}]}},{"name" =>  "Vision (Optometry)","type" =>  "AL","nonCovered" =>  {"noNetwork" =>  [{}]}}],"payerNotes" =>  [{"type" =>  "Disclaimer","typeCode" =>  "P","message" =>  "THIS IS ONLY AN ESTIMATION OF BENEFITS, AND ALL PAYMENTS ARE SUBJECT TO POLICY GUIDELINES, MEDICAL NECESSITY, AND MEMBER ELIGIBILITY AT THE TIME SERVICES ARE PERFORMED."}]},{"status" =>  "Active Coverage","statusCode" =>  "1","groupNumber" =>  "Q12345678","groupName" =>  "BCBSF INSURANCE CO.","serviceDate" =>  "2014-09-24T04 => 00 => 00.000+0000","planStartDate" =>  "2010-08-01T04 => 00 => 00.000+0000","benefits" =>  [{"name" =>  "Health Benefit Plan Coverage","type" =>  "30","status" =>  "Active Coverage","statusCode" =>  "1","statusDetails" =>  {"noNetwork" =>  [{"status" =>  "Active Coverage","statusCode" =>  "1","insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","level" =>  "Employee Only","levelCode" =>  "EMP","description" =>  "067 004","payerNotes" =>  ["UNKNOWN"]}]},"limitations" =>  {"noNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "9999999.99","units" =>  "USD","amountTimePeriod" =>  "Lifetime","amountTimePeriodCode" =>  "32","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#004"]}]}},{"name" =>  "Chiropractic","type" =>  "33","amounts" =>  {"coInsurance" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","MEDICARE COVERED MANIPULATIONS"]}]}}},{"name" =>  "Dental Care","type" =>  "35","nonCovered" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#999","VIEW CONTRACT FOR COVERAGE DETAILS"]}]}},{"name" =>  "Emergency Services","type" =>  "86","amounts" =>  {"coInsurance" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","ANCILLARIES"]},{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","ER"]}]}}},{"name" =>  "Hospital","type" =>  "47","status" =>  "Active Coverage","statusCode" =>  "1","statusDetails" =>  {"inNetwork" =>  [{"status" =>  "Active Coverage","statusCode" =>  "1","insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#999","ROOM AND BOARD"]}]}},{"name" =>  "Hospital - Inpatient","type" =>  "48","amounts" =>  {"coInsurance" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","ANCILLARIES"]}]}}},{"name" =>  "Hospital - Outpatient","type" =>  "50","amounts" =>  {"coInsurance" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","ANCILLARIES"]},{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","SURGERY"]}]}}},{"name" =>  "Medical Care","type" =>  "1","status" =>  "Active Coverage","statusCode" =>  "1","statusDetails" =>  {"inNetwork" =>  [{"status" =>  "Active Coverage","statusCode" =>  "1","insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#999"]}]}},{"name" =>  "Mental Health","type" =>  "MH","status" =>  "Active Coverage","statusCode" =>  "1","statusDetails" =>  {"inNetwork" =>  [{"status" =>  "Active Coverage","statusCode" =>  "1","insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#999"]}]}},{"name" =>  "Professional (Physician) Visit - Office","type" =>  "98","amounts" =>  {"coInsurance" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","PCP"]},{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","SPECIALIST"]},{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","FREESTANDING RAD CTR"]}]}}},{"name" =>  "Urgent Care","type" =>  "UC","amounts" =>  {"coInsurance" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","URGENT CARE"]},{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","amount" =>  "0","units" =>  "Percent","amountTimePeriod" =>  "Calendar Year","amountTimePeriodCode" =>  "23","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#003","CONCENTRA URGENT CARE"]}]}}},{"name" =>  "Vision (Optometry)","type" =>  "AL","nonCovered" =>  {"inNetwork" =>  [{"insuranceType" =>  "Supplemental Policy","insuranceTypeCode" =>  "SP","level" =>  "Individual","levelCode" =>  "IND","payerNotes" =>  ["Seq#999"]}]}}]}],"supplementalInformation" =>  {"professionalPatientCostEstimator" =>  false,"institutionalPatientCostEstimator" =>  false,"patientCareSummary" =>  false,"assessmentCarePlan" =>  false,"outOfArea" =>  false}}
  response = OpenStruct.new(body: body.to_json, status: 200)
  allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(response)
end
