.class public Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
.super Landroid/app/appsearch/GenericDocument;
.source "AppFunctionRuntimeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;
    }
.end annotation


# static fields
.field public static final blacklist APP_FUNCTION_INDEXER_PACKAGE:Ljava/lang/String; = "android"

.field public static final blacklist APP_FUNCTION_RUNTIME_METADATA_DB:Ljava/lang/String; = "appfunctions-db"

.field public static final blacklist APP_FUNCTION_RUNTIME_NAMESPACE:Ljava/lang/String; = "app_functions_runtime"

.field public static final blacklist PROPERTY_APP_FUNCTION_STATIC_METADATA_QUALIFIED_ID:Ljava/lang/String; = "appFunctionStaticMetadataQualifiedId"

.field public static final blacklist PROPERTY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final blacklist PROPERTY_FUNCTION_ID:Ljava/lang/String; = "functionId"

.field public static final blacklist PROPERTY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final blacklist RUNTIME_SCHEMA_TYPE:Ljava/lang/String; = "AppFunctionRuntimeMetadata"

.field private static final blacklist RUNTIME_SCHEMA_TYPE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchAppFunction"


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 2
    .param p1, "genericDocument"    # Landroid/app/appsearch/GenericDocument;

    .line 60
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 61
    return-void
.end method

.method public static blacklist createAppFunctionRuntimeSchema(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getRuntimeSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getAppFunctionRuntimeSchemaBuilder(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    .line 100
    const-string v1, "AppFunctionRuntimeMetadata"

    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addParentType(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public static blacklist createParentAppFunctionRuntimeSchema()Landroid/app/appsearch/AppSearchSchema;
    .registers 1

    .line 111
    const-string v0, "AppFunctionRuntimeMetadata"

    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getAppFunctionRuntimeSchemaBuilder(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAppFunctionRuntimeSchemaBuilder(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 6
    .param p0, "schemaType"    # Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v2, "functionId"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 120
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "packageName"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    const-string v4, "enabled"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "appFunctionStaticMetadataQualifiedId"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setJoinableValueType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static blacklist getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "functionId"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageNameFromSchema(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "metadataSchemaType"    # Ljava/lang/String;

    .line 71
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_14

    .line 76
    array-length v1, v0

    if-ge v1, v2, :cond_10

    .line 77
    const-string v1, "android"

    return-object v1

    .line 79
    :cond_10
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid schema type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for app function runtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getRuntimeSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionRuntimeMetadata-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getAppFunctionStaticMetadataQualifiedId()Ljava/lang/String;
    .registers 2

    .line 182
    const-string v0, "appFunctionStaticMetadataQualifiedId"

    invoke-virtual {p0, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabled()I
    .registers 3

    .line 175
    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPropertyLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public blacklist getFunctionId()Ljava/lang/String;
    .registers 2

    .line 156
    const-string v0, "functionId"

    invoke-virtual {p0, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 162
    const-string/jumbo v0, "packageName"

    invoke-virtual {p0, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
