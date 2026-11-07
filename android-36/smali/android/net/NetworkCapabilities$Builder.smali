.class public final Landroid/net/NetworkCapabilities$Builder;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mCaps:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 3043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3044
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    .line 3045
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 3050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3051
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3052
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    .line 3053
    return-void
.end method

.method public static whitelist withoutDefaultCapabilities()Landroid/net/NetworkCapabilities$Builder;
    .registers 2

    .line 3060
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 3061
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-static {v0}, Landroid/net/NetworkCapabilities;->-$$Nest$mremoveDefaultCapabilites(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 3062
    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    return-object v1
.end method


# virtual methods
.method public whitelist addCapability(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 4
    .param p1, "capability"    # I

    .line 3109
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 3110
    return-object p0
.end method

.method public whitelist addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "enterpriseId"    # I

    .line 3176
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addEnterpriseId(I)Landroid/net/NetworkCapabilities;

    .line 3177
    return-object p0
.end method

.method public blacklist addForbiddenCapability(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "capability"    # I

    .line 3144
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addForbiddenCapability(I)V

    .line 3145
    return-object p0
.end method

.method public whitelist addTransportType(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "transportType"    # I

    .line 3081
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->-$$Nest$smcheckValidTransportType(I)V

    .line 3082
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 3083
    return-object p0
.end method

.method public whitelist build()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 3495
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 3496
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_24

    .line 3497
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The owner UID must be included in  administrator UIDs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3502
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getEnterpriseIds()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    .line 3503
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_40

    .line 3504
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Enterprise capability identifier is applicable only with ENTERPRISE capability."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3507
    :cond_40
    :goto_40
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    return-object v0
.end method

.method public whitelist removeCapability(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 4
    .param p1, "capability"    # I

    .line 3121
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 3122
    return-object p0
.end method

.method public whitelist removeEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "enterpriseId"    # I

    .line 3190
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-static {v0, p1}, Landroid/net/NetworkCapabilities;->-$$Nest$mremoveEnterpriseId(Landroid/net/NetworkCapabilities;I)Landroid/net/NetworkCapabilities;

    .line 3191
    return-object p0
.end method

.method public blacklist removeForbiddenCapability(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "capability"    # I

    .line 3159
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeForbiddenCapability(I)Landroid/net/NetworkCapabilities;

    .line 3160
    return-object p0
.end method

.method public whitelist removeTransportType(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "transportType"    # I

    .line 3096
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->-$$Nest$smcheckValidTransportType(I)V

    .line 3097
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    .line 3098
    return-object p0
.end method

.method public whitelist setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "administratorUids"    # [I

    .line 3241
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3242
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 3243
    return-object p0
.end method

.method public blacklist setAllowedUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkCapabilities$Builder;"
        }
    .end annotation

    .line 3461
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setAllowedUids(Ljava/util/Set;)V

    .line 3463
    return-object p0
.end method

.method public whitelist setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "downKbps"    # I

    .line 3286
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 3287
    return-object p0
.end method

.method public whitelist setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "upKbps"    # I

    .line 3265
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 3266
    return-object p0
.end method

.method public whitelist setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "specifier"    # Landroid/net/NetworkSpecifier;

    .line 3303
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 3304
    return-object p0
.end method

.method public whitelist setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "ownerUid"    # I

    .line 3208
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 3209
    return-object p0
.end method

.method public whitelist setRequestorPackageName(Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3390
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setRequestorPackageName(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 3391
    return-object p0
.end method

.method public whitelist setRequestorUid(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "uid"    # I

    .line 3374
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setRequestorUid(I)Landroid/net/NetworkCapabilities;

    .line 3375
    return-object p0
.end method

.method public whitelist setSignalStrength(I)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "signalStrength"    # I

    .line 3342
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    .line 3343
    return-object p0
.end method

.method public whitelist setSsid(Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .line 3358
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 3359
    return-object p0
.end method

.method public whitelist setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkCapabilities$Builder;"
        }
    .end annotation

    .line 3409
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 3410
    return-object p0
.end method

.method public whitelist setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .param p1, "info"    # Landroid/net/TransportInfo;

    .line 3316
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities;

    .line 3317
    return-object p0
.end method

.method public blacklist setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/net/NetworkCapabilities$Builder;"
        }
    .end annotation

    .line 3424
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 3425
    return-object p0
.end method

.method public whitelist setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;)",
            "Landroid/net/NetworkCapabilities$Builder;"
        }
    .end annotation

    .line 3484
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    iget-object v0, p0, Landroid/net/NetworkCapabilities$Builder;->mCaps:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 3485
    return-object p0
.end method
