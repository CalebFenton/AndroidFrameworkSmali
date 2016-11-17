.class abstract Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ClientInfo"
.end annotation


# instance fields
.field protected final mMessenger:Landroid/os/Messenger;

.field private mScanWorkReported:Z

.field private final mUid:I

.field private final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2
    return v0
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "uid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 1802
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1799
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@8
    .line 1803
    iput p2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@a
    .line 1804
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@c
    .line 1805
    new-instance v0, Landroid/os/WorkSource;

    #@e
    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@13
    .line 1802
    return-void
.end method

.method private getCsph()I
    .locals 8

    #@0
    .prologue
    .line 1868
    const/4 v5, 0x0

    #@1
    .line 1870
    .local v5, "totalScanDurationPerHour":I
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@6
    move-result-object v6

    #@7
    invoke-virtual {v6, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    #@a
    move-result-object v4

    #@b
    .line 1871
    .local v4, "settingsList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    .local v3, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_1

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@1b
    .line 1872
    .local v2, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1d
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, v2}, Lcom/android/server/wifi/scanner/ChannelHelper;->estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@24
    move-result v0

    #@25
    .line 1873
    .local v0, "scanDurationMs":I
    iget v6, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@27
    if-nez v6, :cond_0

    #@29
    const/4 v1, 0x1

    #@2a
    .line 1875
    .local v1, "scans_per_Hour":I
    :goto_1
    mul-int v6, v0, v1

    #@2c
    add-int/2addr v5, v6

    #@2d
    goto :goto_0

    #@2e
    .line 1874
    .end local v1    # "scans_per_Hour":I
    :cond_0
    iget v6, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@30
    .line 1873
    const v7, 0x36ee80

    #@33
    div-int v1, v7, v6

    #@35
    goto :goto_1

    #@36
    .line 1878
    .end local v0    # "scanDurationMs":I
    .end local v2    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_1
    div-int/lit16 v6, v5, 0xc8

    #@38
    return v6
.end method

.method private reportBatchedScanStart()V
    .locals 5

    #@0
    .prologue
    .line 1843
    iget v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1844
    return-void

    #@5
    .line 1846
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getCsph()I

    #@8
    move-result v0

    #@9
    .line 1849
    .local v0, "csph":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@b
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@11
    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1842
    :goto_0
    return-void

    #@15
    .line 1850
    :catch_0
    move-exception v1

    #@16
    .line 1851
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "failed to report scan work: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method private reportBatchedScanStop()V
    .locals 4

    #@0
    .prologue
    .line 1856
    iget v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1857
    return-void

    #@5
    .line 1860
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@7
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@d
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1855
    :goto_0
    return-void

    #@11
    .line 1861
    :catch_0
    move-exception v0

    #@12
    .line 1862
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "failed to cleanup scan work: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@2f
    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    #@0
    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1818
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    #@0
    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->removeSingleScanRequests(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@9
    .line 1824
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->removeBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@12
    .line 1825
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->removeHotlistSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@1b
    .line 1826
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->unregister()V

    #@1e
    .line 1827
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Successfully stopped all requests for client "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@37
    .line 1822
    return-void
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 1831
    iget v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2
    return v0
.end method

.method public register()V
    .locals 2

    #@0
    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@8
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1811
    return-void
.end method

.method public reportEvent(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 1835
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@4
    .line 1834
    return-void
.end method

.method public abstract reportEvent(IIILjava/lang/Object;)V
.end method

.method public reportScanWorkUpdate()V
    .locals 1

    #@0
    .prologue
    .line 1882
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1883
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStop()V

    #@7
    .line 1884
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@a
    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1887
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStart()V

    #@1d
    .line 1888
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@20
    .line 1881
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ClientInfo[uid="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
