.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0x10


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private mFullScanRequested:Z

.field private final mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

.field mHotlistSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field mScanPeriods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScanSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkReported:Z

.field mSignificantWifiHandlers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I

.field private final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "uid"    # I
    .param p3, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p4, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    const/4 v3, 0x0

    #@2
    .line 567
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 564
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@9
    .line 565
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanRequested:Z

    #@b
    .line 667
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@12
    .line 668
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@17
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanPeriods:Ljava/util/HashMap;

    #@19
    .line 809
    new-instance v0, Ljava/util/HashMap;

    #@1b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1e
    .line 808
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    #@20
    .line 863
    new-instance v0, Ljava/util/HashSet;

    #@22
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@27
    .line 568
    iput-object p3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@29
    .line 569
    iput-object p4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@2b
    .line 570
    iput p2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2d
    .line 571
    new-instance v0, Landroid/os/WorkSource;

    #@2f
    const-string/jumbo v1, "WifiScanningService"

    #@32
    invoke-direct {v0, p2, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    #@35
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@37
    .line 572
    invoke-static {p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/os/PowerManager;

    #@3a
    move-result-object v0

    #@3b
    .line 573
    const-string/jumbo v1, "WifiScan"

    #@3e
    .line 572
    const/4 v2, 0x1

    #@3f
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

    #@45
    .line 574
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

    #@47
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@4a
    .line 575
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4c
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@4e
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@51
    .line 567
    return-void
.end method


# virtual methods
.method addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 811
    return-void
.end method

.method addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 672
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanWorkUpdate()V

    #@c
    .line 670
    return-void
.end method

.method addSignificantWifiChange(I)V
    .locals 2
    .param p1, "handler"    # I

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9
    .line 864
    return-void
.end method

.method cleanup()V
    .locals 4

    #@0
    .prologue
    .line 899
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@5
    .line 900
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@7
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    #@a
    .line 902
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@f
    .line 903
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@11
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    #@14
    .line 905
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "handler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/Integer;

    #@26
    .line 906
    .local v0, "handler":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    #@2f
    goto :goto_0

    #@30
    .line 909
    .end local v0    # "handler":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@32
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    #@35
    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "Successfully stopped all requests for client "

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@4c
    .line 898
    return-void
.end method

.method deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "handler"    # I
    .param p2, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 765
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@2
    invoke-direct {v0, p2}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@5
    .line 766
    .local v0, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@7
    const v2, 0x27005

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@e
    .line 763
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 652
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 654
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@e
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .line 655
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 656
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 657
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    const-string/jumbo v4, "ScanId "

    #@25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, "\n"

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 659
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3d
    .line 660
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 661
    const-string/jumbo v4, "\n"

    #@47
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_0

    #@4b
    .line 664
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 650
    return-void
.end method

.method getCsph()I
    .locals 7

    #@0
    .prologue
    .line 606
    const/4 v0, 0x0

    #@1
    .line 607
    .local v0, "csph":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    #@4
    move-result-object v5

    #@5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v4

    #@9
    .local v4, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_3

    #@f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@15
    .line 608
    .local v3, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@17
    if-nez v5, :cond_1

    #@19
    const/4 v1, 0x0

    #@1a
    .line 609
    .local v1, "num_channels":I
    :goto_1
    if-nez v1, :cond_0

    #@1c
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 610
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@22
    invoke-static {v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@25
    move-result-object v5

    #@26
    array-length v1, v5

    #@27
    .line 613
    :cond_0
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@29
    if-nez v5, :cond_2

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 614
    .local v2, "scans_per_Hour":I
    :goto_2
    mul-int v5, v1, v2

    #@2e
    add-int/2addr v0, v5

    #@2f
    goto :goto_0

    #@30
    .line 608
    .end local v1    # "num_channels":I
    .end local v2    # "scans_per_Hour":I
    :cond_1
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@32
    array-length v1, v5

    #@33
    .restart local v1    # "num_channels":I
    goto :goto_1

    #@34
    .line 613
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@36
    const v6, 0x36ee80

    #@39
    div-int v2, v6, v5

    #@3b
    .restart local v2    # "scans_per_Hour":I
    goto :goto_2

    #@3c
    .line 617
    .end local v1    # "num_channels":I
    .end local v2    # "scans_per_Hour":I
    .end local v3    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_3
    return v0
.end method

.method getHotlistSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getScanSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getScans()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method getWifiChangeHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method removeHostlistSettings(I)V
    .locals 2
    .param p1, "handler"    # I

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 815
    return-void
.end method

.method removeScanRequest(I)V
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 676
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@d
    .line 677
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v0, :cond_0

    #@f
    iget v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@11
    if-nez v1, :cond_0

    #@13
    .line 679
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@15
    const v2, 0x27017

    #@18
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1b
    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanWorkUpdate()V

    #@1e
    .line 675
    return-void
.end method

.method removeSignificantWifiChange(I)V
    .locals 2
    .param p1, "handler"    # I

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@9
    .line 868
    return-void
.end method

.method reportBatchedScanStart()V
    .locals 4

    #@0
    .prologue
    .line 580
    iget v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 581
    return-void

    #@5
    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getCsph()I

    #@8
    move-result v0

    #@9
    .line 586
    .local v0, "csph":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@b
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@11
    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    #@14
    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "started scanning for UID "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, ", csph = "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 579
    :goto_0
    return-void

    #@39
    .line 588
    :catch_0
    move-exception v1

    #@3a
    .line 589
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "failed to report scan work: "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap6(Ljava/lang/String;)V

    #@55
    goto :goto_0
.end method

.method reportBatchedScanStop()V
    .locals 3

    #@0
    .prologue
    .line 594
    iget v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 595
    return-void

    #@5
    .line 598
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@7
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    #@d
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@10
    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "stopped scanning for UID "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 593
    :goto_0
    return-void

    #@2a
    .line 600
    :catch_0
    move-exception v0

    #@2b
    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "failed to cleanup scan work: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap6(Ljava/lang/String;)V

    #@46
    goto :goto_0
.end method

.method reportFullScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 12
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 770
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6
    move-result-object v7

    #@7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .line 771
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    #@c
    .line 772
    .local v5, "reportedFullScanResult":Z
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_5

    #@12
    .line 773
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v7

    #@16
    check-cast v7, Ljava/lang/Integer;

    #@18
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v2

    #@1c
    .line 774
    .local v2, "handler":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@28
    .line 775
    .local v6, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v1, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2a
    .line 776
    .local v1, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2c
    if-nez v7, :cond_1

    #@2e
    .line 777
    if-nez v1, :cond_4

    #@30
    .line 778
    :cond_1
    :goto_0
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@32
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@35
    move-result-object v1

    #@36
    .line 780
    :cond_2
    array-length v10, v1

    #@37
    move v8, v9

    #@38
    :goto_1
    if-ge v8, v10, :cond_0

    #@3a
    aget-object v0, v1, v8

    #@3c
    .line 781
    .local v0, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v7, v0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@3e
    iget v11, p1, Landroid/net/wifi/ScanResult;->frequency:I

    #@40
    if-ne v7, v11, :cond_3

    #@42
    .line 782
    new-instance v4, Landroid/net/wifi/ScanResult;

    #@44
    invoke-direct {v4, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@47
    .line 784
    .local v4, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v7, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@49
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4c
    move-result-object v7

    #@4d
    check-cast v7, [Landroid/net/wifi/ScanResult$InformationElement;

    #@4f
    iput-object v7, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@51
    .line 785
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@53
    .line 786
    const v11, 0x27014

    #@56
    .line 785
    invoke-virtual {v7, v11, v9, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@59
    .line 787
    const/4 v5, 0x1

    #@5a
    .line 780
    .end local v4    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v7, v8, 0x1

    #@5c
    move v8, v7

    #@5d
    goto :goto_1

    #@5e
    .line 777
    .end local v0    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_4
    array-length v7, v1

    #@5f
    if-nez v7, :cond_2

    #@61
    goto :goto_0

    #@62
    .line 791
    .end local v1    # "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v2    # "handler":I
    .end local v6    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanRequested:Z

    #@64
    if-eqz v7, :cond_6

    #@66
    if-eqz v5, :cond_6

    #@68
    .line 792
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6a
    const-wide/16 v8, 0x1388

    #@6c
    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@6f
    .line 769
    :cond_6
    return-void
.end method

.method reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V
    .locals 18
    .param p1, "what"    # I
    .param p2, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 825
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    #@4
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v11

    #@8
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v5

    #@c
    .line 826
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v11

    #@10
    if-eqz v11, :cond_7

    #@12
    .line 827
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/Map$Entry;

    #@18
    .line 828
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1b
    move-result-object v11

    #@1c
    check-cast v11, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v3

    #@22
    .line 829
    .local v3, "handler":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v10

    #@26
    check-cast v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@28
    .line 830
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v6, 0x0

    #@29
    .line 831
    .local v6, "num_results":I
    const/4 v11, 0x0

    #@2a
    move-object/from16 v0, p2

    #@2c
    array-length v13, v0

    #@2d
    move v12, v11

    #@2e
    :goto_1
    if-ge v12, v13, :cond_2

    #@30
    aget-object v8, p2, v12

    #@32
    .line 832
    .local v8, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@34
    const/4 v11, 0x0

    #@35
    array-length v15, v14

    #@36
    :goto_2
    if-ge v11, v15, :cond_0

    #@38
    aget-object v1, v14, v11

    #@3a
    .line 833
    .local v1, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v0, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@3c
    move-object/from16 v16, v0

    #@3e
    iget-object v0, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@40
    move-object/from16 v17, v0

    #@42
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v16

    #@46
    if-eqz v16, :cond_1

    #@48
    .line 834
    add-int/lit8 v6, v6, 0x1

    #@4a
    .line 831
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    add-int/lit8 v11, v12, 0x1

    #@4c
    move v12, v11

    #@4d
    goto :goto_1

    #@4e
    .line 832
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@50
    goto :goto_2

    #@51
    .line 840
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    if-nez v6, :cond_3

    #@53
    .line 842
    return-void

    #@54
    .line 845
    :cond_3
    new-array v9, v6, [Landroid/net/wifi/ScanResult;

    #@56
    .line 846
    .local v9, "results2":[Landroid/net/wifi/ScanResult;
    const/4 v4, 0x0

    #@57
    .line 847
    .local v4, "index":I
    const/4 v11, 0x0

    #@58
    move-object/from16 v0, p2

    #@5a
    array-length v13, v0

    #@5b
    move v12, v11

    #@5c
    :goto_3
    if-ge v12, v13, :cond_6

    #@5e
    aget-object v8, p2, v12

    #@60
    .line 848
    .restart local v8    # "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@62
    const/4 v11, 0x0

    #@63
    array-length v15, v14

    #@64
    :goto_4
    if-ge v11, v15, :cond_5

    #@66
    aget-object v1, v14, v11

    #@68
    .line 849
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v0, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@6a
    move-object/from16 v16, v0

    #@6c
    iget-object v0, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@6e
    move-object/from16 v17, v0

    #@70
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@73
    move-result v16

    #@74
    if-eqz v16, :cond_4

    #@76
    .line 850
    aput-object v8, v9, v4

    #@78
    .line 851
    add-int/lit8 v4, v4, 0x1

    #@7a
    .line 848
    :cond_4
    add-int/lit8 v11, v11, 0x1

    #@7c
    goto :goto_4

    #@7d
    .line 847
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_5
    add-int/lit8 v11, v12, 0x1

    #@7f
    move v12, v11

    #@80
    goto :goto_3

    #@81
    .line 857
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    new-instance v7, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@83
    invoke-direct {v7, v9}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@86
    .line 859
    .local v7, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    move-object/from16 v0, p0

    #@88
    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@8a
    const/4 v12, 0x0

    #@8b
    move/from16 v0, p1

    #@8d
    invoke-virtual {v11, v0, v12, v3, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@90
    goto/16 :goto_0

    #@92
    .line 823
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v3    # "handler":I
    .end local v4    # "index":I
    .end local v6    # "num_results":I
    .end local v7    # "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .end local v9    # "results2":[Landroid/net/wifi/ScanResult;
    .end local v10    # "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_7
    return-void
.end method

.method reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 4
    .param p1, "handler"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "newPeriodInMs"    # I

    #@0
    .prologue
    .line 797
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanPeriods:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/Integer;

    #@c
    .line 798
    .local v1, "prevPeriodObject":Ljava/lang/Integer;
    iget v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@e
    .line 799
    .local v0, "prevPeriodInMs":I
    if-eqz v1, :cond_0

    #@10
    .line 800
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    .line 803
    :cond_0
    if-eq v0, p3, :cond_1

    #@16
    .line 804
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@18
    const v3, 0x27013

    #@1b
    invoke-virtual {v2, v3, p3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1e
    .line 796
    :cond_1
    return-void
.end method

.method reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 693
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .line 694
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 695
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/Integer;

    #@16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v0

    #@1a
    .line 696
    .local v0, "handler":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;I)V

    #@1d
    goto :goto_0

    #@1e
    .line 692
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 20
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 701
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v12

    #@8
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v10

    #@c
    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@e
    .line 702
    .local v10, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v4, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@10
    .line 703
    .local v4, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@12
    if-nez v11, :cond_0

    #@14
    .line 704
    if-nez v4, :cond_4

    #@16
    .line 705
    :cond_0
    :goto_0
    iget v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@18
    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@1b
    move-result-object v4

    #@1c
    .line 709
    :cond_1
    const/4 v6, 0x0

    #@1d
    .line 710
    .local v6, "num_results":I
    const/4 v11, 0x0

    #@1e
    move-object/from16 v0, p1

    #@20
    array-length v14, v0

    #@21
    move v13, v11

    #@22
    :goto_1
    if-ge v13, v14, :cond_7

    #@24
    aget-object v7, p1, v13

    #@26
    .line 711
    .local v7, "result":Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v3, 0x0

    #@27
    .line 712
    .local v3, "copyScanData":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@2a
    move-result-object v15

    #@2b
    const/4 v11, 0x0

    #@2c
    array-length v0, v15

    #@2d
    move/from16 v16, v0

    #@2f
    move v12, v11

    #@30
    :goto_2
    move/from16 v0, v16

    #@32
    if-ge v12, v0, :cond_3

    #@34
    aget-object v9, v15, v12

    #@36
    .line 713
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    #@37
    array-length v0, v4

    #@38
    move/from16 v17, v0

    #@3a
    :goto_3
    move/from16 v0, v17

    #@3c
    if-ge v11, v0, :cond_2

    #@3e
    aget-object v2, v4, v11

    #@40
    .line 714
    .local v2, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v0, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@42
    move/from16 v18, v0

    #@44
    iget v0, v9, Landroid/net/wifi/ScanResult;->frequency:I

    #@46
    move/from16 v19, v0

    #@48
    move/from16 v0, v18

    #@4a
    move/from16 v1, v19

    #@4c
    if-ne v0, v1, :cond_5

    #@4e
    .line 715
    const/4 v3, 0x1

    #@4f
    .line 719
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_2
    if-eqz v3, :cond_6

    #@51
    .line 720
    add-int/lit8 v6, v6, 0x1

    #@53
    .line 710
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v11, v13, 0x1

    #@55
    move v13, v11

    #@56
    goto :goto_1

    #@57
    .line 704
    .end local v3    # "copyScanData":Z
    .end local v6    # "num_results":I
    .end local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_4
    array-length v11, v4

    #@58
    if-nez v11, :cond_1

    #@5a
    goto :goto_0

    #@5b
    .line 713
    .restart local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v3    # "copyScanData":Z
    .restart local v6    # "num_results":I
    .restart local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    #@5d
    goto :goto_3

    #@5e
    .line 712
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_6
    add-int/lit8 v11, v12, 0x1

    #@60
    move v12, v11

    #@61
    goto :goto_2

    #@62
    .line 726
    .end local v3    # "copyScanData":Z
    .end local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v12, "results = "

    #@6a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    move-object/from16 v0, p1

    #@70
    array-length v12, v0

    #@71
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v11

    #@75
    const-string/jumbo v12, ", num_results = "

    #@78
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v11

    #@7c
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v11

    #@80
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v11

    #@84
    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@87
    .line 728
    new-array v8, v6, [Landroid/net/wifi/WifiScanner$ScanData;

    #@89
    .line 729
    .local v8, "results2":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v5, 0x0

    #@8a
    .line 730
    .local v5, "index":I
    const/4 v11, 0x0

    #@8b
    move-object/from16 v0, p1

    #@8d
    array-length v14, v0

    #@8e
    move v13, v11

    #@8f
    :goto_4
    if-ge v13, v14, :cond_d

    #@91
    aget-object v7, p1, v13

    #@93
    .line 731
    .restart local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v3, 0x0

    #@94
    .line 732
    .restart local v3    # "copyScanData":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@97
    move-result-object v15

    #@98
    const/4 v11, 0x0

    #@99
    array-length v0, v15

    #@9a
    move/from16 v16, v0

    #@9c
    move v12, v11

    #@9d
    :goto_5
    move/from16 v0, v16

    #@9f
    if-ge v12, v0, :cond_9

    #@a1
    aget-object v9, v15, v12

    #@a3
    .line 733
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    #@a4
    array-length v0, v4

    #@a5
    move/from16 v17, v0

    #@a7
    :goto_6
    move/from16 v0, v17

    #@a9
    if-ge v11, v0, :cond_8

    #@ab
    aget-object v2, v4, v11

    #@ad
    .line 734
    .restart local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v0, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@af
    move/from16 v18, v0

    #@b1
    iget v0, v9, Landroid/net/wifi/ScanResult;->frequency:I

    #@b3
    move/from16 v19, v0

    #@b5
    move/from16 v0, v18

    #@b7
    move/from16 v1, v19

    #@b9
    if-ne v0, v1, :cond_b

    #@bb
    .line 735
    const/4 v3, 0x1

    #@bc
    .line 739
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_8
    if-eqz v3, :cond_c

    #@be
    .line 744
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_9
    if-eqz v3, :cond_a

    #@c0
    .line 748
    new-instance v11, Landroid/net/wifi/WifiScanner$ScanData;

    #@c2
    invoke-direct {v11, v7}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(Landroid/net/wifi/WifiScanner$ScanData;)V

    #@c5
    aput-object v11, v8, v5

    #@c7
    .line 749
    add-int/lit8 v5, v5, 0x1

    #@c9
    .line 730
    :cond_a
    add-int/lit8 v11, v13, 0x1

    #@cb
    move v13, v11

    #@cc
    goto :goto_4

    #@cd
    .line 733
    .restart local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    #@cf
    goto :goto_6

    #@d0
    .line 732
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_c
    add-int/lit8 v11, v12, 0x1

    #@d2
    move v12, v11

    #@d3
    goto :goto_5

    #@d4
    .line 753
    .end local v3    # "copyScanData":Z
    .end local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v12, "delivering results, num = "

    #@dc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v11

    #@e0
    array-length v12, v8

    #@e1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v11

    #@e5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v11

    #@e9
    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@ec
    .line 755
    move-object/from16 v0, p0

    #@ee
    move/from16 v1, p2

    #@f0
    invoke-virtual {v0, v1, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V

    #@f3
    .line 756
    iget v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@f5
    if-nez v11, :cond_e

    #@f7
    .line 758
    move-object/from16 v0, p0

    #@f9
    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@fb
    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@fe
    move-result-object v11

    #@ff
    const v12, 0x2710a

    #@102
    const/4 v13, 0x0

    #@103
    move/from16 v0, p2

    #@105
    move-object/from16 v1, p0

    #@107
    invoke-virtual {v11, v12, v13, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@10a
    .line 760
    :cond_e
    move-object/from16 v0, p0

    #@10c
    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10e
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    #@111
    .line 700
    return-void
.end method

.method reportScanWorkUpdate()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 621
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 622
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStop()V

    #@9
    .line 623
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@b
    .line 624
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanRequested:Z

    #@d
    .line 626
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    #@f
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_3

    #@15
    .line 627
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStart()V

    #@18
    .line 628
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    #@1a
    .line 630
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "settings$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@2e
    .line 631
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@30
    const/4 v3, 0x2

    #@31
    if-ne v2, v3, :cond_1

    #@33
    .line 632
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanRequested:Z

    #@35
    goto :goto_0

    #@36
    .line 636
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanRequested:Z

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 637
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mFullScanWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3c
    const-wide/16 v4, 0x1388

    #@3e
    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@41
    .line 620
    .end local v1    # "settings$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 878
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@2
    invoke-direct {v2, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@5
    .line 879
    .local v2, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@7
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 880
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/lang/Integer;

    #@17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    .line 882
    .local v0, "handler":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@1d
    const v4, 0x2700f

    #@20
    .line 883
    const/4 v5, 0x0

    #@21
    .line 882
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@24
    goto :goto_0

    #@25
    .line 876
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 889
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@2
    invoke-direct {v2, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@5
    .line 890
    .local v2, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    #@7
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 891
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 892
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/lang/Integer;

    #@17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    .line 893
    .local v0, "handler":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@1d
    const v4, 0x27010

    #@20
    .line 894
    const/4 v5, 0x0

    #@21
    .line 893
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@24
    goto :goto_0

    #@25
    .line 887
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 645
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mChannel "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\n"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 646
    const-string/jumbo v1, "mMessenger "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@24
    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method
