.class public final Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceDiscoveryConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist MAXIMUM_CHANNEL_FREQUENCIES:I = 0x30


# instance fields
.field private blacklist mBand:I

.field private blacklist mFrequenciesMhz:[I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mBand:I

    .line 137
    const/16 v0, 0x985

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mFrequenciesMhz:[I

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;
    .registers 5

    .line 197
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mFrequenciesMhz:[I

    if-nez v0, :cond_a

    goto :goto_12

    .line 198
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Frequencies and band are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_12
    :goto_12
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mBand:I

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mFrequenciesMhz:[I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;-><init>(I[ILandroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig-IA;)V

    return-object v0
.end method

.method public whitelist setBand(I)Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;
    .registers 5
    .param p1, "band"    # I

    .line 158
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->-$$Nest$smisBandValid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mBand:I

    .line 162
    return-object p0

    .line 159
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFrequenciesMhz([I)Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;
    .registers 6
    .param p1, "frequenciesMhz"    # [I

    .line 179
    const-string v0, "Frequencies cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    array-length v0, p1

    const/4 v1, 0x1

    const/16 v2, 0x30

    if-lt v0, v1, :cond_11

    array-length v0, p1

    if-gt v0, v2, :cond_11

    .line 185
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;->mFrequenciesMhz:[I

    .line 186
    return-object p0

    .line 181
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of frequencies: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must be between 1 and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
