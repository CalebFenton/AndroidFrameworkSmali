.class public final Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$Builder;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedLocalServiceAdvertisementConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFrequencyMhz:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x985

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$Builder;->mFrequencyMhz:I

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;
    .registers 4

    .line 137
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$Builder;->mFrequencyMhz:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;-><init>(ILandroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig-IA;)V

    return-object v0
.end method

.method public whitelist setFrequencyMhz(I)Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$Builder;
    .registers 4
    .param p1, "frequencyMhz"    # I

    .line 122
    if-lez p1, :cond_5

    .line 125
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$Builder;->mFrequencyMhz:I

    .line 126
    return-object p0

    .line 123
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frequency must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
