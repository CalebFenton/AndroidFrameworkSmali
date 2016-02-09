.class public Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiPnoNetwork"
.end annotation


# instance fields
.field SSID:Ljava/lang/String;

.field auth:I

.field configKey:Ljava/lang/String;

.field flags:I

.field rssi_threshold:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "threshold"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2223
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->this$0:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2224
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2225
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    #@f
    .line 2226
    iput v1, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    #@11
    .line 2230
    :goto_0
    iput p3, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    #@13
    .line 2231
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@15
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 2232
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@1d
    or-int/lit8 v0, v0, 0x2

    #@1f
    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@21
    .line 2242
    :goto_1
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    #@23
    or-int/lit8 v0, v0, 0x6

    #@25
    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    #@27
    .line 2243
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    #@2d
    .line 2223
    return-void

    #@2e
    .line 2228
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@30
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    #@32
    goto :goto_0

    #@33
    .line 2233
    :cond_1
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@35
    const/4 v1, 0x2

    #@36
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_2

    #@3c
    .line 2234
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@3e
    const/4 v1, 0x3

    #@3f
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@42
    move-result v0

    #@43
    .line 2233
    if-eqz v0, :cond_3

    #@45
    .line 2235
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@47
    or-int/lit8 v0, v0, 0x4

    #@49
    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@4b
    goto :goto_1

    #@4c
    .line 2236
    :cond_3
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4e
    const/4 v1, 0x0

    #@4f
    aget-object v0, v0, v1

    #@51
    if-eqz v0, :cond_4

    #@53
    .line 2237
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@55
    or-int/lit8 v0, v0, 0x1

    #@57
    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@59
    goto :goto_1

    #@5a
    .line 2239
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@5c
    or-int/lit8 v0, v0, 0x1

    #@5e
    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@60
    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2249
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 2250
    const-string/jumbo v1, " flags="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 2251
    const-string/jumbo v1, " rssi="

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    .line 2252
    const-string/jumbo v1, " auth="

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    .line 2253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1
.end method
