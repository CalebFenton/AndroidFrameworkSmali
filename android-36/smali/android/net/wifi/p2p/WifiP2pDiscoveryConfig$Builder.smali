.class public final Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;
.super Ljava/lang/Object;
.source "WifiP2pDiscoveryConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFrequencyMhz:I

.field private final blacklist mScanType:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "scanType"    # I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mFrequencyMhz:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mVendorData:Ljava/util/List;

    .line 164
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mScanType:I

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
    .registers 6

    .line 215
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mScanType:I

    if-ltz v0, :cond_27

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mScanType:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_27

    .line 219
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mScanType:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mFrequencyMhz:I

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 220
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scan type is single frequency, but no frequency was provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1a
    :goto_1a
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mScanType:I

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mFrequencyMhz:I

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mVendorData:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;-><init>(IILjava/util/List;Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig-IA;)V

    return-object v0

    .line 217
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mScanType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFrequencyMhz(I)Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;
    .registers 4
    .param p1, "frequencyMhz"    # I

    .line 177
    if-lez p1, :cond_5

    .line 180
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mFrequencyMhz:I

    .line 181
    return-object p0

    .line 178
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frequency must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;"
        }
    .end annotation

    .line 198
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 201
    if-eqz p1, :cond_b

    .line 204
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;->mVendorData:Ljava/util/List;

    .line 205
    return-object p0

    .line 202
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
