.class Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RouterFingerPrint"
.end annotation


# instance fields
.field private mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 83
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@7
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@c
    .line 82
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@7
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    monitor-enter v2

    #@c
    .line 89
    :try_start_0
    const-string/jumbo v1, "mConnectionEvent.roamType="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@15
    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    .line 90
    const-string/jumbo v1, ", mChannelInfo="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@23
    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 91
    const-string/jumbo v1, ", mDtim="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@31
    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    .line 92
    const-string/jumbo v1, ", mAuthentication="

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@3f
    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    .line 93
    const-string/jumbo v1, ", mHidden="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@4d
    iget-boolean v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@4f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    .line 94
    const-string/jumbo v1, ", mRouterTechnology="

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@5b
    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    .line 95
    const-string/jumbo v1, ", mSupportsIpv6="

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@69
    iget-boolean v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@6b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    monitor-exit v2

    #@6f
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    return-object v1

    #@74
    .line 88
    :catchall_0
    move-exception v1

    #@75
    monitor-exit v2

    #@76
    throw v1
.end method

.method public updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 101
    if-eqz p1, :cond_1

    #@9
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@b
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@d
    iput-boolean v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@f
    .line 107
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    #@11
    if-lez v1, :cond_0

    #@13
    .line 108
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@15
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    #@17
    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@19
    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@1b
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@21
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@24
    .line 113
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 114
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    #@2e
    move-result v1

    #@2f
    .line 113
    if-eqz v1, :cond_2

    #@31
    .line 115
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@33
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@36
    move-result-object v1

    #@37
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@39
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@3b
    .line 116
    const/4 v3, 0x1

    #@3c
    .line 115
    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@3e
    .line 126
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@45
    move-result-object v0

    #@46
    .line 127
    .local v0, "candidate":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_1

    #@48
    .line 128
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@4a
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMetrics;->-wrap0(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .end local v0    # "candidate":Landroid/net/wifi/ScanResult;
    :cond_1
    monitor-exit v2

    #@4e
    .line 99
    return-void

    #@4f
    .line 117
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_3

    #@55
    .line 118
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@57
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5a
    move-result-object v1

    #@5b
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@5d
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@5f
    .line 119
    const/4 v3, 0x3

    #@60
    .line 118
    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 100
    :catchall_0
    move-exception v1

    #@64
    monitor-exit v2

    #@65
    throw v1

    #@66
    .line 121
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    #@68
    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@6b
    move-result-object v1

    #@6c
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@6e
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@70
    .line 122
    const/4 v3, 0x2

    #@71
    .line 121
    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    goto :goto_0
.end method
