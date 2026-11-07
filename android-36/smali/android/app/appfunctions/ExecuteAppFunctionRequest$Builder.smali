.class public final Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFunctionIdentifier:Ljava/lang/String;

.field private blacklist mParameters:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mTargetPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 168
    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    .line 180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mTargetPackageName:Ljava/lang/String;

    .line 181
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mFunctionIdentifier:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .registers 7

    .line 206
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mTargetPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mFunctionIdentifier:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    new-instance v4, Landroid/app/appfunctions/GenericDocumentWrapper;

    iget-object v5, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    invoke-direct {v4, v5}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 188
    return-object p0
.end method

.method public whitelist setParameters(Landroid/app/appsearch/GenericDocument;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .registers 2
    .param p1, "parameters"    # Landroid/app/appsearch/GenericDocument;

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    .line 200
    return-object p0
.end method
