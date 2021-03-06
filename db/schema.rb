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

ActiveRecord::Schema[7.0].define(version: 2022_05_16_041316) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "applicants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "companyjob_id"
    t.string "name"
    t.string "attachment"
    t.string "qualification"
    t.integer "salary"
    t.string "skills"
    t.integer "experience"
    t.string "email"
    t.string "phonenumber"
    t.index ["companyjob_id", "user_id"], name: "index_applicants_on_companyjob_id_and_user_id", unique: true
    t.index ["companyjob_id"], name: "index_applicants_on_companyjob_id"
    t.index ["user_id"], name: "index_applicants_on_user_id"
  end

  create_table "bookmarkusers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "companyjob_id"
    t.integer "user_id"
    t.index ["companyjob_id"], name: "index_bookmarkusers_on_companyjob_id"
    t.index ["user_id"], name: "index_bookmarkusers_on_user_id"
  end

  create_table "companyjobs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "experience"
    t.integer "salary"
    t.string "qualification"
    t.text "skills"
    t.integer "user_id"
    t.text "description"
    t.string "companyname"
    t.string "jobtype"
    t.string "jobcategory"
    t.string "location"
    t.index ["user_id"], name: "index_companyjobs_on_user_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "applicant_id"
    t.string "location"
    t.datetime "interviewtiming"
    t.string "interviewer"
    t.date "dateofinterview"
    t.string "interviewroom"
    t.string "Docstobring"
    t.index ["applicant_id"], name: "index_interviews_on_applicant_id"
  end

  create_table "interviewschedules", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookmarkusers", "companyjobs"
  add_foreign_key "bookmarkusers", "users"
end
