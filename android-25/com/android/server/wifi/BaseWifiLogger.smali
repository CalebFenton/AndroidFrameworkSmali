.class public Lcom/android/server/wifi/BaseWifiLogger;
.super Ljava/lang/Object;
.source "BaseWifiLogger.java"


# instance fields
.field protected mDriverVersion:Ljava/lang/String;

.field protected mFirmwareVersion:Ljava/lang/String;

.field protected mSupportedFeatureSet:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 35
    return-void
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 0
    .param p1, "reason"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 33
    return-void
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 38
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/BaseWifiLogger;->dump(Ljava/io/PrintWriter;)V

    #@4
    .line 39
    const-string/jumbo v0, "*** firmware logging disabled, no debug data ****"

    #@7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 40
    const-string/jumbo v0, "set config_wifi_enable_wifi_firmware_debugging to enable"

    #@d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 37
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method protected declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 44
    :try_start_0
    const-string/jumbo v0, "Chipset information :-----------------------------------------------"

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "FW Version is: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/server/wifi/BaseWifiLogger;->mFirmwareVersion:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, "Driver Version is: "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/android/server/wifi/BaseWifiLogger;->mDriverVersion:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, "Supported Feature set: "

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget v1, p0, Lcom/android/server/wifi/BaseWifiLogger;->mSupportedFeatureSet:I

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    monitor-exit p0

    #@53
    .line 43
    return-void

    #@54
    :catchall_0
    move-exception v0

    #@55
    monitor-exit p0

    #@56
    throw v0
.end method

.method declared-synchronized reportConnectionFailure()V
    .locals 0

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 31
    return-void
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 2
    .param p1, "verboseEnabled"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 19
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@4
    move-result-object v0

    #@5
    .line 20
    .local v0, "wifiNative":Lcom/android/server/wifi/WifiNative;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/BaseWifiLogger;->mFirmwareVersion:Ljava/lang/String;

    #@b
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/wifi/BaseWifiLogger;->mDriverVersion:Ljava/lang/String;

    #@11
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/server/wifi/BaseWifiLogger;->mSupportedFeatureSet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 18
    return-void

    #@19
    .end local v0    # "wifiNative":Lcom/android/server/wifi/WifiNative;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 0

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 25
    return-void
.end method

.method public declared-synchronized stopLogging()V
    .locals 0

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 29
    return-void
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 0

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 27
    return-void
.end method
