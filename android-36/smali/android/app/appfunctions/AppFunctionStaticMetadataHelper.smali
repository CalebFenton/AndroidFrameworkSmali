.class public Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;
.super Ljava/lang/Object;
.source "AppFunctionStaticMetadataHelper.java"


# static fields
.field public static final blacklist APP_FUNCTION_INDEXER_PACKAGE:Ljava/lang/String; = "android"

.field public static final blacklist APP_FUNCTION_STATIC_METADATA_DB:Ljava/lang/String; = "apps-db"

.field public static final blacklist APP_FUNCTION_STATIC_NAMESPACE:Ljava/lang/String; = "app_functions"

.field public static final blacklist PROPERTY_FUNCTION_ID:Ljava/lang/String; = "functionId"

.field public static final blacklist PROPERTY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final blacklist STATIC_PROPERTY_ENABLED_BY_DEFAULT:Ljava/lang/String; = "enabledByDefault"

.field public static final blacklist STATIC_PROPERTY_RESTRICT_CALLERS_WITH_EXECUTE_APP_FUNCTIONS:Ljava/lang/String; = "restrictCallersWithExecuteAppFunctions"

.field public static final blacklist STATIC_SCHEMA_TYPE:Ljava/lang/String; = "AppFunctionStaticMetadata"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "functionId"    # Ljava/lang/String;

    .line 60
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

.method public static blacklist getStaticMetadataQualifiedId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "functionId"    # Ljava/lang/String;

    .line 68
    nop

    .line 72
    invoke-static {p0, p1}, Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "android"

    const-string v2, "apps-db"

    const-string v3, "app_functions"

    invoke-static {v1, v2, v3, v0}, Landroid/app/appsearch/util/DocumentIdUtil;->createQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStaticSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionStaticMetadata-"

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
