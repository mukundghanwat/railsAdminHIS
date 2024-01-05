# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_05_104420) do
  create_table "claim_responses", primary_key: "claim_response_id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "abhaNumber"
    t.string "city"
    t.string "claimPayeeType"
    t.string "claimSubType"
    t.string "claimUse"
    t.string "contentType"
    t.string "disposition"
    t.string "docData"
    t.string "docDate"
    t.string "docRefStatus"
    t.string "docStatus"
    t.string "docTitle"
    t.string "drName"
    t.string "gender"
    t.string "hospitalAddress"
    t.string "hospitalMailId"
    t.string "hospitalName"
    t.string "hospitalTelephoneNumber"
    t.string "insuranceCompanyAddress"
    t.string "insuranceCompanyCity"
    t.string "insuranceCompanyEmail"
    t.string "insuranceCompanyName"
    t.string "insuranceCompanyPincode"
    t.string "insuranceCompanyTelephone"
    t.string "insuranceProviderNumber"
    t.string "medicalLicenceNumber"
    t.string "outcome"
    t.string "patientDob"
    t.string "patientMob"
    t.string "patientMrNumber"
    t.string "patientName"
    t.string "policyEndDate"
    t.string "policyNumber"
    t.string "policyStartDate"
    t.string "providerNumber"
    t.string "service"
    t.string "transactionId"
  end

  create_table "coverageeligibility_responses", primary_key: "coverageeligibility_id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "entity_type"
    t.string "protocol_status"
    t.string "recipient_code"
    t.string "sender_code"
    t.string "correlation_id"
    t.string "api_call_id"
  end

  create_table "diagnosismastermappings", primary_key: "diagnosis_id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "disease"
    t.string "code"
    t.text "description"
  end

  create_table "patientclaimdetails", primary_key: "patientClaimDetailId", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "patientMrNumber", limit: 50
    t.string "gender", limit: 50
    t.string "patientName", limit: 100
    t.string "patientDob", limit: 100
    t.string "patientMob", limit: 100
    t.string "abhaNumber", limit: 100
    t.string "medicalLicenceNumber", limit: 100
    t.string "drName", limit: 100
    t.string "hospitalName", limit: 100
    t.string "hospitalAddress", limit: 100
    t.string "city", limit: 100
    t.string "hospitalTelephoneNumber", limit: 100
    t.string "hospitalMailId", limit: 100
    t.string "providerNumber", limit: 100
    t.string "insuranceCompanyName", limit: 100
    t.string "insuranceProviderNumber", limit: 100
    t.string "insuranceCompanyTelephone", limit: 100
    t.string "insuranceCompanyEmail", limit: 100
    t.string "insuranceCompanyAddress", limit: 100
    t.string "insuranceCompanyCity", limit: 100
    t.string "insuranceCompanyPincode", limit: 100
    t.string "policyStartDate", limit: 100
    t.string "policyEndDate", limit: 100
    t.string "policyNumber", limit: 100
    t.string "sumInsured", limit: 100
    t.string "balanceAmount", limit: 100
    t.string "priority", limit: 100
    t.string "claimPayeeType", limit: 100
    t.string "claimType", limit: 100
    t.string "claimSubType", limit: 100
    t.string "docTitle", limit: 100
    t.string "docDate", limit: 100
    t.string "contentType", limit: 100
    t.string "docRefStatus", limit: 100
    t.string "docStatus", limit: 100
    t.text "docData", size: :long
    t.column "status", "enum('Pending','Initiated','Completed')", null: false
    t.string "transactionId", limit: 45
    t.string "diagnosis"
    t.string "service"
  end

  create_table "patientclaimservices", primary_key: "patientClaimServiceId", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "patientClaimDetailId"
    t.string "patientMrNumber"
    t.string "patientName"
    t.string "service"
    t.string "quantity", limit: 50
    t.string "unitAmount", limit: 50
    t.string "netAmount", limit: 50
    t.string "servicedDate", limit: 50
  end

  create_table "patientpolicydetails", primary_key: "payloadId", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "patientMrNumber", limit: 20, null: false
    t.string "gender", limit: 10, null: false
    t.string "patientName", limit: 100, null: false
    t.string "patientDob", limit: 35
    t.string "patientMob", limit: 35, null: false
    t.string "abhaNumber", limit: 15, null: false
    t.string "medicalLicenceNumber", limit: 35, null: false
    t.string "drName", limit: 100
    t.string "hospitalName", limit: 100, null: false
    t.text "hospitalAddress", null: false
    t.string "city", limit: 100
    t.string "hospitalTelephoneNumber", limit: 15
    t.string "hospitalMailId", limit: 50, null: false
    t.string "providerNumber", limit: 50, null: false
    t.string "insuranceCompanyName", limit: 100, null: false
    t.string "insuranceProviderNumber", limit: 20, null: false
    t.string "insuranceCompanyTelephone", limit: 15, null: false
    t.string "insuranceCompanyEmail", limit: 50, null: false
    t.text "insuranceCompanyAddress", null: false
    t.string "insuranceCompanyCity", limit: 100, null: false
    t.string "insuranceCompanyPincode", limit: 6, null: false
    t.string "policyStartDate", limit: 20, null: false
    t.string "policyEndDate", limit: 20, null: false
    t.string "policyNumber", limit: 200, null: false
    t.column "Type", "enum('coverageeligibility','claim')", null: false
    t.column "status", "enum('Initiated','Completed','Pending')", null: false
    t.string "transactionId", limit: 100
    t.string "purpose", limit: 100
    t.string "service", limit: 250
    t.string "diagnosis", limit: 250
  end

  create_table "policyeligibilitycheckresponses", primary_key: "insurance_response_id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "gender"
    t.string "purpose"
    t.string "insuranceBenefitEndDate"
    t.string "city"
    t.string "requestReference"
    t.string "policyNumber"
    t.string "medicalLicenceNumber"
    t.string "hospitalMailId"
    t.string "patientDob"
    t.boolean "inforce"
    t.string "sumInsured"
    t.string "insuranceCompanyPincode"
    t.string "patientMob"
    t.string "hospitalTelephoneNumber"
    t.string "providerNumber"
    t.string "outcome"
    t.string "patientName"
    t.string "insuranceCompanyEmail"
    t.text "service"
    t.text "diagnosis"
    t.string "drName"
    t.string "hospitalAddress"
    t.string "policyEndDate"
    t.string "policyStartDate"
    t.string "hospitalName"
    t.string "balanceAmount"
    t.string "insuranceCompanyAddress"
    t.string "insuranceBenefitStartDate"
    t.string "insuranceCompanyName"
    t.string "disposition"
    t.string "insuranceCompanyTelephone"
    t.string "insuranceCompanyCity"
    t.string "insuranceProviderNumber"
    t.string "abhaNumber"
    t.string "patientMrNumber"
    t.string "transactionId", null: false
  end

  create_table "providerclaimsubmit_responses", primary_key: "providerClaimSubmit_id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "entity_type"
    t.string "protocol_status"
    t.string "recipient_code"
    t.string "sender_code"
    t.string "correlation_id"
    t.string "api_call_id"
  end

  create_table "requestconfigparams", primary_key: "requestConfigParams", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "senderCode", limit: 250, null: false
    t.string "recipientCode", limit: 250, null: false
    t.string "apiCallId", limit: 250, null: false
    t.string "correlationId", limit: 250, null: false
    t.string "workflowId", limit: 250, null: false
    t.string "actionJwe", limit: 250, null: false
    t.string "username", limit: 250, null: false
    t.string "password", limit: 250, null: false
    t.string "onActionStatus", limit: 250, null: false
    t.text "protocolBasePath", null: false
    t.column "Type", "enum('COVERAGE','CLAIM')", null: false
  end

  create_table "servicesmastermappings", primary_key: "service_id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "services"
    t.string "code"
    t.text "description"
  end

end
