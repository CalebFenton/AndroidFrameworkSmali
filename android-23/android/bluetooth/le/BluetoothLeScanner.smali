.class public final Landroid/bluetooth/le/BluetoothLeScanner;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLeScanner"

.field private static final VDBG:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    #@5
    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@b
    .line 73
    new-instance v0, Landroid/os/Handler;

    #@d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@14
    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    #@16
    .line 74
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@1d
    .line 70
    return-void
.end method

.method private isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 3
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 453
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    #@4
    move-result v0

    #@5
    .line 454
    .local v0, "callbackType":I
    and-int/lit8 v2, v0, 0x2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 455
    and-int/lit8 v2, v0, 0x4

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 457
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@f
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 458
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@17
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isHardwareTrackingFiltersAvailable()Z

    #@1a
    move-result v1

    #@1b
    .line 457
    :cond_1
    return v1

    #@1c
    .line 460
    :cond_2
    const/4 v1, 0x1

    #@1d
    return v1
.end method

.method private isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z
    .locals 5
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v4, 0x0

    #@1
    .line 436
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    #@4
    move-result v0

    #@5
    .line 438
    .local v0, "callbackType":I
    and-int/lit8 v3, v0, 0x6

    #@7
    if-eqz v3, :cond_2

    #@9
    .line 440
    if-nez p2, :cond_0

    #@b
    .line 441
    return v4

    #@c
    .line 443
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "filter$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    #@1c
    .line 444
    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->isAllFieldsEmpty()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 445
    return v4

    #@23
    .line 449
    .end local v1    # "filter":Landroid/bluetooth/le/ScanFilter;
    .end local v2    # "filter$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    #@24
    return v3
.end method

.method private isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 7
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 422
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 423
    return v6

    #@a
    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    #@d
    move-result v0

    #@e
    .line 427
    .local v0, "callbackType":I
    if-ne v0, v6, :cond_1

    #@10
    .line 428
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    #@13
    move-result-wide v2

    #@14
    const-wide/16 v4, 0x0

    #@16
    cmp-long v1, v2, v4

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 429
    return v6

    #@1b
    .line 431
    :cond_1
    const/4 v1, 0x0

    #@1c
    return v1
.end method

.method private postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$1;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 412
    return-void
.end method

.method private startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .locals 9
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p4, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    #@5
    .line 121
    if-eqz p2, :cond_0

    #@7
    if-nez p3, :cond_1

    #@9
    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "settings or callback is null"

    #@e
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 124
    :cond_1
    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@14
    monitor-enter v8

    #@15
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@17
    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 126
    const/4 v1, 0x1

    #@1e
    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v8

    #@22
    .line 127
    return-void

    #@23
    .line 131
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    #@25
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-object v2

    #@29
    .line 135
    :goto_0
    if-nez v2, :cond_3

    #@2b
    .line 136
    const/4 v1, 0x3

    #@2c
    :try_start_2
    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    monitor-exit v8

    #@30
    .line 137
    return-void

    #@31
    .line 132
    :catch_0
    move-exception v7

    #@32
    .line 133
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@33
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    goto :goto_0

    #@34
    .line 139
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_4

    #@3a
    .line 141
    const/4 v1, 0x4

    #@3b
    .line 140
    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    monitor-exit v8

    #@3f
    .line 142
    return-void

    #@40
    .line 144
    :cond_4
    :try_start_4
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_5

    #@46
    .line 146
    const/4 v1, 0x5

    #@47
    .line 145
    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    monitor-exit v8

    #@4b
    .line 147
    return-void

    #@4c
    .line 149
    :cond_5
    :try_start_5
    invoke-direct {p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_6

    #@52
    .line 151
    const/4 v1, 0x4

    #@53
    .line 150
    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@56
    monitor-exit v8

    #@57
    .line 152
    return-void

    #@58
    .line 154
    :cond_6
    :try_start_6
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@5a
    move-object v1, p0

    #@5b
    move-object v3, p1

    #@5c
    move-object v4, p2

    #@5d
    move-object v5, p3

    #@5e
    move-object v6, p4

    #@5f
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    #@62
    .line 156
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->startRegisteration()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@65
    monitor-exit v8

    #@66
    .line 119
    return-void

    #@67
    .line 124
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_0
    move-exception v1

    #@68
    monitor-exit v8

    #@69
    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 226
    return-void
.end method

.method public flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    #@0
    .prologue
    .line 189
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    #@5
    .line 190
    if-nez p1, :cond_0

    #@7
    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "callback cannot be null!"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 193
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@12
    monitor-enter v2

    #@13
    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 195
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v0, :cond_1

    #@1d
    monitor-exit v2

    #@1e
    .line 196
    return-void

    #@1f
    .line 198
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->flushPendingBatchResults()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v2

    #@23
    .line 188
    return-void

    #@24
    .line 193
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public startScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    if-nez p1, :cond_0

    #@3
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "callback is null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 95
    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    #@e
    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    #@11
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    #@18
    .line 91
    return-void
.end method

.method public startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 1
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    #@4
    .line 114
    return-void
.end method

.method public startTruncatedScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 6
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/TruncatedFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 210
    .local p1, "truncatedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TruncatedFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 211
    .local v2, "filterSize":I
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 213
    .local v3, "scanFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@b
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 214
    .local v4, "scanStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/bluetooth/le/TruncatedFilter;

    #@1e
    .line 215
    .local v0, "filter":Landroid/bluetooth/le/TruncatedFilter;
    invoke-virtual {v0}, Landroid/bluetooth/le/TruncatedFilter;->getFilter()Landroid/bluetooth/le/ScanFilter;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 216
    invoke-virtual {v0}, Landroid/bluetooth/le/TruncatedFilter;->getStorageDescriptors()Ljava/util/List;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 218
    .end local v0    # "filter":Landroid/bluetooth/le/TruncatedFilter;
    :cond_0
    invoke-direct {p0, v3, p2, p3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    #@30
    .line 209
    return-void
.end method

.method public stopScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    #@0
    .prologue
    .line 169
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    #@5
    .line 170
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@7
    monitor-enter v2

    #@8
    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    #@a
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@10
    .line 172
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v0, :cond_0

    #@12
    .line 173
    const-string/jumbo v1, "BluetoothLeScanner"

    #@15
    const-string/jumbo v3, "could not find callback wrapper"

    #@18
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 174
    return-void

    #@1d
    .line 176
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 168
    return-void

    #@22
    .line 170
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method
