.class public final Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "AppFunctionRuntimeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionRuntimeMetadata;)V
    .registers 4
    .param p1, "original"    # Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 210
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getEnabled()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "functionId"    # Ljava/lang/String;

    .line 193
    nop

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    invoke-static {v0, v1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getRuntimeSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string v2, "app_functions_runtime"

    invoke-direct {p0, v2, v0, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "packageName"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 200
    const-string v0, "functionId"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 203
    nop

    .line 205
    invoke-static {p1, p2}, Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;->getStaticMetadataQualifiedId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "appFunctionStaticMetadataQualifiedId"

    invoke-virtual {p0, v1, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 207
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .registers 3

    .line 229
    new-instance v0, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public bridge synthetic whitelist build()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 185
    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;
    .registers 6
    .param p1, "enabledState"    # I

    .line 217
    const/4 v0, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v0, :cond_11

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    goto :goto_11

    .line 220
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value of EnabledState is unsupported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_11
    :goto_11
    int-to-long v1, p1

    new-array v0, v0, [J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const-string v1, "enabled"

    invoke-virtual {p0, v1, v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 223
    return-object p0
.end method
