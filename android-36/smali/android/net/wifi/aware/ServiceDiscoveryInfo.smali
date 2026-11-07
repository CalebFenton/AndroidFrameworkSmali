.class public final Landroid/net/wifi/aware/ServiceDiscoveryInfo;
.super Ljava/lang/Object;
.source "ServiceDiscoveryInfo.java"


# instance fields
.field private final blacklist mMatchFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mPairingAlias:Ljava/lang/String;

.field private final blacklist mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

.field private final blacklist mPeerCipherSuite:I

.field private final blacklist mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private final blacklist mScid:[B

.field private final blacklist mServiceSpecificInfo:[B

.field private final blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/aware/PeerHandle;I[BLjava/util/List;[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 10
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "peerCipherSuite"    # I
    .param p3, "serviceSpecificInfo"    # [B
    .param p5, "scid"    # [B
    .param p6, "pairingAlias"    # Ljava/lang/String;
    .param p7, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p8, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "I[B",
            "Ljava/util/List<",
            "[B>;[B",
            "Ljava/lang/String;",
            "Landroid/net/wifi/aware/AwarePairingConfig;",
            "[",
            "Landroid/net/wifi/OuiKeyedData;",
            ")V"
        }
    .end annotation

    .line 55
    .local p4, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p3, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mServiceSpecificInfo:[B

    .line 57
    iput-object p4, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mMatchFilters:Ljava/util/List;

    .line 58
    iput p2, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPeerCipherSuite:I

    .line 59
    iput-object p5, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mScid:[B

    .line 60
    iput-object p1, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 61
    iput-object p6, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPairingAlias:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 63
    if-eqz p8, :cond_18

    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1c

    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mVendorData:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist getMatchFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mMatchFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPairedAlias()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPairingAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPairingConfig()Landroid/net/wifi/aware/AwarePairingConfig;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    return-object v0
.end method

.method public whitelist getPeerCipherSuite()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPeerCipherSuite:I

    return v0
.end method

.method public whitelist getPeerHandle()Landroid/net/wifi/aware/PeerHandle;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object v0
.end method

.method public whitelist getScid()[B
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mScid:[B

    return-object v0
.end method

.method public whitelist getServiceSpecificInfo()[B
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mServiceSpecificInfo:[B

    return-object v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 160
    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mVendorData:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/aware/ServiceDiscoveryInfo;->mVendorData:Ljava/util/List;

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0

    .line 158
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
