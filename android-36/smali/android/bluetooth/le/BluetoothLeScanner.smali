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
.field private static final blacklist DBG:Z = true

.field public static final whitelist EXTRA_CALLBACK_TYPE:Ljava/lang/String; = "android.bluetooth.le.extra.CALLBACK_TYPE"

.field public static final whitelist EXTRA_ERROR_CODE:Ljava/lang/String; = "android.bluetooth.le.extra.ERROR_CODE"

.field public static final whitelist EXTRA_LIST_SCAN_RESULT:Ljava/lang/String; = "android.bluetooth.le.extra.LIST_SCAN_RESULT"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeScanClients(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostCallbackError(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/le/BluetoothLeScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-class v0, Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/BluetoothLeScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    .line 103
    return-void
.end method

.method private blacklist isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .registers 5
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .line 634
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 635
    .local v0, "callbackType":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_f

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_e

    goto :goto_f

    .line 641
    :cond_e
    return v2

    .line 638
    :cond_f
    :goto_f
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 639
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isHardwareTrackingFiltersAvailable()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 638
    :goto_21
    return v2
.end method

.method private static blacklist isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z
    .registers 7
    .param p0, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    .line 614
    .local p1, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 616
    .local v0, "callbackType":I
    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_24

    .line 620
    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 621
    return v1

    .line 623
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanFilter;

    .line 624
    .local v3, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter;->isAllFieldsEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 625
    return v1

    .line 627
    .end local v3    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_23
    goto :goto_10

    .line 629
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .registers 8
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .line 600
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 601
    return v1

    .line 603
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 605
    .local v0, "callbackType":I
    if-ne v0, v1, :cond_1b

    .line 606
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 607
    return v1

    .line 609
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$postCallbackError$0(Landroid/bluetooth/le/ScanCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p1, "errorCode"    # I

    .line 596
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    return-void
.end method

.method private blacklist postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .line 596
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    return-void
.end method

.method private blacklist postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .line 586
    if-nez p1, :cond_3

    .line 587
    return p2

    .line 589
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I
    .registers 15
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/app/PendingIntent;",
            ")I"
        }
    .end annotation

    .line 239
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 240
    if-nez p4, :cond_12

    if-eqz p5, :cond_a

    goto :goto_12

    .line 241
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_12
    :goto_12
    if-eqz p2, :cond_92

    .line 246
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v1

    .line 247
    if-eqz p4, :cond_30

    :try_start_19
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    return v0

    .line 278
    :catchall_28
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    goto/16 :goto_8e

    .line 251
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_88

    move-object v4, v0

    .line 252
    .local v4, "scan":Landroid/bluetooth/IBluetoothScan;
    const/4 v2, 0x3

    if-nez v4, :cond_40

    .line 253
    :try_start_3a
    invoke-direct {p0, p4, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_28

    return v0

    .line 255
    :cond_40
    :try_start_40
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_88

    const/4 v3, 0x4

    if-nez v0, :cond_4d

    .line 256
    :try_start_47
    invoke-direct {p0, p4, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_28

    return v0

    .line 259
    :cond_4d
    :try_start_4d
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_88

    if-nez v0, :cond_5a

    .line 260
    const/4 v0, 0x5

    :try_start_54
    invoke-direct {p0, p4, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_28

    return v0

    .line 263
    :cond_5a
    :try_start_5a
    invoke-static {p2, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_88

    if-nez v0, :cond_66

    .line 264
    :try_start_60
    invoke-direct {p0, p4, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I

    move-result v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_28

    return v0

    .line 267
    :cond_66
    if-eqz p4, :cond_76

    .line 268
    :try_start_68
    new-instance v2, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_88

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local p3    # "workSource":Landroid/os/WorkSource;
    .end local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    .local v5, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local v6, "settings":Landroid/bluetooth/le/ScanSettings;
    .local v7, "workSource":Landroid/os/WorkSource;
    .local v8, "callback":Landroid/bluetooth/le/ScanCallback;
    :try_start_6f
    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothScan;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V

    .line 270
    .local v2, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    invoke-virtual {v2}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->startRegistration()V
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_90

    .line 271
    .end local v2    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    goto :goto_81

    .line 273
    .end local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local v7    # "workSource":Landroid/os/WorkSource;
    .end local v8    # "callback":Landroid/bluetooth/le/ScanCallback;
    .restart local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .restart local p3    # "workSource":Landroid/os/WorkSource;
    .restart local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    :cond_76
    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local p3    # "workSource":Landroid/os/WorkSource;
    .end local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    .restart local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    .restart local v7    # "workSource":Landroid/os/WorkSource;
    .restart local v8    # "callback":Landroid/bluetooth/le/ScanCallback;
    :try_start_7b
    iget-object p1, v3, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v4, p5, v6, v5, p1}, Landroid/bluetooth/IBluetoothScan;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_80} :catch_84
    .catchall {:try_start_7b .. :try_end_80} :catchall_90

    .line 276
    nop

    .line 278
    .end local v4    # "scan":Landroid/bluetooth/IBluetoothScan;
    :goto_81
    :try_start_81
    monitor-exit v1

    .line 279
    const/4 p1, 0x0

    return p1

    .line 274
    .restart local v4    # "scan":Landroid/bluetooth/IBluetoothScan;
    :catch_84
    move-exception v0

    move-object p1, v0

    .line 275
    .local p1, "e":Landroid/os/RemoteException;
    monitor-exit v1

    return v2

    .line 278
    .end local v4    # "scan":Landroid/bluetooth/IBluetoothScan;
    .end local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local v7    # "workSource":Landroid/os/WorkSource;
    .end local v8    # "callback":Landroid/bluetooth/le/ScanCallback;
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .restart local p3    # "workSource":Landroid/os/WorkSource;
    .restart local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    :catchall_88
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local p3    # "workSource":Landroid/os/WorkSource;
    .end local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    .restart local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    .restart local v7    # "workSource":Landroid/os/WorkSource;
    .restart local v8    # "callback":Landroid/bluetooth/le/ScanCallback;
    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_90

    throw v0

    :catchall_90
    move-exception v0

    goto :goto_8e

    .line 244
    .end local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local v7    # "workSource":Landroid/os/WorkSource;
    .end local v8    # "callback":Landroid/bluetooth/le/ScanCallback;
    .restart local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .restart local p3    # "workSource":Landroid/os/WorkSource;
    .restart local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    :cond_92
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .restart local v5    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .restart local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "settings is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist cleanup()V
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 378
    return-void
.end method

.method public whitelist flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .line 335
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 336
    if-eqz p1, :cond_1e

    .line 339
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v0

    .line 340
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 341
    .local v1, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v1, :cond_16

    .line 342
    monitor-exit v0

    return-void

    .line 344
    :cond_16
    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->flushPendingBatchResults()V

    .line 345
    .end local v1    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v1

    .line 337
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I
    .registers 11
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/app/PendingIntent;",
            ")I"
        }
    .end annotation

    .line 181
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    nop

    .line 183
    if-eqz p2, :cond_5

    move-object v3, p2

    goto :goto_f

    :cond_5
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    move-object v3, v0

    .line 181
    :goto_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local v6, "callbackIntent":Landroid/app/PendingIntent;
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    move-result p1

    return p1
.end method

.method public whitelist startScan(Landroid/bluetooth/le/ScanCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .line 124
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 125
    return-void
.end method

.method public whitelist startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .registers 10
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 149
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local p3    # "callback":Landroid/bluetooth/le/ScanCallback;
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local v2, "settings":Landroid/bluetooth/le/ScanSettings;
    .local v4, "callback":Landroid/bluetooth/le/ScanCallback;
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    .line 150
    return-void
.end method

.method public whitelist startScanFromSource(Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .registers 5
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 204
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V

    .line 205
    return-void
.end method

.method public whitelist startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .registers 11
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 229
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local p3    # "workSource":Landroid/os/WorkSource;
    .end local p4    # "callback":Landroid/bluetooth/le/ScanCallback;
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local v2, "settings":Landroid/bluetooth/le/ScanSettings;
    .local v3, "workSource":Landroid/os/WorkSource;
    .local v4, "callback":Landroid/bluetooth/le/ScanCallback;
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    .line 230
    return-void
.end method

.method public greylist startTruncatedScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .registers 12
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TruncatedFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    .local p1, "truncatedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TruncatedFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 363
    .local v0, "filterSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v1

    .line 364
    .local v3, "scanFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TruncatedFilter;

    .line 365
    .local v2, "filter":Landroid/bluetooth/le/TruncatedFilter;
    invoke-virtual {v2}, Landroid/bluetooth/le/TruncatedFilter;->getFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v2    # "filter":Landroid/bluetooth/le/TruncatedFilter;
    goto :goto_e

    .line 367
    :cond_22
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v6, p3

    .end local p2    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local p3    # "callback":Landroid/bluetooth/le/ScanCallback;
    .local v4, "settings":Landroid/bluetooth/le/ScanSettings;
    .local v6, "callback":Landroid/bluetooth/le/ScanCallback;
    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;)I

    .line 368
    return-void
.end method

.method public whitelist stopScan(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 310
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 312
    :try_start_5
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v0

    .line 313
    .local v0, "scan":Landroid/bluetooth/IBluetoothScan;
    if-nez v0, :cond_15

    .line 314
    sget-object v1, Landroid/bluetooth/le/BluetoothLeScanner;->TAG:Ljava/lang/String;

    const-string v2, "stopScan called after bluetooth has been turned off"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_15
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothScan;->stopScanForIntent(Landroid/app/PendingIntent;Landroid/content/AttributionSource;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 320
    .end local v0    # "scan":Landroid/bluetooth/IBluetoothScan;
    goto :goto_23

    .line 318
    :catch_1b
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/le/BluetoothLeScanner;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop scan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public whitelist stopScan(Landroid/bluetooth/le/ScanCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .line 287
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 288
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v0

    .line 289
    :try_start_8
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 290
    .local v1, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v1, :cond_1b

    .line 291
    sget-object v2, Landroid/bluetooth/le/BluetoothLeScanner;->TAG:Ljava/lang/String;

    const-string v3, "could not find callback wrapper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v0

    return-void

    .line 294
    :cond_1b
    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V

    .line 295
    .end local v1    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v1
.end method
