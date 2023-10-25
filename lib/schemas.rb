
require 'json'
require 'dry-types'
require 'dry-struct'

module Types
  include Dry.Types(default: :nominal)

  Integer                                                          = Strict::Integer
  Nil                                                              = Strict::Nil
  Bool                                                             = Strict::Bool
  Hash                                                             = Strict::Hash
  String                                                           = Strict::String
  Double                                                           = Strict::Float | Strict::Integer
  DeleteMocksMockIDServerResponsesServerResponseIDResponseLanguage = Strict::String.enum("html", "json", "javascript", "text", "xml")
  Schema                                                           = Strict::String.enum("https://schema.getpostman.com/json/collection/v2.1.0/collection.json")
  Action                                                           = Strict::String.enum("create", "update")
  Model                                                            = Strict::String.enum("api-version", "collection")
  GetApisAPIIDTasksTaskIDResponseStatus                            = Strict::String.enum("completed", "failed", "pending")
  DatumResourceType                                                = Strict::String.enum("api", "collection", "environment", "example", "folder", "globals", "request")
  ResolutionEnum                                                   = Strict::String.enum("ACCEPTED_RISK", "ACTIVE", "FALSE_POSITIVE", "REVOKED")
  Type1                                                            = Strict::String.enum("any", "default", "secret")
  GetMocksResponseMocksItemConfigDelayType                         = Strict::String.enum("fixed")
  Preset                                                           = Strict::String.enum("1", "2")
  EntityTypeEnum                                                   = Strict::String.enum("api", "collection", "workspace")
  Status1                                                          = Strict::String.enum("denied", "pending")
  DatumType                                                        = Strict::String.enum("DEFAULT", "TEAM_REGEX")
  VisibilityEnum                                                   = Strict::String.enum("partner", "personal", "private", "public", "team")
  GlobalVariableType                                               = Strict::String.enum("default", "secret")
  Op1                                                              = Strict::String.enum("add", "remove", "replace")
  Op2                                                              = Strict::String.enum("replace")
  PostApisAPIIDSchemasBodyType                                     = Strict::String.enum("asyncapi:2", "graphql", "openapi:1", "openapi:2", "openapi:3", "openapi:3_1", "proto:2", "proto:3", "raml:0_8", "raml:1", "wsdl:1", "wsdl:2")
  Strategy                                                         = Strict::String.enum("deleteSource", "updateSourceWithDestination")
  Resolution                                                       = Strict::String.enum("ACCEPTED_RISK", "FALSE_POSITIVE", "REVOKED")
  WorkspaceVisibility                                              = Strict::String.enum("personal", "private", "public", "team")
  MetaResourceType                                                 = Strict::String.enum("User")
  SchemaLanguage                                                   = Strict::String.enum("json", "yaml")
  Type2                                                            = Strict::String.enum("openapi2", "openapi3")
  MethodEnum                                                       = Strict::String.enum("COPY", "DELETE", "GET", "HEAD", "LINK", "LOCK", "OPTIONS", "PATCH", "POST", "PROPFIND", "PURGE", "PUT", "UNLINK", "UNLOCK", "VIEW")
  PutNetworkPrivateNetworkEntityRequestRequestIDBodyStatus         = Strict::String.enum("approved", "denied")
  Name                                                             = Strict::String.enum("invalidParamsError", "requestAlreadyResponded", "requestEntityAlreadyPublished", "RequestNotFound")
  ImportExportFileType                                             = Strict::String.enum("file")
  JSONSchemaType                                                   = Strict::String.enum("json")
end

class DeleteApisAPIIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :delete_apis_api_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                              d["detail"],
      instance:                            d["instance"],
      status:                              d["status"],
      title:                               d["title"],
      delete_apis_api_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => delete_apis_api_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                              d["detail"],
      title:                               d["title"],
      delete_apis_api_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                              d["detail"],
      title:                               d["title"],
      delete_apis_api_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :delete_apis_api_id_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                              d["detail"],
      title:                               d["title"],
      delete_apis_api_id_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                              d["detail"],
      title:                               d["title"],
      delete_apis_api_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDSchemasSchemaIDFilesFilePathResponse400 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :delete_apis_api_id_schemas_schema_id_files_file_path_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      title:                                                                 d["title"],
      delete_apis_api_id_schemas_schema_id_files_file_path_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_schemas_schema_id_files_file_path_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDSchemasSchemaIDFilesFilePathResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :delete_apis_api_id_schemas_schema_id_files_file_path_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      instance:                                                              d["instance"],
      status:                                                                d["status"],
      title:                                                                 d["title"],
      delete_apis_api_id_schemas_schema_id_files_file_path_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => delete_apis_api_id_schemas_schema_id_files_file_path_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDSchemasSchemaIDFilesFilePathResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_schemas_schema_id_files_file_path_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      title:                                                                 d["title"],
      delete_apis_api_id_schemas_schema_id_files_file_path_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_schemas_schema_id_files_file_path_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDSchemasSchemaIDFilesFilePathResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_schemas_schema_id_files_file_path_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      title:                                                                 d["title"],
      delete_apis_api_id_schemas_schema_id_files_file_path_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_schemas_schema_id_files_file_path_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDSchemasSchemaIDFilesFilePathResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :delete_apis_api_id_schemas_schema_id_files_file_path_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      title:                                                                 d["title"],
      delete_apis_api_id_schemas_schema_id_files_file_path_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_schemas_schema_id_files_file_path_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDSchemasSchemaIDFilesFilePathResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_schemas_schema_id_files_file_path_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      title:                                                                 d["title"],
      delete_apis_api_id_schemas_schema_id_files_file_path_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_schemas_schema_id_files_file_path_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDVersionsVersionIDResponse400Error < Dry::Struct

  # Details about the error message.
  attribute :message, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_versions_version_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                       d["message"],
      delete_apis_api_id_versions_version_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_apis_api_id_versions_version_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDVersionsVersionIDResponse400 < Dry::Struct

  # Information about the error.
  attribute :error, DeleteApisAPIIDVersionsVersionIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteApisAPIIDVersionsVersionIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDVersionsVersionIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :delete_apis_api_id_versions_version_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                  d["detail"],
      instance:                                                d["instance"],
      status:                                                  d["status"],
      title:                                                   d["title"],
      delete_apis_api_id_versions_version_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => delete_apis_api_id_versions_version_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDVersionsVersionIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_versions_version_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                  d["detail"],
      title:                                                   d["title"],
      delete_apis_api_id_versions_version_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_versions_version_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDVersionsVersionIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_versions_version_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                  d["detail"],
      title:                                                   d["title"],
      delete_apis_api_id_versions_version_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_versions_version_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteApisAPIIDVersionsVersionIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_apis_api_id_versions_version_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                  d["detail"],
      title:                                                   d["title"],
      delete_apis_api_id_versions_version_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_apis_api_id_versions_version_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponseData < Dry::Struct

  # The folder's ID.
  attribute :id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:    d["id"],
      owner: d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"    => id,
      "owner" => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse < Dry::Struct

  # The folder's information.
  attribute :data, DeleteCollectionsCollectionIDFoldersFolderIDResponseData.optional

  attribute :delete_collections_collection_id_folders_folder_id_response_meta, Types::Any.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                             d["data"] ? DeleteCollectionsCollectionIDFoldersFolderIDResponseData.from_dynamic!(d["data"]) : nil,
      delete_collections_collection_id_folders_folder_id_response_meta: d["meta"],
      model_id:                                                         d["model_id"],
      revision:                                                         d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => delete_collections_collection_id_folders_folder_id_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_folders_folder_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                   d["details"] ? DeleteCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                   d["message"],
      delete_collections_collection_id_folders_folder_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_folders_folder_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse401 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDFoldersFolderIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDFoldersFolderIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_folders_folder_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                   d["details"] ? DeleteCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                   d["message"],
      delete_collections_collection_id_folders_folder_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_folders_folder_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse404 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDFoldersFolderIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDFoldersFolderIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDFoldersFolderIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_collections_collection_id_folders_folder_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                              d["detail"],
      title:                                                               d["title"],
      delete_collections_collection_id_folders_folder_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_collections_collection_id_folders_folder_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponseData < Dry::Struct

  # The request's ID.
  attribute :id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:    d["id"],
      owner: d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"    => id,
      "owner" => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse < Dry::Struct

  # The request's information.
  attribute :data, DeleteCollectionsCollectionIDRequestsRequestIDResponseData.optional

  attribute :delete_collections_collection_id_requests_request_id_response_meta, Types::Any.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                               d["data"] ? DeleteCollectionsCollectionIDRequestsRequestIDResponseData.from_dynamic!(d["data"]) : nil,
      delete_collections_collection_id_requests_request_id_response_meta: d["meta"],
      model_id:                                                           d["model_id"],
      revision:                                                           d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => delete_collections_collection_id_requests_request_id_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error's name.
  attribute :delete_collections_collection_id_requests_request_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                     d["details"] ? DeleteCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                     d["message"],
      delete_collections_collection_id_requests_request_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_requests_request_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse401 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDRequestsRequestIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDRequestsRequestIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_requests_request_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                     d["details"] ? DeleteCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                     d["message"],
      delete_collections_collection_id_requests_request_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_requests_request_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse404 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDRequestsRequestIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDRequestsRequestIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDRequestsRequestIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_collections_collection_id_requests_request_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                d["detail"],
      title:                                                                 d["title"],
      delete_collections_collection_id_requests_request_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_collections_collection_id_requests_request_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponseCollection < Dry::Struct

  # The deleted collection's ID.
  attribute :id, Types::String.optional

  # The deleted collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:  d["id"],
      uid: d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"  => id,
      "uid" => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse < Dry::Struct

  # Information about the deleted collection.
  attribute :collection, DeleteCollectionsCollectionIDResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? DeleteCollectionsCollectionIDResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_collections_collection_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                 d["message"],
      delete_collections_collection_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_collections_collection_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse401 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse404ErrorDetails < Dry::Struct

  # The collection ID.
  attribute :id, Types::String.optional

  # The instance item.
  attribute :item, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:   d["id"],
      item: d["item"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "item" => item,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                 d["details"] ? DeleteCollectionsCollectionIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                 d["message"],
      delete_collections_collection_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse404 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                 d["message"],
      delete_collections_collection_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_collections_collection_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponse500 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponseData < Dry::Struct

  # The response's ID.
  attribute :id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:    d["id"],
      owner: d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"    => id,
      "owner" => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse < Dry::Struct

  # The response's information.
  attribute :data, DeleteCollectionsCollectionIDResponsesResponseIDResponseData.optional

  attribute :delete_collections_collection_id_responses_response_id_response_meta, Types::Any.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                                 d["data"] ? DeleteCollectionsCollectionIDResponsesResponseIDResponseData.from_dynamic!(d["data"]) : nil,
      delete_collections_collection_id_responses_response_id_response_meta: d["meta"],
      model_id:                                                             d["model_id"],
      revision:                                                             d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => delete_collections_collection_id_responses_response_id_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_responses_response_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                       d["details"] ? DeleteCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                       d["message"],
      delete_collections_collection_id_responses_response_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_responses_response_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse401 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDResponsesResponseIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDResponsesResponseIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, DeleteCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_collections_collection_id_responses_response_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                       d["details"] ? DeleteCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                       d["message"],
      delete_collections_collection_id_responses_response_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => delete_collections_collection_id_responses_response_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse404 < Dry::Struct
  attribute :error, DeleteCollectionsCollectionIDResponsesResponseIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteCollectionsCollectionIDResponsesResponseIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteCollectionsCollectionIDResponsesResponseIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :delete_collections_collection_id_responses_response_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                  d["detail"],
      title:                                                                   d["title"],
      delete_collections_collection_id_responses_response_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => delete_collections_collection_id_responses_response_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponseEnvironment < Dry::Struct

  # The deleted environment's ID.
  attribute :id, Types::String.optional

  # The deleted environment's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:  d["id"],
      uid: d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"  => id,
      "uid" => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse < Dry::Struct
  attribute :environment, DeleteEnvironmentsEnvironmentIDResponseEnvironment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environment: d["environment"] ? DeleteEnvironmentsEnvironmentIDResponseEnvironment.from_dynamic!(d["environment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environment" => environment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_environments_environment_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                   d["message"],
      delete_environments_environment_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_environments_environment_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse401 < Dry::Struct
  attribute :error, DeleteEnvironmentsEnvironmentIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteEnvironmentsEnvironmentIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_environments_environment_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                   d["message"],
      delete_environments_environment_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_environments_environment_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse404 < Dry::Struct
  attribute :error, DeleteEnvironmentsEnvironmentIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteEnvironmentsEnvironmentIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_environments_environment_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                   d["message"],
      delete_environments_environment_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_environments_environment_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteEnvironmentsEnvironmentIDResponse500 < Dry::Struct
  attribute :error, DeleteEnvironmentsEnvironmentIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteEnvironmentsEnvironmentIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponseMock < Dry::Struct

  # The mock server's ID.
  attribute :id, Types::String.optional

  # The mock server's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:  d["id"],
      uid: d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"  => id,
      "uid" => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse < Dry::Struct

  # Information about the mock server.
  attribute :mock, DeleteMocksMockIDResponseMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? DeleteMocksMockIDResponseMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      delete_mocks_mock_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse400 < Dry::Struct
  attribute :error, DeleteMocksMockIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_mocks_mock_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      delete_mocks_mock_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse401 < Dry::Struct
  attribute :error, DeleteMocksMockIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                     d["details"],
      message:                                     d["message"],
      delete_mocks_mock_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => delete_mocks_mock_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse404 < Dry::Struct
  attribute :error, DeleteMocksMockIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      delete_mocks_mock_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDResponse500 < Dry::Struct
  attribute :error, DeleteMocksMockIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponseHeadersItem < Dry::Struct

  # The request header's key value.
  attribute :key, Types::String.optional

  # The request header's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      key:   d["key"],
      value: d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "key"   => key,
      "value" => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module DeleteMocksMockIDServerResponsesServerResponseIDResponseLanguage
  HTML       = "html"
  JSON       = "json"
  Javascript = "javascript"
  Text       = "text"
  XML        = "xml"
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse < Dry::Struct

  # The server response's body that returns when calling the mock server.
  attribute :body, Types::String.optional

  # The date and time at which the server response was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user who created the server response.
  attribute :created_by, Types::String.optional

  # The server response's request headers, such as Content-Type, Accept, encoding, and other
  # information.
  attribute :headers, Types.Array(DeleteMocksMockIDServerResponsesServerResponseIDResponseHeadersItem).optional

  # The server response's ID.
  attribute :id, Types::String.optional

  # The server response's body language type.
  attribute :language, Types::DeleteMocksMockIDServerResponsesServerResponseIDResponseLanguage.optional

  # The server response's name.
  attribute :delete_mocks_mock_id_server_responses_server_response_id_response_name, Types::String.optional

  # The server response's 5xx HTTP response code.
  attribute :status_code, Types::Double.optional

  # The user ID of the user who last updated the server response.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:                                                                   d["body"],
      created_at:                                                             d["createdAt"],
      created_by:                                                             d["createdBy"],
      headers:                                                                d["headers"]&.map { |x| DeleteMocksMockIDServerResponsesServerResponseIDResponseHeadersItem.from_dynamic!(x) },
      id:                                                                     d["id"],
      language:                                                               d["language"],
      delete_mocks_mock_id_server_responses_server_response_id_response_name: d["name"],
      status_code:                                                            d["statusCode"],
      updated_by:                                                             d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"       => body,
      "createdAt"  => created_at,
      "createdBy"  => created_by,
      "headers"    => headers&.map { |x| x.to_dynamic },
      "id"         => id,
      "language"   => language,
      "name"       => delete_mocks_mock_id_server_responses_server_response_id_response_name,
      "statusCode" => status_code,
      "updatedBy"  => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_server_responses_server_response_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                         d["message"],
      delete_mocks_mock_id_server_responses_server_response_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_server_responses_server_response_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse400 < Dry::Struct
  attribute :error, DeleteMocksMockIDServerResponsesServerResponseIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDServerResponsesServerResponseIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_mocks_mock_id_server_responses_server_response_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                         d["message"],
      delete_mocks_mock_id_server_responses_server_response_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_server_responses_server_response_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse401 < Dry::Struct
  attribute :error, DeleteMocksMockIDServerResponsesServerResponseIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDServerResponsesServerResponseIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_server_responses_server_response_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                         d["details"],
      message:                                                                         d["message"],
      delete_mocks_mock_id_server_responses_server_response_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => delete_mocks_mock_id_server_responses_server_response_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse404 < Dry::Struct
  attribute :error, DeleteMocksMockIDServerResponsesServerResponseIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDServerResponsesServerResponseIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_server_responses_server_response_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                         d["message"],
      delete_mocks_mock_id_server_responses_server_response_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_server_responses_server_response_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDServerResponsesServerResponseIDResponse500 < Dry::Struct
  attribute :error, DeleteMocksMockIDServerResponsesServerResponseIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDServerResponsesServerResponseIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponseMock < Dry::Struct

  # The mock server's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse < Dry::Struct
  attribute :mock, DeleteMocksMockIDUnpublishResponseMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? DeleteMocksMockIDUnpublishResponseMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_unpublish_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                               d["message"],
      delete_mocks_mock_id_unpublish_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_unpublish_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse400 < Dry::Struct
  attribute :error, DeleteMocksMockIDUnpublishResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDUnpublishResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_mocks_mock_id_unpublish_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                               d["message"],
      delete_mocks_mock_id_unpublish_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_unpublish_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse401 < Dry::Struct
  attribute :error, DeleteMocksMockIDUnpublishResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDUnpublishResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_unpublish_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                               d["details"],
      message:                                               d["message"],
      delete_mocks_mock_id_unpublish_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => delete_mocks_mock_id_unpublish_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse404 < Dry::Struct
  attribute :error, DeleteMocksMockIDUnpublishResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDUnpublishResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_mocks_mock_id_unpublish_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                               d["message"],
      delete_mocks_mock_id_unpublish_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_mocks_mock_id_unpublish_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMocksMockIDUnpublishResponse500 < Dry::Struct
  attribute :error, DeleteMocksMockIDUnpublishResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMocksMockIDUnpublishResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponseMonitor < Dry::Struct

  # The monitor's ID.
  attribute :id, Types::String.optional

  # The monitor's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:  d["id"],
      uid: d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"  => id,
      "uid" => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse < Dry::Struct
  attribute :monitor, DeleteMonitorsMonitorIDResponseMonitor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitor: d["monitor"] ? DeleteMonitorsMonitorIDResponseMonitor.from_dynamic!(d["monitor"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitor" => monitor&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_monitors_monitor_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      delete_monitors_monitor_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_monitors_monitor_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse400 < Dry::Struct
  attribute :error, DeleteMonitorsMonitorIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMonitorsMonitorIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_monitors_monitor_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      delete_monitors_monitor_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_monitors_monitor_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse401 < Dry::Struct
  attribute :error, DeleteMonitorsMonitorIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMonitorsMonitorIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_monitors_monitor_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      delete_monitors_monitor_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_monitors_monitor_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteMonitorsMonitorIDResponse500 < Dry::Struct
  attribute :error, DeleteMonitorsMonitorIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteMonitorsMonitorIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponseElementType < Dry::Struct

  # The element's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse < Dry::Struct

  # The Private API Network element type. The name of the object is the element type.
  attribute :element_type, DeleteNetworkPrivateElementTypeElementIDResponseElementType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      element_type: d["elementType"] ? DeleteNetworkPrivateElementTypeElementIDResponseElementType.from_dynamic!(d["elementType"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "elementType" => element_type&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse400 < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_network_private_element_type_element_id_response400_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                         d["message"],
      delete_network_private_element_type_element_id_response400_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_network_private_element_type_element_id_response400_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_network_private_element_type_element_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      delete_network_private_element_type_element_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_network_private_element_type_element_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse401 < Dry::Struct
  attribute :error, DeleteNetworkPrivateElementTypeElementIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteNetworkPrivateElementTypeElementIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_network_private_element_type_element_id_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      delete_network_private_element_type_element_id_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_network_private_element_type_element_id_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse403 < Dry::Struct
  attribute :error, DeleteNetworkPrivateElementTypeElementIDResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteNetworkPrivateElementTypeElementIDResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_network_private_element_type_element_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      delete_network_private_element_type_element_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_network_private_element_type_element_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse404 < Dry::Struct
  attribute :error, DeleteNetworkPrivateElementTypeElementIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteNetworkPrivateElementTypeElementIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_network_private_element_type_element_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      delete_network_private_element_type_element_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_network_private_element_type_element_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteNetworkPrivateElementTypeElementIDResponse500 < Dry::Struct
  attribute :error, DeleteNetworkPrivateElementTypeElementIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteNetworkPrivateElementTypeElementIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteScimV2GroupsGroupIDResponse400 < Dry::Struct
  attribute :detail,  Types::String.optional
  attribute :schemas, Types.Array(Types::String).optional
  attribute :status,  Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteScimV2GroupsGroupIDResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteScimV2GroupsGroupIDResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteScimV2GroupsGroupIDResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteScimV2GroupsGroupIDResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteScimV2GroupsGroupIDResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponseWorkspace < Dry::Struct

  # The workspace's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse < Dry::Struct

  # Information about the deleted workspace.
  attribute :workspace, DeleteWorkspacesWorkspaceIDResponseWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? DeleteWorkspacesWorkspaceIDResponseWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_workspaces_workspace_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                               d["message"],
      delete_workspaces_workspace_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_workspaces_workspace_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse400 < Dry::Struct
  attribute :error, DeleteWorkspacesWorkspaceIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteWorkspacesWorkspaceIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :delete_workspaces_workspace_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                               d["message"],
      delete_workspaces_workspace_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_workspaces_workspace_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse401 < Dry::Struct
  attribute :error, DeleteWorkspacesWorkspaceIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteWorkspacesWorkspaceIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :delete_workspaces_workspace_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                               d["message"],
      delete_workspaces_workspace_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => delete_workspaces_workspace_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class DeleteWorkspacesWorkspaceIDResponse500 < Dry::Struct
  attribute :error, DeleteWorkspacesWorkspaceIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? DeleteWorkspacesWorkspaceIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Schema
  HTTPSSchemaGetpostmanCOMJSONCollectionV210CollectionJSON = "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
end

class GetApisAPIIDCollectionsCollectionIDResponseInfo < Dry::Struct

  # The collection's ID.
  attribute :postman_id, Types::String.optional

  # The collection's description.
  attribute :description, Types::String.optional

  # The collection's name.
  attribute :get_apis_api_id_collections_collection_id_response_info_name, Types::String.optional

  # The collection's JSON schema version.
  attribute :schema, Types::Schema.optional

  # The date and time at which the collection was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      postman_id:                                                   d["_postman_id"],
      description:                                                  d["description"],
      get_apis_api_id_collections_collection_id_response_info_name: d["name"],
      schema:                                                       d["schema"],
      updated_at:                                                   d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "_postman_id" => postman_id,
      "description" => description,
      "name"        => get_apis_api_id_collections_collection_id_response_info_name,
      "schema"      => schema,
      "updatedAt"   => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponseItemItem < Dry::Struct

  # The collection's event information. For a complete list of values, refer to the
  # `definitions.event` entry in the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :event, Types.Array(Types::Any).optional

  # The collection item's ID.
  attribute :id, Types::String.optional

  # The collection item's human-readable identifier.
  attribute :get_apis_api_id_collections_collection_id_response_item_item_name, Types::String.optional

  attribute :request, Types::Any.optional

  # The collection's response information. For a complete list of values, refer to the
  # `definitions.response` entry in the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :response, Types.Array(Types::Any).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      event:                                                             d["event"],
      id:                                                                d["id"],
      get_apis_api_id_collections_collection_id_response_item_item_name: d["name"],
      request:                                                           d["request"],
      response:                                                          d["response"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "event"    => event,
      "id"       => id,
      "name"     => get_apis_api_id_collections_collection_id_response_item_item_name,
      "request"  => request,
      "response" => response,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponse < Dry::Struct

  # Information about the collection.
  attribute :info, GetApisAPIIDCollectionsCollectionIDResponseInfo.optional

  attribute :item, Types.Array(GetApisAPIIDCollectionsCollectionIDResponseItemItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      info: d["info"] ? GetApisAPIIDCollectionsCollectionIDResponseInfo.from_dynamic!(d["info"]) : nil,
      item: d["item"]&.map { |x| GetApisAPIIDCollectionsCollectionIDResponseItemItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "info" => info&.to_dynamic,
      "item" => item&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponse400 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_collections_collection_id_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                     d["detail"],
      title:                                                      d["title"],
      get_apis_api_id_collections_collection_id_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_collections_collection_id_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_collections_collection_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                     d["detail"],
      instance:                                                   d["instance"],
      status:                                                     d["status"],
      title:                                                      d["title"],
      get_apis_api_id_collections_collection_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_collections_collection_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_collections_collection_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                     d["detail"],
      title:                                                      d["title"],
      get_apis_api_id_collections_collection_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_collections_collection_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_collections_collection_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                     d["detail"],
      title:                                                      d["title"],
      get_apis_api_id_collections_collection_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_collections_collection_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDCollectionsCollectionIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_collections_collection_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                     d["detail"],
      title:                                                      d["title"],
      get_apis_api_id_collections_collection_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_collections_collection_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      instance:                         d["instance"],
      status:                           d["status"],
      title:                            d["title"],
      get_apis_api_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      get_apis_api_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      get_apis_api_id_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      get_apis_api_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesFilePathResponse < Dry::Struct

  # The schema file's content.
  attribute :content, Types::String.optional

  # The date and time at which the file was created.
  attribute :created_at, Types::String.optional

  # The user Id of the user that created the file.
  attribute :created_by, Types::String.optional

  # The schema file's ID.
  attribute :id, Types::String.optional

  # The schema file's name.
  attribute :get_apis_api_id_schemas_schema_id_files_file_path_response_name, Types::String.optional

  # The file system path to the schema file.
  attribute :path, Types::String.optional

  # The date and time at which the file was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that last updated the file.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      content:                                                         d["content"],
      created_at:                                                      d["createdAt"],
      created_by:                                                      d["createdBy"],
      id:                                                              d["id"],
      get_apis_api_id_schemas_schema_id_files_file_path_response_name: d["name"],
      path:                                                            d["path"],
      updated_at:                                                      d["updatedAt"],
      updated_by:                                                      d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "content"   => content,
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => get_apis_api_id_schemas_schema_id_files_file_path_response_name,
      "path"      => path,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesFilePathResponse400 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_files_file_path_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      get_apis_api_id_schemas_schema_id_files_file_path_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_file_path_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesFilePathResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_files_file_path_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      instance:                                                           d["instance"],
      status:                                                             d["status"],
      title:                                                              d["title"],
      get_apis_api_id_schemas_schema_id_files_file_path_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_schemas_schema_id_files_file_path_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesFilePathResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_files_file_path_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      get_apis_api_id_schemas_schema_id_files_file_path_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_file_path_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesFilePathResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_files_file_path_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      get_apis_api_id_schemas_schema_id_files_file_path_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_file_path_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesFilePathResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_files_file_path_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      get_apis_api_id_schemas_schema_id_files_file_path_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_file_path_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponseFilesItem < Dry::Struct

  # The date and time at which the file was created.
  attribute :created_at, Types::String.optional

  # The user Id of the user that created the file.
  attribute :created_by, Types::Double.optional

  # The schema file's ID.
  attribute :id, Types::String.optional

  # The schema file's name.
  attribute :get_apis_api_id_schemas_schema_id_files_response_files_item_name, Types::String.optional

  # The file system path to the schema file.
  attribute :path, Types::String.optional

  # The date and time at which the file was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that last updated the file.
  attribute :updated_by, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                       d["createdAt"],
      created_by:                                                       d["createdBy"],
      id:                                                               d["id"],
      get_apis_api_id_schemas_schema_id_files_response_files_item_name: d["name"],
      path:                                                             d["path"],
      updated_at:                                                       d["updatedAt"],
      updated_by:                                                       d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => get_apis_api_id_schemas_schema_id_files_response_files_item_name,
      "path"      => path,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponseMeta < Dry::Struct

  # The pointer to the next record in the set of paginated results.
  attribute :next_cursor, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      next_cursor: d["nextCursor"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "nextCursor" => next_cursor,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponse < Dry::Struct

  # The schema's files.
  attribute :files, Types.Array(GetApisAPIIDSchemasSchemaIDFilesResponseFilesItem).optional

  # The schema's non-standard meta information.
  attribute :get_apis_api_id_schemas_schema_id_files_response_meta, GetApisAPIIDSchemasSchemaIDFilesResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      files:                                                 d["files"]&.map { |x| GetApisAPIIDSchemasSchemaIDFilesResponseFilesItem.from_dynamic!(x) },
      get_apis_api_id_schemas_schema_id_files_response_meta: d["meta"] ? GetApisAPIIDSchemasSchemaIDFilesResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "files" => files&.map { |x| x.to_dynamic },
      "meta"  => get_apis_api_id_schemas_schema_id_files_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponse400 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_files_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                   d["detail"],
      title:                                                    d["title"],
      get_apis_api_id_schemas_schema_id_files_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_files_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                   d["detail"],
      instance:                                                 d["instance"],
      status:                                                   d["status"],
      title:                                                    d["title"],
      get_apis_api_id_schemas_schema_id_files_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_schemas_schema_id_files_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_files_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                   d["detail"],
      title:                                                    d["title"],
      get_apis_api_id_schemas_schema_id_files_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_files_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                   d["detail"],
      title:                                                    d["title"],
      get_apis_api_id_schemas_schema_id_files_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDFilesResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_files_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                   d["detail"],
      title:                                                    d["title"],
      get_apis_api_id_schemas_schema_id_files_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_files_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDResponse400 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                             d["detail"],
      title:                                              d["title"],
      get_apis_api_id_schemas_schema_id_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                             d["detail"],
      instance:                                           d["instance"],
      status:                                             d["status"],
      title:                                              d["title"],
      get_apis_api_id_schemas_schema_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_schemas_schema_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                             d["detail"],
      title:                                              d["title"],
      get_apis_api_id_schemas_schema_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                             d["detail"],
      title:                                              d["title"],
      get_apis_api_id_schemas_schema_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_schemas_schema_id_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                             d["detail"],
      title:                                              d["title"],
      get_apis_api_id_schemas_schema_id_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDSchemasSchemaIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_schemas_schema_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                             d["detail"],
      title:                                              d["title"],
      get_apis_api_id_schemas_schema_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_schemas_schema_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTagsResponseTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d["slug"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTagsResponse < Dry::Struct

  # A list of associated tags.
  attribute :tags, Types.Array(GetApisAPIIDTagsResponseTagsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d["tags"]&.map { |x| GetApisAPIIDTagsResponseTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTagsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_apis_api_id_tags_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      status:                                d["status"],
      title:                                 d["title"],
      get_apis_api_id_tags_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_apis_api_id_tags_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTagsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_apis_api_id_tags_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      status:                                d["status"],
      title:                                 d["title"],
      get_apis_api_id_tags_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_apis_api_id_tags_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTagsResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_apis_api_id_tags_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      instance:                              d["instance"],
      status:                                d["status"],
      title:                                 d["title"],
      get_apis_api_id_tags_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_tags_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTagsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_apis_api_id_tags_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      instance:                              d["instance"],
      status:                                d["status"],
      title:                                 d["title"],
      get_apis_api_id_tags_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_tags_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Action
  Create = "create"
  Update = "update"
end

module Model
  APIVersion = "api-version"
  Collection = "collection"
end

class GetApisAPIIDTasksTaskIDResponseMeta < Dry::Struct

  # The task's action.
  attribute :action, Types::Action.optional

  # The model for which the task is performing the operation.
  attribute :model, Types::Model.optional

  # The endpoint URL that created the task.
  attribute :url, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      action: d["action"],
      model:  d["model"],
      url:    d["url"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "action" => action,
      "model"  => model,
      "url"    => url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module GetApisAPIIDTasksTaskIDResponseStatus
  Completed = "completed"
  Failed    = "failed"
  Pending   = "pending"
end

class GetApisAPIIDTasksTaskIDResponse < Dry::Struct

  # The date and time at which the task was created.
  attribute :created_at, Types::String.optional

  attribute :details, Types::Any.optional

  # The task's ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :get_apis_api_id_tasks_task_id_response_meta, GetApisAPIIDTasksTaskIDResponseMeta.optional

  # The task's current status.
  attribute :status, Types::GetApisAPIIDTasksTaskIDResponseStatus.optional

  # The date and time at which the task was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                  d["createdAt"],
      details:                                     d["details"],
      id:                                          d["id"],
      get_apis_api_id_tasks_task_id_response_meta: d["meta"] ? GetApisAPIIDTasksTaskIDResponseMeta.from_dynamic!(d["meta"]) : nil,
      status:                                      d["status"],
      updated_at:                                  d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "details"   => details,
      "id"        => id,
      "meta"      => get_apis_api_id_tasks_task_id_response_meta&.to_dynamic,
      "status"    => status,
      "updatedAt" => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTasksTaskIDResponse400 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_tasks_task_id_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                         d["detail"],
      title:                                          d["title"],
      get_apis_api_id_tasks_task_id_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_tasks_task_id_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTasksTaskIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_tasks_task_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                         d["detail"],
      instance:                                       d["instance"],
      status:                                         d["status"],
      title:                                          d["title"],
      get_apis_api_id_tasks_task_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_tasks_task_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTasksTaskIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_tasks_task_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                         d["detail"],
      title:                                          d["title"],
      get_apis_api_id_tasks_task_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_tasks_task_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDTasksTaskIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_tasks_task_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                         d["detail"],
      title:                                          d["title"],
      get_apis_api_id_tasks_task_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_tasks_task_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponseMeta < Dry::Struct

  # The maximum number of records in the paginated response.
  attribute :limit, Types::Double.optional

  # The Base64-encoded value that points to the next record in the results set.
  attribute :next_cursor, Types::String.optional

  # The number of records that match the defined criteria.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:       d["limit"],
      next_cursor: d["nextCursor"],
      total:       d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"      => limit,
      "nextCursor" => next_cursor,
      "total"      => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponseVersionsItem < Dry::Struct

  # The date and time at which the version was created.
  attribute :created_at, Types::String.optional

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :get_apis_api_id_versions_response_versions_item_name, Types::String.optional

  # The version's release notes.
  attribute :release_notes, Types::String.optional

  # The date and time at which the version was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                           d["createdAt"],
      id:                                                   d["id"],
      get_apis_api_id_versions_response_versions_item_name: d["name"],
      release_notes:                                        d["releaseNotes"],
      updated_at:                                           d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"    => created_at,
      "id"           => id,
      "name"         => get_apis_api_id_versions_response_versions_item_name,
      "releaseNotes" => release_notes,
      "updatedAt"    => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponse < Dry::Struct

  # The response's meta information for paginated results.
  attribute :get_apis_api_id_versions_response_meta, GetApisAPIIDVersionsResponseMeta.optional

  attribute :versions, Types.Array(GetApisAPIIDVersionsResponseVersionsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      get_apis_api_id_versions_response_meta: d["meta"] ? GetApisAPIIDVersionsResponseMeta.from_dynamic!(d["meta"]) : nil,
      versions:                               d["versions"]&.map { |x| GetApisAPIIDVersionsResponseVersionsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "meta"     => get_apis_api_id_versions_response_meta&.to_dynamic,
      "versions" => versions&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_versions_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      instance:                                  d["instance"],
      status:                                    d["status"],
      title:                                     d["title"],
      get_apis_api_id_versions_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_versions_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_versions_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      get_apis_api_id_versions_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_versions_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_versions_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      get_apis_api_id_versions_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_versions_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_versions_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      get_apis_api_id_versions_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_versions_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponseVersionCollectionsItem < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :get_apis_api_id_versions_version_id_response_version_collections_item_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                                         d["id"],
      get_apis_api_id_versions_version_id_response_version_collections_item_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "type" => get_apis_api_id_versions_version_id_response_version_collections_item_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponseVersionSchemasItem < Dry::Struct

  # The schema's ID.
  attribute :id, Types::String.optional

  # The schema type.
  attribute :get_apis_api_id_versions_version_id_response_version_schemas_item_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                                     d["id"],
      get_apis_api_id_versions_version_id_response_version_schemas_item_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "type" => get_apis_api_id_versions_version_id_response_version_schemas_item_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponseVersion < Dry::Struct
  attribute :collections, Types.Array(GetApisAPIIDVersionsVersionIDResponseVersionCollectionsItem).optional

  # The date and time at which the version was created.
  attribute :created_at, Types::String.optional

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :get_apis_api_id_versions_version_id_response_version_name, Types::String.optional

  # The version's release notes.
  attribute :release_notes, Types::String.optional

  attribute :schemas, Types.Array(GetApisAPIIDVersionsVersionIDResponseVersionSchemasItem).optional

  # The date and time at which the version was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collections:                                               d["collections"]&.map { |x| GetApisAPIIDVersionsVersionIDResponseVersionCollectionsItem.from_dynamic!(x) },
      created_at:                                                d["createdAt"],
      id:                                                        d["id"],
      get_apis_api_id_versions_version_id_response_version_name: d["name"],
      release_notes:                                             d["releaseNotes"],
      schemas:                                                   d["schemas"]&.map { |x| GetApisAPIIDVersionsVersionIDResponseVersionSchemasItem.from_dynamic!(x) },
      updated_at:                                                d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collections"  => collections&.map { |x| x.to_dynamic },
      "createdAt"    => created_at,
      "id"           => id,
      "name"         => get_apis_api_id_versions_version_id_response_version_name,
      "releaseNotes" => release_notes,
      "schemas"      => schemas&.map { |x| x.to_dynamic },
      "updatedAt"    => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponse < Dry::Struct

  # Information about the API version.
  attribute :version, GetApisAPIIDVersionsVersionIDResponseVersion.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      version: d["version"] ? GetApisAPIIDVersionsVersionIDResponseVersion.from_dynamic!(d["version"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "version" => version&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_api_id_versions_version_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      instance:                                             d["instance"],
      status:                                               d["status"],
      title:                                                d["title"],
      get_apis_api_id_versions_version_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_apis_api_id_versions_version_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_versions_version_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      title:                                                d["title"],
      get_apis_api_id_versions_version_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_versions_version_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisAPIIDVersionsVersionIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_api_id_versions_version_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      title:                                                d["title"],
      get_apis_api_id_versions_version_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_api_id_versions_version_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponseApisItem < Dry::Struct

  # The date and time at which the API was created.
  attribute :created_at, Types::String.optional

  # The Postman ID of the user that created the API.
  attribute :created_by, Types::Double.optional

  # The API's description.
  attribute :description, Types::String.optional

  # The API's ID.
  attribute :id, Types::String.optional

  # The API's name.
  attribute :get_apis_response_apis_item_name, Types::String.optional

  # The API's short summary.
  attribute :summary, Types::String.optional

  # The date and time at which the API was updated.
  attribute :updated_at, Types::String.optional

  # The Postman ID of the user that updated the API.
  attribute :updated_by, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                       d["createdAt"],
      created_by:                       d["createdBy"],
      description:                      d["description"],
      id:                               d["id"],
      get_apis_response_apis_item_name: d["name"],
      summary:                          d["summary"],
      updated_at:                       d["updatedAt"],
      updated_by:                       d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"   => created_at,
      "createdBy"   => created_by,
      "description" => description,
      "id"          => id,
      "name"        => get_apis_response_apis_item_name,
      "summary"     => summary,
      "updatedAt"   => updated_at,
      "updatedBy"   => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponseMeta < Dry::Struct

  # The maximum number of records in the paginated response.
  attribute :limit, Types::Double.optional

  # The Base64-encoded value that points to the next record in the results set.
  attribute :next_cursor, Types::String.optional

  # The number of records that match the defined criteria.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:       d["limit"],
      next_cursor: d["nextCursor"],
      total:       d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"      => limit,
      "nextCursor" => next_cursor,
      "total"      => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponse < Dry::Struct
  attribute :apis, Types.Array(GetApisResponseApisItem).optional

  # The response's meta information for paginated results.
  attribute :get_apis_response_meta, GetApisResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      apis:                   d["apis"]&.map { |x| GetApisResponseApisItem.from_dynamic!(x) },
      get_apis_response_meta: d["meta"] ? GetApisResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "apis" => apis&.map { |x| x.to_dynamic },
      "meta" => get_apis_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_apis_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                         d["message"],
      get_apis_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_apis_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponse401 < Dry::Struct
  attribute :error, GetApisResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetApisResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                    d["detail"],
      title:                     d["title"],
      get_apis_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :get_apis_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                    d["detail"],
      title:                     d["title"],
      get_apis_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetApisResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_apis_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                    d["detail"],
      title:                     d["title"],
      get_apis_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_apis_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponseTrailsItemDataActor < Dry::Struct

  # If true, the user is active. If false, the user is deactivated.
  attribute :active, Types::Bool.optional

  # The user's email address.
  attribute :email, Types::String.optional

  attribute :id, Types::Double.optional

  # The user's name.
  attribute :get_audit_logs_response_trails_item_data_actor_name, Types::String.optional

  # The user's username.
  attribute :username, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                                              d["active"],
      email:                                               d["email"],
      id:                                                  d["id"],
      get_audit_logs_response_trails_item_data_actor_name: d["name"],
      username:                                            d["username"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"   => active,
      "email"    => email,
      "id"       => id,
      "name"     => get_audit_logs_response_trails_item_data_actor_name,
      "username" => username,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponseTrailsItemDataTeam < Dry::Struct

  # The team's ID.
  attribute :id, Types::Double.optional

  # The team's name.
  attribute :get_audit_logs_response_trails_item_data_team_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                 d["id"],
      get_audit_logs_response_trails_item_data_team_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => get_audit_logs_response_trails_item_data_team_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponseTrailsItemDataUser < Dry::Struct

  # The user's email address.
  attribute :email, Types::String.optional

  # The user's ID.
  attribute :id, Types::Double.optional

  # The user's name.
  attribute :get_audit_logs_response_trails_item_data_user_name, Types::String.optional

  # The user's username.
  attribute :username, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      email:                                              d["email"],
      id:                                                 d["id"],
      get_audit_logs_response_trails_item_data_user_name: d["name"],
      username:                                           d["username"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "email"    => email,
      "id"       => id,
      "name"     => get_audit_logs_response_trails_item_data_user_name,
      "username" => username,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponseTrailsItemData < Dry::Struct

  # Information about the user who preformed the audit event.
  attribute :actor, GetAuditLogsResponseTrailsItemDataActor.optional

  # The user's team information.
  attribute :team, GetAuditLogsResponseTrailsItemDataTeam.optional

  # Information about the user.
  attribute :user, GetAuditLogsResponseTrailsItemDataUser.optional

  attribute :variables, Types::Any.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      actor:     d["actor"] ? GetAuditLogsResponseTrailsItemDataActor.from_dynamic!(d["actor"]) : nil,
      team:      d["team"] ? GetAuditLogsResponseTrailsItemDataTeam.from_dynamic!(d["team"]) : nil,
      user:      d["user"] ? GetAuditLogsResponseTrailsItemDataUser.from_dynamic!(d["user"]) : nil,
      variables: d["variables"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "actor"     => actor&.to_dynamic,
      "team"      => team&.to_dynamic,
      "user"      => user&.to_dynamic,
      "variables" => variables,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponseTrailsItem < Dry::Struct

  # The action performed by the user.
  attribute :action, Types::String.optional

  attribute :data, GetAuditLogsResponseTrailsItemData.optional

  # The audit event's ID.
  attribute :id, Types::Double.optional

  # The IP address of the user that performed the action.
  attribute :ip, Types::String.optional

  # The audit event's description.
  attribute :message, Types::String.optional

  # The date and time at which the event occurred.
  attribute :timestamp, Types::String.optional

  # The user agent information.
  attribute :user_agent, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      action:     d["action"],
      data:       d["data"] ? GetAuditLogsResponseTrailsItemData.from_dynamic!(d["data"]) : nil,
      id:         d["id"],
      ip:         d["ip"],
      message:    d["message"],
      timestamp:  d["timestamp"],
      user_agent: d["userAgent"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "action"    => action,
      "data"      => data&.to_dynamic,
      "id"        => id,
      "ip"        => ip,
      "message"   => message,
      "timestamp" => timestamp,
      "userAgent" => user_agent,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponse < Dry::Struct
  attribute :trails, Types.Array(GetAuditLogsResponseTrailsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      trails: d["trails"]&.map { |x| GetAuditLogsResponseTrailsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "trails" => trails&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_audit_logs_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                               d["message"],
      get_audit_logs_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_audit_logs_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponse401 < Dry::Struct
  attribute :error, GetAuditLogsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetAuditLogsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_audit_logs_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                               d["message"],
      get_audit_logs_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_audit_logs_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetAuditLogsResponse500 < Dry::Struct
  attribute :error, GetAuditLogsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetAuditLogsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponseData < Dry::Struct

  # The collection ID that the folder belongs to.
  attribute :collection, Types::String.optional

  # The folder's creation date and time.
  attribute :created_at, Types::String.optional

  # The folder's description.
  attribute :description, Types::String.optional

  # The folder's ID.
  attribute :id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :last_revision, Types::Integer.optional

  # The user ID of the user that last updated the folder.
  attribute :last_updated_by, Types::String.optional

  # The folder's name.
  attribute :get_collections_collection_id_folders_folder_id_response_data_name, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  # The date and time at which the folder was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                                                         d["collection"],
      created_at:                                                         d["createdAt"],
      description:                                                        d["description"],
      id:                                                                 d["id"],
      last_revision:                                                      d["lastRevision"],
      last_updated_by:                                                    d["lastUpdatedBy"],
      get_collections_collection_id_folders_folder_id_response_data_name: d["name"],
      owner:                                                              d["owner"],
      updated_at:                                                         d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"    => collection,
      "createdAt"     => created_at,
      "description"   => description,
      "id"            => id,
      "lastRevision"  => last_revision,
      "lastUpdatedBy" => last_updated_by,
      "name"          => get_collections_collection_id_folders_folder_id_response_data_name,
      "owner"         => owner,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse < Dry::Struct

  # Information about the folder. For a complete list of properties, refer to the
  # `definitions.folder` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, GetCollectionsCollectionIDFoldersFolderIDResponseData.optional

  attribute :get_collections_collection_id_folders_folder_id_response_meta, Types::Any.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                          d["data"] ? GetCollectionsCollectionIDFoldersFolderIDResponseData.from_dynamic!(d["data"]) : nil,
      get_collections_collection_id_folders_folder_id_response_meta: d["meta"],
      model_id:                                                      d["model_id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => get_collections_collection_id_folders_folder_id_response_meta,
      "model_id" => model_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, GetCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_folders_folder_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                d["details"] ? GetCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                d["message"],
      get_collections_collection_id_folders_folder_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => get_collections_collection_id_folders_folder_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse401 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDFoldersFolderIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDFoldersFolderIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, GetCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_folders_folder_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                d["details"] ? GetCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                d["message"],
      get_collections_collection_id_folders_folder_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => get_collections_collection_id_folders_folder_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse404 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDFoldersFolderIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDFoldersFolderIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDFoldersFolderIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_collections_collection_id_folders_folder_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                           d["detail"],
      title:                                                            d["title"],
      get_collections_collection_id_folders_folder_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_collections_collection_id_folders_folder_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponseData < Dry::Struct

  # The request's creation date and time.
  attribute :created_at, Types::String.optional

  # The request's ID.
  attribute :id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :last_revision, Types::Integer.optional

  # The user ID of the user that last updated the request.
  attribute :last_updated_by, Types::String.optional

  # The request's name.
  attribute :get_collections_collection_id_requests_request_id_response_data_name, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  # The date and time at which the request was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                           d["createdAt"],
      id:                                                                   d["id"],
      last_revision:                                                        d["lastRevision"],
      last_updated_by:                                                      d["lastUpdatedBy"],
      get_collections_collection_id_requests_request_id_response_data_name: d["name"],
      owner:                                                                d["owner"],
      updated_at:                                                           d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"     => created_at,
      "id"            => id,
      "lastRevision"  => last_revision,
      "lastUpdatedBy" => last_updated_by,
      "name"          => get_collections_collection_id_requests_request_id_response_data_name,
      "owner"         => owner,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse < Dry::Struct

  # Information about the request. For a complete list of properties, refer to the
  # `definitions.request` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, GetCollectionsCollectionIDRequestsRequestIDResponseData.optional

  attribute :get_collections_collection_id_requests_request_id_response_meta, Types::Any.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                            d["data"] ? GetCollectionsCollectionIDRequestsRequestIDResponseData.from_dynamic!(d["data"]) : nil,
      get_collections_collection_id_requests_request_id_response_meta: d["meta"],
      model_id:                                                        d["model_id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => get_collections_collection_id_requests_request_id_response_meta,
      "model_id" => model_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, GetCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error's name.
  attribute :get_collections_collection_id_requests_request_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                  d["details"] ? GetCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                  d["message"],
      get_collections_collection_id_requests_request_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => get_collections_collection_id_requests_request_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse401 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDRequestsRequestIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDRequestsRequestIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, GetCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_requests_request_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                  d["details"] ? GetCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                  d["message"],
      get_collections_collection_id_requests_request_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => get_collections_collection_id_requests_request_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse404 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDRequestsRequestIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDRequestsRequestIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDRequestsRequestIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_collections_collection_id_requests_request_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      get_collections_collection_id_requests_request_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_collections_collection_id_requests_request_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponseCollectionInfo < Dry::Struct

  # The collection's Postman ID.
  attribute :postman_id, Types::String.optional

  # The collection's description.
  attribute :description, Types::String.optional

  # The collection's name.
  attribute :get_collections_collection_id_response_collection_info_name, Types::String.optional

  # A URL to the collection's schema.
  attribute :schema, Types::String.optional

  # The collection's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the collection was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      postman_id:                                                  d["_postman_id"],
      description:                                                 d["description"],
      get_collections_collection_id_response_collection_info_name: d["name"],
      schema:                                                      d["schema"],
      uid:                                                         d["uid"],
      updated_at:                                                  d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "_postman_id" => postman_id,
      "description" => description,
      "name"        => get_collections_collection_id_response_collection_info_name,
      "schema"      => schema,
      "uid"         => uid,
      "updatedAt"   => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponseCollection < Dry::Struct

  # An object that contains basic information about the collection.
  attribute :info, GetCollectionsCollectionIDResponseCollectionInfo.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      info: d["info"] ? GetCollectionsCollectionIDResponseCollectionInfo.from_dynamic!(d["info"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "info" => info&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse < Dry::Struct

  # For a complete list of this endpoint's possible values, use the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :collection, GetCollectionsCollectionIDResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? GetCollectionsCollectionIDResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                              d["message"],
      get_collections_collection_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_collections_collection_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse400 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_collections_collection_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                              d["message"],
      get_collections_collection_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_collections_collection_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse401 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                              d["message"],
      get_collections_collection_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_collections_collection_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponse500 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponseData < Dry::Struct

  # The response's creation date and time.
  attribute :created_at, Types::String.optional

  # The response's ID.
  attribute :id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :last_revision, Types::Integer.optional

  # The user ID of the user that last updated the response.
  attribute :last_updated_by, Types::String.optional

  # The response's name.
  attribute :get_collections_collection_id_responses_response_id_response_data_name, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  # The ID of the request that the response belongs to.
  attribute :request, Types::String.optional

  # The date and time at which the response was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                             d["createdAt"],
      id:                                                                     d["id"],
      last_revision:                                                          d["lastRevision"],
      last_updated_by:                                                        d["lastUpdatedBy"],
      get_collections_collection_id_responses_response_id_response_data_name: d["name"],
      owner:                                                                  d["owner"],
      request:                                                                d["request"],
      updated_at:                                                             d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"     => created_at,
      "id"            => id,
      "lastRevision"  => last_revision,
      "lastUpdatedBy" => last_updated_by,
      "name"          => get_collections_collection_id_responses_response_id_response_data_name,
      "owner"         => owner,
      "request"       => request,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse < Dry::Struct

  # Information about the response. For a complete list of properties, refer to the
  # `request.responses` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, GetCollectionsCollectionIDResponsesResponseIDResponseData.optional

  attribute :get_collections_collection_id_responses_response_id_response_meta, Types::Any.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                              d["data"] ? GetCollectionsCollectionIDResponsesResponseIDResponseData.from_dynamic!(d["data"]) : nil,
      get_collections_collection_id_responses_response_id_response_meta: d["meta"],
      model_id:                                                          d["model_id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => get_collections_collection_id_responses_response_id_response_meta,
      "model_id" => model_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, GetCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_responses_response_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                    d["details"] ? GetCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                    d["message"],
      get_collections_collection_id_responses_response_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => get_collections_collection_id_responses_response_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse401 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDResponsesResponseIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDResponsesResponseIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, GetCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_collection_id_responses_response_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                    d["details"] ? GetCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                    d["message"],
      get_collections_collection_id_responses_response_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => get_collections_collection_id_responses_response_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse404 < Dry::Struct
  attribute :error, GetCollectionsCollectionIDResponsesResponseIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsCollectionIDResponsesResponseIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDResponsesResponseIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_collections_collection_id_responses_response_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                               d["detail"],
      title:                                                                d["title"],
      get_collections_collection_id_responses_response_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_collections_collection_id_responses_response_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTagsResponseTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d["slug"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTagsResponse < Dry::Struct

  # A list of associated tags.
  attribute :tags, Types.Array(GetCollectionsCollectionIDTagsResponseTagsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d["tags"]&.map { |x| GetCollectionsCollectionIDTagsResponseTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTagsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_collections_collection_id_tags_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      status:                                              d["status"],
      title:                                               d["title"],
      get_collections_collection_id_tags_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_collections_collection_id_tags_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTagsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_collections_collection_id_tags_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      status:                                              d["status"],
      title:                                               d["title"],
      get_collections_collection_id_tags_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_collections_collection_id_tags_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTagsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_collections_collection_id_tags_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      instance:                                            d["instance"],
      status:                                              d["status"],
      title:                                               d["title"],
      get_collections_collection_id_tags_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_collections_collection_id_tags_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTransformationsResponse < Dry::Struct

  # The collection's transformed output, in a stringified OpenAPI format.
  attribute :output, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      output: d["output"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "output" => output,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTransformationsResponse401 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The instance in which the error occurred.
  attribute :instance, Types::String.optional

  # The error's status code.
  attribute :status, Types::Integer.optional

  # The title of the error message.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_collections_collection_id_transformations_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                         d["detail"],
      instance:                                                       d["instance"],
      status:                                                         d["status"],
      title:                                                          d["title"],
      get_collections_collection_id_transformations_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_collections_collection_id_transformations_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTransformationsResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The instance in which the error occurred.
  attribute :instance, Types::String.optional

  # The error's status code.
  attribute :status, Types::Integer.optional

  # The title of the error message.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_collections_collection_id_transformations_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                         d["detail"],
      instance:                                                       d["instance"],
      status:                                                         d["status"],
      title:                                                          d["title"],
      get_collections_collection_id_transformations_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_collections_collection_id_transformations_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsCollectionIDTransformationsResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The instance in which the error occurred.
  attribute :instance, Types::String.optional

  # The error's status code.
  attribute :status, Types::Integer.optional

  # The title of the error message.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_collections_collection_id_transformations_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                         d["detail"],
      instance:                                                       d["instance"],
      status:                                                         d["status"],
      title:                                                          d["title"],
      get_collections_collection_id_transformations_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_collections_collection_id_transformations_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponseCollectionsItemFork < Dry::Struct

  # The fork's creation date and time.
  attribute :created_at, Types::String.optional

  # The unique ID of the fork's source collection.
  attribute :from, Types::String.optional

  # The fork's label.
  attribute :label, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at: d["createdAt"],
      from:       d["from"],
      label:      d["label"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "from"      => from,
      "label"     => label,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponseCollectionsItem < Dry::Struct

  # The collection's creation date and time.
  attribute :created_at, Types::String.optional

  # If the collection is
  # [forked](https://learning.postman.com/docs/collaborating-in-postman/version-control/#forking-postman-entities),
  # the fork's information.
  attribute :get_collections_response_collections_item_fork, GetCollectionsResponseCollectionsItemFork.optional

  # The collection's ID.
  attribute :id, Types::String.optional

  # If true, the collection is publicly available.
  attribute :is_public, Types::Bool.optional

  # The collection's name.
  attribute :get_collections_response_collections_item_name, Types::String.optional

  # The owner of the collection.
  attribute :owner, Types::String.optional

  # The collection's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the collection was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                     d["createdAt"],
      get_collections_response_collections_item_fork: d["fork"] ? GetCollectionsResponseCollectionsItemFork.from_dynamic!(d["fork"]) : nil,
      id:                                             d["id"],
      is_public:                                      d["isPublic"],
      get_collections_response_collections_item_name: d["name"],
      owner:                                          d["owner"],
      uid:                                            d["uid"],
      updated_at:                                     d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "fork"      => get_collections_response_collections_item_fork&.to_dynamic,
      "id"        => id,
      "isPublic"  => is_public,
      "name"      => get_collections_response_collections_item_name,
      "owner"     => owner,
      "uid"       => uid,
      "updatedAt" => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponse < Dry::Struct
  attribute :collections, Types.Array(GetCollectionsResponseCollectionsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collections: d["collections"]&.map { |x| GetCollectionsResponseCollectionsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collections" => collections&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_collections_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                d["message"],
      get_collections_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_collections_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponse401 < Dry::Struct
  attribute :error, GetCollectionsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_collections_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                d["message"],
      get_collections_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_collections_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetCollectionsResponse500 < Dry::Struct
  attribute :error, GetCollectionsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetCollectionsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module DatumResourceType
  API         = "api"
  Collection  = "collection"
  Environment = "environment"
  Example     = "example"
  Folder      = "folder"
  Globals     = "globals"
  Request     = "request"
end

class GetDetectedSecretsSecretIDLocationsResponseDataItem < Dry::Struct

  # The date and time at which the secret was detected.
  attribute :detected_at, Types::String.optional

  # If true, the resource in which the secret was found was deleted.
  attribute :is_resource_deleted, Types::Bool.optional

  # The ID of the user who leaked the secret.
  attribute :leaked_by, Types::Double.optional

  # The location where the secret was found.
  attribute :location, Types::String.optional

  # The number of times the secret occurs in the location.
  attribute :occurrences, Types::Double.optional

  # The parent resource's unique ID. If the resource is a request, folder, or example, this
  # value is a collection ID. If the resource is a collection, globals, or environment, this
  # is the resource's ID.
  attribute :parent_resource_id, Types::String.optional

  # The unique ID of the resource where the secret was detected.
  attribute :resource_id, Types::String.optional

  # The type of resource in which the secret was detected.
  attribute :resource_type, Types::DatumResourceType.optional

  # The URL to the resource that contains the secret.
  attribute :url, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detected_at:         d["detectedAt"],
      is_resource_deleted: d["isResourceDeleted"],
      leaked_by:           d["leakedBy"],
      location:            d["location"],
      occurrences:         d["occurrences"],
      parent_resource_id:  d["parentResourceId"],
      resource_id:         d["resourceId"],
      resource_type:       d["resourceType"],
      url:                 d["url"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detectedAt"        => detected_at,
      "isResourceDeleted" => is_resource_deleted,
      "leakedBy"          => leaked_by,
      "location"          => location,
      "occurrences"       => occurrences,
      "parentResourceId"  => parent_resource_id,
      "resourceId"        => resource_id,
      "resourceType"      => resource_type,
      "url"               => url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module ResolutionEnum
  AcceptedRisk  = "ACCEPTED_RISK"
  Active        = "ACTIVE"
  FalsePositive = "FALSE_POSITIVE"
  Revoked       = "REVOKED"
end

class GetDetectedSecretsSecretIDLocationsResponseMetaActivityFeedItem < Dry::Struct

  # The date and time at which the resolution status was last updated.
  attribute :resolved_at, Types::String.optional

  # The ID of the user that updated the secret's resolution status.
  attribute :resolved_by, Types::Double.optional

  # The secret's current resolution status:
  # - `ACTIVE` — The secret is active.
  # - `FALSE_POSITIVE` — The discovered secret is not an actual secret.
  # - `REVOKED` — The secret is valid, but the user rotated their key to resolve the issue.
  # - `ACCEPTED_RISK` — The Secret Scanner found the secret, but user accepts the risk of
  # publishing it.
  attribute :status, Types::ResolutionEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      resolved_at: d["resolvedAt"],
      resolved_by: d["resolvedBy"],
      status:      d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "resolvedAt" => resolved_at,
      "resolvedBy" => resolved_by,
      "status"     => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetDetectedSecretsSecretIDLocationsResponseMeta < Dry::Struct

  # The history of the secret's resolution status changes.
  attribute :activity_feed, Types.Array(GetDetectedSecretsSecretIDLocationsResponseMetaActivityFeedItem).optional

  # The pointer to the first record of the set of paginated results.
  attribute :cursor, Types::String.optional

  # The maximum number of rows to return in the response.
  attribute :limit, Types::Double.optional

  attribute :next_cursor, Types::Any.optional

  # The secret's obfuscated value.
  attribute :obfuscated_secret, Types::String.optional

  # The secret's SHA-256 hash.
  attribute :secret_hash, Types::String.optional

  # The type of thesecret.
  attribute :secret_type, Types::String.optional

  # The total number of discovered secret locations.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      activity_feed:     d["activityFeed"]&.map { |x| GetDetectedSecretsSecretIDLocationsResponseMetaActivityFeedItem.from_dynamic!(x) },
      cursor:            d["cursor"],
      limit:             d["limit"],
      next_cursor:       d["nextCursor"],
      obfuscated_secret: d["obfuscatedSecret"],
      secret_hash:       d["secretHash"],
      secret_type:       d["secretType"],
      total:             d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "activityFeed"     => activity_feed&.map { |x| x.to_dynamic },
      "cursor"           => cursor,
      "limit"            => limit,
      "nextCursor"       => next_cursor,
      "obfuscatedSecret" => obfuscated_secret,
      "secretHash"       => secret_hash,
      "secretType"       => secret_type,
      "total"            => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetDetectedSecretsSecretIDLocationsResponse < Dry::Struct
  attribute :data,                                                   Types.Array(GetDetectedSecretsSecretIDLocationsResponseDataItem).optional
  attribute :get_detected_secrets_secret_id_locations_response_meta, GetDetectedSecretsSecretIDLocationsResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                   d["data"]&.map { |x| GetDetectedSecretsSecretIDLocationsResponseDataItem.from_dynamic!(x) },
      get_detected_secrets_secret_id_locations_response_meta: d["meta"] ? GetDetectedSecretsSecretIDLocationsResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data" => data&.map { |x| x.to_dynamic },
      "meta" => get_detected_secrets_secret_id_locations_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetDetectedSecretsSecretIDLocationsResponse400 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_detected_secrets_secret_id_locations_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                                  d["instance"],
      status:                                                    d["status"],
      title:                                                     d["title"],
      get_detected_secrets_secret_id_locations_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_detected_secrets_secret_id_locations_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetDetectedSecretsSecretIDLocationsResponse401 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_detected_secrets_secret_id_locations_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                                  d["instance"],
      status:                                                    d["status"],
      title:                                                     d["title"],
      get_detected_secrets_secret_id_locations_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_detected_secrets_secret_id_locations_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetDetectedSecretsSecretIDLocationsResponse403 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_detected_secrets_secret_id_locations_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                                  d["instance"],
      status:                                                    d["status"],
      title:                                                     d["title"],
      get_detected_secrets_secret_id_locations_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_detected_secrets_secret_id_locations_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetDetectedSecretsSecretIDLocationsResponse500 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_detected_secrets_secret_id_locations_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                                  d["instance"],
      status:                                                    d["status"],
      title:                                                     d["title"],
      get_detected_secrets_secret_id_locations_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_detected_secrets_secret_id_locations_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Type1
  Any     = "any"
  Default = "default"
  Secret  = "secret"
end

class GetEnvironmentsEnvironmentIDResponseEnvironmentValuesItemItem < Dry::Struct

  # If true, the variable is enabled.
  attribute :enabled, Types::Bool.optional

  # The variable's name.
  attribute :key, Types::String.optional

  # The variable type.
  attribute :get_environments_environment_id_response_environment_values_item_item_type, Types::Type1.optional

  # The variable's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled:                                                                    d["enabled"],
      key:                                                                        d["key"],
      get_environments_environment_id_response_environment_values_item_item_type: d["type"],
      value:                                                                      d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
      "key"     => key,
      "type"    => get_environments_environment_id_response_environment_values_item_item_type,
      "value"   => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponseEnvironment < Dry::Struct

  # The date and time at which the environment was created.
  attribute :created_at, Types::String.optional

  # The environment's ID.
  attribute :id, Types::String.optional

  # If true, the environment is public.
  attribute :is_public, Types::Bool.optional

  # The environment's name.
  attribute :get_environments_environment_id_response_environment_name, Types::String.optional

  # The ID of environment's owner.
  attribute :owner, Types::String.optional

  # The date and time at which the environment was last updated.
  attribute :updated_at, Types::String.optional

  # Information about the environment's variables.
  attribute :values, Types.Array(Types.Array(GetEnvironmentsEnvironmentIDResponseEnvironmentValuesItemItem)).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                d["createdAt"],
      id:                                                        d["id"],
      is_public:                                                 d["isPublic"],
      get_environments_environment_id_response_environment_name: d["name"],
      owner:                                                     d["owner"],
      updated_at:                                                d["updatedAt"],
      values:                                                    d["values"]&.map { |x| x.map { |x| GetEnvironmentsEnvironmentIDResponseEnvironmentValuesItemItem.from_dynamic!(x) } },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "id"        => id,
      "isPublic"  => is_public,
      "name"      => get_environments_environment_id_response_environment_name,
      "owner"     => owner,
      "updatedAt" => updated_at,
      "values"    => values&.map { |x| x.map { |x| x.to_dynamic } },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse < Dry::Struct
  attribute :environment, GetEnvironmentsEnvironmentIDResponseEnvironment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environment: d["environment"] ? GetEnvironmentsEnvironmentIDResponseEnvironment.from_dynamic!(d["environment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environment" => environment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_environments_environment_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      get_environments_environment_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_environments_environment_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse400 < Dry::Struct
  attribute :error, GetEnvironmentsEnvironmentIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetEnvironmentsEnvironmentIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_environments_environment_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      get_environments_environment_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_environments_environment_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse401 < Dry::Struct
  attribute :error, GetEnvironmentsEnvironmentIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetEnvironmentsEnvironmentIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_environments_environment_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      get_environments_environment_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_environments_environment_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsEnvironmentIDResponse500 < Dry::Struct
  attribute :error, GetEnvironmentsEnvironmentIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetEnvironmentsEnvironmentIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponseEnvironmentsItem < Dry::Struct

  # The date and time at which the environment was created.
  attribute :created_at, Types::String.optional

  # The environment's ID.
  attribute :id, Types::String.optional

  # If true, the environment is public.
  attribute :is_public, Types::Bool.optional

  # The environment's name.
  attribute :get_environments_response_environments_item_name, Types::String.optional

  # The environment owner's ID.
  attribute :owner, Types::String.optional

  # The environment's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the environment was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                       d["createdAt"],
      id:                                               d["id"],
      is_public:                                        d["isPublic"],
      get_environments_response_environments_item_name: d["name"],
      owner:                                            d["owner"],
      uid:                                              d["uid"],
      updated_at:                                       d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "id"        => id,
      "isPublic"  => is_public,
      "name"      => get_environments_response_environments_item_name,
      "owner"     => owner,
      "uid"       => uid,
      "updatedAt" => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse < Dry::Struct
  attribute :environments, Types.Array(GetEnvironmentsResponseEnvironmentsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environments: d["environments"]&.map { |x| GetEnvironmentsResponseEnvironmentsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environments" => environments&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_environments_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                 d["message"],
      get_environments_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_environments_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse401 < Dry::Struct
  attribute :error, GetEnvironmentsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetEnvironmentsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_environments_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                 d["message"],
      get_environments_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_environments_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse404 < Dry::Struct
  attribute :error, GetEnvironmentsResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetEnvironmentsResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_environments_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                 d["message"],
      get_environments_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_environments_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetEnvironmentsResponse500 < Dry::Struct
  attribute :error, GetEnvironmentsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetEnvironmentsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponseOperationsItem < Dry::Struct

  # The operation's limit value.
  attribute :limit, Types::Double.optional

  # The operation's name.
  attribute :get_me_response_operations_item_name, Types::String.optional

  # The operation's overage value.
  attribute :overage, Types::Double.optional

  # The operation's current usage value.
  attribute :usage, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:                                d["limit"],
      get_me_response_operations_item_name: d["name"],
      overage:                              d["overage"],
      usage:                                d["usage"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"   => limit,
      "name"    => get_me_response_operations_item_name,
      "overage" => overage,
      "usage"   => usage,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponseUser < Dry::Struct

  # The user's avatar image URL.
  attribute :avatar, Types::String.optional

  # The user's email address.
  attribute :email, Types::String.optional

  # The user's full name.
  attribute :full_name, Types::String.optional

  # The user's Postman ID.
  attribute :id, Types::Double.optional

  # If true, the user's information is publicly available.
  attribute :is_public, Types::Bool.optional

  # The team ID the user is assigned to. This returns a `0` value if the user is not assigned
  # to a team.
  attribute :team_id, Types::Integer.optional

  # The user's username.
  attribute :username, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      avatar:    d["avatar"],
      email:     d["email"],
      full_name: d["fullName"],
      id:        d["id"],
      is_public: d["isPublic"],
      team_id:   d["teamId"],
      username:  d["username"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "avatar"   => avatar,
      "email"    => email,
      "fullName" => full_name,
      "id"       => id,
      "isPublic" => is_public,
      "teamId"   => team_id,
      "username" => username,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponse < Dry::Struct

  # Information about operations and their usage limits. The API does not return this object
  # for users with the [Guest
  # role](https://learning.postman.com/docs/collaborating-in-postman/roles-and-permissions/#team-roles).
  attribute :operations, Types.Array(GetMeResponseOperationsItem).optional

  # Information about the authenticated user.
  attribute :user, GetMeResponseUser.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      operations: d["operations"]&.map { |x| GetMeResponseOperationsItem.from_dynamic!(x) },
      user:       d["user"] ? GetMeResponseUser.from_dynamic!(d["user"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "operations" => operations&.map { |x| x.to_dynamic },
      "user"       => user&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_me_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                       d["message"],
      get_me_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_me_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponse401 < Dry::Struct
  attribute :error, GetMeResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMeResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_me_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                       d["message"],
      get_me_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_me_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMeResponse500 < Dry::Struct
  attribute :error, GetMeResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMeResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemRequestBody < Dry::Struct

  # The request body's contents.
  attribute :data, Types::String.optional

  # The request body's media type (mode).
  attribute :mode, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data: d["data"],
      mode: d["mode"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data" => data,
      "mode" => mode,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemRequestHeaders < Dry::Struct

  # The request header's name.
  attribute :key, Types::String.optional

  # The request header's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      key:   d["key"],
      value: d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "key"   => key,
      "value" => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemRequest < Dry::Struct

  # The request's body information.
  attribute :body, GetMocksMockIDCallLogsResponseCallLogsItemRequestBody.optional

  # The request's headers.
  attribute :headers, GetMocksMockIDCallLogsResponseCallLogsItemRequestHeaders.optional

  # The request method.
  attribute :get_mocks_mock_id_call_logs_response_call_logs_item_request_method, Types::String.optional

  # The request's path.
  attribute :path, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:                                                               d["body"] ? GetMocksMockIDCallLogsResponseCallLogsItemRequestBody.from_dynamic!(d["body"]) : nil,
      headers:                                                            d["headers"] ? GetMocksMockIDCallLogsResponseCallLogsItemRequestHeaders.from_dynamic!(d["headers"]) : nil,
      get_mocks_mock_id_call_logs_response_call_logs_item_request_method: d["method"],
      path:                                                               d["path"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"    => body&.to_dynamic,
      "headers" => headers&.to_dynamic,
      "method"  => get_mocks_mock_id_call_logs_response_call_logs_item_request_method,
      "path"    => path,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemResponseBody < Dry::Struct

  # The response body's contents.
  attribute :data, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data: d["data"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data" => data,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemResponseHeadersDescription < Dry::Struct

  # The response header description's content.
  attribute :content, Types::String.optional

  # The response header description's media type.
  attribute :get_mocks_mock_id_call_logs_response_call_logs_item_response_headers_description_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      content:                                                                               d["content"],
      get_mocks_mock_id_call_logs_response_call_logs_item_response_headers_description_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "content" => content,
      "type"    => get_mocks_mock_id_call_logs_response_call_logs_item_response_headers_description_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemResponseHeaders < Dry::Struct

  # The response header's description information.
  attribute :description, GetMocksMockIDCallLogsResponseCallLogsItemResponseHeadersDescription.optional

  # The response header's name.
  attribute :key, Types::String.optional

  # The response header's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description: d["description"] ? GetMocksMockIDCallLogsResponseCallLogsItemResponseHeadersDescription.from_dynamic!(d["description"]) : nil,
      key:         d["key"],
      value:       d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description&.to_dynamic,
      "key"         => key,
      "value"       => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItemResponse < Dry::Struct

  # The response's body information.
  attribute :body, GetMocksMockIDCallLogsResponseCallLogsItemResponseBody.optional

  # The response's headers.
  attribute :headers, GetMocksMockIDCallLogsResponseCallLogsItemResponseHeaders.optional

  # The response's status code.
  attribute :status_code, Types::Double.optional

  # The type of response.
  attribute :get_mocks_mock_id_call_logs_response_call_logs_item_response_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:                                                              d["body"] ? GetMocksMockIDCallLogsResponseCallLogsItemResponseBody.from_dynamic!(d["body"]) : nil,
      headers:                                                           d["headers"] ? GetMocksMockIDCallLogsResponseCallLogsItemResponseHeaders.from_dynamic!(d["headers"]) : nil,
      status_code:                                                       d["statusCode"],
      get_mocks_mock_id_call_logs_response_call_logs_item_response_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"       => body&.to_dynamic,
      "headers"    => headers&.to_dynamic,
      "statusCode" => status_code,
      "type"       => get_mocks_mock_id_call_logs_response_call_logs_item_response_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseCallLogsItem < Dry::Struct

  # The server response's ID.
  attribute :id, Types::String.optional

  # The server response's request information.
  attribute :request, GetMocksMockIDCallLogsResponseCallLogsItemRequest.optional

  # The server response's response information.
  attribute :response, GetMocksMockIDCallLogsResponseCallLogsItemResponse.optional

  # The server response's name.
  attribute :response_name, Types::String.optional

  # The date and time at which the server response was served.
  attribute :served_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:            d["id"],
      request:       d["request"] ? GetMocksMockIDCallLogsResponseCallLogsItemRequest.from_dynamic!(d["request"]) : nil,
      response:      d["response"] ? GetMocksMockIDCallLogsResponseCallLogsItemResponse.from_dynamic!(d["response"]) : nil,
      response_name: d["responseName"],
      served_at:     d["servedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"           => id,
      "request"      => request&.to_dynamic,
      "response"     => response&.to_dynamic,
      "responseName" => response_name,
      "servedAt"     => served_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponseMeta < Dry::Struct
  attribute :next_cursor, Types::String.optional.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      next_cursor: d["nextCursor"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "nextCursor" => next_cursor,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse < Dry::Struct
  attribute :call_logs, Types.Array(GetMocksMockIDCallLogsResponseCallLogsItem).optional

  # The response's non-standard meta information.
  attribute :get_mocks_mock_id_call_logs_response_meta, GetMocksMockIDCallLogsResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      call_logs:                                 d["call-logs"]&.map { |x| GetMocksMockIDCallLogsResponseCallLogsItem.from_dynamic!(x) },
      get_mocks_mock_id_call_logs_response_meta: d["meta"] ? GetMocksMockIDCallLogsResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "call-logs" => call_logs&.map { |x| x.to_dynamic },
      "meta"      => get_mocks_mock_id_call_logs_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_call_logs_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      get_mocks_mock_id_call_logs_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_call_logs_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse400 < Dry::Struct
  attribute :error, GetMocksMockIDCallLogsResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDCallLogsResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_mocks_mock_id_call_logs_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      get_mocks_mock_id_call_logs_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_call_logs_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse401 < Dry::Struct
  attribute :error, GetMocksMockIDCallLogsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDCallLogsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_call_logs_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                            d["details"],
      message:                                            d["message"],
      get_mocks_mock_id_call_logs_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => get_mocks_mock_id_call_logs_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse404 < Dry::Struct
  attribute :error, GetMocksMockIDCallLogsResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDCallLogsResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_call_logs_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      get_mocks_mock_id_call_logs_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_call_logs_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDCallLogsResponse500 < Dry::Struct
  attribute :error, GetMocksMockIDCallLogsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDCallLogsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponseMockConfig < Dry::Struct

  # A list of the mock server's headers.
  attribute :headers, Types.Array(Types::Any).optional

  # If true, match the request body.
  attribute :match_body, Types::Bool.optional

  # If true, match query parameters.
  attribute :match_query_params, Types::Bool.optional

  # If true, use wildcard variable matching.
  attribute :match_wildcards, Types::Bool.optional

  # The ID of mock server's default response for requests. All calls to the mock server will
  # return the defined response.
  attribute :server_response_id, Types::String.optional.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      headers:            d["headers"],
      match_body:         d["matchBody"],
      match_query_params: d["matchQueryParams"],
      match_wildcards:    d["matchWildcards"],
      server_response_id: d["serverResponseId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "headers"          => headers,
      "matchBody"        => match_body,
      "matchQueryParams" => match_query_params,
      "matchWildcards"   => match_wildcards,
      "serverResponseId" => server_response_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponseMock < Dry::Struct

  # The mock's associated collection unique ID.
  attribute :collection, Types::String.optional

  # Information about the mock server's configuration.
  attribute :config, GetMocksMockIDResponseMockConfig.optional

  # The date and time at which the mock server was created.
  attribute :created_at, Types::String.optional

  # If true, the mock server is not active. Mock servers deactivate when a linked collection
  # or environment is deleted.
  attribute :deactivated, Types::Bool.optional

  # The mock server's associated environment ID.
  attribute :environment, Types::String.optional

  # The mock server's ID.
  attribute :id, Types::String.optional

  # If true, the mock server is public.
  attribute :is_public, Types::Bool.optional

  # The mock server URL.
  attribute :mock_url, Types::String.optional

  # The mock server's name.
  attribute :get_mocks_mock_id_response_mock_name, Types::String.optional

  # The ID of mock server's owner.
  attribute :owner, Types::String.optional

  # The mock server's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the mock server was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                           d["collection"],
      config:                               d["config"] ? GetMocksMockIDResponseMockConfig.from_dynamic!(d["config"]) : nil,
      created_at:                           d["createdAt"],
      deactivated:                          d["deactivated"],
      environment:                          d["environment"],
      id:                                   d["id"],
      is_public:                            d["isPublic"],
      mock_url:                             d["mockUrl"],
      get_mocks_mock_id_response_mock_name: d["name"],
      owner:                                d["owner"],
      uid:                                  d["uid"],
      updated_at:                           d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"  => collection,
      "config"      => config&.to_dynamic,
      "createdAt"   => created_at,
      "deactivated" => deactivated,
      "environment" => environment,
      "id"          => id,
      "isPublic"    => is_public,
      "mockUrl"     => mock_url,
      "name"        => get_mocks_mock_id_response_mock_name,
      "owner"       => owner,
      "uid"         => uid,
      "updatedAt"   => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse < Dry::Struct
  attribute :mock, GetMocksMockIDResponseMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? GetMocksMockIDResponseMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_mocks_mock_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      get_mocks_mock_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse401 < Dry::Struct
  attribute :error, GetMocksMockIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                  d["details"],
      message:                                  d["message"],
      get_mocks_mock_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => get_mocks_mock_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse404 < Dry::Struct
  attribute :error, GetMocksMockIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      get_mocks_mock_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDResponse500 < Dry::Struct
  attribute :error, GetMocksMockIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_mocks_mock_id_server_responses_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                   d["message"],
      get_mocks_mock_id_server_responses_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse401 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_server_responses_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                   d["details"],
      message:                                                   d["message"],
      get_mocks_mock_id_server_responses_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse404 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_server_responses_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                   d["message"],
      get_mocks_mock_id_server_responses_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponse500 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesResponseItem < Dry::Struct

  # The date and time at which the server response was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user who created the server response.
  attribute :created_by, Types::String.optional

  # The server response's ID.
  attribute :id, Types::String.optional

  # The server response's name.
  attribute :get_mocks_mock_id_server_responses_response_item_name, Types::String.optional

  # The server response's 5xx HTTP response code.
  attribute :status_code, Types::Double.optional

  # The date and time at which the server response was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user who last updated the server response.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                            d["createdAt"],
      created_by:                                            d["createdBy"],
      id:                                                    d["id"],
      get_mocks_mock_id_server_responses_response_item_name: d["name"],
      status_code:                                           d["statusCode"],
      updated_at:                                            d["updatedAt"],
      updated_by:                                            d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"  => created_at,
      "createdBy"  => created_by,
      "id"         => id,
      "name"       => get_mocks_mock_id_server_responses_response_item_name,
      "statusCode" => status_code,
      "updatedAt"  => updated_at,
      "updatedBy"  => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_server_responses_server_response_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      get_mocks_mock_id_server_responses_server_response_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_server_response_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse400 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesServerResponseIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesServerResponseIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_mocks_mock_id_server_responses_server_response_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      get_mocks_mock_id_server_responses_server_response_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_server_response_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse401 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesServerResponseIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesServerResponseIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_server_responses_server_response_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                      d["details"],
      message:                                                                      d["message"],
      get_mocks_mock_id_server_responses_server_response_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_server_response_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse404 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesServerResponseIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesServerResponseIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_mock_id_server_responses_server_response_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      get_mocks_mock_id_server_responses_server_response_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_mock_id_server_responses_server_response_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponse500 < Dry::Struct
  attribute :error, GetMocksMockIDServerResponsesServerResponseIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksMockIDServerResponsesServerResponseIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksMockIDServerResponsesServerResponseIDResponseItem < Dry::Struct

  # The date and time at which the server response was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user who created the server response.
  attribute :created_by, Types::String.optional

  # The server response's ID.
  attribute :id, Types::String.optional

  # The server response's name.
  attribute :get_mocks_mock_id_server_responses_server_response_id_response_item_name, Types::String.optional

  # The server response's 5xx HTTP response code.
  attribute :status_code, Types::Double.optional

  # The date and time at which the server response was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user who last updated the server response.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                               d["createdAt"],
      created_by:                                                               d["createdBy"],
      id:                                                                       d["id"],
      get_mocks_mock_id_server_responses_server_response_id_response_item_name: d["name"],
      status_code:                                                              d["statusCode"],
      updated_at:                                                               d["updatedAt"],
      updated_by:                                                               d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"  => created_at,
      "createdBy"  => created_by,
      "id"         => id,
      "name"       => get_mocks_mock_id_server_responses_server_response_id_response_item_name,
      "statusCode" => status_code,
      "updatedAt"  => updated_at,
      "updatedBy"  => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module GetMocksResponseMocksItemConfigDelayType
  Fixed = "fixed"
end

module Preset
  The1N = "1"
  The2N = "2"
end

class GetMocksResponseMocksItemConfigDelay < Dry::Struct

  # The configured delay, in milliseconds.
  attribute :duration, Types::Integer.optional

  # The simulated fixed network delay value:
  #
  # - `1` — 2G (300 ms).
  # - `2` — 3G (100 ms).
  #
  # The object does not return this value for custom delay values.
  attribute :preset, Types::Preset.optional

  # The type of simulated delay value:
  #
  # - `fixed` — The delay value is a fixed value.
  attribute :get_mocks_response_mocks_item_config_delay_type, Types::GetMocksResponseMocksItemConfigDelayType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      duration:                                        d["duration"],
      preset:                                          d["preset"],
      get_mocks_response_mocks_item_config_delay_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "duration" => duration,
      "preset"   => preset,
      "type"     => get_mocks_response_mocks_item_config_delay_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponseMocksItemConfig < Dry::Struct

  # Information about the mock server's simulated network delay settings. This returns a null
  # value if there are no configured network delay settings.
  attribute :delay, GetMocksResponseMocksItemConfigDelay.optional.optional

  # A list of the mock server's headers.
  attribute :headers, Types.Array(Types::String).optional

  # If true, match the request body.
  attribute :match_body, Types::Bool.optional

  # If true, match query parameters.
  attribute :match_query_params, Types::Bool.optional

  # If true, use wildcard variable matching.
  attribute :match_wildcards, Types::Bool.optional

  # The ID of mock server's default response for requests. All calls to the mock server will
  # return the defined response.
  attribute :server_response_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      delay:              d["delay"] ? GetMocksResponseMocksItemConfigDelay.from_dynamic!(d["delay"]) : nil,
      headers:            d["headers"],
      match_body:         d["matchBody"],
      match_query_params: d["matchQueryParams"],
      match_wildcards:    d["matchWildcards"],
      server_response_id: d["serverResponseId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "delay"            => delay&.to_dynamic,
      "headers"          => headers,
      "matchBody"        => match_body,
      "matchQueryParams" => match_query_params,
      "matchWildcards"   => match_wildcards,
      "serverResponseId" => server_response_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponseMocksItem < Dry::Struct

  # The mock's associated collection unique ID.
  attribute :collection, Types::String.optional

  # Information about the mock server's configuration.
  attribute :config, GetMocksResponseMocksItemConfig.optional

  # The date and time at which the mock server was created.
  attribute :created_at, Types::String.optional

  # The mock server's associated environment ID.
  attribute :environment, Types::String.optional

  # The mock server's ID.
  attribute :id, Types::String.optional

  # If true, the mock server is public.
  attribute :is_public, Types::Bool.optional

  # The mock server URL.
  attribute :mock_url, Types::String.optional

  # The mock server's name.
  attribute :get_mocks_response_mocks_item_name, Types::String.optional

  # The ID of mock server's owner.
  attribute :owner, Types::String.optional

  # The mock server's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the mock server was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                         d["collection"],
      config:                             d["config"] ? GetMocksResponseMocksItemConfig.from_dynamic!(d["config"]) : nil,
      created_at:                         d["createdAt"],
      environment:                        d["environment"],
      id:                                 d["id"],
      is_public:                          d["isPublic"],
      mock_url:                           d["mockUrl"],
      get_mocks_response_mocks_item_name: d["name"],
      owner:                              d["owner"],
      uid:                                d["uid"],
      updated_at:                         d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"  => collection,
      "config"      => config&.to_dynamic,
      "createdAt"   => created_at,
      "environment" => environment,
      "id"          => id,
      "isPublic"    => is_public,
      "mockUrl"     => mock_url,
      "name"        => get_mocks_response_mocks_item_name,
      "owner"       => owner,
      "uid"         => uid,
      "updatedAt"   => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponse < Dry::Struct
  attribute :mocks, Types.Array(GetMocksResponseMocksItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mocks: d["mocks"]&.map { |x| GetMocksResponseMocksItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mocks" => mocks&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_mocks_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                          d["message"],
      get_mocks_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponse401 < Dry::Struct
  attribute :error, GetMocksResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_mocks_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                          d["message"],
      get_mocks_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_mocks_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMocksResponse500 < Dry::Struct
  attribute :error, GetMocksResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMocksResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorOptions < Dry::Struct

  # If true, follow redirects enabled.
  attribute :follow_redirects, Types::Bool.optional

  # The monitor's request delay value.
  attribute :request_delay, Types::Double.optional

  # The monitor's request timeout value.
  attribute :request_timeout, Types::Double.optional

  # If true, strict SSL enabled.
  attribute :strict_ssl, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      follow_redirects: d["followRedirects"],
      request_delay:    d["requestDelay"],
      request_timeout:  d["requestTimeout"],
      strict_ssl:       d["strictSSL"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "followRedirects" => follow_redirects,
      "requestDelay"    => request_delay,
      "requestTimeout"  => request_timeout,
      "strictSSL"       => strict_ssl,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorLastRunStatsAssertions < Dry::Struct

  # The total number of test failures.
  attribute :failed, Types::Double.optional

  # The total number of tests performed.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      failed: d["failed"],
      total:  d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "failed" => failed,
      "total"  => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorLastRunStatsRequests < Dry::Struct

  # The total number of requests.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      total: d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "total" => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorLastRunStats < Dry::Struct

  # Information about the monitor's assertions.
  attribute :assertions, GetMonitorsMonitorIDResponseMonitorLastRunStatsAssertions.optional

  # Information about the monitor's requests.
  attribute :requests, GetMonitorsMonitorIDResponseMonitorLastRunStatsRequests.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      assertions: d["assertions"] ? GetMonitorsMonitorIDResponseMonitorLastRunStatsAssertions.from_dynamic!(d["assertions"]) : nil,
      requests:   d["requests"] ? GetMonitorsMonitorIDResponseMonitorLastRunStatsRequests.from_dynamic!(d["requests"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "assertions" => assertions&.to_dynamic,
      "requests"   => requests&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorLastRun < Dry::Struct

  # The date and time at which the monitor's previous run completed.
  attribute :finished_at, Types::String.optional

  # The date and time at which the monitor's previous run started.
  attribute :started_at, Types::String.optional

  # Information about the monitor's stats.
  attribute :stats, GetMonitorsMonitorIDResponseMonitorLastRunStats.optional

  # The monitor's status after its last run.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      finished_at: d["finishedAt"],
      started_at:  d["startedAt"],
      stats:       d["stats"] ? GetMonitorsMonitorIDResponseMonitorLastRunStats.from_dynamic!(d["stats"]) : nil,
      status:      d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "finishedAt" => finished_at,
      "startedAt"  => started_at,
      "stats"      => stats&.to_dynamic,
      "status"     => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorNotificationsOnErrorItem < Dry::Struct

  # The email address of the user to notify on monitor error.
  attribute :email, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      email: d["email"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "email" => email,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorNotificationsOnFailureItem < Dry::Struct

  # The email address of the user to notify on monitor failure.
  attribute :email, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      email: d["email"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "email" => email,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorNotifications < Dry::Struct
  attribute :on_error,   Types.Array(GetMonitorsMonitorIDResponseMonitorNotificationsOnErrorItem).optional
  attribute :on_failure, Types.Array(GetMonitorsMonitorIDResponseMonitorNotificationsOnFailureItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      on_error:   d["onError"]&.map { |x| GetMonitorsMonitorIDResponseMonitorNotificationsOnErrorItem.from_dynamic!(x) },
      on_failure: d["onFailure"]&.map { |x| GetMonitorsMonitorIDResponseMonitorNotificationsOnFailureItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "onError"   => on_error&.map { |x| x.to_dynamic },
      "onFailure" => on_failure&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitorSchedule < Dry::Struct

  # The monitor's cron frequency value.
  attribute :cron, Types::String.optional

  # The date and time of monitor's next scheduled run.
  attribute :next_run, Types::String.optional

  # The monitor's timezone.
  attribute :timezone, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      cron:     d["cron"],
      next_run: d["nextRun"],
      timezone: d["timezone"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "cron"     => cron,
      "nextRun"  => next_run,
      "timezone" => timezone,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponseMonitor < Dry::Struct

  # The monitor's associated collection unique ID.
  attribute :collection_uid, Types::String.optional

  # A list of the monitor's [geographic
  # regions](https://learning.postman.com/docs/monitoring-your-api/setting-up-monitor/#adding-regions).
  attribute :distribution, Types.Array(Types::Any).optional

  # The monitor's associated environment unique ID.
  attribute :environment_uid, Types::String.optional

  # The monitor's ID.
  attribute :id, Types::String.optional

  # Information about the monitor's previous run.
  attribute :last_run, GetMonitorsMonitorIDResponseMonitorLastRun.optional

  # The monitor's name.
  attribute :get_monitors_monitor_id_response_monitor_name, Types::String.optional

  # Information about the monitor's notification settings.
  attribute :notifications, GetMonitorsMonitorIDResponseMonitorNotifications.optional

  # Information about the monitor's option settings.
  attribute :get_monitors_monitor_id_response_monitor_options, GetMonitorsMonitorIDResponseMonitorOptions.optional

  # The ID of monitor's owner.
  attribute :owner, Types::Double.optional

  # Information about the monitor's schedule.
  attribute :schedule, GetMonitorsMonitorIDResponseMonitorSchedule.optional

  # The monitor's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection_uid:                                   d["collectionUid"],
      distribution:                                     d["distribution"],
      environment_uid:                                  d["environmentUid"],
      id:                                               d["id"],
      last_run:                                         d["lastRun"] ? GetMonitorsMonitorIDResponseMonitorLastRun.from_dynamic!(d["lastRun"]) : nil,
      get_monitors_monitor_id_response_monitor_name:    d["name"],
      notifications:                                    d["notifications"] ? GetMonitorsMonitorIDResponseMonitorNotifications.from_dynamic!(d["notifications"]) : nil,
      get_monitors_monitor_id_response_monitor_options: d["options"] ? GetMonitorsMonitorIDResponseMonitorOptions.from_dynamic!(d["options"]) : nil,
      owner:                                            d["owner"],
      schedule:                                         d["schedule"] ? GetMonitorsMonitorIDResponseMonitorSchedule.from_dynamic!(d["schedule"]) : nil,
      uid:                                              d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collectionUid"  => collection_uid,
      "distribution"   => distribution,
      "environmentUid" => environment_uid,
      "id"             => id,
      "lastRun"        => last_run&.to_dynamic,
      "name"           => get_monitors_monitor_id_response_monitor_name,
      "notifications"  => notifications&.to_dynamic,
      "options"        => get_monitors_monitor_id_response_monitor_options&.to_dynamic,
      "owner"          => owner,
      "schedule"       => schedule&.to_dynamic,
      "uid"            => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse < Dry::Struct
  attribute :monitor, GetMonitorsMonitorIDResponseMonitor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitor: d["monitor"] ? GetMonitorsMonitorIDResponseMonitor.from_dynamic!(d["monitor"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitor" => monitor&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_monitors_monitor_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                        d["message"],
      get_monitors_monitor_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_monitors_monitor_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse401 < Dry::Struct
  attribute :error, GetMonitorsMonitorIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMonitorsMonitorIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_monitors_monitor_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                        d["message"],
      get_monitors_monitor_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_monitors_monitor_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse404 < Dry::Struct
  attribute :error, GetMonitorsMonitorIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMonitorsMonitorIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_monitors_monitor_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                        d["message"],
      get_monitors_monitor_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_monitors_monitor_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsMonitorIDResponse500 < Dry::Struct
  attribute :error, GetMonitorsMonitorIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMonitorsMonitorIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponseMonitorsItem < Dry::Struct

  # The monitor's ID.
  attribute :id, Types::String.optional

  # The monitor's name.
  attribute :get_monitors_response_monitors_item_name, Types::String.optional

  # The ID of the monitor's owner.
  attribute :owner, Types::String.optional

  # The monitor's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                       d["id"],
      get_monitors_response_monitors_item_name: d["name"],
      owner:                                    d["owner"],
      uid:                                      d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"    => id,
      "name"  => get_monitors_response_monitors_item_name,
      "owner" => owner,
      "uid"   => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponse < Dry::Struct
  attribute :monitors, Types.Array(GetMonitorsResponseMonitorsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitors: d["monitors"]&.map { |x| GetMonitorsResponseMonitorsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitors" => monitors&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_monitors_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                             d["message"],
      get_monitors_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_monitors_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponse401 < Dry::Struct
  attribute :error, GetMonitorsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMonitorsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_monitors_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                             d["message"],
      get_monitors_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_monitors_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetMonitorsResponse500 < Dry::Struct
  attribute :error, GetMonitorsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetMonitorsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponseMeta < Dry::Struct

  # The maximum number of items returned.
  attribute :limit, Types::Integer.optional

  # The zero-based offset of the first item returned.
  attribute :offset, Types::Integer.optional

  # The total count of items found.
  attribute :total_count, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:       d["limit"],
      offset:      d["offset"],
      total_count: d["totalCount"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"      => limit,
      "offset"     => offset,
      "totalCount" => total_count,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module EntityTypeEnum
  API        = "api"
  Collection = "collection"
  Workspace  = "workspace"
end

class GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItemElement < Dry::Struct

  # The element's ID.
  attribute :id, Types::String.optional

  # The element's name.
  attribute :get_network_private_network_entity_request_all_response_requests_item_element_name, Types::String.optional

  # The element's short summary.
  attribute :summary, Types::String.optional

  # The element type.
  attribute :get_network_private_network_entity_request_all_response_requests_item_element_type, Types::EntityTypeEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                                                 d["id"],
      get_network_private_network_entity_request_all_response_requests_item_element_name: d["name"],
      summary:                                                                            d["summary"],
      get_network_private_network_entity_request_all_response_requests_item_element_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"      => id,
      "name"    => get_network_private_network_entity_request_all_response_requests_item_element_name,
      "summary" => summary,
      "type"    => get_network_private_network_entity_request_all_response_requests_item_element_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItemResponse < Dry::Struct

  # The date and time at which the network manager denied the request.
  attribute :created_at, Types::String.optional

  # The network manager's user ID.
  attribute :created_by, Types::Integer.optional

  # The network manager's request response message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at: d["createdAt"],
      created_by: d["createdBy"],
      message:    d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "message"   => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Status1
  Denied  = "denied"
  Pending = "pending"
end

class GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItem < Dry::Struct

  # The date and time at which the request was created.
  attribute :created_at, Types::String.optional

  # The ID of the user who created the request.
  attribute :created_by, Types::Integer.optional

  # Information about the requested element.
  attribute :element, GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItemElement.optional

  # The request's ID.
  attribute :id, Types::Integer.optional

  # The user's optional message included in the request.
  attribute :message, Types::String.optional

  # Information about the response to the request. This object only returns when the network
  # manager denied a request with a message.
  attribute :response, GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItemResponse.optional

  # The request's status.
  attribute :status, Types::Status1.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at: d["createdAt"],
      created_by: d["createdBy"],
      element:    d["element"] ? GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItemElement.from_dynamic!(d["element"]) : nil,
      id:         d["id"],
      message:    d["message"],
      response:   d["response"] ? GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItemResponse.from_dynamic!(d["response"]) : nil,
      status:     d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "element"   => element&.to_dynamic,
      "id"        => id,
      "message"   => message,
      "response"  => response&.to_dynamic,
      "status"    => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse < Dry::Struct

  # The response's non-standard meta information.
  attribute :get_network_private_network_entity_request_all_response_meta, GetNetworkPrivateNetworkEntityRequestAllResponseMeta.optional

  # Information about the requests to add elements to the Private API Network.
  attribute :requests, Types.Array(GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      get_network_private_network_entity_request_all_response_meta: d["meta"] ? GetNetworkPrivateNetworkEntityRequestAllResponseMeta.from_dynamic!(d["meta"]) : nil,
      requests:                                                     d["requests"]&.map { |x| GetNetworkPrivateNetworkEntityRequestAllResponseRequestsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "meta"     => get_network_private_network_entity_request_all_response_meta&.to_dynamic,
      "requests" => requests&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse400 < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_network_private_network_entity_request_all_response400_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                         d["message"],
      get_network_private_network_entity_request_all_response400_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_network_entity_request_all_response400_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_network_private_network_entity_request_all_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      get_network_private_network_entity_request_all_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_network_entity_request_all_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse401 < Dry::Struct
  attribute :error, GetNetworkPrivateNetworkEntityRequestAllResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetNetworkPrivateNetworkEntityRequestAllResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_network_private_network_entity_request_all_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      get_network_private_network_entity_request_all_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_network_entity_request_all_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse403 < Dry::Struct
  attribute :error, GetNetworkPrivateNetworkEntityRequestAllResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetNetworkPrivateNetworkEntityRequestAllResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_network_private_network_entity_request_all_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                               d["message"],
      get_network_private_network_entity_request_all_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_network_entity_request_all_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateNetworkEntityRequestAllResponse500 < Dry::Struct
  attribute :error, GetNetworkPrivateNetworkEntityRequestAllResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetNetworkPrivateNetworkEntityRequestAllResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponseElementsItem < Dry::Struct

  # The date and time at which the element was published to Private API Network. This value
  # is the same as the `updatedAt` value.
  attribute :added_at, Types::String.optional

  # The user ID of the user who published the element.
  attribute :added_by, Types::Integer.optional

  # The date and time at which the element was created.
  attribute :created_at, Types::String.optional

  # The user who created the element.
  attribute :created_by, Types::Integer.optional

  # The element's description.
  attribute :description, Types::String.optional

  # The element's HREF.
  attribute :href, Types::String.optional

  # The element's ID.
  attribute :id, Types::String.optional

  # The element's name.
  attribute :get_network_private_response_elements_item_name, Types::String.optional

  # The element's parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  # The element's summary.
  attribute :summary, Types::String.optional

  # The element's type.
  attribute :get_network_private_response_elements_item_type, Types::String.optional

  # The date and time at which the element was last updated.
  attribute :updated_at, Types::String.optional

  # The user who updated the element.
  attribute :updated_by, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      added_at:                                        d["addedAt"],
      added_by:                                        d["addedBy"],
      created_at:                                      d["createdAt"],
      created_by:                                      d["createdBy"],
      description:                                     d["description"],
      href:                                            d["href"],
      id:                                              d["id"],
      get_network_private_response_elements_item_name: d["name"],
      parent_folder_id:                                d["parentFolderId"],
      summary:                                         d["summary"],
      get_network_private_response_elements_item_type: d["type"],
      updated_at:                                      d["updatedAt"],
      updated_by:                                      d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "addedAt"        => added_at,
      "addedBy"        => added_by,
      "createdAt"      => created_at,
      "createdBy"      => created_by,
      "description"    => description,
      "href"           => href,
      "id"             => id,
      "name"           => get_network_private_response_elements_item_name,
      "parentFolderId" => parent_folder_id,
      "summary"        => summary,
      "type"           => get_network_private_response_elements_item_type,
      "updatedAt"      => updated_at,
      "updatedBy"      => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponseFoldersItem < Dry::Struct

  # The date and time at which the folder was created.
  attribute :created_at, Types::String.optional

  # The user who created the folder.
  attribute :created_by, Types::Integer.optional

  # The folder's description.
  attribute :description, Types::String.optional

  # The folder's ID.
  attribute :id, Types::Integer.optional

  # The folder's name.
  attribute :get_network_private_response_folders_item_name, Types::String.optional

  # The folder's parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  # The element's type. This value is always `folder`.
  attribute :get_network_private_response_folders_item_type, Types::String.optional

  # The date and time at which the folder was updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user who updated the folder.
  attribute :updated_by, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                     d["createdAt"],
      created_by:                                     d["createdBy"],
      description:                                    d["description"],
      id:                                             d["id"],
      get_network_private_response_folders_item_name: d["name"],
      parent_folder_id:                               d["parentFolderId"],
      get_network_private_response_folders_item_type: d["type"],
      updated_at:                                     d["updatedAt"],
      updated_by:                                     d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"      => created_at,
      "createdBy"      => created_by,
      "description"    => description,
      "id"             => id,
      "name"           => get_network_private_response_folders_item_name,
      "parentFolderId" => parent_folder_id,
      "type"           => get_network_private_response_folders_item_type,
      "updatedAt"      => updated_at,
      "updatedBy"      => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponseMeta < Dry::Struct

  # The maximum number of elements returned. If the value exceeds the maximum value of
  # `1000`, then the system uses the `1000` value.
  attribute :limit, Types::Integer.optional

  # The zero-based offset of the first item returned.
  attribute :offset, Types::Integer.optional

  # The total count of the `elements` and `folders` items.
  attribute :total_count, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:       d["limit"],
      offset:      d["offset"],
      total_count: d["totalCount"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"      => limit,
      "offset"     => offset,
      "totalCount" => total_count,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse < Dry::Struct

  # Information about a Private API Network's folder elements. Elements are APIs,
  # collections, and workspaces.
  attribute :elements, Types.Array(GetNetworkPrivateResponseElementsItem).optional

  # Information about the Private API Network's folders.
  attribute :folders, Types.Array(GetNetworkPrivateResponseFoldersItem).optional

  # The response's non-standard meta information.
  attribute :get_network_private_response_meta, GetNetworkPrivateResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      elements:                          d["elements"]&.map { |x| GetNetworkPrivateResponseElementsItem.from_dynamic!(x) },
      folders:                           d["folders"]&.map { |x| GetNetworkPrivateResponseFoldersItem.from_dynamic!(x) },
      get_network_private_response_meta: d["meta"] ? GetNetworkPrivateResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "elements" => elements&.map { |x| x.to_dynamic },
      "folders"  => folders&.map { |x| x.to_dynamic },
      "meta"     => get_network_private_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_network_private_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                    d["message"],
      get_network_private_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse401 < Dry::Struct
  attribute :error, GetNetworkPrivateResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetNetworkPrivateResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_network_private_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                    d["message"],
      get_network_private_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse403 < Dry::Struct
  attribute :error, GetNetworkPrivateResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetNetworkPrivateResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_network_private_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                    d["message"],
      get_network_private_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_network_private_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetNetworkPrivateResponse500 < Dry::Struct
  attribute :error, GetNetworkPrivateResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetNetworkPrivateResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponseMeta < Dry::Struct

  # The date and time at which the group was created.
  attribute :created, Types::String.optional

  # The date and time at which the group was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponseMembers < Dry::Struct
  attribute :get_scim_v2_groups_group_id_response_members_display, Types::String.optional
  attribute :value,                                                Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      get_scim_v2_groups_group_id_response_members_display: d["display"],
      value:                                                d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "display" => get_scim_v2_groups_group_id_response_members_display,
      "value"   => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse < Dry::Struct

  # The group's external ID.
  attribute :external_id, Types::String.optional

  # The group's SCIM ID.
  attribute :id, Types::String.optional

  # Information about the group's members.
  attribute :members, GetScimV2GroupsGroupIDResponseMembers.optional

  # The response's non-standard meta information.
  attribute :get_scim_v2_groups_group_id_response_meta, GetScimV2GroupsGroupIDResponseMeta.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The group's display name.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      external_id:                               d["externalId"],
      id:                                        d["id"],
      members:                                   d["members"] ? GetScimV2GroupsGroupIDResponseMembers.from_dynamic!(d["members"]) : nil,
      get_scim_v2_groups_group_id_response_meta: d["meta"] ? GetScimV2GroupsGroupIDResponseMeta.from_dynamic!(d["meta"]) : nil,
      schemas:                                   d["schemas"],
      user_name:                                 d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "externalId" => external_id,
      "id"         => id,
      "members"    => members&.to_dynamic,
      "meta"       => get_scim_v2_groups_group_id_response_meta&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  attribute :schemas, Types.Array(Types::String).optional

  # The error status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsGroupIDResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class ScimGroupResourceMembers < Dry::Struct
  attribute :scim_group_resource_members_display, Types::String.optional
  attribute :value,                               Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      scim_group_resource_members_display: d["display"],
      value:                               d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "display" => scim_group_resource_members_display,
      "value"   => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class ScimGroupResourceMeta < Dry::Struct

  # The date and time at which the group was created.
  attribute :created, Types::String.optional

  # The date and time at which the group was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class ScimGroupResource < Dry::Struct

  # The group's display name.
  attribute :display_name, Types::String.optional

  # The group's external ID.
  attribute :external_id, Types::String.optional

  # The group's SCIM ID.
  attribute :id, Types::String.optional

  # Information about the group's members.
  attribute :members, ScimGroupResourceMembers.optional

  # The response's non-standard meta information.
  attribute :scim_group_resource_meta, ScimGroupResourceMeta.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      display_name:             d["displayName"],
      external_id:              d["externalId"],
      id:                       d["id"],
      members:                  d["members"] ? ScimGroupResourceMembers.from_dynamic!(d["members"]) : nil,
      scim_group_resource_meta: d["meta"] ? ScimGroupResourceMeta.from_dynamic!(d["meta"]) : nil,
      schemas:                  d["schemas"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "displayName" => display_name,
      "externalId"  => external_id,
      "id"          => id,
      "members"     => members&.to_dynamic,
      "meta"        => scim_group_resource_meta&.to_dynamic,
      "schemas"     => schemas,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsResponse < Dry::Struct

  # The number of items per response page.
  attribute :items_per_page, Types::Double.optional

  # A list of group resources.
  attribute :resources, Types.Array(ScimGroupResource).optional

  attribute :schemas, Types.Array(Types::String).optional

  # The index entry by which the returned results begin.
  attribute :start_index, Types::Double.optional

  # The total number of results found.
  attribute :total_results, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      items_per_page: d["itemsPerPage"],
      resources:      d["Resources"]&.map { |x| ScimGroupResource.from_dynamic!(x) },
      schemas:        d["schemas"],
      start_index:    d["startIndex"],
      total_results:  d["totalResults"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "itemsPerPage" => items_per_page,
      "Resources"    => resources&.map { |x| x.to_dynamic },
      "schemas"      => schemas,
      "startIndex"   => start_index,
      "totalResults" => total_results,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsResponse400 < Dry::Struct
  attribute :detail,  Types::String.optional
  attribute :schemas, Types.Array(Types::String).optional
  attribute :status,  Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2GroupsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ResourceTypesResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_scim_v2_resource_types_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      get_scim_v2_resource_types_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_scim_v2_resource_types_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ResourceTypesResponse401 < Dry::Struct
  attribute :error, GetScimV2ResourceTypesResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetScimV2ResourceTypesResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ResourceTypesResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ResourceTypesResponseItemSchemaExtensionsItem < Dry::Struct

  # If true, the resource must include this schema extension.
  attribute :required, Types::Bool.optional

  # The resource extension's URI.
  attribute :schema, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      required: d["required"],
      schema:   d["schema"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "required" => required,
      "schema"   => schema,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ResourceTypesResponseItem < Dry::Struct

  # The resource's description.
  attribute :description, Types::String.optional

  # The resource's endpoint.
  attribute :endpoint, Types::String.optional

  # The resource's ID.
  attribute :id, Types::String.optional

  # The resource's friendly name.
  attribute :get_scim_v2_resource_types_response_item_name, Types::String.optional

  # The resource's schema URI.
  attribute :schema, Types::String.optional

  # Information about the resource's schema extensions.
  attribute :schema_extensions, Types.Array(GetScimV2ResourceTypesResponseItemSchemaExtensionsItem).optional

  # A list of SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                   d["description"],
      endpoint:                                      d["endpoint"],
      id:                                            d["id"],
      get_scim_v2_resource_types_response_item_name: d["name"],
      schema:                                        d["schema"],
      schema_extensions:                             d["schemaExtensions"]&.map { |x| GetScimV2ResourceTypesResponseItemSchemaExtensionsItem.from_dynamic!(x) },
      schemas:                                       d["schemas"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description"      => description,
      "endpoint"         => endpoint,
      "id"               => id,
      "name"             => get_scim_v2_resource_types_response_item_name,
      "schema"           => schema,
      "schemaExtensions" => schema_extensions&.map { |x| x.to_dynamic },
      "schemas"          => schemas,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseAuthenticationSchemesItem < Dry::Struct

  # The scheme's description.
  attribute :description, Types::String.optional

  # The scheme's friendly name.
  attribute :get_scim_v2_service_provider_config_response_authentication_schemes_item_name, Types::String.optional

  # A link to the scheme's specification documentation.
  attribute :spec_uri, Types::String.optional

  # The scheme's type.
  attribute :get_scim_v2_service_provider_config_response_authentication_schemes_item_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                                                   d["description"],
      get_scim_v2_service_provider_config_response_authentication_schemes_item_name: d["name"],
      spec_uri:                                                                      d["specUri"],
      get_scim_v2_service_provider_config_response_authentication_schemes_item_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => get_scim_v2_service_provider_config_response_authentication_schemes_item_name,
      "specUri"     => spec_uri,
      "type"        => get_scim_v2_service_provider_config_response_authentication_schemes_item_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseBulk < Dry::Struct
  attribute :max_operations,   Types::Double.optional
  attribute :max_payload_size, Types::Double.optional
  attribute :supported,        Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      max_operations:   d["maxOperations"],
      max_payload_size: d["maxPayloadSize"],
      supported:        d["supported"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "maxOperations"  => max_operations,
      "maxPayloadSize" => max_payload_size,
      "supported"      => supported,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseChangePassword < Dry::Struct
  attribute :supported, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      supported: d["supported"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "supported" => supported,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseEtag < Dry::Struct
  attribute :supported, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      supported: d["supported"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "supported" => supported,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseFilter < Dry::Struct
  attribute :max_results, Types::Double.optional
  attribute :supported,   Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      max_results: d["maxResults"],
      supported:   d["supported"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "maxResults" => max_results,
      "supported"  => supported,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseMeta < Dry::Struct
  attribute :location,      Types::String.optional
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      location:      d["location"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "location"     => location,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponsePatch < Dry::Struct
  attribute :supported, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      supported: d["supported"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "supported" => supported,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponseSort < Dry::Struct
  attribute :supported, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      supported: d["supported"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "supported" => supported,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponse < Dry::Struct

  # A list of authentication schemes.
  attribute :authentication_schemes, Types.Array(GetScimV2ServiceProviderConfigResponseAuthenticationSchemesItem).optional

  attribute :bulk,            GetScimV2ServiceProviderConfigResponseBulk.optional
  attribute :change_password, GetScimV2ServiceProviderConfigResponseChangePassword.optional

  # A link to the URI's documentation.
  attribute :documentation_uri, Types::String.optional

  attribute :etag,   GetScimV2ServiceProviderConfigResponseEtag.optional
  attribute :filter, GetScimV2ServiceProviderConfigResponseFilter.optional

  # The response's non-standard meta information.
  attribute :get_scim_v2_service_provider_config_response_meta, GetScimV2ServiceProviderConfigResponseMeta.optional

  attribute :patch, GetScimV2ServiceProviderConfigResponsePatch.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  attribute :sort, GetScimV2ServiceProviderConfigResponseSort.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      authentication_schemes:                            d["authenticationSchemes"]&.map { |x| GetScimV2ServiceProviderConfigResponseAuthenticationSchemesItem.from_dynamic!(x) },
      bulk:                                              d["bulk"] ? GetScimV2ServiceProviderConfigResponseBulk.from_dynamic!(d["bulk"]) : nil,
      change_password:                                   d["changePassword"] ? GetScimV2ServiceProviderConfigResponseChangePassword.from_dynamic!(d["changePassword"]) : nil,
      documentation_uri:                                 d["documentationUri"],
      etag:                                              d["etag"] ? GetScimV2ServiceProviderConfigResponseEtag.from_dynamic!(d["etag"]) : nil,
      filter:                                            d["filter"] ? GetScimV2ServiceProviderConfigResponseFilter.from_dynamic!(d["filter"]) : nil,
      get_scim_v2_service_provider_config_response_meta: d["meta"] ? GetScimV2ServiceProviderConfigResponseMeta.from_dynamic!(d["meta"]) : nil,
      patch:                                             d["patch"] ? GetScimV2ServiceProviderConfigResponsePatch.from_dynamic!(d["patch"]) : nil,
      schemas:                                           d["schemas"],
      sort:                                              d["sort"] ? GetScimV2ServiceProviderConfigResponseSort.from_dynamic!(d["sort"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "authenticationSchemes" => authentication_schemes&.map { |x| x.to_dynamic },
      "bulk"                  => bulk&.to_dynamic,
      "changePassword"        => change_password&.to_dynamic,
      "documentationUri"      => documentation_uri,
      "etag"                  => etag&.to_dynamic,
      "filter"                => filter&.to_dynamic,
      "meta"                  => get_scim_v2_service_provider_config_response_meta&.to_dynamic,
      "patch"                 => patch&.to_dynamic,
      "schemas"               => schemas,
      "sort"                  => sort&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2ServiceProviderConfigResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class ScimUserResourceMeta < Dry::Struct

  # The date and time at which the team member was created.
  attribute :created, Types::String.optional

  # The date and time at which the team member was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class ScimUserResourceName < Dry::Struct

  # The team member's last name.
  attribute :family_name, Types::String.optional

  # The team member's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class ScimUserResource < Dry::Struct

  # If true, the team member is active.
  attribute :active, Types::Bool.optional

  # The team member's external ID.
  attribute :external_id, Types::String.optional

  # The team member's SCIM ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :scim_user_resource_meta, ScimUserResourceMeta.optional

  # Information about the Postman team member.
  attribute :scim_user_resource_name, ScimUserResourceName.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The team member's SCIM username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                  d["active"],
      external_id:             d["externalId"],
      id:                      d["id"],
      scim_user_resource_meta: d["meta"] ? ScimUserResourceMeta.from_dynamic!(d["meta"]) : nil,
      scim_user_resource_name: d["name"] ? ScimUserResourceName.from_dynamic!(d["name"]) : nil,
      schemas:                 d["schemas"],
      user_name:               d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "id"         => id,
      "meta"       => scim_user_resource_meta&.to_dynamic,
      "name"       => scim_user_resource_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersResponse < Dry::Struct

  # The number of items per response page.
  attribute :items_per_page, Types::Double.optional

  # A list of user resources.
  attribute :resources, Types.Array(ScimUserResource).optional

  attribute :schemas, Types.Array(Types::String).optional

  # The index entry by which the returned results begin.
  attribute :start_index, Types::Double.optional

  # The total number of results found.
  attribute :total_results, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      items_per_page: d["itemsPerPage"],
      resources:      d["Resources"]&.map { |x| ScimUserResource.from_dynamic!(x) },
      schemas:        d["schemas"],
      start_index:    d["startIndex"],
      total_results:  d["totalResults"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "itemsPerPage" => items_per_page,
      "Resources"    => resources&.map { |x| x.to_dynamic },
      "schemas"      => schemas,
      "startIndex"   => start_index,
      "totalResults" => total_results,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersResponse400 < Dry::Struct
  attribute :detail,  Types::String.optional
  attribute :schemas, Types.Array(Types::String).optional
  attribute :status,  Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersResponse403 < Dry::Struct
  attribute :detail,  Types::String.optional
  attribute :schemas, Types.Array(Types::String).optional
  attribute :status,  Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponseMeta < Dry::Struct

  # The date and time at which the team member was created.
  attribute :created, Types::String.optional

  # The date and time at which the team member was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponseName < Dry::Struct

  # The team member's last name.
  attribute :family_name, Types::String.optional

  # The team member's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse < Dry::Struct

  # If true, the team member is active.
  attribute :active, Types::Bool.optional

  # The team member's external ID.
  attribute :external_id, Types::String.optional

  # The team member's SCIM ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :get_scim_v2_users_user_id_response_meta, GetScimV2UsersUserIDResponseMeta.optional

  # Information about the Postman team member.
  attribute :get_scim_v2_users_user_id_response_name, GetScimV2UsersUserIDResponseName.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The team member's SCIM username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                                  d["active"],
      external_id:                             d["externalId"],
      id:                                      d["id"],
      get_scim_v2_users_user_id_response_meta: d["meta"] ? GetScimV2UsersUserIDResponseMeta.from_dynamic!(d["meta"]) : nil,
      get_scim_v2_users_user_id_response_name: d["name"] ? GetScimV2UsersUserIDResponseName.from_dynamic!(d["name"]) : nil,
      schemas:                                 d["schemas"],
      user_name:                               d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "id"         => id,
      "meta"       => get_scim_v2_users_user_id_response_meta&.to_dynamic,
      "name"       => get_scim_v2_users_user_id_response_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  attribute :schemas, Types.Array(Types::String).optional

  # The error status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  attribute :schemas, Types.Array(Types::String).optional

  # The error status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetScimV2UsersUserIDResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module DatumType
  Default   = "DEFAULT"
  TeamRegex = "TEAM_REGEX"
end

class GetSecretTypesResponseDataItem < Dry::Struct

  # The ID of the secret type.
  attribute :id, Types::String.optional

  # The name of the secret type.
  attribute :get_secret_types_response_data_item_name, Types::String.optional

  # The origin of the secret type:
  # - `DEFAULT` — Supported by default in Postman.
  # - `TEAM_REGEX` — A custom regex added by an Admin or Super Admin user in the **Configure
  # Alerts** section of the [**Team
  # Settings**](https://learning.postman.com/docs/administration/team-settings/) interface.
  attribute :get_secret_types_response_data_item_type, Types::DatumType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                       d["id"],
      get_secret_types_response_data_item_name: d["name"],
      get_secret_types_response_data_item_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => get_secret_types_response_data_item_name,
      "type" => get_secret_types_response_data_item_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetSecretTypesResponseMeta < Dry::Struct

  # The total number of supported secrets.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      total: d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "total" => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetSecretTypesResponse < Dry::Struct
  attribute :data,                           Types.Array(GetSecretTypesResponseDataItem).optional
  attribute :get_secret_types_response_meta, GetSecretTypesResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                           d["data"]&.map { |x| GetSecretTypesResponseDataItem.from_dynamic!(x) },
      get_secret_types_response_meta: d["meta"] ? GetSecretTypesResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data" => data&.map { |x| x.to_dynamic },
      "meta" => get_secret_types_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetSecretTypesResponse401 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_secret_types_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                          d["instance"],
      status:                            d["status"],
      title:                             d["title"],
      get_secret_types_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_secret_types_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetSecretTypesResponse403 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_secret_types_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                          d["instance"],
      status:                            d["status"],
      title:                             d["title"],
      get_secret_types_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_secret_types_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetSecretTypesResponse500 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :get_secret_types_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                          d["instance"],
      status:                            d["status"],
      title:                             d["title"],
      get_secret_types_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_secret_types_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponseDataEntitiesItem < Dry::Struct

  # The element's unique ID.
  attribute :entity_id, Types::String.optional

  # The type of Postman element.
  attribute :entity_type, Types::EntityTypeEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      entity_id:   d["entityId"],
      entity_type: d["entityType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "entityId"   => entity_id,
      "entityType" => entity_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponseData < Dry::Struct

  # A list of the Postman elements that contain the given tag.
  attribute :entities, Types.Array(GetTagsSlugEntitiesResponseDataEntitiesItem)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      entities: d.fetch("entities").map { |x| GetTagsSlugEntitiesResponseDataEntitiesItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "entities" => entities.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponseMeta < Dry::Struct

  # The number of tagged elements returned in the response.
  attribute :count, Types::Integer

  # The pagination cursor that points to the next record in the results set.
  attribute :next_cursor, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      count:       d.fetch("count"),
      next_cursor: d["nextCursor"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "count"      => count,
      "nextCursor" => next_cursor,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponse < Dry::Struct

  # An object containing the paginated elements.
  attribute :data, GetTagsSlugEntitiesResponseData.optional

  # The response's pagination information.
  attribute :get_tags_slug_entities_response_meta, GetTagsSlugEntitiesResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                 d["data"] ? GetTagsSlugEntitiesResponseData.from_dynamic!(d["data"]) : nil,
      get_tags_slug_entities_response_meta: d["meta"] ? GetTagsSlugEntitiesResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data" => data&.to_dynamic,
      "meta" => get_tags_slug_entities_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponse400 < Dry::Struct

  # A short summary of the problem.
  attribute :error, Types::String.optional

  # Information about the error.
  attribute :message, Types::String.optional

  # The error's HTTP status code.
  attribute :status_code, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:       d["error"],
      message:     d["message"],
      status_code: d["statusCode"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"      => error,
      "message"    => message,
      "statusCode" => status_code,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_tags_slug_entities_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                  d["detail"],
      status:                                  d["status"],
      title:                                   d["title"],
      get_tags_slug_entities_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_tags_slug_entities_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_tags_slug_entities_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                  d["detail"],
      status:                                  d["status"],
      title:                                   d["title"],
      get_tags_slug_entities_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_tags_slug_entities_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_tags_slug_entities_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                  d["detail"],
      instance:                                d["instance"],
      status:                                  d["status"],
      title:                                   d["title"],
      get_tags_slug_entities_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_tags_slug_entities_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetTagsSlugEntitiesResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_tags_slug_entities_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                  d["detail"],
      instance:                                d["instance"],
      status:                                  d["status"],
      title:                                   d["title"],
      get_tags_slug_entities_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_tags_slug_entities_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module VisibilityEnum
  Partner  = "partner"
  Personal = "personal"
  Private  = "private"
  Public   = "public"
  Team     = "team"
end

class GetWorkspacesResponseWorkspacesItem < Dry::Struct

  # The workspace's ID.
  attribute :id, Types::String.optional

  # The workspace's name.
  attribute :get_workspaces_response_workspaces_item_name, Types::String.optional

  # The type of workspace.
  attribute :get_workspaces_response_workspaces_item_type, Types::VisibilityEnum.optional

  # The workspace's visibility.
  # [Visibility](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/managing-workspaces/#changing-workspace-visibility)
  # determines who can access the workspace:
  #
  # - `personal` — Only you can access the workspace.
  # - `team` — All team members can access the workspace.
  # - `private` — Only invited team members can access the workspace ([Professional and
  # Enterprise plans only](https://www.postman.com/pricing)).
  # - `public` — Everyone can access the workspace.
  # - `partner` — Only invited team members and
  # [partners](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/partner-workspaces/)
  # can access the workspace ([Enterprise Ultimate plans](https://www.postman.com/pricing)
  # only).
  attribute :visibility, Types::VisibilityEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                           d["id"],
      get_workspaces_response_workspaces_item_name: d["name"],
      get_workspaces_response_workspaces_item_type: d["type"],
      visibility:                                   d["visibility"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"         => id,
      "name"       => get_workspaces_response_workspaces_item_name,
      "type"       => get_workspaces_response_workspaces_item_type,
      "visibility" => visibility,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesResponse < Dry::Struct
  attribute :workspaces, Types.Array(GetWorkspacesResponseWorkspacesItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspaces: d["workspaces"]&.map { |x| GetWorkspacesResponseWorkspacesItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspaces" => workspaces&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_workspaces_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                               d["message"],
      get_workspaces_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_workspaces_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesResponse401 < Dry::Struct
  attribute :error, GetWorkspacesResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetWorkspacesResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_workspaces_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                               d["message"],
      get_workspaces_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_workspaces_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesResponse500 < Dry::Struct
  attribute :error, GetWorkspacesResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetWorkspacesResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module GlobalVariableType
  Default = "default"
  Secret  = "secret"
end

class GlobalVariable < Dry::Struct

  # If true, the variable is enabled.
  attribute :enabled, Types::Bool.optional

  # The variable's name.
  attribute :key, Types::String.optional

  # The [type](https://learning.postman.com/docs/sending-requests/variables/#variable-types)
  # of variable.
  attribute :global_variable_type, Types::GlobalVariableType.optional

  # The variable's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled:              d["enabled"],
      key:                  d["key"],
      global_variable_type: d["type"],
      value:                d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
      "key"     => key,
      "type"    => global_variable_type,
      "value"   => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDGlobalVariablesResponse < Dry::Struct

  # A list of the workspace's global variables.
  attribute :values, Types.Array(GlobalVariable).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      values: d["values"]&.map { |x| GlobalVariable.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "values" => values&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDGlobalVariablesResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The type of error.
  attribute :title, Types::String.optional

  # The generic description for the error's class.
  attribute :get_workspaces_workspace_id_global_variables_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                        d["detail"],
      title:                                                         d["title"],
      get_workspaces_workspace_id_global_variables_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => get_workspaces_workspace_id_global_variables_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponseWorkspaceApisItem < Dry::Struct

  # The API's ID.
  attribute :id, Types::String.optional

  # The API's name.
  attribute :get_workspaces_workspace_id_response_workspace_apis_item_name, Types::String.optional

  # The API's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                            d["id"],
      get_workspaces_workspace_id_response_workspace_apis_item_name: d["name"],
      uid:                                                           d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => get_workspaces_workspace_id_response_workspace_apis_item_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponseWorkspaceCollectionsItem < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :get_workspaces_workspace_id_response_workspace_collections_item_name, Types::String.optional

  # The collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                                   d["id"],
      get_workspaces_workspace_id_response_workspace_collections_item_name: d["name"],
      uid:                                                                  d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => get_workspaces_workspace_id_response_workspace_collections_item_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponseWorkspaceEnvironmentsItem < Dry::Struct

  # The environment's ID.
  attribute :id, Types::String.optional

  # The environment's name.
  attribute :get_workspaces_workspace_id_response_workspace_environments_item_name, Types::String.optional

  # The environment's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                                    d["id"],
      get_workspaces_workspace_id_response_workspace_environments_item_name: d["name"],
      uid:                                                                   d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => get_workspaces_workspace_id_response_workspace_environments_item_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponseWorkspaceMocksItem < Dry::Struct

  # If true, the mock server is not active. Mock servers deactivate when a linked collection
  # or environment is deleted.
  attribute :deactivated, Types::Bool.optional

  # The mock server's ID.
  attribute :id, Types::String.optional

  # The mock server's name.
  attribute :get_workspaces_workspace_id_response_workspace_mocks_item_name, Types::String.optional

  # The mock server's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      deactivated:                                                    d["deactivated"],
      id:                                                             d["id"],
      get_workspaces_workspace_id_response_workspace_mocks_item_name: d["name"],
      uid:                                                            d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "deactivated" => deactivated,
      "id"          => id,
      "name"        => get_workspaces_workspace_id_response_workspace_mocks_item_name,
      "uid"         => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponseWorkspaceMonitorsItem < Dry::Struct

  # The monitor's ID.
  attribute :id, Types::String.optional

  # The monitor's name.
  attribute :get_workspaces_workspace_id_response_workspace_monitors_item_name, Types::String.optional

  # The monitor's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                                d["id"],
      get_workspaces_workspace_id_response_workspace_monitors_item_name: d["name"],
      uid:                                                               d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => get_workspaces_workspace_id_response_workspace_monitors_item_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponseWorkspace < Dry::Struct

  # The workspace's APIs.
  attribute :apis, Types.Array(GetWorkspacesWorkspaceIDResponseWorkspaceApisItem).optional

  # The workspace's collections.
  attribute :collections, Types.Array(GetWorkspacesWorkspaceIDResponseWorkspaceCollectionsItem).optional

  # The date and time at which the workspace was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user who created the workspace.
  attribute :created_by, Types::String.optional

  # The workspace's description.
  attribute :description, Types::String.optional

  # The workspace's environments.
  attribute :environments, Types.Array(GetWorkspacesWorkspaceIDResponseWorkspaceEnvironmentsItem).optional

  # The workspace's ID.
  attribute :id, Types::String.optional

  # The workspace's mock servers.
  attribute :mocks, Types.Array(GetWorkspacesWorkspaceIDResponseWorkspaceMocksItem).optional

  # The workspace's monitors.
  attribute :monitors, Types.Array(GetWorkspacesWorkspaceIDResponseWorkspaceMonitorsItem).optional

  # The workspace's name.
  attribute :get_workspaces_workspace_id_response_workspace_name, Types::String.optional

  # The type of workspace.
  attribute :get_workspaces_workspace_id_response_workspace_type, Types::VisibilityEnum.optional

  # The date and time at which the workspace was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user who last updated the workspace.
  attribute :updated_by, Types::String.optional

  # The workspace's visibility.
  # [Visibility](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/managing-workspaces/#changing-workspace-visibility)
  # determines who can access the workspace:
  #
  # - `personal` — Only you can access the workspace.
  # - `team` — All team members can access the workspace.
  # - `private` — Only invited team members can access the workspace ([Professional and
  # Enterprise plans only](https://www.postman.com/pricing)).
  # - `public` — Everyone can access the workspace.
  # - `partner` — Only invited team members and
  # [partners](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/partner-workspaces/)
  # can access the workspace ([Enterprise Ultimate plans](https://www.postman.com/pricing)
  # only).
  attribute :visibility, Types::VisibilityEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      apis:                                                d["apis"]&.map { |x| GetWorkspacesWorkspaceIDResponseWorkspaceApisItem.from_dynamic!(x) },
      collections:                                         d["collections"]&.map { |x| GetWorkspacesWorkspaceIDResponseWorkspaceCollectionsItem.from_dynamic!(x) },
      created_at:                                          d["createdAt"],
      created_by:                                          d["createdBy"],
      description:                                         d["description"],
      environments:                                        d["environments"]&.map { |x| GetWorkspacesWorkspaceIDResponseWorkspaceEnvironmentsItem.from_dynamic!(x) },
      id:                                                  d["id"],
      mocks:                                               d["mocks"]&.map { |x| GetWorkspacesWorkspaceIDResponseWorkspaceMocksItem.from_dynamic!(x) },
      monitors:                                            d["monitors"]&.map { |x| GetWorkspacesWorkspaceIDResponseWorkspaceMonitorsItem.from_dynamic!(x) },
      get_workspaces_workspace_id_response_workspace_name: d["name"],
      get_workspaces_workspace_id_response_workspace_type: d["type"],
      updated_at:                                          d["updatedAt"],
      updated_by:                                          d["updatedBy"],
      visibility:                                          d["visibility"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "apis"         => apis&.map { |x| x.to_dynamic },
      "collections"  => collections&.map { |x| x.to_dynamic },
      "createdAt"    => created_at,
      "createdBy"    => created_by,
      "description"  => description,
      "environments" => environments&.map { |x| x.to_dynamic },
      "id"           => id,
      "mocks"        => mocks&.map { |x| x.to_dynamic },
      "monitors"     => monitors&.map { |x| x.to_dynamic },
      "name"         => get_workspaces_workspace_id_response_workspace_name,
      "type"         => get_workspaces_workspace_id_response_workspace_type,
      "updatedAt"    => updated_at,
      "updatedBy"    => updated_by,
      "visibility"   => visibility,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse < Dry::Struct

  # Information about the workspace.
  attribute :workspace, GetWorkspacesWorkspaceIDResponseWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? GetWorkspacesWorkspaceIDResponseWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :get_workspaces_workspace_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      get_workspaces_workspace_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_workspaces_workspace_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse401 < Dry::Struct
  attribute :error, GetWorkspacesWorkspaceIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetWorkspacesWorkspaceIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_workspaces_workspace_id_response404_error_name, Types::String.optional

  # The error's HTTP status code.
  attribute :status_code, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      get_workspaces_workspace_id_response404_error_name: d["name"],
      status_code:                                        d["statusCode"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message"    => message,
      "name"       => get_workspaces_workspace_id_response404_error_name,
      "statusCode" => status_code,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse404 < Dry::Struct
  attribute :error, GetWorkspacesWorkspaceIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetWorkspacesWorkspaceIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :get_workspaces_workspace_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      get_workspaces_workspace_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => get_workspaces_workspace_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDResponse500 < Dry::Struct
  attribute :error, GetWorkspacesWorkspaceIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? GetWorkspacesWorkspaceIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDTagsResponseTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d["slug"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDTagsResponse < Dry::Struct

  # A list of associated tags.
  attribute :tags, Types.Array(GetWorkspacesWorkspaceIDTagsResponseTagsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d["tags"]&.map { |x| GetWorkspacesWorkspaceIDTagsResponseTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDTagsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_workspaces_workspace_id_tags_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      status:                                            d["status"],
      title:                                             d["title"],
      get_workspaces_workspace_id_tags_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_workspaces_workspace_id_tags_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDTagsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_workspaces_workspace_id_tags_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      status:                                            d["status"],
      title:                                             d["title"],
      get_workspaces_workspace_id_tags_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => get_workspaces_workspace_id_tags_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDTagsResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_workspaces_workspace_id_tags_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      instance:                                          d["instance"],
      status:                                            d["status"],
      title:                                             d["title"],
      get_workspaces_workspace_id_tags_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_workspaces_workspace_id_tags_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GetWorkspacesWorkspaceIDTagsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :get_workspaces_workspace_id_tags_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      instance:                                          d["instance"],
      status:                                            d["status"],
      title:                                             d["title"],
      get_workspaces_workspace_id_tags_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => get_workspaces_workspace_id_tags_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PANElementCreated < Dry::Struct

  # The date and time at which the element was added.
  attribute :added_at, Types::String.optional

  # The user who added the element.
  attribute :added_by, Types::Integer.optional

  # The date and time at which the element was created.
  attribute :created_at, Types::String.optional

  # The user who created the element.
  attribute :created_by, Types::Integer.optional

  # The element's description.
  attribute :description, Types::String.optional

  # A list of the element's environments.
  attribute :environments, Types.Array(Types::String).optional

  # The element's Postman URL.
  attribute :href, Types::String.optional

  # The element's ID or UID.
  attribute :id, Types::String.optional

  # The element's name.
  attribute :pan_element_created_name, Types::String.optional

  # The parent folder's ID.
  attribute :parent_folder_id, Types::Integer.optional

  # The element's summary.
  attribute :summary, Types::String.optional

  # The element's type.
  attribute :pan_element_created_type, Types::String.optional

  # The date and time at which the element was last updated.
  attribute :updated_at, Types::String.optional

  # The user who last updated the element.
  attribute :updated_by, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      added_at:                 d["addedAt"],
      added_by:                 d["addedBy"],
      created_at:               d["createdAt"],
      created_by:               d["createdBy"],
      description:              d["description"],
      environments:             d["environments"],
      href:                     d["href"],
      id:                       d["id"],
      pan_element_created_name: d["name"],
      parent_folder_id:         d["parentFolderId"],
      summary:                  d["summary"],
      pan_element_created_type: d["type"],
      updated_at:               d["updatedAt"],
      updated_by:               d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "addedAt"        => added_at,
      "addedBy"        => added_by,
      "createdAt"      => created_at,
      "createdBy"      => created_by,
      "description"    => description,
      "environments"   => environments,
      "href"           => href,
      "id"             => id,
      "name"           => pan_element_created_name,
      "parentFolderId" => parent_folder_id,
      "summary"        => summary,
      "type"           => pan_element_created_type,
      "updatedAt"      => updated_at,
      "updatedBy"      => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PANFolderCreated < Dry::Struct

  # The date and time at which the element was created.
  attribute :created_at, Types::String.optional

  # The user who created the folder.
  attribute :created_by, Types::Integer.optional

  # The folder's description.
  attribute :description, Types::String.optional

  # The folder's ID.
  attribute :id, Types::Integer.optional

  # The folder's name.
  attribute :pan_folder_created_name, Types::String.optional

  # The parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  # The folder's type. This is always the `folder` value.
  attribute :pan_folder_created_type, Types::String.optional

  # The date and time at which the folder was updated.
  attribute :updated_at, Types::String.optional

  # The user who updated the folder.
  attribute :updated_by, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:              d["createdAt"],
      created_by:              d["createdBy"],
      description:             d["description"],
      id:                      d["id"],
      pan_folder_created_name: d["name"],
      parent_folder_id:        d["parentFolderId"],
      pan_folder_created_type: d["type"],
      updated_at:              d["updatedAt"],
      updated_by:              d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"      => created_at,
      "createdBy"      => created_by,
      "description"    => description,
      "id"             => id,
      "name"           => pan_folder_created_name,
      "parentFolderId" => parent_folder_id,
      "type"           => pan_folder_created_type,
      "updatedAt"      => updated_at,
      "updatedBy"      => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDBodyCollectionInfo < Dry::Struct

  # The collection's updated description.
  attribute :description, Types::String.optional

  # The collection's updated name.
  attribute :patch_collections_collection_id_body_collection_info_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                               d["description"],
      patch_collections_collection_id_body_collection_info_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => patch_collections_collection_id_body_collection_info_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDBodyCollection < Dry::Struct
  attribute :auth,   Types::Any.optional
  attribute :events, Types::Any.optional

  # An object that contains the collection's updated name and description.
  attribute :info, PatchCollectionsCollectionIDBodyCollectionInfo.optional

  attribute :variables, Types::Any.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      auth:      d["auth"],
      events:    d["events"],
      info:      d["info"] ? PatchCollectionsCollectionIDBodyCollectionInfo.from_dynamic!(d["info"]) : nil,
      variables: d["variables"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "auth"      => auth,
      "events"    => events,
      "info"      => info&.to_dynamic,
      "variables" => variables,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDBody < Dry::Struct
  attribute :collection, PatchCollectionsCollectionIDBodyCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PatchCollectionsCollectionIDBodyCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponseCollection < Dry::Struct

  # The collection's updated description.
  attribute :description, Types::String.optional

  # The collection's ID.
  attribute :id, Types::String.optional

  # The collection's updated name.
  attribute :patch_collections_collection_id_response_collection_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                              d["description"],
      id:                                                       d["id"],
      patch_collections_collection_id_response_collection_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "id"          => id,
      "name"        => patch_collections_collection_id_response_collection_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse < Dry::Struct
  attribute :collection, PatchCollectionsCollectionIDResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PatchCollectionsCollectionIDResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :patch_collections_collection_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      patch_collections_collection_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => patch_collections_collection_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse400 < Dry::Struct
  attribute :error, PatchCollectionsCollectionIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PatchCollectionsCollectionIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :patch_collections_collection_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      patch_collections_collection_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => patch_collections_collection_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse401 < Dry::Struct
  attribute :error, PatchCollectionsCollectionIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PatchCollectionsCollectionIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :patch_collections_collection_id_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      patch_collections_collection_id_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => patch_collections_collection_id_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse403 < Dry::Struct
  attribute :error, PatchCollectionsCollectionIDResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PatchCollectionsCollectionIDResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse404ErrorDetails < Dry::Struct

  # The collection ID.
  attribute :id, Types::String.optional

  # The instance item.
  attribute :item, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:   d["id"],
      item: d["item"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "item" => item,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PatchCollectionsCollectionIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :patch_collections_collection_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                d["details"] ? PatchCollectionsCollectionIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                d["message"],
      patch_collections_collection_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => patch_collections_collection_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse404 < Dry::Struct
  attribute :error, PatchCollectionsCollectionIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PatchCollectionsCollectionIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :patch_collections_collection_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      patch_collections_collection_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => patch_collections_collection_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchCollectionsCollectionIDResponse500 < Dry::Struct
  attribute :error, PatchCollectionsCollectionIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PatchCollectionsCollectionIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Op1
  Add     = "add"
  Remove  = "remove"
  Replace = "replace"
end

class PatchScimV2GroupsGroupIDBodyOperationsItemValue < Dry::Struct

  # The group's name.
  attribute :display_name, Types::String.optional

  # The group's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      display_name: d["displayName"],
      id:           d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "displayName" => display_name,
      "id"          => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDBodyOperationsItem < Dry::Struct

  # The operation to perform.
  attribute :op, Types::Op1.optional

  # The operation's path. Include this value when you update a group's members.
  attribute :path, Types::String.optional

  # The performed operation's value.
  attribute :value, PatchScimV2GroupsGroupIDBodyOperationsItemValue.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      op:    d["op"],
      path:  d["path"],
      value: d["value"] ? PatchScimV2GroupsGroupIDBodyOperationsItemValue.from_dynamic!(d["value"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "op"    => op,
      "path"  => path,
      "value" => value&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDBody < Dry::Struct

  # Information about the group update operation.
  attribute :operations, Types.Array(PatchScimV2GroupsGroupIDBodyOperationsItem).optional

  # The SCIM schema resource URI.
  attribute :schemas, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      operations: d["Operations"]&.map { |x| PatchScimV2GroupsGroupIDBodyOperationsItem.from_dynamic!(x) },
      schemas:    d["schemas"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "Operations" => operations&.map { |x| x.to_dynamic },
      "schemas"    => schemas,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponseMeta < Dry::Struct

  # The date and time at which the group was created.
  attribute :created, Types::String.optional

  # The date and time at which the group was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse < Dry::Struct

  # The group's name.
  attribute :display_name, Types::String.optional

  # The group's external ID.
  attribute :external_id, Types::String.optional

  # The group's ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :patch_scim_v2_groups_group_id_response_meta, PatchScimV2GroupsGroupIDResponseMeta.optional

  # The SCIM schema resource URI.
  attribute :schemas, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      display_name:                                d["displayName"],
      external_id:                                 d["externalId"],
      id:                                          d["id"],
      patch_scim_v2_groups_group_id_response_meta: d["meta"] ? PatchScimV2GroupsGroupIDResponseMeta.from_dynamic!(d["meta"]) : nil,
      schemas:                                     d["schemas"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "displayName" => display_name,
      "externalId"  => external_id,
      "id"          => id,
      "meta"        => patch_scim_v2_groups_group_id_response_meta&.to_dynamic,
      "schemas"     => schemas,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # A list of SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The SCIM type.
  attribute :scim_type, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:    d["detail"],
      schemas:   d["schemas"],
      scim_type: d["scimType"],
      status:    d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "schemas"  => schemas,
      "scimType" => scim_type,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2GroupsGroupIDResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Op2
  Replace = "replace"
end

class PatchScimV2UsersUserIDBodyOperationsItemValue < Dry::Struct

  # Sets the user's `active` state:
  # - `true` — Activates the user. This lets them authenticate in to your Postman team.
  # - `false` — Removes the user from your Postman team and deactivates the account. This
  # blocks the user from authenticating in to Postman.
  attribute :active, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active: d["active"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active" => active,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDBodyOperationsItem < Dry::Struct

  # The operation to perform.
  attribute :op, Types::Op2.optional

  # The performed operation's value.
  attribute :value, PatchScimV2UsersUserIDBodyOperationsItemValue.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      op:    d["op"],
      value: d["value"] ? PatchScimV2UsersUserIDBodyOperationsItemValue.from_dynamic!(d["value"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "op"    => op,
      "value" => value&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDBody < Dry::Struct

  # Information about the user update operation.
  attribute :operations, Types.Array(PatchScimV2UsersUserIDBodyOperationsItem).optional

  # The SCIM schema resource URI.
  attribute :schemas, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      operations: d["Operations"]&.map { |x| PatchScimV2UsersUserIDBodyOperationsItem.from_dynamic!(x) },
      schemas:    d["schemas"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "Operations" => operations&.map { |x| x.to_dynamic },
      "schemas"    => schemas,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponseMeta < Dry::Struct

  # The date and time at which the team member was created.
  attribute :created, Types::String.optional

  # The date and time at which the team member was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponseName < Dry::Struct

  # The team member's last name.
  attribute :family_name, Types::String.optional

  # The team member's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse < Dry::Struct

  # If true, the team member is active.
  attribute :active, Types::Bool.optional

  # The team member's external ID.
  attribute :external_id, Types::String.optional

  # The team member's SCIM ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :patch_scim_v2_users_user_id_response_meta, PatchScimV2UsersUserIDResponseMeta.optional

  # Information about the Postman team member.
  attribute :patch_scim_v2_users_user_id_response_name, PatchScimV2UsersUserIDResponseName.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The team member's SCIM username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                                    d["active"],
      external_id:                               d["externalId"],
      id:                                        d["id"],
      patch_scim_v2_users_user_id_response_meta: d["meta"] ? PatchScimV2UsersUserIDResponseMeta.from_dynamic!(d["meta"]) : nil,
      patch_scim_v2_users_user_id_response_name: d["name"] ? PatchScimV2UsersUserIDResponseName.from_dynamic!(d["name"]) : nil,
      schemas:                                   d["schemas"],
      user_name:                                 d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "id"         => id,
      "meta"       => patch_scim_v2_users_user_id_response_meta&.to_dynamic,
      "name"       => patch_scim_v2_users_user_id_response_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse400 < Dry::Struct
  attribute :detail,  Types::String.optional
  attribute :schemas, Types.Array(Types::String).optional
  attribute :status,  Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PatchScimV2UsersUserIDResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDCollectionsResponse < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDCollectionsResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_api_id_collections_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                        d["detail"],
      instance:                                      d["instance"],
      status:                                        d["status"],
      title:                                         d["title"],
      post_apis_api_id_collections_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_apis_api_id_collections_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDCollectionsResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_collections_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                        d["detail"],
      title:                                         d["title"],
      post_apis_api_id_collections_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_collections_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDCollectionsResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_collections_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                        d["detail"],
      title:                                         d["title"],
      post_apis_api_id_collections_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_collections_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDCollectionsResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_collections_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                        d["detail"],
      title:                                         d["title"],
      post_apis_api_id_collections_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_collections_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasBodyFilesItemRoot < Dry::Struct

  # If true, tag the file as the root file. The root tag is only allowed for protobuf
  # specifications.
  attribute :enabled, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled: d["enabled"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasBodyFilesItem < Dry::Struct

  # The schema file's stringified contents.
  attribute :content, Types::String.optional

  # The schema's file path.
  attribute :path, Types::String.optional

  # Information about the schema's root file.
  attribute :root, PostApisAPIIDSchemasBodyFilesItemRoot.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      content: d["content"],
      path:    d["path"],
      root:    d["root"] ? PostApisAPIIDSchemasBodyFilesItemRoot.from_dynamic!(d["root"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "content" => content,
      "path"    => path,
      "root"    => root&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module PostApisAPIIDSchemasBodyType
  Asyncapi2  = "asyncapi:2"
  Graphql    = "graphql"
  Openapi1   = "openapi:1"
  Openapi2   = "openapi:2"
  Openapi3   = "openapi:3"
  Openapi3_1 = "openapi:3_1"
  Proto2     = "proto:2"
  Proto3     = "proto:3"
  Raml0_8    = "raml:0_8"
  Raml1      = "raml:1"
  WSDL1      = "wsdl:1"
  WSDL2      = "wsdl:2"
end

class PostApisAPIIDSchemasBody < Dry::Struct

  # The list of files that are part of the schema.
  attribute :files, Types.Array(PostApisAPIIDSchemasBodyFilesItem)

  # The schema's type.
  attribute :post_apis_api_id_schemas_body_type, Types::PostApisAPIIDSchemasBodyType

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      files:                              d.fetch("files").map { |x| PostApisAPIIDSchemasBodyFilesItem.from_dynamic!(x) },
      post_apis_api_id_schemas_body_type: d.fetch("type"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "files" => files.map { |x| x.to_dynamic },
      "type"  => post_apis_api_id_schemas_body_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponseFilesItem < Dry::Struct

  # The date and time at which the file was created.
  attribute :created_at, Types::String.optional

  # The user Id of the user that created the file.
  attribute :created_by, Types::String.optional

  # The schema file's ID.
  attribute :id, Types::String.optional

  # The schema file's name.
  attribute :post_apis_api_id_schemas_response_files_item_name, Types::String.optional

  # The file system path to the schema file.
  attribute :path, Types::String.optional

  # The date and time at which the file was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that last updated the file.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                        d["createdAt"],
      created_by:                                        d["createdBy"],
      id:                                                d["id"],
      post_apis_api_id_schemas_response_files_item_name: d["name"],
      path:                                              d["path"],
      updated_at:                                        d["updatedAt"],
      updated_by:                                        d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => post_apis_api_id_schemas_response_files_item_name,
      "path"      => path,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse < Dry::Struct

  # The date and time at which the schema was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user that created the schema.
  attribute :created_by, Types::String.optional

  # The list of the schema's files.
  attribute :files, Types.Array(PostApisAPIIDSchemasResponseFilesItem).optional

  # The schema's ID.
  attribute :id, Types::String.optional

  # The schema's type.
  attribute :post_apis_api_id_schemas_response_type, Types::PostApisAPIIDSchemasBodyType.optional

  # The date and time at which the schema was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that updated the schema.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                             d["createdAt"],
      created_by:                             d["createdBy"],
      files:                                  d["files"]&.map { |x| PostApisAPIIDSchemasResponseFilesItem.from_dynamic!(x) },
      id:                                     d["id"],
      post_apis_api_id_schemas_response_type: d["type"],
      updated_at:                             d["updatedAt"],
      updated_by:                             d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "files"     => files&.map { |x| x.to_dynamic },
      "id"        => id,
      "type"      => post_apis_api_id_schemas_response_type,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse400 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_schemas_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      post_apis_api_id_schemas_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_schemas_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_api_id_schemas_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      instance:                                  d["instance"],
      status:                                    d["status"],
      title:                                     d["title"],
      post_apis_api_id_schemas_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_apis_api_id_schemas_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse403 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_api_id_schemas_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      instance:                                  d["instance"],
      status:                                    d["status"],
      title:                                     d["title"],
      post_apis_api_id_schemas_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_apis_api_id_schemas_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_schemas_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      post_apis_api_id_schemas_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_schemas_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_api_id_schemas_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      post_apis_api_id_schemas_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_schemas_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDSchemasResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_schemas_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                    d["detail"],
      title:                                     d["title"],
      post_apis_api_id_schemas_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_schemas_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDVersionsResponse < Dry::Struct

  # The date and time at which the version was created.
  attribute :created_at, Types::String.optional

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :post_apis_api_id_versions_response_name, Types::String.optional

  # Information about the API version release. For example, changelog notes.
  attribute :release_notes, Types::String.optional

  # The date and time at which the version was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                              d["createdAt"],
      id:                                      d["id"],
      post_apis_api_id_versions_response_name: d["name"],
      release_notes:                           d["releaseNotes"],
      updated_at:                              d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"    => created_at,
      "id"           => id,
      "name"         => post_apis_api_id_versions_response_name,
      "releaseNotes" => release_notes,
      "updatedAt"    => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDVersionsResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_api_id_versions_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                     d["detail"],
      instance:                                   d["instance"],
      status:                                     d["status"],
      title:                                      d["title"],
      post_apis_api_id_versions_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_apis_api_id_versions_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDVersionsResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_versions_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                     d["detail"],
      title:                                      d["title"],
      post_apis_api_id_versions_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_versions_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDVersionsResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_versions_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                     d["detail"],
      title:                                      d["title"],
      post_apis_api_id_versions_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_versions_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDVersionsResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_api_id_versions_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                     d["detail"],
      title:                                      d["title"],
      post_apis_api_id_versions_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_versions_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisAPIIDVersionsResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_api_id_versions_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                     d["detail"],
      title:                                      d["title"],
      post_apis_api_id_versions_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_api_id_versions_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisBody < Dry::Struct

  # The API's description. This supports Markdown formatting.
  attribute :description, Types::String.optional

  # The API's name.
  attribute :post_apis_body_name, Types::String

  # The API's short summary.
  attribute :summary, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:         d["description"],
      post_apis_body_name: d.fetch("name"),
      summary:             d["summary"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => post_apis_body_name,
      "summary"     => summary,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisResponse < Dry::Struct

  # The date and time at which the API was created.
  attribute :created_at, Types::String.optional

  # The Postman ID of the user that created the API.
  attribute :created_by, Types::Double.optional

  # The API's description.
  attribute :description, Types::String.optional

  # The API's ID.
  attribute :id, Types::String.optional

  # The API's name.
  attribute :post_apis_response_name, Types::String.optional

  # The API's short summary.
  attribute :summary, Types::String.optional

  # The date and time at which the API was updated.
  attribute :updated_at, Types::String.optional

  # The Postman ID of the user that updated the API.
  attribute :updated_by, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:              d["createdAt"],
      created_by:              d["createdBy"],
      description:             d["description"],
      id:                      d["id"],
      post_apis_response_name: d["name"],
      summary:                 d["summary"],
      updated_at:              d["updatedAt"],
      updated_by:              d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"   => created_at,
      "createdBy"   => created_by,
      "description" => description,
      "id"          => id,
      "name"        => post_apis_response_name,
      "summary"     => summary,
      "updatedAt"   => updated_at,
      "updatedBy"   => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisResponse400 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                     d["detail"],
      title:                      d["title"],
      post_apis_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :post_apis_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                     d["detail"],
      instance:                   d["instance"],
      status:                     d["status"],
      title:                      d["title"],
      post_apis_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_apis_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                     d["detail"],
      title:                      d["title"],
      post_apis_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                     d["detail"],
      title:                      d["title"],
      post_apis_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostApisResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_apis_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                     d["detail"],
      title:                      d["title"],
      post_apis_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_apis_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsBodyCollectionInfo < Dry::Struct

  # The collection's name.
  attribute :post_collections_body_collection_info_name, Types::String

  # A URL to the collection's schema.
  attribute :schema, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      post_collections_body_collection_info_name: d.fetch("name"),
      schema:                                     d.fetch("schema"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"   => post_collections_body_collection_info_name,
      "schema" => schema,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsBodyCollectionItemItem < Dry::Struct
  attribute :request, Types::Any

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      request: d.fetch("request"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "request" => request,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsBodyCollection < Dry::Struct

  # An object that contains basic information about the collection. For a complete list of
  # values, refer to the `definitions.info` entry in the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :info, PostCollectionsBodyCollectionInfo

  # Information about the collection's HTTP requests and responses. For a complete list of
  # values, refer to the `definitions.item` entry in the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :item, Types.Array(PostCollectionsBodyCollectionItemItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      info: PostCollectionsBodyCollectionInfo.from_dynamic!(d.fetch("info")),
      item: d["item"]&.map { |x| PostCollectionsBodyCollectionItemItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "info" => info.to_dynamic,
      "item" => item&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsBody < Dry::Struct

  # For a complete list of values, refer to the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :collection, PostCollectionsBodyCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PostCollectionsBodyCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersBody < Dry::Struct

  # The ID of a folder in which to create the folder.
  attribute :folder, Types::String.optional

  # The folder's name. It is recommended that you pass the `name` property in the request
  # body. If you do not, the system uses a null value. As a result, this creates a folder
  # with a blank name.
  attribute :post_collections_collection_id_folders_body_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      folder:                                           d["folder"],
      post_collections_collection_id_folders_body_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "folder" => folder,
      "name"   => post_collections_collection_id_folders_body_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponseData < Dry::Struct

  # The collection ID that the folder belongs to.
  attribute :collection, Types::String.optional

  # The folder's creation date and time.
  attribute :created_at, Types::String.optional

  # The folder's description.
  attribute :description, Types::String.optional

  # Information about the folder.
  attribute :folder, Types::String.optional

  # A list of folders.
  attribute :folders, Types.Array(Types::String).optional

  # A list of folder IDs and their order in the collection.
  attribute :folders_order, Types.Array(Types::String).optional

  # The folder's ID.
  attribute :id, Types::String.optional

  # The user ID of the user that last updated the folder.
  attribute :last_updated_by, Types::String.optional

  # The folder's name.
  attribute :post_collections_collection_id_folders_response_data_name, Types::String.optional

  # A list of request IDs and their order in the created folder.
  attribute :order, Types.Array(Types::String).optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  # A list of requests.
  attribute :requests, Types.Array(Types::String).optional

  # The date and time at which the folder was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                                                d["collection"],
      created_at:                                                d["createdAt"],
      description:                                               d["description"],
      folder:                                                    d["folder"],
      folders:                                                   d["folders"],
      folders_order:                                             d["folders_order"],
      id:                                                        d["id"],
      last_updated_by:                                           d["lastUpdatedBy"],
      post_collections_collection_id_folders_response_data_name: d["name"],
      order:                                                     d["order"],
      owner:                                                     d["owner"],
      requests:                                                  d["requests"],
      updated_at:                                                d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"    => collection,
      "createdAt"     => created_at,
      "description"   => description,
      "folder"        => folder,
      "folders"       => folders,
      "folders_order" => folders_order,
      "id"            => id,
      "lastUpdatedBy" => last_updated_by,
      "name"          => post_collections_collection_id_folders_response_data_name,
      "order"         => order,
      "owner"         => owner,
      "requests"      => requests,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse < Dry::Struct

  # Information about the collection folder. For a complete list of properties, refer to the
  # [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, PostCollectionsCollectionIDFoldersResponseData.optional

  attribute :post_collections_collection_id_folders_response_meta, Types::Any.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                 d["data"] ? PostCollectionsCollectionIDFoldersResponseData.from_dynamic!(d["data"]) : nil,
      post_collections_collection_id_folders_response_meta: d["meta"],
      model_id:                                             d["model_id"],
      revision:                                             d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => post_collections_collection_id_folders_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse400ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsCollectionIDFoldersResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_collection_id_folders_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                       d["details"] ? PostCollectionsCollectionIDFoldersResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                       d["message"],
      post_collections_collection_id_folders_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_collection_id_folders_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse400 < Dry::Struct
  attribute :error, PostCollectionsCollectionIDFoldersResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsCollectionIDFoldersResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsCollectionIDFoldersResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_collection_id_folders_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                       d["details"] ? PostCollectionsCollectionIDFoldersResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                       d["message"],
      post_collections_collection_id_folders_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_collection_id_folders_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse401 < Dry::Struct
  attribute :error, PostCollectionsCollectionIDFoldersResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsCollectionIDFoldersResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDFoldersResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_collections_collection_id_folders_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                  d["detail"],
      title:                                                   d["title"],
      post_collections_collection_id_folders_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_collections_collection_id_folders_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsBody < Dry::Struct

  # The request's name. It is recommended that you pass the `name` property in the request
  # body. If you do not, the system uses a null value. As a result, this creates a request
  # with a blank name.
  attribute :post_collections_collection_id_requests_body_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      post_collections_collection_id_requests_body_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name" => post_collections_collection_id_requests_body_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponseData < Dry::Struct

  # The collection ID that the request belongs to.
  attribute :collection, Types::String.optional

  # The requeset's creation date and time.
  attribute :created_at, Types::String.optional

  # Information about the request's parent folder.
  attribute :folder, Types::String.optional

  # The request's ID.
  attribute :id, Types::String.optional

  # The user ID of the user that last updated the folder.
  attribute :last_updated_by, Types::String.optional

  # The request's name.
  attribute :post_collections_collection_id_requests_response_data_name, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  # A list of the request's responses.
  attribute :responses, Types.Array(Types::String).optional

  # A list of response IDs and their order in the folder.
  attribute :responses_order, Types.Array(Types::String).optional

  # The date and time at which the request was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                                                 d["collection"],
      created_at:                                                 d["createdAt"],
      folder:                                                     d["folder"],
      id:                                                         d["id"],
      last_updated_by:                                            d["lastUpdatedBy"],
      post_collections_collection_id_requests_response_data_name: d["name"],
      owner:                                                      d["owner"],
      responses:                                                  d["responses"],
      responses_order:                                            d["responses_order"],
      updated_at:                                                 d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"      => collection,
      "createdAt"       => created_at,
      "folder"          => folder,
      "id"              => id,
      "lastUpdatedBy"   => last_updated_by,
      "name"            => post_collections_collection_id_requests_response_data_name,
      "owner"           => owner,
      "responses"       => responses,
      "responses_order" => responses_order,
      "updatedAt"       => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse < Dry::Struct

  # Information about the created request. For a complete list of properties, refer to the
  # `definitions.request` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, PostCollectionsCollectionIDRequestsResponseData.optional

  attribute :post_collections_collection_id_requests_response_meta, Types::Any.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                  d["data"] ? PostCollectionsCollectionIDRequestsResponseData.from_dynamic!(d["data"]) : nil,
      post_collections_collection_id_requests_response_meta: d["meta"],
      model_id:                                              d["model_id"],
      revision:                                              d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => post_collections_collection_id_requests_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse400ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsCollectionIDRequestsResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_collection_id_requests_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                        d["details"] ? PostCollectionsCollectionIDRequestsResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                        d["message"],
      post_collections_collection_id_requests_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_collection_id_requests_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse400 < Dry::Struct
  attribute :error, PostCollectionsCollectionIDRequestsResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsCollectionIDRequestsResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsCollectionIDRequestsResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error's name.
  attribute :post_collections_collection_id_requests_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                        d["details"] ? PostCollectionsCollectionIDRequestsResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                        d["message"],
      post_collections_collection_id_requests_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_collection_id_requests_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse401 < Dry::Struct
  attribute :error, PostCollectionsCollectionIDRequestsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsCollectionIDRequestsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDRequestsResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_collections_collection_id_requests_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                   d["detail"],
      title:                                                    d["title"],
      post_collections_collection_id_requests_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_collections_collection_id_requests_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesBody < Dry::Struct

  # The response's name. It is recommended that you pass the `name` property in the request
  # body. If you do not, the system uses a null value. As a result, this creates a response
  # with a blank name.
  attribute :post_collections_collection_id_responses_body_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      post_collections_collection_id_responses_body_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name" => post_collections_collection_id_responses_body_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponseData < Dry::Struct

  # The date and time at which the response was created.
  attribute :created_at, Types::String.optional

  # The response's ID.
  attribute :id, Types::String.optional

  # The user ID of the user who last updated the response.
  attribute :last_updated_by, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  # The request ID of the response's associated request.
  attribute :request, Types::String.optional

  # The date and time at which the response was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:      d["createdAt"],
      id:              d["id"],
      last_updated_by: d["lastUpdatedBy"],
      owner:           d["owner"],
      request:         d["request"],
      updated_at:      d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"     => created_at,
      "id"            => id,
      "lastUpdatedBy" => last_updated_by,
      "owner"         => owner,
      "request"       => request,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse < Dry::Struct

  # Information about the response. For a complete list of properties, refer to the
  # `definitions.request.responses` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, PostCollectionsCollectionIDResponsesResponseData.optional

  attribute :post_collections_collection_id_responses_response_meta, Types::Any.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                   d["data"] ? PostCollectionsCollectionIDResponsesResponseData.from_dynamic!(d["data"]) : nil,
      post_collections_collection_id_responses_response_meta: d["meta"],
      model_id:                                               d["model_id"],
      revision:                                               d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => post_collections_collection_id_responses_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse400ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsCollectionIDResponsesResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_collection_id_responses_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                         d["details"] ? PostCollectionsCollectionIDResponsesResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                         d["message"],
      post_collections_collection_id_responses_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_collection_id_responses_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse400 < Dry::Struct
  attribute :error, PostCollectionsCollectionIDResponsesResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsCollectionIDResponsesResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsCollectionIDResponsesResponse401ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_collection_id_responses_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                         d["details"] ? PostCollectionsCollectionIDResponsesResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                         d["message"],
      post_collections_collection_id_responses_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_collection_id_responses_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse401 < Dry::Struct
  attribute :error, PostCollectionsCollectionIDResponsesResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsCollectionIDResponsesResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsCollectionIDResponsesResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_collections_collection_id_responses_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                    d["detail"],
      title:                                                     d["title"],
      post_collections_collection_id_responses_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => post_collections_collection_id_responses_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDBody < Dry::Struct

  # The fork's label.
  attribute :label, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      label: d.fetch("label"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "label" => label,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponseCollectionFork < Dry::Struct

  # The fork's creation date and time.
  attribute :created_at, Types::String.optional

  # The unique ID of fork's source collection.
  attribute :from, Types::String.optional

  # The fork's label.
  attribute :label, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at: d["createdAt"],
      from:       d["from"],
      label:      d["label"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "from"      => from,
      "label"     => label,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponseCollection < Dry::Struct

  # Information about the collection's fork.
  attribute :post_collections_fork_collection_id_response_collection_fork, PostCollectionsForkCollectionIDResponseCollectionFork.optional

  # The forked collection's ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :post_collections_fork_collection_id_response_collection_name, Types::String.optional

  # The forked collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      post_collections_fork_collection_id_response_collection_fork: d["fork"] ? PostCollectionsForkCollectionIDResponseCollectionFork.from_dynamic!(d["fork"]) : nil,
      id:                                                           d["id"],
      post_collections_fork_collection_id_response_collection_name: d["name"],
      uid:                                                          d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "fork" => post_collections_fork_collection_id_response_collection_fork&.to_dynamic,
      "id"   => id,
      "name" => post_collections_fork_collection_id_response_collection_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse < Dry::Struct

  # Information about the forked collection.
  attribute :collection, PostCollectionsForkCollectionIDResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PostCollectionsForkCollectionIDResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_collections_fork_collection_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                    d["message"],
      post_collections_fork_collection_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_collections_fork_collection_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse401 < Dry::Struct
  attribute :error, PostCollectionsForkCollectionIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsForkCollectionIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse404ErrorDetails < Dry::Struct

  # The collection ID.
  attribute :id, Types::String.optional

  # The instance item.
  attribute :item, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:   d["id"],
      item: d["item"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "item" => item,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsForkCollectionIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_fork_collection_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                    d["details"] ? PostCollectionsForkCollectionIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                    d["message"],
      post_collections_fork_collection_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_fork_collection_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse404 < Dry::Struct
  attribute :error, PostCollectionsForkCollectionIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsForkCollectionIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_fork_collection_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                    d["message"],
      post_collections_fork_collection_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_collections_fork_collection_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsForkCollectionIDResponse500 < Dry::Struct
  attribute :error, PostCollectionsForkCollectionIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsForkCollectionIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Strategy
  DeleteSource                = "deleteSource"
  UpdateSourceWithDestination = "updateSourceWithDestination"
end

class PostCollectionsMergeBody < Dry::Struct

  # The destination collection's unique ID.
  attribute :destination, Types::String

  # The forked collection's unique ID.
  attribute :source, Types::String

  # The fork's merge strategy:
  #
  # - `deleteSource` — The system deletes the forked collection after a successful merge into
  # the destination collection.
  # - `updateSourceWithDestination` — The system only merges the forked collection into the
  # destination collection.
  attribute :strategy, Types::Strategy.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      destination: d.fetch("destination"),
      source:      d.fetch("source"),
      strategy:    d["strategy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "destination" => destination,
      "source"      => source,
      "strategy"    => strategy,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponseCollection < Dry::Struct

  # The source collection's ID.
  attribute :id, Types::String.optional

  # The source collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:  d["id"],
      uid: d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"  => id,
      "uid" => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse < Dry::Struct
  attribute :collection, PostCollectionsMergeResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PostCollectionsMergeResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_collections_merge_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                       d["message"],
      post_collections_merge_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_collections_merge_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse401 < Dry::Struct
  attribute :error, PostCollectionsMergeResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsMergeResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse404ErrorDetails < Dry::Struct

  # The collection ID.
  attribute :id, Types::String.optional

  # The instance item.
  attribute :item, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:   d["id"],
      item: d["item"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "item" => item,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PostCollectionsMergeResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_merge_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                       d["details"] ? PostCollectionsMergeResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                       d["message"],
      post_collections_merge_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_collections_merge_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse404 < Dry::Struct
  attribute :error, PostCollectionsMergeResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsMergeResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_merge_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                       d["message"],
      post_collections_merge_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_collections_merge_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsMergeResponse500 < Dry::Struct
  attribute :error, PostCollectionsMergeResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsMergeResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponseCollection < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :post_collections_response_collection_name, Types::String.optional

  # The collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                        d["id"],
      post_collections_response_collection_name: d["name"],
      uid:                                       d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => post_collections_response_collection_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse < Dry::Struct
  attribute :collection, PostCollectionsResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PostCollectionsResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                 d["details"],
      message:                                 d["message"],
      post_collections_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => post_collections_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse400 < Dry::Struct
  attribute :error, PostCollectionsResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_collections_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                 d["message"],
      post_collections_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_collections_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse401 < Dry::Struct
  attribute :error, PostCollectionsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_collections_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                 d["message"],
      post_collections_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_collections_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostCollectionsResponse500 < Dry::Struct
  attribute :error, PostCollectionsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostCollectionsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Resolution
  AcceptedRisk  = "ACCEPTED_RISK"
  FalsePositive = "FALSE_POSITIVE"
  Revoked       = "REVOKED"
end

class PostDetectedSecretsQueriesBody < Dry::Struct

  # If true, return secrets with a `resolved` status.
  attribute :resolved, Types::Bool.optional

  # A list of secrets types to query. For a list of valid IDs, use the GET `/secret-types`
  # endpoint.
  attribute :secret_types, Types.Array(Types::String).optional

  # A list of the types of resolution statuses to query.
  attribute :statuses, Types.Array(Types::Resolution).optional

  # A list of workspaces IDs to query.
  attribute :workspace_ids, Types.Array(Types::String).optional

  # A list of workspace [visibility
  # settings](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/managing-workspaces/#changing-workspace-visibility)
  # to query. This currently supports the `team` and `public` settings.
  attribute :workspace_visiblities, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      resolved:              d["resolved"],
      secret_types:          d["secretTypes"],
      statuses:              d["statuses"],
      workspace_ids:         d["workspaceIds"],
      workspace_visiblities: d["workspaceVisiblities"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "resolved"             => resolved,
      "secretTypes"          => secret_types,
      "statuses"             => statuses,
      "workspaceIds"         => workspace_ids,
      "workspaceVisiblities" => workspace_visiblities,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module WorkspaceVisibility
  Personal = "personal"
  Private  = "private"
  Public   = "public"
  Team     = "team"
end

class PostDetectedSecretsQueriesResponseDataItem < Dry::Struct

  # The date and time at which the secret was first detected.
  attribute :detected_at, Types::String.optional

  # The secret's obfuscated value.
  attribute :obfuscated_secret, Types::String.optional

  # The number of times the secret was found in the workspace.
  attribute :occurrences, Types::Double.optional

  # The secret's current status:
  # - `ACTIVE` — The secret is active.
  # - `FALSE_POSITIVE` — The discovered secret is not an actual secret.
  # - `REVOKED` — The secret is valid, but the user rotated their key to resolve the issue.
  # - `ACCEPTED_RISK` — The Secret Scanner found the secret, but user accepts the risk of
  # publishing it.
  attribute :resolution, Types::ResolutionEnum.optional

  # The SHA-256 hash of the detected secret.
  attribute :secret_hash, Types::String.optional

  # The detected secret's ID.
  attribute :secret_id, Types::String.optional

  # The type of the secret.
  attribute :secret_type, Types::String.optional

  # The ID of the workspace that contains the secret.
  attribute :workspace_id, Types::String.optional

  # The workspace's [visibility
  # setting](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/managing-workspaces/#changing-workspace-visibility).
  attribute :workspace_visibility, Types::WorkspaceVisibility.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detected_at:          d["detectedAt"],
      obfuscated_secret:    d["obfuscatedSecret"],
      occurrences:          d["occurrences"],
      resolution:           d["resolution"],
      secret_hash:          d["secretHash"],
      secret_id:            d["secretId"],
      secret_type:          d["secretType"],
      workspace_id:         d["workspaceId"],
      workspace_visibility: d["workspaceVisibility"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detectedAt"          => detected_at,
      "obfuscatedSecret"    => obfuscated_secret,
      "occurrences"         => occurrences,
      "resolution"          => resolution,
      "secretHash"          => secret_hash,
      "secretId"            => secret_id,
      "secretType"          => secret_type,
      "workspaceId"         => workspace_id,
      "workspaceVisibility" => workspace_visibility,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostDetectedSecretsQueriesResponseMeta < Dry::Struct

  # The maximum number of records in the paginated response.
  attribute :limit, Types::Double.optional

  # The Base64-encoded value that points to the next record in the results set.
  attribute :next_cursor, Types::String.optional.optional

  # The number of records that match the defined criteria. This will only be present if the
  # `include` query parameter is specified with the `meta.total` value.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:       d["limit"],
      next_cursor: d["nextCursor"],
      total:       d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"      => limit,
      "nextCursor" => next_cursor,
      "total"      => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostDetectedSecretsQueriesResponse < Dry::Struct
  attribute :data, Types.Array(PostDetectedSecretsQueriesResponseDataItem).optional

  # The response's meta information for paginated results.
  attribute :post_detected_secrets_queries_response_meta, PostDetectedSecretsQueriesResponseMeta.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                        d["data"]&.map { |x| PostDetectedSecretsQueriesResponseDataItem.from_dynamic!(x) },
      post_detected_secrets_queries_response_meta: d["meta"] ? PostDetectedSecretsQueriesResponseMeta.from_dynamic!(d["meta"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data" => data&.map { |x| x.to_dynamic },
      "meta" => post_detected_secrets_queries_response_meta&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostDetectedSecretsQueriesResponse400 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_detected_secrets_queries_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                       d["instance"],
      status:                                         d["status"],
      title:                                          d["title"],
      post_detected_secrets_queries_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_detected_secrets_queries_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostDetectedSecretsQueriesResponse401 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_detected_secrets_queries_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                       d["instance"],
      status:                                         d["status"],
      title:                                          d["title"],
      post_detected_secrets_queries_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_detected_secrets_queries_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostDetectedSecretsQueriesResponse403 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_detected_secrets_queries_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                       d["instance"],
      status:                                         d["status"],
      title:                                          d["title"],
      post_detected_secrets_queries_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_detected_secrets_queries_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostDetectedSecretsQueriesResponse500 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :post_detected_secrets_queries_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                       d["instance"],
      status:                                         d["status"],
      title:                                          d["title"],
      post_detected_secrets_queries_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => post_detected_secrets_queries_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsBodyEnvironmentValuesItemItem < Dry::Struct

  # If true, the variable is enabled.
  attribute :enabled, Types::Bool.optional

  # The variable's name.
  attribute :key, Types::String.optional

  # The variable type.
  attribute :post_environments_body_environment_values_item_item_type, Types::Type1.optional

  # The variable's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled:                                                  d["enabled"],
      key:                                                      d["key"],
      post_environments_body_environment_values_item_item_type: d["type"],
      value:                                                    d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
      "key"     => key,
      "type"    => post_environments_body_environment_values_item_item_type,
      "value"   => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsBodyEnvironment < Dry::Struct

  # The environment's name.
  attribute :post_environments_body_environment_name, Types::String

  # Information about the environment's variables.
  attribute :values, Types.Array(Types.Array(PostEnvironmentsBodyEnvironmentValuesItemItem)).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      post_environments_body_environment_name: d.fetch("name"),
      values:                                  d["values"]&.map { |x| x.map { |x| PostEnvironmentsBodyEnvironmentValuesItemItem.from_dynamic!(x) } },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"   => post_environments_body_environment_name,
      "values" => values&.map { |x| x.map { |x| x.to_dynamic } },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsBody < Dry::Struct
  attribute :environment, PostEnvironmentsBodyEnvironment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environment: d["environment"] ? PostEnvironmentsBodyEnvironment.from_dynamic!(d["environment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environment" => environment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponseEnvironment < Dry::Struct

  # The environment's ID.
  attribute :id, Types::String.optional

  # The environment's name.
  attribute :post_environments_response_environment_name, Types::String.optional

  # The environment's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                          d["id"],
      post_environments_response_environment_name: d["name"],
      uid:                                         d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => post_environments_response_environment_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse < Dry::Struct
  attribute :environment, PostEnvironmentsResponseEnvironment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environment: d["environment"] ? PostEnvironmentsResponseEnvironment.from_dynamic!(d["environment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environment" => environment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse400Error < Dry::Struct
  attribute :details,                                  Types.Array(Types::String).optional
  attribute :message,                                  Types::String.optional
  attribute :post_environments_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                  d["details"],
      message:                                  d["message"],
      post_environments_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => post_environments_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse400 < Dry::Struct
  attribute :error, PostEnvironmentsResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostEnvironmentsResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_environments_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      post_environments_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_environments_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse401 < Dry::Struct
  attribute :error, PostEnvironmentsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostEnvironmentsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_environments_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      post_environments_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_environments_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse403 < Dry::Struct
  attribute :error, PostEnvironmentsResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostEnvironmentsResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_environments_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      post_environments_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_environments_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostEnvironmentsResponse500 < Dry::Struct
  attribute :error, PostEnvironmentsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostEnvironmentsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponseCollectionsItem < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :post_import_openapi_response_collections_item_name, Types::String.optional

  # The collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                 d["id"],
      post_import_openapi_response_collections_item_name: d["name"],
      uid:                                                d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => post_import_openapi_response_collections_item_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse < Dry::Struct
  attribute :collections, Types.Array(PostImportOpenapiResponseCollectionsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collections: d["collections"]&.map { |x| PostImportOpenapiResponseCollectionsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collections" => collections&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse400ErrorDetails < Dry::Struct

  # The parameter name.
  attribute :param, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      param: d["param"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "param" => param,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PostImportOpenapiResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_import_openapi_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                    d["details"] ? PostImportOpenapiResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                    d["message"],
      post_import_openapi_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_import_openapi_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse400 < Dry::Struct
  attribute :error, PostImportOpenapiResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostImportOpenapiResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_import_openapi_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                    d["message"],
      post_import_openapi_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_import_openapi_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse401 < Dry::Struct
  attribute :error, PostImportOpenapiResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostImportOpenapiResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_import_openapi_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                    d["message"],
      post_import_openapi_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_import_openapi_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostImportOpenapiResponse500 < Dry::Struct
  attribute :error, PostImportOpenapiResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostImportOpenapiResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksBodyMock < Dry::Struct

  # The mock's associated collection unique ID.
  attribute :collection, Types::String

  # The mock server's associated environment ID.
  attribute :environment, Types::String.optional

  # The mock server's name.
  attribute :post_mocks_body_mock_name, Types::String.optional

  # If true, the mock server is set private. By default, mock servers are public and can
  # receive requests from anyone and anywhere.
  attribute :private, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                d.fetch("collection"),
      environment:               d["environment"],
      post_mocks_body_mock_name: d["name"],
      private:                   d["private"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"  => collection,
      "environment" => environment,
      "name"        => post_mocks_body_mock_name,
      "private"     => private,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksBody < Dry::Struct
  attribute :mock, PostMocksBodyMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? PostMocksBodyMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponseMock < Dry::Struct

  # The mock server's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse < Dry::Struct
  attribute :mock, PostMocksMockIDPublishResponseMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? PostMocksMockIDPublishResponseMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_mock_id_publish_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      post_mocks_mock_id_publish_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_mock_id_publish_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse400 < Dry::Struct
  attribute :error, PostMocksMockIDPublishResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDPublishResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_mocks_mock_id_publish_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      post_mocks_mock_id_publish_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_mock_id_publish_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse401 < Dry::Struct
  attribute :error, PostMocksMockIDPublishResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDPublishResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_mock_id_publish_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                           d["details"],
      message:                                           d["message"],
      post_mocks_mock_id_publish_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => post_mocks_mock_id_publish_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse404 < Dry::Struct
  attribute :error, PostMocksMockIDPublishResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDPublishResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_mock_id_publish_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                           d["message"],
      post_mocks_mock_id_publish_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_mock_id_publish_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDPublishResponse500 < Dry::Struct
  attribute :error, PostMocksMockIDPublishResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDPublishResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesBodyServerResponseHeadersItem < Dry::Struct

  # The request header's key value.
  attribute :key, Types::String.optional

  # The request header's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      key:   d["key"],
      value: d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "key"   => key,
      "value" => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesBodyServerResponse < Dry::Struct

  # The server response's body that returns when calling the mock server.
  attribute :body, Types::String.optional

  # The server response's request headers, such as Content-Type, Accept, encoding, and other
  # information.
  attribute :headers, Types.Array(PostMocksMockIDServerResponsesBodyServerResponseHeadersItem).optional

  # The server response's body language type.
  attribute :language, Types::DeleteMocksMockIDServerResponsesServerResponseIDResponseLanguage.optional

  # The server response's name.
  attribute :post_mocks_mock_id_server_responses_body_server_response_name, Types::String

  # The server response's 5xx HTTP response code. This property **only** accepts 5xx values.
  attribute :status_code, Types::Integer

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:                                                          d["body"],
      headers:                                                       d["headers"]&.map { |x| PostMocksMockIDServerResponsesBodyServerResponseHeadersItem.from_dynamic!(x) },
      language:                                                      d["language"],
      post_mocks_mock_id_server_responses_body_server_response_name: d.fetch("name"),
      status_code:                                                   d.fetch("statusCode"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"       => body,
      "headers"    => headers&.map { |x| x.to_dynamic },
      "language"   => language,
      "name"       => post_mocks_mock_id_server_responses_body_server_response_name,
      "statusCode" => status_code,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesBody < Dry::Struct
  attribute :server_response, PostMocksMockIDServerResponsesBodyServerResponse.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      server_response: d["serverResponse"] ? PostMocksMockIDServerResponsesBodyServerResponse.from_dynamic!(d["serverResponse"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "serverResponse" => server_response&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse400ErrorDetails < Dry::Struct

  # Information about the missing parameter.
  attribute :param, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      param: d["param"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "param" => param,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PostMocksMockIDServerResponsesResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_mock_id_server_responses_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                    d["details"] ? PostMocksMockIDServerResponsesResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                    d["message"],
      post_mocks_mock_id_server_responses_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_mocks_mock_id_server_responses_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse400 < Dry::Struct
  attribute :error, PostMocksMockIDServerResponsesResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDServerResponsesResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_mocks_mock_id_server_responses_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                    d["message"],
      post_mocks_mock_id_server_responses_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_mock_id_server_responses_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse401 < Dry::Struct
  attribute :error, PostMocksMockIDServerResponsesResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDServerResponsesResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_mock_id_server_responses_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                    d["message"],
      post_mocks_mock_id_server_responses_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_mock_id_server_responses_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponse500 < Dry::Struct
  attribute :error, PostMocksMockIDServerResponsesResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksMockIDServerResponsesResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksMockIDServerResponsesResponseItem < Dry::Struct

  # The date and time at which the server response was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user who created the server response.
  attribute :created_by, Types::String.optional

  # The server response's ID.
  attribute :id, Types::String.optional

  # The server response's name.
  attribute :post_mocks_mock_id_server_responses_response_item_name, Types::String.optional

  # The server response's 5xx HTTP response code.
  attribute :status_code, Types::Double.optional

  # The date and time at which the server response was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user who last updated the server response.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                             d["createdAt"],
      created_by:                                             d["createdBy"],
      id:                                                     d["id"],
      post_mocks_mock_id_server_responses_response_item_name: d["name"],
      status_code:                                            d["statusCode"],
      updated_at:                                             d["updatedAt"],
      updated_by:                                             d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"  => created_at,
      "createdBy"  => created_by,
      "id"         => id,
      "name"       => post_mocks_mock_id_server_responses_response_item_name,
      "statusCode" => status_code,
      "updatedAt"  => updated_at,
      "updatedBy"  => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponseMockConfigDelay < Dry::Struct

  # The configured delay, in milliseconds.
  attribute :duration, Types::Integer.optional

  # The simulated fixed network delay value:
  #
  # - `1` — 2G (300 ms).
  # - `2` — 3G (100 ms).
  #
  # The object does not return this value for custom delay values.
  attribute :preset, Types::Preset.optional

  # The type of simulated delay value:
  #
  # - `fixed` — The delay value is a fixed value.
  attribute :post_mocks_response_mock_config_delay_type, Types::GetMocksResponseMocksItemConfigDelayType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      duration:                                   d["duration"],
      preset:                                     d["preset"],
      post_mocks_response_mock_config_delay_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "duration" => duration,
      "preset"   => preset,
      "type"     => post_mocks_response_mock_config_delay_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponseMockConfig < Dry::Struct

  # Information about the mock server's simulated network delay settings. This returns a null
  # value if there are no configured network delay settings.
  attribute :delay, PostMocksResponseMockConfigDelay.optional.optional

  # A list of the mock server's headers.
  attribute :headers, Types.Array(Types::String).optional

  # If true, match the request body.
  attribute :match_body, Types::Bool.optional

  # If true, match query parameters.
  attribute :match_query_params, Types::Bool.optional

  # If true, use wildcard variable matching.
  attribute :match_wildcards, Types::Bool.optional

  # The ID of mock server's default response for requests. All calls to the mock server will
  # return the defined response.
  attribute :server_response_id, Types::String.optional.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      delay:              d["delay"] ? PostMocksResponseMockConfigDelay.from_dynamic!(d["delay"]) : nil,
      headers:            d["headers"],
      match_body:         d["matchBody"],
      match_query_params: d["matchQueryParams"],
      match_wildcards:    d["matchWildcards"],
      server_response_id: d["serverResponseId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "delay"            => delay&.to_dynamic,
      "headers"          => headers,
      "matchBody"        => match_body,
      "matchQueryParams" => match_query_params,
      "matchWildcards"   => match_wildcards,
      "serverResponseId" => server_response_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponseMock < Dry::Struct

  # The mock's associated collection unique ID.
  attribute :collection, Types::String.optional

  # Information about the mock server's configuration.
  attribute :config, PostMocksResponseMockConfig.optional

  # The date and time at which the mock server was created.
  attribute :created_at, Types::String.optional

  # The mock's associated environment unique ID.
  attribute :environment, Types::String.optional

  # The mock server's ID.
  attribute :id, Types::String.optional

  # The mock server URL.
  attribute :mock_url, Types::String.optional

  # The ID of mock server's owner.
  attribute :owner, Types::String.optional

  # The mock server's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the mock server was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:  d["collection"],
      config:      d["config"] ? PostMocksResponseMockConfig.from_dynamic!(d["config"]) : nil,
      created_at:  d["createdAt"],
      environment: d["environment"],
      id:          d["id"],
      mock_url:    d["mockUrl"],
      owner:       d["owner"],
      uid:         d["uid"],
      updated_at:  d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"  => collection,
      "config"      => config&.to_dynamic,
      "createdAt"   => created_at,
      "environment" => environment,
      "id"          => id,
      "mockUrl"     => mock_url,
      "owner"       => owner,
      "uid"         => uid,
      "updatedAt"   => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse < Dry::Struct
  attribute :mock, PostMocksResponseMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? PostMocksResponseMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse400ErrorDetails < Dry::Struct

  # Information about the missing parameter.
  attribute :param, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      param: d["param"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "param" => param,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PostMocksResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                           d["details"] ? PostMocksResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                           d["message"],
      post_mocks_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => post_mocks_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse400 < Dry::Struct
  attribute :error, PostMocksResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_mocks_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                           d["message"],
      post_mocks_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse401 < Dry::Struct
  attribute :error, PostMocksResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_mocks_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                           d["message"],
      post_mocks_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_mocks_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMocksResponse500 < Dry::Struct
  attribute :error, PostMocksResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMocksResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsBodyMonitorSchedule < Dry::Struct

  # The monitor's run frequency, based on the given cron pattern.
  # At this time you can only create monitors with limited schedules. For information about
  # the available schedules, see our [Postman Monitors](https://monitor.getpostman.com)
  # collection.
  attribute :cron, Types::String.optional

  # The monitor's [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
  attribute :timezone, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      cron:     d["cron"],
      timezone: d["timezone"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "cron"     => cron,
      "timezone" => timezone,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsBodyMonitor < Dry::Struct

  # The monitor's associated collection unique ID.
  attribute :collection, Types::String.optional

  # The monitor's associated environment unique ID.
  attribute :environment, Types::String.optional

  # The monitor's name.
  attribute :post_monitors_body_monitor_name, Types::String.optional

  # Information about the monitor's schedule.
  attribute :schedule, PostMonitorsBodyMonitorSchedule.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                      d["collection"],
      environment:                     d["environment"],
      post_monitors_body_monitor_name: d["name"],
      schedule:                        d["schedule"] ? PostMonitorsBodyMonitorSchedule.from_dynamic!(d["schedule"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"  => collection,
      "environment" => environment,
      "name"        => post_monitors_body_monitor_name,
      "schedule"    => schedule&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsBody < Dry::Struct
  attribute :monitor, PostMonitorsBodyMonitor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitor: d["monitor"] ? PostMonitorsBodyMonitor.from_dynamic!(d["monitor"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitor" => monitor&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunExecutionsItemItem < Dry::Struct

  # The executed item's name.
  attribute :post_monitors_monitor_id_run_response_run_executions_item_item_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      post_monitors_monitor_id_run_response_run_executions_item_item_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name" => post_monitors_monitor_id_run_response_run_executions_item_item_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunExecutionsItemRequest < Dry::Struct
  attribute :body,    Types::Any.optional
  attribute :headers, Types::Any.optional

  # The request method.
  attribute :post_monitors_monitor_id_run_response_run_executions_item_request_method, Types::String.optional

  # The date and time of the request.
  attribute :timestamp, Types::String.optional

  # The request's URL.
  attribute :url, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:                                                                     d["body"],
      headers:                                                                  d["headers"],
      post_monitors_monitor_id_run_response_run_executions_item_request_method: d["method"],
      timestamp:                                                                d["timestamp"],
      url:                                                                      d["url"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"      => body,
      "headers"   => headers,
      "method"    => post_monitors_monitor_id_run_response_run_executions_item_request_method,
      "timestamp" => timestamp,
      "url"       => url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunExecutionsItemResponse < Dry::Struct
  attribute :body, Types::Any.optional

  # The response's HTTP status code.
  attribute :code, Types::Double.optional

  attribute :headers, Types::Any.optional

  # The response size, in bytes.
  attribute :response_size, Types::Double.optional

  # The response time, in milliseconds.
  attribute :response_time, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:          d["body"],
      code:          d["code"],
      headers:       d["headers"],
      response_size: d["responseSize"],
      response_time: d["responseTime"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"         => body,
      "code"         => code,
      "headers"      => headers,
      "responseSize" => response_size,
      "responseTime" => response_time,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunExecutionsItem < Dry::Struct

  # The execution ID.
  attribute :id, Types::Double.optional

  # Information about the executed item.
  attribute :item, PostMonitorsMonitorIDRunResponseRunExecutionsItemItem.optional

  # Information about the monitor run's requests.
  attribute :request, PostMonitorsMonitorIDRunResponseRunExecutionsItemRequest.optional

  # Information about the monitor run's response.
  attribute :response, PostMonitorsMonitorIDRunResponseRunExecutionsItemResponse.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:       d["id"],
      item:     d["item"] ? PostMonitorsMonitorIDRunResponseRunExecutionsItemItem.from_dynamic!(d["item"]) : nil,
      request:  d["request"] ? PostMonitorsMonitorIDRunResponseRunExecutionsItemRequest.from_dynamic!(d["request"]) : nil,
      response: d["response"] ? PostMonitorsMonitorIDRunResponseRunExecutionsItemResponse.from_dynamic!(d["response"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"       => id,
      "item"     => item&.to_dynamic,
      "request"  => request&.to_dynamic,
      "response" => response&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunInfo < Dry::Struct

  # The monitor's associated collection unique ID.
  attribute :collection_uid, Types::String.optional

  # The monitor's associated environment unique ID.
  attribute :environment_uid, Types::String.optional

  # The date and time at which the monitor's run completed.
  attribute :finished_at, Types::String.optional

  # The monitor's run job ID.
  attribute :job_id, Types::String.optional

  # The monitor's ID.
  attribute :monitor_id, Types::String.optional

  # The monitor's name.
  attribute :post_monitors_monitor_id_run_response_run_info_name, Types::String.optional

  # The date and time at which the monitor run began.
  attribute :started_at, Types::String.optional

  # The monitor run's status.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection_uid:                                      d["collectionUid"],
      environment_uid:                                     d["environmentUid"],
      finished_at:                                         d["finishedAt"],
      job_id:                                              d["jobId"],
      monitor_id:                                          d["monitorId"],
      post_monitors_monitor_id_run_response_run_info_name: d["name"],
      started_at:                                          d["startedAt"],
      status:                                              d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collectionUid"  => collection_uid,
      "environmentUid" => environment_uid,
      "finishedAt"     => finished_at,
      "jobId"          => job_id,
      "monitorId"      => monitor_id,
      "name"           => post_monitors_monitor_id_run_response_run_info_name,
      "startedAt"      => started_at,
      "status"         => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunStatsAssertions < Dry::Struct

  # The total number of test failures.
  attribute :failed, Types::Double.optional

  # The total number of tests performed.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      failed: d["failed"],
      total:  d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "failed" => failed,
      "total"  => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunStatsRequests < Dry::Struct

  # The number of request failures.
  attribute :failed, Types::Double.optional

  # The total number of requests.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      failed: d["failed"],
      total:  d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "failed" => failed,
      "total"  => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRunStats < Dry::Struct

  # The monitor run's assertions stats.
  attribute :assertions, PostMonitorsMonitorIDRunResponseRunStatsAssertions.optional

  # The monitor run's request stats.
  attribute :requests, PostMonitorsMonitorIDRunResponseRunStatsRequests.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      assertions: d["assertions"] ? PostMonitorsMonitorIDRunResponseRunStatsAssertions.from_dynamic!(d["assertions"]) : nil,
      requests:   d["requests"] ? PostMonitorsMonitorIDRunResponseRunStatsRequests.from_dynamic!(d["requests"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "assertions" => assertions&.to_dynamic,
      "requests"   => requests&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponseRun < Dry::Struct

  # Information about the monitor run's executions.
  attribute :executions, Types.Array(PostMonitorsMonitorIDRunResponseRunExecutionsItem).optional

  # If the monitor run failed, information about the run's failures.
  attribute :failures, Types.Array(Types::Any).optional

  # Information about the monitor.
  attribute :info, PostMonitorsMonitorIDRunResponseRunInfo.optional

  # Information about the monitor run's stats.
  attribute :stats, PostMonitorsMonitorIDRunResponseRunStats.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      executions: d["executions"]&.map { |x| PostMonitorsMonitorIDRunResponseRunExecutionsItem.from_dynamic!(x) },
      failures:   d["failures"],
      info:       d["info"] ? PostMonitorsMonitorIDRunResponseRunInfo.from_dynamic!(d["info"]) : nil,
      stats:      d["stats"] ? PostMonitorsMonitorIDRunResponseRunStats.from_dynamic!(d["stats"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "executions" => executions&.map { |x| x.to_dynamic },
      "failures"   => failures,
      "info"       => info&.to_dynamic,
      "stats"      => stats&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponse < Dry::Struct

  # Information about the monitor run.
  attribute :run, PostMonitorsMonitorIDRunResponseRun.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      run: d["run"] ? PostMonitorsMonitorIDRunResponseRun.from_dynamic!(d["run"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "run" => run&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_monitors_monitor_id_run_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                             d["message"],
      post_monitors_monitor_id_run_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_monitors_monitor_id_run_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponse401 < Dry::Struct
  attribute :error, PostMonitorsMonitorIDRunResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMonitorsMonitorIDRunResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_monitors_monitor_id_run_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                             d["message"],
      post_monitors_monitor_id_run_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_monitors_monitor_id_run_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsMonitorIDRunResponse500 < Dry::Struct
  attribute :error, PostMonitorsMonitorIDRunResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMonitorsMonitorIDRunResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponseMonitor < Dry::Struct

  # The monitor's ID.
  attribute :id, Types::String.optional

  # The monitor's name.
  attribute :post_monitors_response_monitor_name, Types::String.optional

  # The monitor's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                  d["id"],
      post_monitors_response_monitor_name: d["name"],
      uid:                                 d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => post_monitors_response_monitor_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse < Dry::Struct
  attribute :monitor, PostMonitorsResponseMonitor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitor: d["monitor"] ? PostMonitorsResponseMonitor.from_dynamic!(d["monitor"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitor" => monitor&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse400Error < Dry::Struct
  attribute :details,                              Types::Any.optional
  attribute :message,                              Types::String.optional
  attribute :post_monitors_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                              d["details"],
      message:                              d["message"],
      post_monitors_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => post_monitors_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse400 < Dry::Struct
  attribute :error, PostMonitorsResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMonitorsResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_monitors_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                              d["message"],
      post_monitors_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_monitors_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse401 < Dry::Struct
  attribute :error, PostMonitorsResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMonitorsResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse403Error < Dry::Struct

  # The error description.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_monitors_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                              d["message"],
      post_monitors_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_monitors_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse403 < Dry::Struct
  attribute :error, PostMonitorsResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMonitorsResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_monitors_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                              d["message"],
      post_monitors_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_monitors_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostMonitorsResponse500 < Dry::Struct
  attribute :error, PostMonitorsResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostMonitorsResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_network_private_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      post_network_private_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_network_private_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse401 < Dry::Struct
  attribute :error, PostNetworkPrivateResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostNetworkPrivateResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_network_private_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      post_network_private_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_network_private_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse403 < Dry::Struct
  attribute :error, PostNetworkPrivateResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostNetworkPrivateResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_network_private_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      post_network_private_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_network_private_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse404 < Dry::Struct
  attribute :error, PostNetworkPrivateResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostNetworkPrivateResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_network_private_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                     d["message"],
      post_network_private_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_network_private_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostNetworkPrivateResponse500 < Dry::Struct
  attribute :error, PostNetworkPrivateResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostNetworkPrivateResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsBodyName < Dry::Struct

  # The user's last name.
  attribute :family_name, Types::String.optional

  # The user's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsBody < Dry::Struct

  # If true, activates the user. This lets them authenticate in to your Postman team.
  attribute :active, Types::Bool.optional

  # The user's external ID.
  attribute :external_id, Types::String.optional

  # A list of groups to which to assign the user to.
  attribute :groups, Types.Array(Types::String).optional

  # The user's IETF locale.
  attribute :locale, Types::String.optional

  # Information about the user's name.
  attribute :post_scim_v2_groups_body_name, PostScimV2GroupsBodyName.optional

  # The SCIM schema resource URI.
  attribute :schemas, Types.Array(Types::String).optional

  # The user's username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                        d["active"],
      external_id:                   d["externalId"],
      groups:                        d["groups"],
      locale:                        d["locale"],
      post_scim_v2_groups_body_name: d["name"] ? PostScimV2GroupsBodyName.from_dynamic!(d["name"]) : nil,
      schemas:                       d["schemas"],
      user_name:                     d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "groups"     => groups,
      "locale"     => locale,
      "name"       => post_scim_v2_groups_body_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module MetaResourceType
  User = "User"
end

class PostScimV2GroupsResponseMeta < Dry::Struct

  # The date and time at which the user was created.
  attribute :created, Types::String.optional

  # The date and time at which the user was last modified.
  attribute :last_modified, Types::String.optional

  # The SCIM resource type.
  attribute :resource_type, Types::MetaResourceType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponseName < Dry::Struct

  # The user's last name.
  attribute :family_name, Types::String.optional

  # The user's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse < Dry::Struct

  # If true, the user is active.
  attribute :active, Types::Bool.optional

  # The user's external ID.
  attribute :external_id, Types::String.optional

  # The user's SCIM ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :post_scim_v2_groups_response_meta, PostScimV2GroupsResponseMeta.optional

  attribute :post_scim_v2_groups_response_name, PostScimV2GroupsResponseName.optional

  # The SCIM schema URI.
  attribute :schemas, Types.Array(Types::String).optional

  # The user's username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                            d["active"],
      external_id:                       d["externalId"],
      id:                                d["id"],
      post_scim_v2_groups_response_meta: d["meta"] ? PostScimV2GroupsResponseMeta.from_dynamic!(d["meta"]) : nil,
      post_scim_v2_groups_response_name: d["name"] ? PostScimV2GroupsResponseName.from_dynamic!(d["name"]) : nil,
      schemas:                           d["schemas"],
      user_name:                         d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "id"         => id,
      "meta"       => post_scim_v2_groups_response_meta&.to_dynamic,
      "name"       => post_scim_v2_groups_response_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # A list of SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The SCIM type.
  attribute :scim_type, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:    d["detail"],
      schemas:   d["schemas"],
      scim_type: d["scimType"],
      status:    d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "schemas"  => schemas,
      "scimType" => scim_type,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse409 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The SCIM type.
  attribute :scim_type, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:    d["detail"],
      schemas:   d["schemas"],
      scim_type: d["scimType"],
      status:    d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "schemas"  => schemas,
      "scimType" => scim_type,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2GroupsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersBodyName < Dry::Struct

  # The user's last name.
  attribute :family_name, Types::String.optional

  # The user's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersBody < Dry::Struct

  # If true, activates the user. This lets them authenticate in to your Postman team.
  attribute :active, Types::Bool.optional

  # The user's external ID.
  attribute :external_id, Types::String.optional

  # A list of groups to which to assign the user to.
  attribute :groups, Types.Array(Types::String).optional

  # The user's IETF locale.
  attribute :locale, Types::String.optional

  # Information about the user's name.
  attribute :post_scim_v2_users_body_name, PostScimV2UsersBodyName.optional

  # The SCIM schema resource URI.
  attribute :schemas, Types.Array(Types::String).optional

  # The user's username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                       d["active"],
      external_id:                  d["externalId"],
      groups:                       d["groups"],
      locale:                       d["locale"],
      post_scim_v2_users_body_name: d["name"] ? PostScimV2UsersBodyName.from_dynamic!(d["name"]) : nil,
      schemas:                      d["schemas"],
      user_name:                    d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "groups"     => groups,
      "locale"     => locale,
      "name"       => post_scim_v2_users_body_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponseMeta < Dry::Struct

  # The date and time at which the user was created.
  attribute :created, Types::String.optional

  # The date and time at which the user was last modified.
  attribute :last_modified, Types::String.optional

  # The SCIM resource type.
  attribute :resource_type, Types::MetaResourceType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponseName < Dry::Struct

  # The user's last name.
  attribute :family_name, Types::String.optional

  # The user's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse < Dry::Struct

  # If true, the user is active.
  attribute :active, Types::Bool.optional

  # The user's external ID.
  attribute :external_id, Types::String.optional

  # The user's SCIM ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :post_scim_v2_users_response_meta, PostScimV2UsersResponseMeta.optional

  attribute :post_scim_v2_users_response_name, PostScimV2UsersResponseName.optional

  # The SCIM schema URI.
  attribute :schemas, Types.Array(Types::String).optional

  # The user's username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                           d["active"],
      external_id:                      d["externalId"],
      id:                               d["id"],
      post_scim_v2_users_response_meta: d["meta"] ? PostScimV2UsersResponseMeta.from_dynamic!(d["meta"]) : nil,
      post_scim_v2_users_response_name: d["name"] ? PostScimV2UsersResponseName.from_dynamic!(d["name"]) : nil,
      schemas:                          d["schemas"],
      user_name:                        d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "id"         => id,
      "meta"       => post_scim_v2_users_response_meta&.to_dynamic,
      "name"       => post_scim_v2_users_response_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # A list of SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The SCIM type.
  attribute :scim_type, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:    d["detail"],
      schemas:   d["schemas"],
      scim_type: d["scimType"],
      status:    d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "schemas"  => schemas,
      "scimType" => scim_type,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse409 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The SCIM type.
  attribute :scim_type, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:    d["detail"],
      schemas:   d["schemas"],
      scim_type: d["scimType"],
      status:    d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "schemas"  => schemas,
      "scimType" => scim_type,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostScimV2UsersResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module SchemaLanguage
  JSON = "json"
  YAML = "yaml"
end

module Type2
  Openapi2 = "openapi2"
  Openapi3 = "openapi3"
end

class PostSecurityAPIValidationBodySchema < Dry::Struct

  # The definition format.
  attribute :language, Types::SchemaLanguage

  # The stringified API definition.
  attribute :schema, Types::String

  # The definition type.
  attribute :post_security_api_validation_body_schema_type, Types::Type2

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      language:                                      d.fetch("language"),
      schema:                                        d.fetch("schema"),
      post_security_api_validation_body_schema_type: d.fetch("type"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "language" => language,
      "schema"   => schema,
      "type"     => post_security_api_validation_body_schema_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationBody < Dry::Struct
  attribute :schema, PostSecurityAPIValidationBodySchema.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      schema: d["schema"] ? PostSecurityAPIValidationBodySchema.from_dynamic!(d["schema"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "schema" => schema&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse < Dry::Struct

  # Information about each issue discovered in the analysis. Each object includes the
  # violation's severity and category, the location of the issue, data paths, and other
  # information. This returns an empty object if there are no issues present in the schema.
  #
  # If there are issues, this returns the `possibleFixUrl` response in each warning object.
  # This provides a link to documentation you can use to resolve the warning.
  attribute :warnings, Types.Array(Types::Any).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      warnings: d["warnings"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "warnings" => warnings,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_security_api_validation_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                             d["message"],
      post_security_api_validation_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_security_api_validation_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse400 < Dry::Struct
  attribute :error, PostSecurityAPIValidationResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostSecurityAPIValidationResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_security_api_validation_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                             d["message"],
      post_security_api_validation_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_security_api_validation_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse401 < Dry::Struct
  attribute :error, PostSecurityAPIValidationResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostSecurityAPIValidationResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_security_api_validation_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                             d["message"],
      post_security_api_validation_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_security_api_validation_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostSecurityAPIValidationResponse500 < Dry::Struct
  attribute :error, PostSecurityAPIValidationResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostSecurityAPIValidationResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksBodyWebhook < Dry::Struct

  # The unique ID of the collection to trigger when calling this webhook.
  attribute :collection, Types::String.optional

  # The webhook's name. On success, the system creates a new monitor with this name in the
  # **Monitors** tab.
  attribute :post_webhooks_body_webhook_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                      d["collection"],
      post_webhooks_body_webhook_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection,
      "name"       => post_webhooks_body_webhook_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksBody < Dry::Struct
  attribute :webhook, PostWebhooksBodyWebhook.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      webhook: d["webhook"] ? PostWebhooksBodyWebhook.from_dynamic!(d["webhook"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "webhook" => webhook&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponseWebhook < Dry::Struct

  # The unique ID of the webhook's associated collection.
  attribute :collection, Types::String.optional

  # The webhook's ID.
  attribute :id, Types::String.optional

  # The webhook's name.
  attribute :post_webhooks_response_webhook_name, Types::String.optional

  # The webhook's unique ID.
  attribute :uid, Types::String.optional

  # The webhook's URL.
  attribute :webhook_url, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                          d["collection"],
      id:                                  d["id"],
      post_webhooks_response_webhook_name: d["name"],
      uid:                                 d["uid"],
      webhook_url:                         d["webhookUrl"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection,
      "id"         => id,
      "name"       => post_webhooks_response_webhook_name,
      "uid"        => uid,
      "webhookUrl" => webhook_url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponse < Dry::Struct

  # Information about the webhook.
  attribute :webhook, PostWebhooksResponseWebhook.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      webhook: d["webhook"] ? PostWebhooksResponseWebhook.from_dynamic!(d["webhook"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "webhook" => webhook&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_webhooks_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                              d["message"],
      post_webhooks_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_webhooks_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponse401 < Dry::Struct
  attribute :error, PostWebhooksResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostWebhooksResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_webhooks_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                              d["message"],
      post_webhooks_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_webhooks_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWebhooksResponse500 < Dry::Struct
  attribute :error, PostWebhooksResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostWebhooksResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesBodyWorkspace < Dry::Struct

  # The workspace's description.
  attribute :description, Types::String.optional

  # The workspace's name.
  attribute :post_workspaces_body_workspace_name, Types::String

  # The type of workspace:
  #
  # - `personal`
  # - `private` — Private workspaces are available on Postman [Professional and Enterprise
  # plans](https://www.postman.com/pricing).
  # - `public`
  # - `team`
  # - `partner` — [Partner
  # Workspaces](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/partner-workspaces/)
  # are available on Postman [Enterprise Ultimate plans](https://www.postman.com/pricing).
  attribute :post_workspaces_body_workspace_type, Types::VisibilityEnum

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                         d["description"],
      post_workspaces_body_workspace_name: d.fetch("name"),
      post_workspaces_body_workspace_type: d.fetch("type"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => post_workspaces_body_workspace_name,
      "type"        => post_workspaces_body_workspace_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesBody < Dry::Struct

  # Information about the workspace.
  attribute :workspace, PostWorkspacesBodyWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? PostWorkspacesBodyWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponseWorkspace < Dry::Struct

  # The workspace's ID.
  attribute :id, Types::String.optional

  # The workspace's name.
  attribute :post_workspaces_response_workspace_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                      d["id"],
      post_workspaces_response_workspace_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => post_workspaces_response_workspace_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse < Dry::Struct

  # Information about the created workspace.
  attribute :workspace, PostWorkspacesResponseWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? PostWorkspacesResponseWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse400 < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_workspaces_response400_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                          d["message"],
      post_workspaces_response400_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_workspaces_response400_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :post_workspaces_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                d["message"],
      post_workspaces_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_workspaces_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse401 < Dry::Struct
  attribute :error, PostWorkspacesResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostWorkspacesResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_workspaces_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                d["message"],
      post_workspaces_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_workspaces_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse404 < Dry::Struct
  attribute :error, PostWorkspacesResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostWorkspacesResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :post_workspaces_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                d["message"],
      post_workspaces_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => post_workspaces_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PostWorkspacesResponse500 < Dry::Struct
  attribute :error, PostWorkspacesResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PostWorkspacesResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDBody < Dry::Struct

  # The API's description. This supports Markdown formatting.
  attribute :description, Types::String.optional

  # The API's name.
  attribute :put_apis_api_id_body_name, Types::String

  # The API's short summary.
  attribute :summary, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:               d["description"],
      put_apis_api_id_body_name: d.fetch("name"),
      summary:                   d["summary"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => put_apis_api_id_body_name,
      "summary"     => summary,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDCollectionsCollectionIDSyncWithSchemaTasksResponse < Dry::Struct

  # The created task ID. You can use this ID to track the status of syncing an API collection
  # with an API schema.
  attribute :task_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      task_id: d["taskId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "taskId" => task_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDCollectionsCollectionIDSyncWithSchemaTasksResponse400 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                            d["detail"],
      title:                                                                             d["title"],
      put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDCollectionsCollectionIDSyncWithSchemaTasksResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                            d["detail"],
      instance:                                                                          d["instance"],
      status:                                                                            d["status"],
      title:                                                                             d["title"],
      put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDCollectionsCollectionIDSyncWithSchemaTasksResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                            d["detail"],
      title:                                                                             d["title"],
      put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDCollectionsCollectionIDSyncWithSchemaTasksResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                            d["detail"],
      title:                                                                             d["title"],
      put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDCollectionsCollectionIDSyncWithSchemaTasksResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                                            d["detail"],
      title:                                                                             d["title"],
      put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_collections_collection_id_sync_with_schema_tasks_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDResponse < Dry::Struct

  # The date and time at which the API was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user that created the API.
  attribute :created_by, Types::String.optional

  # The API's description. This supports Markdown formatting.
  attribute :description, Types::String.optional

  # The API's ID.
  attribute :id, Types::String.optional

  # The API's name.
  attribute :put_apis_api_id_response_name, Types::String

  # The API's summary.
  attribute :summary, Types::String.optional

  # The date and time at which the API was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that updated the API.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                    d["createdAt"],
      created_by:                    d["createdBy"],
      description:                   d["description"],
      id:                            d["id"],
      put_apis_api_id_response_name: d.fetch("name"),
      summary:                       d["summary"],
      updated_at:                    d["updatedAt"],
      updated_by:                    d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"   => created_at,
      "createdBy"   => created_by,
      "description" => description,
      "id"          => id,
      "name"        => put_apis_api_id_response_name,
      "summary"     => summary,
      "updatedAt"   => updated_at,
      "updatedBy"   => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      instance:                         d["instance"],
      status:                           d["status"],
      title:                            d["title"],
      put_apis_api_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_apis_api_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      put_apis_api_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      put_apis_api_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      put_apis_api_id_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                           d["detail"],
      title:                            d["title"],
      put_apis_api_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathBodyRoot < Dry::Struct

  # If true, tag the file as the root file.
  attribute :enabled, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled: d["enabled"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathBody < Dry::Struct

  # The schema file's content.
  attribute :content, Types::String

  # The schema file's name.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_body_name, Types::String.optional

  # Information about the schema's root file. This tag only applies to protobuf
  # specifications.
  attribute :root, PutApisAPIIDSchemasSchemaIDFilesFilePathBodyRoot.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      content:                                                     d.fetch("content"),
      put_apis_api_id_schemas_schema_id_files_file_path_body_name: d["name"],
      root:                                                        d["root"] ? PutApisAPIIDSchemasSchemaIDFilesFilePathBodyRoot.from_dynamic!(d["root"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "content" => content,
      "name"    => put_apis_api_id_schemas_schema_id_files_file_path_body_name,
      "root"    => root&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse < Dry::Struct

  # The date and time at which the file was created.
  attribute :created_at, Types::String.optional

  # The user Id of the user that created the file.
  attribute :created_by, Types::String.optional

  # The schema file's ID.
  attribute :id, Types::String.optional

  # The schema file's name.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response_name, Types::String.optional

  # The file system path to the schema file.
  attribute :path, Types::String.optional

  # The date and time at which the file was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that last updated the file.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                      d["createdAt"],
      created_by:                                                      d["createdBy"],
      id:                                                              d["id"],
      put_apis_api_id_schemas_schema_id_files_file_path_response_name: d["name"],
      path:                                                            d["path"],
      updated_at:                                                      d["updatedAt"],
      updated_by:                                                      d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => put_apis_api_id_schemas_schema_id_files_file_path_response_name,
      "path"      => path,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse400 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      put_apis_api_id_schemas_schema_id_files_file_path_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_schemas_schema_id_files_file_path_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      instance:                                                           d["instance"],
      status:                                                             d["status"],
      title:                                                              d["title"],
      put_apis_api_id_schemas_schema_id_files_file_path_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_apis_api_id_schemas_schema_id_files_file_path_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      put_apis_api_id_schemas_schema_id_files_file_path_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_schemas_schema_id_files_file_path_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      put_apis_api_id_schemas_schema_id_files_file_path_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_schemas_schema_id_files_file_path_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse422 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response422_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      put_apis_api_id_schemas_schema_id_files_file_path_response422_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_schemas_schema_id_files_file_path_response422_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDSchemasSchemaIDFilesFilePathResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_schemas_schema_id_files_file_path_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      put_apis_api_id_schemas_schema_id_files_file_path_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_schemas_schema_id_files_file_path_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsBodyTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d.fetch("slug"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsBody < Dry::Struct

  # A list of the associated tags as slugs.
  attribute :tags, Types.Array(PutApisAPIIDTagsBodyTagsItem)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d.fetch("tags").map { |x| PutApisAPIIDTagsBodyTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsResponseTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d["slug"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsResponse < Dry::Struct

  # A list of associated tags.
  attribute :tags, Types.Array(PutApisAPIIDTagsResponseTagsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d["tags"]&.map { |x| PutApisAPIIDTagsResponseTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_apis_api_id_tags_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      status:                                d["status"],
      title:                                 d["title"],
      put_apis_api_id_tags_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_apis_api_id_tags_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_apis_api_id_tags_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      status:                                d["status"],
      title:                                 d["title"],
      put_apis_api_id_tags_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_apis_api_id_tags_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_apis_api_id_tags_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      status:                                d["status"],
      title:                                 d["title"],
      put_apis_api_id_tags_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_apis_api_id_tags_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDTagsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_apis_api_id_tags_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                d["detail"],
      instance:                              d["instance"],
      status:                                d["status"],
      title:                                 d["title"],
      put_apis_api_id_tags_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_apis_api_id_tags_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDVersionsVersionIDBody < Dry::Struct

  # The version's name.
  attribute :put_apis_api_id_versions_version_id_body_name, Types::String

  # The version's Markdown-supported release notes.
  attribute :release_notes, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      put_apis_api_id_versions_version_id_body_name: d.fetch("name"),
      release_notes:                                 d["releaseNotes"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"         => put_apis_api_id_versions_version_id_body_name,
      "releaseNotes" => release_notes,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDVersionsVersionIDResponse < Dry::Struct

  # The date and time at which the version was created.
  attribute :created_at, Types::String.optional

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :put_apis_api_id_versions_version_id_response_name, Types::String.optional

  # The version's release notes.
  attribute :release_notes, Types::String.optional

  # The date and time at which the version was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                        d["createdAt"],
      id:                                                d["id"],
      put_apis_api_id_versions_version_id_response_name: d["name"],
      release_notes:                                     d["releaseNotes"],
      updated_at:                                        d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"    => created_at,
      "id"           => id,
      "name"         => put_apis_api_id_versions_version_id_response_name,
      "releaseNotes" => release_notes,
      "updatedAt"    => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDVersionsVersionIDResponse401 < Dry::Struct

  # Details about the error.
  attribute :detail, Types::String.optional

  # The error instance.
  attribute :instance, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The error type.
  attribute :put_apis_api_id_versions_version_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      instance:                                             d["instance"],
      status:                                               d["status"],
      title:                                                d["title"],
      put_apis_api_id_versions_version_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_apis_api_id_versions_version_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDVersionsVersionIDResponse403 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_versions_version_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      title:                                                d["title"],
      put_apis_api_id_versions_version_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_versions_version_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDVersionsVersionIDResponse404 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_versions_version_id_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      title:                                                d["title"],
      put_apis_api_id_versions_version_id_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_versions_version_id_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutApisAPIIDVersionsVersionIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_apis_api_id_versions_version_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                               d["detail"],
      title:                                                d["title"],
      put_apis_api_id_versions_version_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_apis_api_id_versions_version_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDBodyCollectionInfo < Dry::Struct

  # The collection's description.
  attribute :description, Types::String.optional

  # The collection's name.
  attribute :put_collections_collection_id_body_collection_info_name, Types::String

  # A URL to the collection's schema.
  attribute :schema, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                             d["description"],
      put_collections_collection_id_body_collection_info_name: d.fetch("name"),
      schema:                                                  d.fetch("schema"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => put_collections_collection_id_body_collection_info_name,
      "schema"      => schema,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDBodyCollectionItemItem < Dry::Struct

  # The collection item's ID.
  attribute :id, Types::String.optional

  # The collection item's name.
  attribute :put_collections_collection_id_body_collection_item_item_name, Types::String.optional

  # The collection item's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                           d["id"],
      put_collections_collection_id_body_collection_item_item_name: d["name"],
      uid:                                                          d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => put_collections_collection_id_body_collection_item_item_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDBodyCollection < Dry::Struct

  # An object that contains basic information about the collection. For a complete list of
  # values, refer to the `definitions.info` entry in the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :info, PutCollectionsCollectionIDBodyCollectionInfo

  # Information about the collection's contents, such as folders, requests, and responses.
  # For a complete list of values, refer to the `/tmp/.tmpY1UuNn/item.json-group` entry in
  # the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :item, Types.Array(PutCollectionsCollectionIDBodyCollectionItemItem)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      info: PutCollectionsCollectionIDBodyCollectionInfo.from_dynamic!(d.fetch("info")),
      item: d.fetch("item").map { |x| PutCollectionsCollectionIDBodyCollectionItemItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "info" => info.to_dynamic,
      "item" => item.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDBody < Dry::Struct

  # For a complete list of values, refer to the [collection.json schema
  # file](https://schema.postman.com/json/collection/v2.1.0/collection.json).
  attribute :collection, PutCollectionsCollectionIDBodyCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PutCollectionsCollectionIDBodyCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDBody < Dry::Struct

  # The folder's description.
  attribute :description, Types::String.optional

  # The folder's name.
  attribute :put_collections_collection_id_folders_folder_id_body_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                               d["description"],
      put_collections_collection_id_folders_folder_id_body_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => put_collections_collection_id_folders_folder_id_body_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponseData < Dry::Struct

  # The collection ID that the folder belongs to.
  attribute :collection, Types::String.optional

  # The folder's creation date and time.
  attribute :created_at, Types::String.optional

  # The folder's description.
  attribute :description, Types::String.optional

  # Information about the folder.
  attribute :folder, Types::String.optional

  # The folder's ID.
  attribute :id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :last_revision, Types::Double.optional

  # The user ID of the user that last updated the folder.
  attribute :last_updated_by, Types::String.optional

  # The folder's name.
  attribute :put_collections_collection_id_folders_folder_id_response_data_name, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  # The date and time at which the folder was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                                                         d["collection"],
      created_at:                                                         d["createdAt"],
      description:                                                        d["description"],
      folder:                                                             d["folder"],
      id:                                                                 d["id"],
      last_revision:                                                      d["lastRevision"],
      last_updated_by:                                                    d["lastUpdatedBy"],
      put_collections_collection_id_folders_folder_id_response_data_name: d["name"],
      owner:                                                              d["owner"],
      updated_at:                                                         d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"    => collection,
      "createdAt"     => created_at,
      "description"   => description,
      "folder"        => folder,
      "id"            => id,
      "lastRevision"  => last_revision,
      "lastUpdatedBy" => last_updated_by,
      "name"          => put_collections_collection_id_folders_folder_id_response_data_name,
      "owner"         => owner,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse < Dry::Struct

  # The folder's updated information, including the updated properties. For a complete list
  # of properties, refer to the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, PutCollectionsCollectionIDFoldersFolderIDResponseData.optional

  attribute :put_collections_collection_id_folders_folder_id_response_meta, Types::Any.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                          d["data"] ? PutCollectionsCollectionIDFoldersFolderIDResponseData.from_dynamic!(d["data"]) : nil,
      put_collections_collection_id_folders_folder_id_response_meta: d["meta"],
      model_id:                                                      d["model_id"],
      revision:                                                      d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => put_collections_collection_id_folders_folder_id_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse400ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDFoldersFolderIDResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_folders_folder_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                d["details"] ? PutCollectionsCollectionIDFoldersFolderIDResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                d["message"],
      put_collections_collection_id_folders_folder_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_folders_folder_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse400 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDFoldersFolderIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDFoldersFolderIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_folders_folder_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                d["details"] ? PutCollectionsCollectionIDFoldersFolderIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                d["message"],
      put_collections_collection_id_folders_folder_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_folders_folder_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse401 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDFoldersFolderIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDFoldersFolderIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The folder's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the folder's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_folders_folder_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                d["details"] ? PutCollectionsCollectionIDFoldersFolderIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                d["message"],
      put_collections_collection_id_folders_folder_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_folders_folder_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse404 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDFoldersFolderIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDFoldersFolderIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDFoldersFolderIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_collections_collection_id_folders_folder_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                           d["detail"],
      title:                                                            d["title"],
      put_collections_collection_id_folders_folder_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_collections_collection_id_folders_folder_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module MethodEnum
  Copy     = "COPY"
  Delete   = "DELETE"
  Get      = "GET"
  Head     = "HEAD"
  Link     = "LINK"
  Lock     = "LOCK"
  Options  = "OPTIONS"
  Patch    = "PATCH"
  Post     = "POST"
  Propfind = "PROPFIND"
  Purge    = "PURGE"
  Put      = "PUT"
  Unlink   = "UNLINK"
  Unlock   = "UNLOCK"
  View     = "VIEW"
end

class PutCollectionsCollectionIDRequestsRequestIDBody < Dry::Struct

  # The request's method.
  attribute :put_collections_collection_id_requests_request_id_body_method, Types::MethodEnum.optional

  # The request's name.
  attribute :put_collections_collection_id_requests_request_id_body_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      put_collections_collection_id_requests_request_id_body_method: d["method"],
      put_collections_collection_id_requests_request_id_body_name:   d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "method" => put_collections_collection_id_requests_request_id_body_method,
      "name"   => put_collections_collection_id_requests_request_id_body_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponseData < Dry::Struct

  # The request's creation date and time.
  attribute :created_at, Types::String.optional

  # The request's description.
  attribute :description, Types::String.optional

  # The request's ID.
  attribute :id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :last_revision, Types::Double.optional

  # The user ID of the user that last updated the request.
  attribute :last_updated_by, Types::String.optional

  # The request's name.
  attribute :put_collections_collection_id_requests_request_id_response_data_name, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  # The date and time at which the request was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                           d["createdAt"],
      description:                                                          d["description"],
      id:                                                                   d["id"],
      last_revision:                                                        d["lastRevision"],
      last_updated_by:                                                      d["lastUpdatedBy"],
      put_collections_collection_id_requests_request_id_response_data_name: d["name"],
      owner:                                                                d["owner"],
      updated_at:                                                           d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"     => created_at,
      "description"   => description,
      "id"            => id,
      "lastRevision"  => last_revision,
      "lastUpdatedBy" => last_updated_by,
      "name"          => put_collections_collection_id_requests_request_id_response_data_name,
      "owner"         => owner,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse < Dry::Struct

  # Information about the updated request. For a complete list of properties, refer to the
  # `definitions.request` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, PutCollectionsCollectionIDRequestsRequestIDResponseData.optional

  attribute :put_collections_collection_id_requests_request_id_response_meta, Types::Any.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :revision, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                            d["data"] ? PutCollectionsCollectionIDRequestsRequestIDResponseData.from_dynamic!(d["data"]) : nil,
      put_collections_collection_id_requests_request_id_response_meta: d["meta"],
      model_id:                                                        d["model_id"],
      revision:                                                        d["revision"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => put_collections_collection_id_requests_request_id_response_meta,
      "model_id" => model_id,
      "revision" => revision,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse400ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDRequestsRequestIDResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_requests_request_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                  d["details"] ? PutCollectionsCollectionIDRequestsRequestIDResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                  d["message"],
      put_collections_collection_id_requests_request_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_requests_request_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse400 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDRequestsRequestIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDRequestsRequestIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails.optional

  # The error's message.
  attribute :message, Types::String.optional

  # The error's name.
  attribute :put_collections_collection_id_requests_request_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                  d["details"] ? PutCollectionsCollectionIDRequestsRequestIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                  d["message"],
      put_collections_collection_id_requests_request_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_requests_request_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse401 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDRequestsRequestIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDRequestsRequestIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_requests_request_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                  d["details"] ? PutCollectionsCollectionIDRequestsRequestIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                  d["message"],
      put_collections_collection_id_requests_request_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_requests_request_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse404 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDRequestsRequestIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDRequestsRequestIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDRequestsRequestIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_collections_collection_id_requests_request_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                             d["detail"],
      title:                                                              d["title"],
      put_collections_collection_id_requests_request_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_collections_collection_id_requests_request_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponseCollection < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :put_collections_collection_id_response_collection_name, Types::String.optional

  # The collection's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                     d["id"],
      put_collections_collection_id_response_collection_name: d["name"],
      uid:                                                    d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => put_collections_collection_id_response_collection_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse < Dry::Struct
  attribute :collection, PutCollectionsCollectionIDResponseCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? PutCollectionsCollectionIDResponseCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                              d["details"],
      message:                                              d["message"],
      put_collections_collection_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => put_collections_collection_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse400 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_collections_collection_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                              d["message"],
      put_collections_collection_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_collections_collection_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse401 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                              d["message"],
      put_collections_collection_id_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_collections_collection_id_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse403 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse404ErrorDetails < Dry::Struct

  # The collection ID.
  attribute :id, Types::String.optional

  # The instance item.
  attribute :item, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:   d["id"],
      item: d["item"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "item" => item,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                              d["details"] ? PutCollectionsCollectionIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                              d["message"],
      put_collections_collection_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse404 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                              d["message"],
      put_collections_collection_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_collections_collection_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponse500 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDBodyResponseCode < Dry::Struct

  # The response's HTTP response status code.
  attribute :code, Types::Double.optional

  # The name of the status code.
  attribute :put_collections_collection_id_responses_response_id_body_response_code_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      code:                                                                        d["code"],
      put_collections_collection_id_responses_response_id_body_response_code_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "code" => code,
      "name" => put_collections_collection_id_responses_response_id_body_response_code_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDBody < Dry::Struct

  # The response's name.
  attribute :put_collections_collection_id_responses_response_id_body_name, Types::String.optional

  # The response's HTTP response code information.
  attribute :response_code, PutCollectionsCollectionIDResponsesResponseIDBodyResponseCode.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      put_collections_collection_id_responses_response_id_body_name: d["name"],
      response_code:                                                 d["responseCode"] ? PutCollectionsCollectionIDResponsesResponseIDBodyResponseCode.from_dynamic!(d["responseCode"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"         => put_collections_collection_id_responses_response_id_body_name,
      "responseCode" => response_code&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponseData < Dry::Struct

  # The request's creation date and time.
  attribute :created_at, Types::String.optional

  # The request's ID.
  attribute :id, Types::String.optional

  # An internal revision ID. Its value increments each time the resource changes. You can use
  # this ID to track whether there were changes since the last time you fetched the resource.
  attribute :last_revision, Types::Integer.optional

  # The user ID of the user that last updated the request.
  attribute :last_updated_by, Types::String.optional

  # The request's name.
  attribute :put_collections_collection_id_responses_response_id_response_data_name, Types::String.optional

  # The user ID of the request's owner.
  attribute :owner, Types::String.optional

  # The date and time at which the request was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                             d["createdAt"],
      id:                                                                     d["id"],
      last_revision:                                                          d["lastRevision"],
      last_updated_by:                                                        d["lastUpdatedBy"],
      put_collections_collection_id_responses_response_id_response_data_name: d["name"],
      owner:                                                                  d["owner"],
      updated_at:                                                             d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"     => created_at,
      "id"            => id,
      "lastRevision"  => last_revision,
      "lastUpdatedBy" => last_updated_by,
      "name"          => put_collections_collection_id_responses_response_id_response_data_name,
      "owner"         => owner,
      "updatedAt"     => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse < Dry::Struct

  # Information about the updated response. For a complete list of request properties, refer
  # to the `definitions.request` property in the [collection.json schema
  # file](https://schema.postman.com/collection/json/v1.0.0/draft-07/collection.json).
  attribute :data, PutCollectionsCollectionIDResponsesResponseIDResponseData.optional

  attribute :put_collections_collection_id_responses_response_id_response_meta, Types::Any.optional

  # The request's ID.
  attribute :model_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      data:                                                              d["data"] ? PutCollectionsCollectionIDResponsesResponseIDResponseData.from_dynamic!(d["data"]) : nil,
      put_collections_collection_id_responses_response_id_response_meta: d["meta"],
      model_id:                                                          d["model_id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "data"     => data&.to_dynamic,
      "meta"     => put_collections_collection_id_responses_response_id_response_meta,
      "model_id" => model_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse400ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDResponsesResponseIDResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_responses_response_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                    d["details"] ? PutCollectionsCollectionIDResponsesResponseIDResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                    d["message"],
      put_collections_collection_id_responses_response_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_responses_response_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse400 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponsesResponseIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponsesResponseIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse401Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_responses_response_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                    d["details"] ? PutCollectionsCollectionIDResponsesResponseIDResponse401ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                    d["message"],
      put_collections_collection_id_responses_response_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_responses_response_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse401 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponsesResponseIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponsesResponseIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails < Dry::Struct

  # The resource name.
  attribute :model, Types::String.optional

  # The response's ID.
  attribute :model_id, Types::String.optional

  # The user ID of the response's owner.
  attribute :owner, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      model:    d["model"],
      model_id: d["model_id"],
      owner:    d["owner"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "model"    => model,
      "model_id" => model_id,
      "owner"    => owner,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, PutCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_collections_collection_id_responses_response_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                    d["details"] ? PutCollectionsCollectionIDResponsesResponseIDResponse404ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                    d["message"],
      put_collections_collection_id_responses_response_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_collections_collection_id_responses_response_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse404 < Dry::Struct
  attribute :error, PutCollectionsCollectionIDResponsesResponseIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutCollectionsCollectionIDResponsesResponseIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDResponsesResponseIDResponse500 < Dry::Struct

  # Details about the error message.
  attribute :detail, Types::String.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_collections_collection_id_responses_response_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                               d["detail"],
      title:                                                                d["title"],
      put_collections_collection_id_responses_response_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_collections_collection_id_responses_response_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsBodyTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d.fetch("slug"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsBody < Dry::Struct

  # A list of the associated tags as slugs.
  attribute :tags, Types.Array(PutCollectionsCollectionIDTagsBodyTagsItem)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d.fetch("tags").map { |x| PutCollectionsCollectionIDTagsBodyTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponseTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d["slug"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponse < Dry::Struct

  # A list of associated tags.
  attribute :tags, Types.Array(PutCollectionsCollectionIDTagsResponseTagsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d["tags"]&.map { |x| PutCollectionsCollectionIDTagsResponseTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_collections_collection_id_tags_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      status:                                              d["status"],
      title:                                               d["title"],
      put_collections_collection_id_tags_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_collections_collection_id_tags_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_collections_collection_id_tags_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      status:                                              d["status"],
      title:                                               d["title"],
      put_collections_collection_id_tags_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_collections_collection_id_tags_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_collections_collection_id_tags_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      status:                                              d["status"],
      title:                                               d["title"],
      put_collections_collection_id_tags_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_collections_collection_id_tags_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_collections_collection_id_tags_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      instance:                                            d["instance"],
      status:                                              d["status"],
      title:                                               d["title"],
      put_collections_collection_id_tags_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_collections_collection_id_tags_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutCollectionsCollectionIDTagsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_collections_collection_id_tags_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                              d["detail"],
      instance:                                            d["instance"],
      status:                                              d["status"],
      title:                                               d["title"],
      put_collections_collection_id_tags_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_collections_collection_id_tags_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutDetectedSecretsSecretIDBody < Dry::Struct

  # The secret's updated resolution status:
  # - `FALSE_POSITIVE` — The discovered secret is not an actual secret.
  # - `REVOKED` — The secret is valid, but the user rotated their key to resolve the issue.
  # - `ACCEPTED_RISK` — The Secret Scanner found the secret, but user accepts the risk of
  # publishing it.
  attribute :resolution, Types::Resolution

  # The ID of the workspace that contains the secret.
  attribute :workspace_id, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      resolution:   d.fetch("resolution"),
      workspace_id: d.fetch("workspaceId"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "resolution"  => resolution,
      "workspaceId" => workspace_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutDetectedSecretsSecretIDResponseHistoryItem < Dry::Struct

  # The ID of the user that updated the secret's resolution status.
  attribute :actor, Types::Double.optional

  # The date and time at which the resolution status was updated.
  attribute :created_at, Types::String.optional

  # The secret's updated resolution status:
  # - `ACTIVE` — The secret is active.
  # - `FALSE_POSITIVE` — The discovered secret is not an actual secret.
  # - `REVOKED` — The secret is valid, but the user rotated their key to resolve the issue.
  # - `ACCEPTED_RISK` — The Secret Scanner found the secret, but user accepts the risk of
  # publishing it.
  attribute :resolution, Types::ResolutionEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      actor:      d["actor"],
      created_at: d["createdAt"],
      resolution: d["resolution"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "actor"      => actor,
      "createdAt"  => created_at,
      "resolution" => resolution,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutDetectedSecretsSecretIDResponse < Dry::Struct

  # The history of the secret's resolution status changes.
  attribute :history, Types.Array(PutDetectedSecretsSecretIDResponseHistoryItem).optional

  # The secret's current resolution status:
  # - `ACTIVE` — The secret is active.
  # - `FALSE_POSITIVE` — The discovered secret is not an actual secret.
  # - `REVOKED` — The secret is valid, but the user rotated their key to resolve the issue.
  # - `ACCEPTED_RISK` — The Secret Scanner found the secret, but user accepts the risk of
  # publishing it.
  attribute :resolution, Types::ResolutionEnum.optional

  # The SHA-256 hash of the detected secret.
  attribute :secret_hash, Types::String.optional

  # The ID of the workspace that contains the secret.
  attribute :workspace_id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      history:      d["history"]&.map { |x| PutDetectedSecretsSecretIDResponseHistoryItem.from_dynamic!(x) },
      resolution:   d["resolution"],
      secret_hash:  d["secretHash"],
      workspace_id: d["workspaceId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "history"     => history&.map { |x| x.to_dynamic },
      "resolution"  => resolution,
      "secretHash"  => secret_hash,
      "workspaceId" => workspace_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutDetectedSecretsSecretIDResponse401 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_detected_secrets_secret_id_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                        d["instance"],
      status:                                          d["status"],
      title:                                           d["title"],
      put_detected_secrets_secret_id_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_detected_secrets_secret_id_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutDetectedSecretsSecretIDResponse403 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_detected_secrets_secret_id_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                        d["instance"],
      status:                                          d["status"],
      title:                                           d["title"],
      put_detected_secrets_secret_id_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_detected_secrets_secret_id_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutDetectedSecretsSecretIDResponse500 < Dry::Struct

  # The instance identifying the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The HTTP status code generated by the origin server.
  attribute :status, Types::Double.optional

  # The generic description for the error's class.
  attribute :title, Types::String.optional

  # The type of error.
  attribute :put_detected_secrets_secret_id_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      instance:                                        d["instance"],
      status:                                          d["status"],
      title:                                           d["title"],
      put_detected_secrets_secret_id_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_detected_secrets_secret_id_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDBodyEnvironmentValuesItemItem < Dry::Struct

  # If true, the variable is enabled.
  attribute :enabled, Types::Bool.optional

  # The variable's name.
  attribute :key, Types::String.optional

  # The variable type.
  attribute :put_environments_environment_id_body_environment_values_item_item_type, Types::Type1.optional

  # The variable's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled:                                                                d["enabled"],
      key:                                                                    d["key"],
      put_environments_environment_id_body_environment_values_item_item_type: d["type"],
      value:                                                                  d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
      "key"     => key,
      "type"    => put_environments_environment_id_body_environment_values_item_item_type,
      "value"   => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDBodyEnvironment < Dry::Struct

  # The environment's name.
  attribute :put_environments_environment_id_body_environment_name, Types::String

  # Information about the environment's variables.
  attribute :values, Types.Array(Types.Array(PutEnvironmentsEnvironmentIDBodyEnvironmentValuesItemItem)).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      put_environments_environment_id_body_environment_name: d.fetch("name"),
      values:                                                d["values"]&.map { |x| x.map { |x| PutEnvironmentsEnvironmentIDBodyEnvironmentValuesItemItem.from_dynamic!(x) } },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"   => put_environments_environment_id_body_environment_name,
      "values" => values&.map { |x| x.map { |x| x.to_dynamic } },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDBody < Dry::Struct
  attribute :environment, PutEnvironmentsEnvironmentIDBodyEnvironment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environment: d["environment"] ? PutEnvironmentsEnvironmentIDBodyEnvironment.from_dynamic!(d["environment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environment" => environment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponseEnvironment < Dry::Struct
  attribute :id,                                                        Types::String.optional
  attribute :put_environments_environment_id_response_environment_name, Types::String.optional
  attribute :uid,                                                       Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                        d["id"],
      put_environments_environment_id_response_environment_name: d["name"],
      uid:                                                       d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => put_environments_environment_id_response_environment_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse < Dry::Struct
  attribute :environment, PutEnvironmentsEnvironmentIDResponseEnvironment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environment: d["environment"] ? PutEnvironmentsEnvironmentIDResponseEnvironment.from_dynamic!(d["environment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environment" => environment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse400Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_environments_environment_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      put_environments_environment_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_environments_environment_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse400 < Dry::Struct
  attribute :error, PutEnvironmentsEnvironmentIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutEnvironmentsEnvironmentIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_environments_environment_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      put_environments_environment_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_environments_environment_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse401 < Dry::Struct
  attribute :error, PutEnvironmentsEnvironmentIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutEnvironmentsEnvironmentIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_environments_environment_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                d["message"],
      put_environments_environment_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_environments_environment_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutEnvironmentsEnvironmentIDResponse500 < Dry::Struct
  attribute :error, PutEnvironmentsEnvironmentIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutEnvironmentsEnvironmentIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDBodyMockConfig < Dry::Struct

  # The server response ID. This sets the given server response as the default response for
  # each request.
  #
  # To deactivate a server response, pass a null value.
  attribute :server_response_id, Types::String.optional.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      server_response_id: d["serverResponseId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "serverResponseId" => server_response_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDBodyMock < Dry::Struct

  # The mock server's configuration settings.
  attribute :config, PutMocksMockIDBodyMockConfig.optional

  # The mock server's description.
  attribute :description, Types::String.optional

  # The associated environment's unique ID.
  attribute :environment, Types::String.optional

  # The mock server's name.
  attribute :put_mocks_mock_id_body_mock_name, Types::String.optional

  # If true, the mock server is set private. By default, mock servers are public and can
  # receive requests from anyone and anywhere.
  attribute :private, Types::Bool.optional

  # The API's version tag ID.
  attribute :version_tag, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      config:                           d["config"] ? PutMocksMockIDBodyMockConfig.from_dynamic!(d["config"]) : nil,
      description:                      d["description"],
      environment:                      d["environment"],
      put_mocks_mock_id_body_mock_name: d["name"],
      private:                          d["private"],
      version_tag:                      d["versionTag"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "config"      => config&.to_dynamic,
      "description" => description,
      "environment" => environment,
      "name"        => put_mocks_mock_id_body_mock_name,
      "private"     => private,
      "versionTag"  => version_tag,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDBody < Dry::Struct
  attribute :mock, PutMocksMockIDBodyMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? PutMocksMockIDBodyMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponseMockConfig < Dry::Struct

  # A list of the mock server's headers.
  attribute :headers, Types.Array(Types::Any).optional

  # If true, match the request body.
  attribute :match_body, Types::Bool.optional

  # If true, match query parameters.
  attribute :match_query_params, Types::Bool.optional

  # If true, use wildcard variable matching.
  attribute :match_wildcards, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      headers:            d["headers"],
      match_body:         d["matchBody"],
      match_query_params: d["matchQueryParams"],
      match_wildcards:    d["matchWildcards"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "headers"          => headers,
      "matchBody"        => match_body,
      "matchQueryParams" => match_query_params,
      "matchWildcards"   => match_wildcards,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponseMock < Dry::Struct

  # The mock's associated collection unique ID.
  attribute :collection, Types::String.optional

  # Information about the mock server's configuration.
  attribute :config, PutMocksMockIDResponseMockConfig.optional

  # The date and time at which the mock server was created.
  attribute :created_at, Types::String.optional

  # The mock server's associated environment ID.
  attribute :environment, Types::String.optional

  # The mock server's ID.
  attribute :id, Types::String.optional

  # The mock server URL.
  attribute :mock_url, Types::String.optional

  # The mock server's name.
  attribute :put_mocks_mock_id_response_mock_name, Types::String.optional

  # The ID of mock server's owner.
  attribute :owner, Types::String.optional

  # The mock server's unique ID.
  attribute :uid, Types::String.optional

  # The date and time at which the mock server was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection:                           d["collection"],
      config:                               d["config"] ? PutMocksMockIDResponseMockConfig.from_dynamic!(d["config"]) : nil,
      created_at:                           d["createdAt"],
      environment:                          d["environment"],
      id:                                   d["id"],
      mock_url:                             d["mockUrl"],
      put_mocks_mock_id_response_mock_name: d["name"],
      owner:                                d["owner"],
      uid:                                  d["uid"],
      updated_at:                           d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection"  => collection,
      "config"      => config&.to_dynamic,
      "createdAt"   => created_at,
      "environment" => environment,
      "id"          => id,
      "mockUrl"     => mock_url,
      "name"        => put_mocks_mock_id_response_mock_name,
      "owner"       => owner,
      "uid"         => uid,
      "updatedAt"   => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse < Dry::Struct
  attribute :mock, PutMocksMockIDResponseMock.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      mock: d["mock"] ? PutMocksMockIDResponseMock.from_dynamic!(d["mock"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "mock" => mock&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_mocks_mock_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      put_mocks_mock_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_mocks_mock_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse401 < Dry::Struct
  attribute :error, PutMocksMockIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMocksMockIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse404Error < Dry::Struct

  # Information about the error.
  attribute :details, Types.Array(Types::String).optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_mocks_mock_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                  d["details"],
      message:                                  d["message"],
      put_mocks_mock_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details,
      "message" => message,
      "name"    => put_mocks_mock_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse404 < Dry::Struct
  attribute :error, PutMocksMockIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMocksMockIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_mocks_mock_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                  d["message"],
      put_mocks_mock_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_mocks_mock_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDResponse500 < Dry::Struct
  attribute :error, PutMocksMockIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMocksMockIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDBodyServerResponseHeadersItem < Dry::Struct

  # The request header's key value.
  attribute :key, Types::String.optional

  # The request header's value.
  attribute :value, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      key:   d["key"],
      value: d["value"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "key"   => key,
      "value" => value,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDBodyServerResponse < Dry::Struct

  # The server response's body that returns when calling the mock server.
  attribute :body, Types::String.optional

  # The server response's request headers, such as Content-Type, Accept, encoding, and other
  # information.
  attribute :headers, Types.Array(PutMocksMockIDServerResponsesServerResponseIDBodyServerResponseHeadersItem).optional

  # The server response's body language type.
  attribute :language, Types::DeleteMocksMockIDServerResponsesServerResponseIDResponseLanguage.optional

  # The server response's name.
  attribute :put_mocks_mock_id_server_responses_server_response_id_body_server_response_name, Types::String.optional

  # The server response's 5xx HTTP response code. This property **only** accepts 5xx values.
  attribute :status_code, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      body:                                                                            d["body"],
      headers:                                                                         d["headers"]&.map { |x| PutMocksMockIDServerResponsesServerResponseIDBodyServerResponseHeadersItem.from_dynamic!(x) },
      language:                                                                        d["language"],
      put_mocks_mock_id_server_responses_server_response_id_body_server_response_name: d["name"],
      status_code:                                                                     d["statusCode"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "body"       => body,
      "headers"    => headers&.map { |x| x.to_dynamic },
      "language"   => language,
      "name"       => put_mocks_mock_id_server_responses_server_response_id_body_server_response_name,
      "statusCode" => status_code,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDBody < Dry::Struct
  attribute :server_response, PutMocksMockIDServerResponsesServerResponseIDBodyServerResponse.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      server_response: d["serverResponse"] ? PutMocksMockIDServerResponsesServerResponseIDBodyServerResponse.from_dynamic!(d["serverResponse"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "serverResponse" => server_response&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse400ErrorDetails < Dry::Struct

  # Information about the missing parameter.
  attribute :param, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      param: d["param"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "param" => param,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse400Error < Dry::Struct

  # Information about the error.
  attribute :details, PutMocksMockIDServerResponsesServerResponseIDResponse400ErrorDetails.optional

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_mocks_mock_id_server_responses_server_response_id_response400_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      details:                                                                      d["details"] ? PutMocksMockIDServerResponsesServerResponseIDResponse400ErrorDetails.from_dynamic!(d["details"]) : nil,
      message:                                                                      d["message"],
      put_mocks_mock_id_server_responses_server_response_id_response400_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "details" => details&.to_dynamic,
      "message" => message,
      "name"    => put_mocks_mock_id_server_responses_server_response_id_response400_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse400 < Dry::Struct
  attribute :error, PutMocksMockIDServerResponsesServerResponseIDResponse400Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMocksMockIDServerResponsesServerResponseIDResponse400Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_mocks_mock_id_server_responses_server_response_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      put_mocks_mock_id_server_responses_server_response_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_mocks_mock_id_server_responses_server_response_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse401 < Dry::Struct
  attribute :error, PutMocksMockIDServerResponsesServerResponseIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMocksMockIDServerResponsesServerResponseIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_mocks_mock_id_server_responses_server_response_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      put_mocks_mock_id_server_responses_server_response_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_mocks_mock_id_server_responses_server_response_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponse500 < Dry::Struct
  attribute :error, PutMocksMockIDServerResponsesServerResponseIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMocksMockIDServerResponsesServerResponseIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMocksMockIDServerResponsesServerResponseIDResponseItem < Dry::Struct

  # The date and time at which the server response was created.
  attribute :created_at, Types::String.optional

  # The user ID of the user who created the server response.
  attribute :created_by, Types::String.optional

  # The server response's ID.
  attribute :id, Types::String.optional

  # The server response's name.
  attribute :put_mocks_mock_id_server_responses_server_response_id_response_item_name, Types::String.optional

  # The server response's 5xx HTTP response code.
  attribute :status_code, Types::Double.optional

  # The date and time at which the server response was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user who last updated the server response.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                               d["createdAt"],
      created_by:                                                               d["createdBy"],
      id:                                                                       d["id"],
      put_mocks_mock_id_server_responses_server_response_id_response_item_name: d["name"],
      status_code:                                                              d["statusCode"],
      updated_at:                                                               d["updatedAt"],
      updated_by:                                                               d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"  => created_at,
      "createdBy"  => created_by,
      "id"         => id,
      "name"       => put_mocks_mock_id_server_responses_server_response_id_response_item_name,
      "statusCode" => status_code,
      "updatedAt"  => updated_at,
      "updatedBy"  => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDBodyMonitorSchedule < Dry::Struct
  attribute :cron, Types::Any.optional

  # The monitor's [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
  attribute :timezone, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      cron:     d["cron"],
      timezone: d["timezone"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "cron"     => cron,
      "timezone" => timezone,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDBodyMonitor < Dry::Struct

  # The monitor's name.
  attribute :put_monitors_monitor_id_body_monitor_name, Types::String.optional

  # Information about the monitor's schedule.
  attribute :schedule, PutMonitorsMonitorIDBodyMonitorSchedule.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      put_monitors_monitor_id_body_monitor_name: d["name"],
      schedule:                                  d["schedule"] ? PutMonitorsMonitorIDBodyMonitorSchedule.from_dynamic!(d["schedule"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"     => put_monitors_monitor_id_body_monitor_name,
      "schedule" => schedule&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDBody < Dry::Struct
  attribute :monitor, PutMonitorsMonitorIDBodyMonitor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitor: d["monitor"] ? PutMonitorsMonitorIDBodyMonitor.from_dynamic!(d["monitor"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitor" => monitor&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponseMonitor < Dry::Struct

  # The monitor's ID.
  attribute :id, Types::String.optional

  # The monitor's name.
  attribute :put_monitors_monitor_id_response_monitor_name, Types::String.optional

  # The monitor's unique ID.
  attribute :uid, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                            d["id"],
      put_monitors_monitor_id_response_monitor_name: d["name"],
      uid:                                           d["uid"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => put_monitors_monitor_id_response_monitor_name,
      "uid"  => uid,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse < Dry::Struct
  attribute :monitor, PutMonitorsMonitorIDResponseMonitor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      monitor: d["monitor"] ? PutMonitorsMonitorIDResponseMonitor.from_dynamic!(d["monitor"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "monitor" => monitor&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_monitors_monitor_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                        d["message"],
      put_monitors_monitor_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_monitors_monitor_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse401 < Dry::Struct
  attribute :error, PutMonitorsMonitorIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMonitorsMonitorIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_monitors_monitor_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                        d["message"],
      put_monitors_monitor_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_monitors_monitor_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse404 < Dry::Struct
  attribute :error, PutMonitorsMonitorIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMonitorsMonitorIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_monitors_monitor_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                        d["message"],
      put_monitors_monitor_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_monitors_monitor_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutMonitorsMonitorIDResponse500 < Dry::Struct
  attribute :error, PutMonitorsMonitorIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutMonitorsMonitorIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_network_private_element_type_element_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                            d["message"],
      put_network_private_element_type_element_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_element_type_element_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse401 < Dry::Struct
  attribute :error, PutNetworkPrivateElementTypeElementIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateElementTypeElementIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_network_private_element_type_element_id_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                            d["message"],
      put_network_private_element_type_element_id_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_element_type_element_id_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse403 < Dry::Struct
  attribute :error, PutNetworkPrivateElementTypeElementIDResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateElementTypeElementIDResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_network_private_element_type_element_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                            d["message"],
      put_network_private_element_type_element_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_element_type_element_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse404 < Dry::Struct
  attribute :error, PutNetworkPrivateElementTypeElementIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateElementTypeElementIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_network_private_element_type_element_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                            d["message"],
      put_network_private_element_type_element_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_element_type_element_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateElementTypeElementIDResponse500 < Dry::Struct
  attribute :error, PutNetworkPrivateElementTypeElementIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateElementTypeElementIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDBodyResponse < Dry::Struct

  # A message that details why the user's request was denied.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module PutNetworkPrivateNetworkEntityRequestRequestIDBodyStatus
  Approved = "approved"
  Denied   = "denied"
end

class PutNetworkPrivateNetworkEntityRequestRequestIDBody < Dry::Struct

  # The response to the user's request.
  attribute :response, PutNetworkPrivateNetworkEntityRequestRequestIDBodyResponse.optional

  # The request's status.
  attribute :status, Types::PutNetworkPrivateNetworkEntityRequestRequestIDBodyStatus

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      response: d["response"] ? PutNetworkPrivateNetworkEntityRequestRequestIDBodyResponse.from_dynamic!(d["response"]) : nil,
      status:   d.fetch("status"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "response" => response&.to_dynamic,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItemElement < Dry::Struct

  # The date and time at which the element was approved and added to the Private API Network.
  attribute :created_at, Types::String.optional

  # The user ID of the user who requested to add the element to the Private API Network.
  attribute :created_by, Types::Integer.optional

  # The element's ID.
  attribute :id, Types::String.optional

  # The element's name.
  attribute :put_network_private_network_entity_request_request_id_response_request_item_element_name, Types::String.optional

  # The element's short summary.
  attribute :summary, Types::String.optional

  # The element type.
  attribute :put_network_private_network_entity_request_request_id_response_request_item_element_type, Types::EntityTypeEnum.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:                                                                               d["createdAt"],
      created_by:                                                                               d["createdBy"],
      id:                                                                                       d["id"],
      put_network_private_network_entity_request_request_id_response_request_item_element_name: d["name"],
      summary:                                                                                  d["summary"],
      put_network_private_network_entity_request_request_id_response_request_item_element_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => put_network_private_network_entity_request_request_id_response_request_item_element_name,
      "summary"   => summary,
      "type"      => put_network_private_network_entity_request_request_id_response_request_item_element_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItemResponse < Dry::Struct

  # The date and time at which the network manager denied the request.
  attribute :created_at, Types::String.optional

  # The network manager's user ID.
  attribute :created_by, Types::Integer.optional

  # The network manager's request response message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at: d["createdAt"],
      created_by: d["createdBy"],
      message:    d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "message"   => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItem < Dry::Struct

  # The date and time at which the request was created.
  attribute :created_at, Types::String.optional

  # The ID of the user who created the request.
  attribute :created_by, Types::Integer.optional

  # Information about the requested element.
  attribute :element, PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItemElement.optional

  # The request's ID.
  attribute :id, Types::Integer.optional

  # The user's optional message included in the request.
  attribute :message, Types::String.optional

  # Information about the response to the element's request. This object only returns when
  # the network manager denied a request with a message.
  attribute :response, PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItemResponse.optional

  # The request's status.
  attribute :status, Types::PutNetworkPrivateNetworkEntityRequestRequestIDBodyStatus.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at: d["createdAt"],
      created_by: d["createdBy"],
      element:    d["element"] ? PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItemElement.from_dynamic!(d["element"]) : nil,
      id:         d["id"],
      message:    d["message"],
      response:   d["response"] ? PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItemResponse.from_dynamic!(d["response"]) : nil,
      status:     d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "element"   => element&.to_dynamic,
      "id"        => id,
      "message"   => message,
      "response"  => response&.to_dynamic,
      "status"    => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse < Dry::Struct

  # Information about the Private API Network request.
  attribute :request, Types.Array(PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      request: d["request"]&.map { |x| PutNetworkPrivateNetworkEntityRequestRequestIDResponseRequestItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "request" => request&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Name
  InvalidParamsError            = "invalidParamsError"
  RequestAlreadyResponded       = "requestAlreadyResponded"
  RequestEntityAlreadyPublished = "requestEntityAlreadyPublished"
  RequestNotFound               = "RequestNotFound"
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse400 < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_network_private_network_entity_request_request_id_response400_name, Types::Name.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                d["message"],
      put_network_private_network_entity_request_request_id_response400_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_network_entity_request_request_id_response400_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse401Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error message.
  attribute :put_network_private_network_entity_request_request_id_response401_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      put_network_private_network_entity_request_request_id_response401_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_network_entity_request_request_id_response401_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse401 < Dry::Struct
  attribute :error, PutNetworkPrivateNetworkEntityRequestRequestIDResponse401Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateNetworkEntityRequestRequestIDResponse401Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_network_private_network_entity_request_request_id_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      put_network_private_network_entity_request_request_id_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_network_entity_request_request_id_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse403 < Dry::Struct
  attribute :error, PutNetworkPrivateNetworkEntityRequestRequestIDResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateNetworkEntityRequestRequestIDResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_network_private_network_entity_request_request_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                                                      d["message"],
      put_network_private_network_entity_request_request_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_network_private_network_entity_request_request_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutNetworkPrivateNetworkEntityRequestRequestIDResponse500 < Dry::Struct
  attribute :error, PutNetworkPrivateNetworkEntityRequestRequestIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutNetworkPrivateNetworkEntityRequestRequestIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDBodyName < Dry::Struct

  # The user's last name.
  attribute :family_name, Types::String.optional

  # The user's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDBody < Dry::Struct

  # Information about the user's name.
  attribute :put_scim_v2_users_user_id_body_name, PutScimV2UsersUserIDBodyName.optional

  # The SCIM schema resource URI.
  attribute :schemas, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      put_scim_v2_users_user_id_body_name: d["name"] ? PutScimV2UsersUserIDBodyName.from_dynamic!(d["name"]) : nil,
      schemas:                             d["schemas"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "name"    => put_scim_v2_users_user_id_body_name&.to_dynamic,
      "schemas" => schemas,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponseMeta < Dry::Struct

  # The date and time at which the team member was created.
  attribute :created, Types::String.optional

  # The date and time at which the team member was last modified.
  attribute :last_modified, Types::String.optional

  # The resource type.
  attribute :resource_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created:       d["created"],
      last_modified: d["lastModified"],
      resource_type: d["resourceType"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "created"      => created,
      "lastModified" => last_modified,
      "resourceType" => resource_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponseName < Dry::Struct

  # The team member's last name.
  attribute :family_name, Types::String.optional

  # The team member's first name.
  attribute :given_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      family_name: d["familyName"],
      given_name:  d["givenName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "familyName" => family_name,
      "givenName"  => given_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse < Dry::Struct

  # If true, the team member is active.
  attribute :active, Types::Bool.optional

  # The team member's external ID.
  attribute :external_id, Types::String.optional

  # The team member's SCIM ID.
  attribute :id, Types::String.optional

  # The response's non-standard meta information.
  attribute :put_scim_v2_users_user_id_response_meta, PutScimV2UsersUserIDResponseMeta.optional

  # Information about the Postman team member.
  attribute :put_scim_v2_users_user_id_response_name, PutScimV2UsersUserIDResponseName.optional

  # A list of schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The team member's SCIM username.
  attribute :user_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      active:                                  d["active"],
      external_id:                             d["externalId"],
      id:                                      d["id"],
      put_scim_v2_users_user_id_response_meta: d["meta"] ? PutScimV2UsersUserIDResponseMeta.from_dynamic!(d["meta"]) : nil,
      put_scim_v2_users_user_id_response_name: d["name"] ? PutScimV2UsersUserIDResponseName.from_dynamic!(d["name"]) : nil,
      schemas:                                 d["schemas"],
      user_name:                               d["userName"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "active"     => active,
      "externalId" => external_id,
      "id"         => id,
      "meta"       => put_scim_v2_users_user_id_response_meta&.to_dynamic,
      "name"       => put_scim_v2_users_user_id_response_name&.to_dynamic,
      "schemas"    => schemas,
      "userName"   => user_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # A list of SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The SCIM type.
  attribute :scim_type, Types::String.optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:    d["detail"],
      schemas:   d["schemas"],
      scim_type: d["scimType"],
      status:    d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "schemas"  => schemas,
      "scimType" => scim_type,
      "status"   => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse429 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutScimV2UsersUserIDResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The SCIM schema resource URIs.
  attribute :schemas, Types.Array(Types::String).optional

  # The HTTP status code.
  attribute :status, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:  d["detail"],
      schemas: d["schemas"],
      status:  d["status"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"  => detail,
      "schemas" => schemas,
      "status"  => status,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDBodyWorkspace < Dry::Struct

  # The new workspace description.
  attribute :description, Types::String.optional

  # The workspace's new name.
  attribute :put_workspaces_workspace_id_body_workspace_name, Types::String.optional

  # The new workspace visibility
  # [type](https://learning.postman.com/docs/collaborating-in-postman/using-workspaces/managing-workspaces/#changing-workspace-visibility).
  # This property does **not** support the following workspace visibility changes:
  # - `private` to `public`
  # - `public` to `private`
  # - `private` to `personal`
  # - `team` to `personal`
  # - `public` to `personal` for a team user
  attribute :put_workspaces_workspace_id_body_workspace_type, Types::WorkspaceVisibility.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                                     d["description"],
      put_workspaces_workspace_id_body_workspace_name: d["name"],
      put_workspaces_workspace_id_body_workspace_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => put_workspaces_workspace_id_body_workspace_name,
      "type"        => put_workspaces_workspace_id_body_workspace_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDBody < Dry::Struct
  attribute :workspace, PutWorkspacesWorkspaceIDBodyWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? PutWorkspacesWorkspaceIDBodyWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDGlobalVariablesBody < Dry::Struct

  # A list of the workspace's global variables.
  attribute :values, Types.Array(GlobalVariable).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      values: d["values"]&.map { |x| GlobalVariable.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "values" => values&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDGlobalVariablesResponse < Dry::Struct

  # A list of the workspace's global variables.
  attribute :values, Types.Array(Types.Array(GlobalVariable)).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      values: d["values"]&.map { |x| x.map { |x| GlobalVariable.from_dynamic!(x) } },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "values" => values&.map { |x| x.map { |x| x.to_dynamic } },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDGlobalVariablesResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The type of error.
  attribute :title, Types::String.optional

  # The generic description for the error's class.
  attribute :put_workspaces_workspace_id_global_variables_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                                        d["detail"],
      title:                                                         d["title"],
      put_workspaces_workspace_id_global_variables_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "title"  => title,
      "type"   => put_workspaces_workspace_id_global_variables_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponseWorkspace < Dry::Struct

  # The workspace's ID.
  attribute :id, Types::String.optional

  # The workspace's name.
  attribute :put_workspaces_workspace_id_response_workspace_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                                  d["id"],
      put_workspaces_workspace_id_response_workspace_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => put_workspaces_workspace_id_response_workspace_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse < Dry::Struct

  # Information about the updated workspace.
  attribute :workspace, PutWorkspacesWorkspaceIDResponseWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? PutWorkspacesWorkspaceIDResponseWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse400 < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_workspaces_workspace_id_response400_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                      d["message"],
      put_workspaces_workspace_id_response400_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_workspaces_workspace_id_response400_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse403Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_workspaces_workspace_id_response403_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      put_workspaces_workspace_id_response403_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_workspaces_workspace_id_response403_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse403 < Dry::Struct
  attribute :error, PutWorkspacesWorkspaceIDResponse403Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutWorkspacesWorkspaceIDResponse403Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse404Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_workspaces_workspace_id_response404_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      put_workspaces_workspace_id_response404_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_workspaces_workspace_id_response404_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse404 < Dry::Struct
  attribute :error, PutWorkspacesWorkspaceIDResponse404Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutWorkspacesWorkspaceIDResponse404Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse429 < Dry::Struct

  # The error name.
  attribute :error, Types::String.optional

  # The error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error:   d["error"],
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error"   => error,
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse500Error < Dry::Struct

  # The error message.
  attribute :message, Types::String.optional

  # The error name.
  attribute :put_workspaces_workspace_id_response500_error_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message:                                            d["message"],
      put_workspaces_workspace_id_response500_error_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
      "name"    => put_workspaces_workspace_id_response500_error_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDResponse500 < Dry::Struct
  attribute :error, PutWorkspacesWorkspaceIDResponse500Error.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? PutWorkspacesWorkspaceIDResponse500Error.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsBodyTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d.fetch("slug"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsBody < Dry::Struct

  # A list of the associated tags as slugs.
  attribute :tags, Types.Array(PutWorkspacesWorkspaceIDTagsBodyTagsItem)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d.fetch("tags").map { |x| PutWorkspacesWorkspaceIDTagsBodyTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponseTagsItem < Dry::Struct

  # The tag's ID within a team or individual (non-team) user scope.
  attribute :slug, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      slug: d["slug"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "slug" => slug,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponse < Dry::Struct

  # A list of associated tags.
  attribute :tags, Types.Array(PutWorkspacesWorkspaceIDTagsResponseTagsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      tags: d["tags"]&.map { |x| PutWorkspacesWorkspaceIDTagsResponseTagsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "tags" => tags&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponse400 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_workspaces_workspace_id_tags_response400_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      status:                                            d["status"],
      title:                                             d["title"],
      put_workspaces_workspace_id_tags_response400_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_workspaces_workspace_id_tags_response400_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponse401 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_workspaces_workspace_id_tags_response401_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      status:                                            d["status"],
      title:                                             d["title"],
      put_workspaces_workspace_id_tags_response401_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_workspaces_workspace_id_tags_response401_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponse403 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_workspaces_workspace_id_tags_response403_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      status:                                            d["status"],
      title:                                             d["title"],
      put_workspaces_workspace_id_tags_response403_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail" => detail,
      "status" => status,
      "title"  => title,
      "type"   => put_workspaces_workspace_id_tags_response403_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponse404 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_workspaces_workspace_id_tags_response404_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      instance:                                          d["instance"],
      status:                                            d["status"],
      title:                                             d["title"],
      put_workspaces_workspace_id_tags_response404_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_workspaces_workspace_id_tags_response404_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PutWorkspacesWorkspaceIDTagsResponse500 < Dry::Struct

  # Information about the error.
  attribute :detail, Types::String.optional

  # The URI reference that identifies the specific occurrence of the problem.
  attribute :instance, Types::String.optional

  # The error's HTTP status code.
  attribute :status, Types::Integer.optional

  # A short summary of the problem.
  attribute :title, Types::String.optional

  # The URI reference ([RFC 3986](https://www.rfc-editor.org/rfc/rfc3986)) that identifies
  # the type of problem.
  attribute :put_workspaces_workspace_id_tags_response500_type, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      detail:                                            d["detail"],
      instance:                                          d["instance"],
      status:                                            d["status"],
      title:                                             d["title"],
      put_workspaces_workspace_id_tags_response500_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "detail"   => detail,
      "instance" => instance,
      "status"   => status,
      "title"    => title,
      "type"     => put_workspaces_workspace_id_tags_response500_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIBase < Dry::Struct

  # The date and time at which the API was created.
  attribute :created_at, Types::String.optional

  # The Postman ID of the user that created the API.
  attribute :created_by, Types::Double.optional

  # The API's description.
  attribute :description, Types::String.optional

  # The API's ID.
  attribute :id, Types::String.optional

  # The API's name.
  attribute :api_base_name, Types::String.optional

  # The API's short summary.
  attribute :summary, Types::String.optional

  # The date and time at which the API was updated.
  attribute :updated_at, Types::String.optional

  # The Postman ID of the user that updated the API.
  attribute :updated_by, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:    d["createdAt"],
      created_by:    d["createdBy"],
      description:   d["description"],
      id:            d["id"],
      api_base_name: d["name"],
      summary:       d["summary"],
      updated_at:    d["updatedAt"],
      updated_by:    d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"   => created_at,
      "createdBy"   => created_by,
      "description" => description,
      "id"          => id,
      "name"        => api_base_name,
      "summary"     => summary,
      "updatedAt"   => updated_at,
      "updatedBy"   => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIDetailsCollectionsItem < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIDetailsGitInfo < Dry::Struct

  # The API definition's collection repository folder location.
  attribute :collection_folder, Types::String.optional

  # The domain at which the Git repository is hosted.
  attribute :domain, Types::String.optional.optional

  # The organization that owns the repository.
  attribute :organization, Types::String.optional

  # The repository's name.
  attribute :repository, Types::String.optional

  # The API definition's repository folder location. This returns an empty string if the
  # connected repository uses a root file.
  attribute :schema_folder, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection_folder: d["collectionFolder"],
      domain:            d["domain"],
      organization:      d["organization"],
      repository:        d["repository"],
      schema_folder:     d["schemaFolder"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collectionFolder" => collection_folder,
      "domain"           => domain,
      "organization"     => organization,
      "repository"       => repository,
      "schemaFolder"     => schema_folder,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIDetailsSchemasItem < Dry::Struct

  # The schema's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIDetailsVersionsItem < Dry::Struct

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :api_details_versions_item_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                             d["id"],
      api_details_versions_item_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => api_details_versions_item_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIDetails < Dry::Struct

  # The API's collections.
  attribute :collections, Types.Array(APIDetailsCollectionsItem).optional

  # Information about the API's Git repository integration.
  attribute :git_info, APIDetailsGitInfo.optional

  # The API's schemas.
  attribute :schemas, Types.Array(APIDetailsSchemasItem).optional

  # The API's versions.
  attribute :versions, Types.Array(APIDetailsVersionsItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collections: d["collections"]&.map { |x| APIDetailsCollectionsItem.from_dynamic!(x) },
      git_info:    d["gitInfo"] ? APIDetailsGitInfo.from_dynamic!(d["gitInfo"]) : nil,
      schemas:     d["schemas"]&.map { |x| APIDetailsSchemasItem.from_dynamic!(x) },
      versions:    d["versions"]&.map { |x| APIDetailsVersionsItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collections" => collections&.map { |x| x.to_dynamic },
      "gitInfo"     => git_info&.to_dynamic,
      "schemas"     => schemas&.map { |x| x.to_dynamic },
      "versions"    => versions&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPIVersionGitLinkedCollectionsItem < Dry::Struct

  # Path to a collection in the Git repository.
  attribute :file_path, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      file_path: d["filePath"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "filePath" => file_path,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPIVersionGitLinkedSchemasItem < Dry::Struct

  # The path to the root directory where schemas are stored in the Git repository.
  attribute :directory_path, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      directory_path: d["directoryPath"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "directoryPath" => directory_path,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPIVersionGitLinked < Dry::Struct

  # The branch ID.
  attribute :branch, Types::String.optional

  # A list of the version's collections.
  attribute :collections, Types.Array(CreateAPIVersionGitLinkedCollectionsItem).optional

  # The version's name.
  attribute :create_api_version_git_linked_name, Types::String.optional

  # Information about the API version release. For example, changelog notes.
  attribute :release_notes, Types::String.optional

  # A list of the version's schemas.
  attribute :schemas, Types.Array(CreateAPIVersionGitLinkedSchemasItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      branch:                             d["branch"],
      collections:                        d["collections"]&.map { |x| CreateAPIVersionGitLinkedCollectionsItem.from_dynamic!(x) },
      create_api_version_git_linked_name: d["name"],
      release_notes:                      d["releaseNotes"],
      schemas:                            d["schemas"]&.map { |x| CreateAPIVersionGitLinkedSchemasItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "branch"       => branch,
      "collections"  => collections&.map { |x| x.to_dynamic },
      "name"         => create_api_version_git_linked_name,
      "releaseNotes" => release_notes,
      "schemas"      => schemas&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPIVersionNonGitLinkedCollectionsItem < Dry::Struct

  # The collection's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPIVersionNonGitLinkedSchemasItem < Dry::Struct

  # The schema's ID.
  attribute :id, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id: d["id"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id" => id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPIVersionNonGitLinked < Dry::Struct

  # A list of the version's collections.
  attribute :collections, Types.Array(CreateAPIVersionNonGitLinkedCollectionsItem).optional

  # The version's name.
  attribute :create_api_version_non_git_linked_name, Types::String.optional

  # Information about the API version release. For example, changelog notes.
  attribute :release_notes, Types::String.optional

  # A list of the version's schemas.
  attribute :schemas, Types.Array(CreateAPIVersionNonGitLinkedSchemasItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collections:                            d["collections"]&.map { |x| CreateAPIVersionNonGitLinkedCollectionsItem.from_dynamic!(x) },
      create_api_version_non_git_linked_name: d["name"],
      release_notes:                          d["releaseNotes"],
      schemas:                                d["schemas"]&.map { |x| CreateAPIVersionNonGitLinkedSchemasItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collections"  => collections&.map { |x| x.to_dynamic },
      "name"         => create_api_version_non_git_linked_name,
      "releaseNotes" => release_notes,
      "schemas"      => schemas&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPISchemaFilesItemRoot < Dry::Struct

  # If true, tag the file as the root file. The root tag is only allowed for protobuf
  # specifications.
  attribute :enabled, Types::Bool.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      enabled: d["enabled"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "enabled" => enabled,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPISchemaFilesItem < Dry::Struct

  # The serilalized content of the schema.
  attribute :content, Types::String.optional

  # The schema's file path.
  attribute :path, Types::String.optional

  # Information about the schema's root file.
  attribute :root, CreateAPISchemaFilesItemRoot.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      content: d["content"],
      path:    d["path"],
      root:    d["root"] ? CreateAPISchemaFilesItemRoot.from_dynamic!(d["root"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "content" => content,
      "path"    => path,
      "root"    => root&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateAPISchema < Dry::Struct

  # The list of files that are part of the schema.
  attribute :files, Types.Array(CreateAPISchemaFilesItem)

  # The schema's type.
  attribute :create_api_schema_type, Types::PostApisAPIIDSchemasBodyType

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      files:                  d.fetch("files").map { |x| CreateAPISchemaFilesItem.from_dynamic!(x) },
      create_api_schema_type: d.fetch("type"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "files" => files.map { |x| x.to_dynamic },
      "type"  => create_api_schema_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePanAPIAPI < Dry::Struct

  # The API's ID.
  attribute :id, Types::String

  # The API's parent folder ID.
  attribute :parent_folder_id, Types::Integer

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:               d.fetch("id"),
      parent_folder_id: d.fetch("parentFolderId"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"             => id,
      "parentFolderId" => parent_folder_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePANAPI < Dry::Struct
  attribute :api, CreatePanAPIAPI.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      api: d["api"] ? CreatePanAPIAPI.from_dynamic!(d["api"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "api" => api&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePanCollectionCollection < Dry::Struct

  # A list of environments to add to the collection.
  attribute :environments, Types.Array(Types::String).optional

  # The collection's ID.
  attribute :id, Types::String

  # The collection's parent folder ID.
  attribute :parent_folder_id, Types::Integer

  # The collection's summary.
  attribute :summary, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environments:     d["environments"],
      id:               d.fetch("id"),
      parent_folder_id: d.fetch("parentFolderId"),
      summary:          d["summary"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environments"   => environments,
      "id"             => id,
      "parentFolderId" => parent_folder_id,
      "summary"        => summary,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePANCollection < Dry::Struct
  attribute :collection, CreatePanCollectionCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? CreatePanCollectionCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePanFolderFolder < Dry::Struct

  # The folder's description.
  attribute :description, Types::String.optional

  # The folder's name.
  attribute :create_pan_folder_folder_name, Types::String

  # The folder's parent folder ID. This value defaults to `0`.
  attribute :parent_folder_id, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                   d["description"],
      create_pan_folder_folder_name: d.fetch("name"),
      parent_folder_id:              d["parentFolderId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description"    => description,
      "name"           => create_pan_folder_folder_name,
      "parentFolderId" => parent_folder_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePANFolder < Dry::Struct
  attribute :folder, CreatePanFolderFolder.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      folder: d["folder"] ? CreatePanFolderFolder.from_dynamic!(d["folder"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "folder" => folder&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePanWorkspaceWorkspace < Dry::Struct

  # The workspace's ID.
  attribute :id, Types::String

  # The workspace's parent folder ID.
  attribute :parent_folder_id, Types::Integer

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:               d.fetch("id"),
      parent_folder_id: d.fetch("parentFolderId"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"             => id,
      "parentFolderId" => parent_folder_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreatePANWorkspace < Dry::Struct
  attribute :workspace, CreatePanWorkspaceWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? CreatePanWorkspaceWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CreateUpdateAPI < Dry::Struct

  # The API's description. This supports Markdown formatting.
  attribute :description, Types::String.optional

  # The API's name.
  attribute :create_update_api_name, Types::String

  # The API's short summary.
  attribute :summary, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:            d["description"],
      create_update_api_name: d.fetch("name"),
      summary:                d["summary"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description" => description,
      "name"        => create_update_api_name,
      "summary"     => summary,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class GitInfo < Dry::Struct

  # The API definition's collection repository folder location.
  attribute :collection_folder, Types::String.optional

  # The domain at which the Git repository is hosted.
  attribute :domain, Types::String.optional.optional

  # The organization that owns the repository.
  attribute :organization, Types::String.optional

  # The repository's name.
  attribute :repository, Types::String.optional

  # The API definition's repository folder location. This returns an empty string if the
  # connected repository uses a root file.
  attribute :schema_folder, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection_folder: d["collectionFolder"],
      domain:            d["domain"],
      organization:      d["organization"],
      repository:        d["repository"],
      schema_folder:     d["schemaFolder"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collectionFolder" => collection_folder,
      "domain"           => domain,
      "organization"     => organization,
      "repository"       => repository,
      "schemaFolder"     => schema_folder,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module ImportExportFileType
  File = "file"
end

class ImportExportFile < Dry::Struct

  # A file containing a valid user's export .zip file.
  attribute :input, Types::String

  # The `file` type value.
  attribute :import_export_file_type, Types::ImportExportFileType

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      input:                   d.fetch("input"),
      import_export_file_type: d.fetch("type"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "input" => input,
      "type"  => import_export_file_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module JSONSchemaType
  JSON = "json"
end

class JSONSchema < Dry::Struct
  attribute :input,               Types::Any.optional
  attribute :json_schema_options, Types::Any.optional

  # The OpenAPI definition type.
  attribute :json_schema_type, Types::JSONSchemaType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      input:               d["input"],
      json_schema_options: d["options"],
      json_schema_type:    d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "input"   => input,
      "options" => json_schema_options,
      "type"    => json_schema_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class JSONStringified < Dry::Struct

  # The stringified OpenAPI definition.
  attribute :input, Types::String.optional

  attribute :json_stringified_options, Types::Any.optional

  # The OpenAPI definition type.
  attribute :json_stringified_type, Types::JSONSchemaType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      input:                    d["input"],
      json_stringified_options: d["options"],
      json_stringified_type:    d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "input"   => input,
      "options" => json_stringified_options,
      "type"    => json_stringified_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Meta < Dry::Struct

  # The maximum number of records in the paginated response.
  attribute :limit, Types::Double.optional

  # The Base64-encoded value that points to the next record in the results set.
  attribute :next_cursor, Types::String.optional

  # The number of records that match the defined criteria.
  attribute :total, Types::Double.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      limit:       d["limit"],
      next_cursor: d["nextCursor"],
      total:       d["total"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "limit"      => limit,
      "nextCursor" => next_cursor,
      "total"      => total,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class SchemaFileBase < Dry::Struct

  # The date and time at which the file was created.
  attribute :created_at, Types::String.optional

  # The user Id of the user that created the file.
  attribute :created_by, Types::String.optional

  # The schema file's ID.
  attribute :id, Types::String.optional

  # The schema file's name.
  attribute :schema_file_base_name, Types::String.optional

  # The file system path to the schema file.
  attribute :path, Types::String.optional

  # The date and time at which the file was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that last updated the file.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:            d["createdAt"],
      created_by:            d["createdBy"],
      id:                    d["id"],
      schema_file_base_name: d["name"],
      path:                  d["path"],
      updated_at:            d["updatedAt"],
      updated_by:            d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => schema_file_base_name,
      "path"      => path,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class SchemaFileContents < Dry::Struct

  # The schema file's content.
  attribute :content, Types::String.optional

  # The date and time at which the file was created.
  attribute :created_at, Types::String.optional

  # The user Id of the user that created the file.
  attribute :created_by, Types::String.optional

  # The schema file's ID.
  attribute :id, Types::String.optional

  # The schema file's name.
  attribute :schema_file_contents_name, Types::String.optional

  # The file system path to the schema file.
  attribute :path, Types::String.optional

  # The date and time at which the file was last updated.
  attribute :updated_at, Types::String.optional

  # The user ID of the user that last updated the file.
  attribute :updated_by, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      content:                   d["content"],
      created_at:                d["createdAt"],
      created_by:                d["createdBy"],
      id:                        d["id"],
      schema_file_contents_name: d["name"],
      path:                      d["path"],
      updated_at:                d["updatedAt"],
      updated_by:                d["updatedBy"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "content"   => content,
      "createdAt" => created_at,
      "createdBy" => created_by,
      "id"        => id,
      "name"      => schema_file_contents_name,
      "path"      => path,
      "updatedAt" => updated_at,
      "updatedBy" => updated_by,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class TaskErrorError < Dry::Struct

  # The task's error message.
  attribute :message, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      message: d["message"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "message" => message,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class TaskError < Dry::Struct
  attribute :error, TaskErrorError.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      error: d["error"] ? TaskErrorError.from_dynamic!(d["error"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "error" => error&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class TaskResourceResourcesItem < Dry::Struct

  # The task's ID.
  attribute :id, Types::String.optional

  # The task's assigned resource URL.
  attribute :url, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:  d["id"],
      url: d["url"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"  => id,
      "url" => url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class TaskResource < Dry::Struct
  attribute :resources, Types.Array(TaskResourceResourcesItem).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      resources: d["resources"]&.map { |x| TaskResourceResourcesItem.from_dynamic!(x) },
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "resources" => resources&.map { |x| x.to_dynamic },
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePanAPIAPI < Dry::Struct

  # The API's new parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      parent_folder_id: d["parentFolderId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "parentFolderId" => parent_folder_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePANAPI < Dry::Struct
  attribute :api, UpdatePanAPIAPI.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      api: d["api"] ? UpdatePanAPIAPI.from_dynamic!(d["api"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "api" => api&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePanCollectionCollectionEnvironments < Dry::Struct
  attribute :add,    Types.Array(Types::String).optional
  attribute :remove, Types.Array(Types::String).optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      add:    d["$add"],
      remove: d["$remove"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "$add"    => add,
      "$remove" => remove,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePanCollectionCollection < Dry::Struct

  # The collection's updated environments.
  attribute :environments, UpdatePanCollectionCollectionEnvironments.optional

  # The collection's new parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  # The collection's updated summary.
  attribute :summary, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      environments:     d["environments"] ? UpdatePanCollectionCollectionEnvironments.from_dynamic!(d["environments"]) : nil,
      parent_folder_id: d["parentFolderId"],
      summary:          d["summary"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "environments"   => environments&.to_dynamic,
      "parentFolderId" => parent_folder_id,
      "summary"        => summary,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePANCollection < Dry::Struct
  attribute :collection, UpdatePanCollectionCollection.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collection: d["collection"] ? UpdatePanCollectionCollection.from_dynamic!(d["collection"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collection" => collection&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePanFolderFolder < Dry::Struct

  # The folder's updated description.
  attribute :description, Types::String.optional

  # The folder's new name.
  attribute :update_pan_folder_folder_name, Types::String.optional

  # The folder's new parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      description:                   d["description"],
      update_pan_folder_folder_name: d["name"],
      parent_folder_id:              d["parentFolderId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "description"    => description,
      "name"           => update_pan_folder_folder_name,
      "parentFolderId" => parent_folder_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePANFolder < Dry::Struct
  attribute :folder, UpdatePanFolderFolder.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      folder: d["folder"] ? UpdatePanFolderFolder.from_dynamic!(d["folder"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "folder" => folder&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePanWorkspaceWorkspace < Dry::Struct

  # The workspace's new parent folder ID.
  attribute :parent_folder_id, Types::Integer.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      parent_folder_id: d["parentFolderId"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "parentFolderId" => parent_folder_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class UpdatePANWorkspace < Dry::Struct
  attribute :workspace, UpdatePanWorkspaceWorkspace.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      workspace: d["workspace"] ? UpdatePanWorkspaceWorkspace.from_dynamic!(d["workspace"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "workspace" => workspace&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class VersionBase < Dry::Struct

  # The date and time at which the version was created.
  attribute :created_at, Types::String.optional

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :version_base_name, Types::String.optional

  # The version's release notes.
  attribute :release_notes, Types::String.optional

  # The date and time at which the version was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      created_at:        d["createdAt"],
      id:                d["id"],
      version_base_name: d["name"],
      release_notes:     d["releaseNotes"],
      updated_at:        d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "createdAt"    => created_at,
      "id"           => id,
      "name"         => version_base_name,
      "releaseNotes" => release_notes,
      "updatedAt"    => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class VersionExtendedCollectionsItem < Dry::Struct

  # The collection's unique ID.
  attribute :id, Types::String.optional

  # The collection's name.
  attribute :version_extended_collections_item_name, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                     d["id"],
      version_extended_collections_item_name: d["name"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "name" => version_extended_collections_item_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class VersionExtendedSchemasItem < Dry::Struct

  # The schema's unique ID.
  attribute :id, Types::String.optional

  # The type of schema.
  attribute :version_extended_schemas_item_type, Types::PostApisAPIIDSchemasBodyType.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                                 d["id"],
      version_extended_schemas_item_type: d["type"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => id,
      "type" => version_extended_schemas_item_type,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class VersionExtended < Dry::Struct

  # A list of the version's collections.
  attribute :collections, Types.Array(VersionExtendedCollectionsItem).optional

  # The date and time at which the version was created.
  attribute :created_at, Types::String.optional

  # The version's ID.
  attribute :id, Types::String.optional

  # The version's name.
  attribute :version_extended_name, Types::String.optional

  # The version's release notes.
  attribute :release_notes, Types::String.optional

  # A list of the version's API schemas.
  attribute :schemas, Types.Array(VersionExtendedSchemasItem).optional

  # The date and time at which the version was last updated.
  attribute :updated_at, Types::String.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      collections:           d["collections"]&.map { |x| VersionExtendedCollectionsItem.from_dynamic!(x) },
      created_at:            d["createdAt"],
      id:                    d["id"],
      version_extended_name: d["name"],
      release_notes:         d["releaseNotes"],
      schemas:               d["schemas"]&.map { |x| VersionExtendedSchemasItem.from_dynamic!(x) },
      updated_at:            d["updatedAt"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "collections"  => collections&.map { |x| x.to_dynamic },
      "createdAt"    => created_at,
      "id"           => id,
      "name"         => version_extended_name,
      "releaseNotes" => release_notes,
      "schemas"      => schemas&.map { |x| x.to_dynamic },
      "updatedAt"    => updated_at,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end
