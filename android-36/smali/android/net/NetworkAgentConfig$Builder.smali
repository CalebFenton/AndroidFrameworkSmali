.class public final Landroid/net/NetworkAgentConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkAgentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mConfig:Landroid/net/NetworkAgentConfig;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/NetworkAgentConfig;
    .registers 2

    .line 491
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    return-object v0
.end method

.method public blacklist setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "allowBypass"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 467
    return-object p0
.end method

.method public whitelist setExplicitlySelected(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "explicitlySelected"    # Z

    .line 312
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 313
    return-object p0
.end method

.method public whitelist setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "legacyExtraInfo"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    invoke-static {v0, p1}, Landroid/net/NetworkAgentConfig;->-$$Nest$fputmLegacyExtraInfo(Landroid/net/NetworkAgentConfig;Ljava/lang/String;)V

    .line 435
    return-object p0
.end method

.method public whitelist setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "legacySubType"    # I

    .line 401
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput p1, v0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    .line 402
    return-object p0
.end method

.method public whitelist setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "legacySubTypeName"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-object p1, v0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    .line 424
    return-object p0
.end method

.method public whitelist setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "legacyType"    # I

    .line 389
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput p1, v0, Landroid/net/NetworkAgentConfig;->legacyType:I

    .line 390
    return-object p0
.end method

.method public whitelist setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "legacyTypeName"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-object p1, v0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public blacklist setLocalRoutesExcludedForVpn(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 4
    .param p1, "excludeLocalRoutes"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 479
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 482
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    .line 483
    return-object p0

    .line 480
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNat64DetectionEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 4
    .param p1, "enabled"    # Z

    .line 364
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    .line 365
    return-object p0
.end method

.method public whitelist setPartialConnectivityAcceptable(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "partialConnectivityAcceptable"    # Z

    .line 338
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 339
    return-object p0
.end method

.method public whitelist setProvisioningNotificationEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 4
    .param p1, "enabled"    # Z

    .line 377
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    .line 378
    return-object p0
.end method

.method public blacklist setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-object p1, v0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    .line 352
    return-object p0
.end method

.method public whitelist setUnvalidatedConnectivityAcceptable(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "unvalidatedConnectivityAcceptable"    # Z

    .line 325
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p1, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 326
    return-object p0
.end method

.method public blacklist setVpnRequiresValidation(Z)Landroid/net/NetworkAgentConfig$Builder;
    .registers 3
    .param p1, "vpnRequiresValidation"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/net/NetworkAgentConfig$Builder;->mConfig:Landroid/net/NetworkAgentConfig;

    invoke-static {v0, p1}, Landroid/net/NetworkAgentConfig;->-$$Nest$fputmVpnRequiresValidation(Landroid/net/NetworkAgentConfig;Z)V

    .line 454
    return-object p0
.end method
