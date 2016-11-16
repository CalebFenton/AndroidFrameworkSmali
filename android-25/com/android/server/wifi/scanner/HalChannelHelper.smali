.class public Lcom/android/server/wifi/scanner/HalChannelHelper;
.super Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.source "HalChannelHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HalChannelHelper"


# instance fields
.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5
    .line 35
    const/4 v1, 0x0

    #@6
    new-array v0, v1, [I

    #@8
    .line 36
    .local v0, "emptyFreqList":[I
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wifi/scanner/HalChannelHelper;->setBandChannels([I[I[I)V

    #@b
    .line 37
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/HalChannelHelper;->updateChannels()V

    #@e
    .line 33
    return-void
.end method


# virtual methods
.method public updateChannels()V
    .locals 5

    #@0
    .prologue
    .line 42
    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@6
    move-result-object v0

    #@7
    .line 43
    .local v0, "channels24G":[I
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v3, "HalChannelHelper"

    #@c
    const-string/jumbo v4, "Failed to get channels for 2.4GHz band"

    #@f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 44
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@14
    const/4 v4, 0x2

    #@15
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@18
    move-result-object v1

    #@19
    .line 45
    .local v1, "channels5G":[I
    if-nez v1, :cond_1

    #@1b
    const-string/jumbo v3, "HalChannelHelper"

    #@1e
    const-string/jumbo v4, "Failed to get channels for 5GHz band"

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 46
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@26
    const/4 v4, 0x4

    #@27
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@2a
    move-result-object v2

    #@2b
    .line 47
    .local v2, "channelsDfs":[I
    if-nez v2, :cond_2

    #@2d
    const-string/jumbo v3, "HalChannelHelper"

    #@30
    const-string/jumbo v4, "Failed to get channels for 5GHz DFS only band"

    #@33
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 48
    :cond_2
    if-eqz v0, :cond_3

    #@38
    if-nez v1, :cond_4

    #@3a
    .line 49
    :cond_3
    const-string/jumbo v3, "HalChannelHelper"

    #@3d
    const-string/jumbo v4, "Failed to get all channels for band, not updating band channel lists"

    #@40
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 41
    :goto_0
    return-void

    #@44
    .line 48
    :cond_4
    if-eqz v2, :cond_3

    #@46
    .line 50
    array-length v3, v0

    #@47
    if-gtz v3, :cond_5

    #@49
    array-length v3, v1

    #@4a
    if-lez v3, :cond_6

    #@4c
    .line 51
    :cond_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/scanner/HalChannelHelper;->setBandChannels([I[I[I)V

    #@4f
    goto :goto_0

    #@50
    .line 50
    :cond_6
    array-length v3, v2

    #@51
    if-gtz v3, :cond_5

    #@53
    .line 53
    const-string/jumbo v3, "HalChannelHelper"

    #@56
    const-string/jumbo v4, "Got zero length for all channel lists"

    #@59
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0
.end method
