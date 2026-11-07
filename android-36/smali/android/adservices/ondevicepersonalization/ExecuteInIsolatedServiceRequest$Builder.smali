.class public final Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;
.super Ljava/lang/Object;
.source "ExecuteInIsolatedServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppParams:Landroid/os/PersistableBundle;

.field private blacklist mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

.field private blacklist mService:Landroid/content/ComponentName;


# direct methods
.method public constructor whitelist <init>(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mAppParams:Landroid/os/PersistableBundle;

    .line 202
    sget-object v0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mService:Landroid/content/ComponentName;

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
    .registers 5

    .line 241
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mService:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mAppParams:Landroid/os/PersistableBundle;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;-><init>(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;)V

    return-object v0
.end method

.method public whitelist setAppParams(Landroid/os/PersistableBundle;)Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;
    .registers 2
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 220
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mAppParams:Landroid/os/PersistableBundle;

    .line 222
    return-object p0
.end method

.method public whitelist setOutputSpec(Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;)Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;
    .registers 2
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 234
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$Builder;->mOutputSpec:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    .line 236
    return-object p0
.end method
