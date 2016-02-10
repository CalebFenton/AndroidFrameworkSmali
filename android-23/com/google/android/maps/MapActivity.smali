.class public abstract Lcom/google/android/maps/MapActivity;
.super Landroid/app/Activity;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapActivity$1;
    }
.end annotation


# static fields
.field protected static final MAP_DATA_SOURCE_CHINA:I = 0x1

.field protected static final MAP_DATA_SOURCE_DEFAULT:I

.field private static final drawableIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/maps/MapActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sMapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/com/google/googlenav/map/Map;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfig:Landroid/com/google/common/android/AndroidConfig;

.field private mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private mMap:Landroid/com/google/googlenav/map/Map;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private final mNetworkHandler:Landroid/os/Handler;

.field private mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

.field private mTrafficService:Landroid/com/google/googlenav/map/TrafficService;


# direct methods
.method static synthetic -get0(Lcom/google/android/maps/MapActivity;)Landroid/com/google/common/android/AndroidConfig;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid/com/google/common/android/AndroidConfig;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/google/android/maps/MapActivity;)Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 296
    new-instance v0, Ljava/util/HashMap;

    #@3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@6
    sput-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    #@8
    .line 297
    sget-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    #@a
    const-string/jumbo v1, "loading_tile_android"

    #@d
    sget v2, Lcom/google/android/maps/InternalR$drawable;->loading_tile_android:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 298
    sget-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    #@18
    const-string/jumbo v1, "no_tile_256"

    #@1b
    sget v2, Lcom/google/android/maps/InternalR$drawable;->no_tile_256:I

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 346
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@26
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@29
    .line 345
    sput-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    #@2b
    .line 354
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2d
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@30
    .line 353
    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@32
    .line 274
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 274
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 309
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@6
    .line 356
    new-instance v0, Lcom/google/android/maps/MapActivity$1;

    #@8
    invoke-direct {v0, p0}, Lcom/google/android/maps/MapActivity$1;-><init>(Lcom/google/android/maps/MapActivity;)V

    #@b
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    #@d
    .line 274
    return-void
.end method

.method private createMap()V
    .locals 14

    #@0
    .prologue
    .line 530
    invoke-static {}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@6
    .line 531
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 532
    const-string/jumbo v0, "MapActivity"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Recycling dispatcher "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 533
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@28
    invoke-virtual {v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->resetConnectionFactory()V

    #@2b
    .line 554
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2e
    move-result-object v0

    #@2f
    .line 555
    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 554
    invoke-static {v0, v1}, Lcom/google/android/maps/KeyHelper;->getSignatureFingerprint(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v10

    #@37
    .line 556
    .local v10, "signature":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@39
    invoke-virtual {v0, v10}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidSignature(Ljava/lang/String;)V

    #@3c
    .line 557
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3e
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->setApplicationName(Ljava/lang/String;)V

    #@49
    .line 560
    const/4 v4, 0x0

    #@4a
    .line 561
    .local v4, "startPoint":Landroid/com/google/map/MapPoint;
    const/4 v5, 0x0

    #@4b
    .line 564
    .local v5, "zoom":Landroid/com/google/map/Zoom;
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    #@4e
    move-result-object v0

    #@4f
    .line 565
    sget v1, Lcom/google/android/maps/InternalR$array;->maps_starting_lat_lng:I

    #@51
    .line 564
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@54
    move-result-object v11

    #@55
    .line 566
    .local v11, "startingLatLng":[I
    new-instance v4, Landroid/com/google/map/MapPoint;

    #@57
    .end local v4    # "startPoint":Landroid/com/google/map/MapPoint;
    const/4 v0, 0x0

    #@58
    aget v0, v11, v0

    #@5a
    const/4 v1, 0x1

    #@5b
    aget v1, v11, v1

    #@5d
    invoke-direct {v4, v0, v1}, Landroid/com/google/map/MapPoint;-><init>(II)V

    #@60
    .line 567
    .local v4, "startPoint":Landroid/com/google/map/MapPoint;
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    #@63
    move-result-object v0

    #@64
    .line 568
    sget v1, Lcom/google/android/maps/InternalR$array;->maps_starting_zoom:I

    #@66
    .line 567
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@69
    move-result-object v12

    #@6a
    .line 569
    .local v12, "startingZoom":[I
    const/4 v0, 0x0

    #@6b
    aget v0, v12, v0

    #@6d
    invoke-static {v0}, Landroid/com/google/map/Zoom;->getZoom(I)Landroid/com/google/map/Zoom;

    #@70
    move-result-object v5

    #@71
    .line 571
    .local v5, "zoom":Landroid/com/google/map/Zoom;
    sget-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    #@73
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@76
    move-result-object v0

    #@77
    check-cast v0, Landroid/com/google/googlenav/map/Map;

    #@79
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@7b
    .line 572
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@7d
    if-nez v0, :cond_1

    #@7f
    .line 573
    new-instance v0, Landroid/com/google/googlenav/map/Map;

    #@81
    const/4 v1, -0x1

    #@82
    .line 574
    const/4 v2, -0x1

    #@83
    .line 575
    const v3, 0x64000

    #@86
    .line 578
    const/16 v6, 0xa

    #@88
    .line 573
    invoke-direct/range {v0 .. v6}, Landroid/com/google/googlenav/map/Map;-><init>(IIILandroid/com/google/map/MapPoint;Landroid/com/google/map/Zoom;I)V

    #@8b
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@8d
    .line 583
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@8f
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@91
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@94
    sput-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    #@96
    .line 584
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@98
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9b
    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@9d
    .line 586
    new-instance v0, Landroid/com/google/googlenav/map/TrafficService;

    #@9f
    const-wide/32 v2, 0x1d4c0

    #@a2
    invoke-static {}, Landroid/com/google/googlenav/android/TaskRunnerManager;->getTaskRunner()Landroid/com/google/common/task/TaskRunner;

    #@a5
    move-result-object v1

    #@a6
    invoke-direct {v0, v2, v3, v1}, Landroid/com/google/googlenav/map/TrafficService;-><init>(JLandroid/com/google/common/task/TaskRunner;)V

    #@a9
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid/com/google/googlenav/map/TrafficService;

    #@ab
    .line 529
    return-void

    #@ac
    .line 535
    .end local v4    # "startPoint":Landroid/com/google/map/MapPoint;
    .end local v5    # "zoom":Landroid/com/google/map/Zoom;
    .end local v10    # "signature":Ljava/lang/String;
    .end local v11    # "startingLatLng":[I
    .end local v12    # "startingZoom":[I
    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->getServerUrl()Ljava/lang/String;

    #@af
    move-result-object v9

    #@b0
    .line 536
    .local v9, "serverUrl":Ljava/lang/String;
    const-string/jumbo v13, "1.6"

    #@b3
    .line 537
    .local v13, "version":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@b5
    const-string/jumbo v1, "android:"

    #@b8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@bb
    .line 538
    const-string/jumbo v1, "ro.product.brand"

    #@be
    const-string/jumbo v2, "unknown"

    #@c1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c4
    move-result-object v1

    #@c5
    .line 539
    const/16 v2, 0x2d

    #@c7
    const/16 v3, 0x5f

    #@c9
    .line 538
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    .line 540
    const-string/jumbo v1, "-"

    #@d4
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    .line 541
    const-string/jumbo v1, "ro.product.device"

    #@db
    const-string/jumbo v2, "unknown"

    #@de
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    const/16 v2, 0x2d

    #@e4
    const/16 v3, 0x5f

    #@e6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    .line 542
    const-string/jumbo v1, "-"

    #@f1
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v0

    #@f5
    .line 543
    const-string/jumbo v1, "ro.product.model"

    #@f8
    const-string/jumbo v2, "unknown"

    #@fb
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    const/16 v2, 0x2d

    #@101
    const/16 v3, 0x5f

    #@103
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@106
    move-result-object v1

    #@107
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v0

    #@10b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v8

    #@10f
    .line 545
    .local v8, "platformId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@112
    move-result-object v0

    #@113
    .line 546
    const-string/jumbo v1, "client_id"

    #@116
    const-string/jumbo v2, "unknown"

    #@119
    .line 545
    invoke-static {v0, v1, v2}, Landroid/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11c
    move-result-object v7

    #@11d
    .line 548
    .local v7, "distChannel":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v1, "gmm-"

    #@125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v0

    #@129
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v0

    #@12d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v7

    #@131
    .line 551
    const/4 v0, 0x1

    #@132
    .line 550
    invoke-static {v9, v8, v13, v7, v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@135
    move-result-object v0

    #@136
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@138
    goto/16 :goto_0

    #@13a
    .line 581
    .end local v7    # "distChannel":Ljava/lang/String;
    .end local v8    # "platformId":Ljava/lang/String;
    .end local v9    # "serverUrl":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    .restart local v4    # "startPoint":Landroid/com/google/map/MapPoint;
    .restart local v5    # "zoom":Landroid/com/google/map/Zoom;
    .restart local v10    # "signature":Ljava/lang/String;
    .restart local v11    # "startingLatLng":[I
    .restart local v12    # "startingZoom":[I
    :cond_1
    const-string/jumbo v0, "MapActivity"

    #@13d
    const-string/jumbo v1, "Recycling map object."

    #@140
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@143
    goto/16 :goto_1
.end method

.method private getServerUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->onGetMapDataSource()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 520
    const-string/jumbo v0, "http://www.google.com/glm/mmap/a"

    #@a
    return-object v0

    #@b
    .line 518
    :pswitch_0
    const-string/jumbo v0, "http://www.google.cn/glm/mmap/a"

    #@e
    return-object v0

    #@f
    .line 516
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreGlobalState()V
    .locals 2

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid/com/google/common/android/AndroidConfig;

    #@2
    invoke-static {v0}, Landroid/com/google/common/Config;->setConfig(Landroid/com/google/common/Config;)V

    #@5
    .line 467
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@7
    invoke-virtual {v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->resetConnectionFactory()V

    #@a
    .line 468
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 469
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@10
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@12
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->restoreMapReferences(Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@15
    .line 465
    :cond_0
    return-void
.end method

.method private sendStartSession()V
    .locals 9

    #@0
    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v4

    #@4
    if-eqz v4, :cond_0

    #@6
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@9
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getIntent()Landroid/content/Intent;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 653
    :cond_0
    const/4 v3, 0x0

    #@18
    .line 656
    .local v3, "startType":I
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@1a
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1d
    .line 657
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@1f
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@22
    .line 658
    .local v1, "dataOut":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@25
    .line 659
    invoke-static {}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@28
    move-result-object v4

    #@29
    .line 661
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2c
    move-result-object v5

    #@2d
    .line 660
    const/16 v6, 0x10

    #@2f
    .line 661
    const/4 v7, 0x0

    #@30
    const/4 v8, 0x0

    #@31
    .line 659
    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 648
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dataOut":Ljava/io/DataOutputStream;
    :goto_1
    return-void

    #@35
    .line 651
    .end local v3    # "startType":I
    :cond_1
    const/4 v3, 0x1

    #@36
    .line 650
    .restart local v3    # "startType":I
    goto :goto_0

    #@37
    .line 662
    :catch_0
    move-exception v2

    #@38
    .line 664
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MapActivity"

    #@3b
    const-string/jumbo v5, "Error sending start session request"

    #@3e
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_1
.end method

.method private setupTileDensity()V
    .locals 2

    #@0
    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@a
    const/16 v1, 0xc8

    #@c
    if-le v0, v1, :cond_0

    #@e
    .line 432
    const/4 v0, 0x3

    #@f
    invoke-static {v0}, Landroid/com/google/googlenav/map/MapTile;->setTextSize(I)V

    #@12
    .line 430
    :cond_0
    return-void
.end method


# virtual methods
.method protected isLocationDisplayed()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 631
    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@3
    if-nez v3, :cond_0

    #@5
    return v4

    #@6
    .line 633
    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@8
    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    .line 634
    .local v2, "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    monitor-enter v2

    #@d
    .line 635
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "overlay$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/google/android/maps/Overlay;

    #@1d
    .line 636
    .local v0, "overlay":Lcom/google/android/maps/Overlay;
    instance-of v3, v0, Lcom/google/android/maps/MyLocationOverlay;

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 637
    check-cast v0, Lcom/google/android/maps/MyLocationOverlay;

    #@23
    .end local v0    # "overlay":Lcom/google/android/maps/Overlay;
    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    .line 636
    if-eqz v3, :cond_1

    #@29
    .line 638
    const/4 v3, 0x1

    #@2a
    monitor-exit v2

    #@2b
    return v3

    #@2c
    :cond_2
    monitor-exit v2

    #@2d
    .line 642
    return v4

    #@2e
    .line 634
    .end local v1    # "overlay$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v2

    #@30
    throw v3
.end method

.method protected abstract isRouteDisplayed()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 418
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener;

    #@5
    invoke-direct {v0}, Lcom/google/android/maps/NetworkConnectivityListener;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@a
    .line 419
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@c
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    #@12
    .line 421
    new-instance v0, Landroid/com/google/common/android/AndroidConfig;

    #@14
    invoke-direct {v0, p0}, Landroid/com/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    #@17
    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid/com/google/common/android/AndroidConfig;

    #@19
    .line 422
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid/com/google/common/android/AndroidConfig;

    #@1b
    invoke-virtual {v0}, Landroid/com/google/common/android/AndroidConfig;->getImageFactory()Landroid/com/google/common/graphics/android/AndroidImageFactory;

    #@1e
    move-result-object v0

    #@1f
    sget-object v1, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    #@21
    invoke-virtual {v0, v1}, Landroid/com/google/common/graphics/android/AndroidImageFactory;->setStringIdMap(Ljava/util/Map;)V

    #@24
    .line 423
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->setupTileDensity()V

    #@27
    .line 424
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->createMap()V

    #@2a
    .line 425
    if-nez p1, :cond_0

    #@2c
    .line 426
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->sendStartSession()V

    #@2f
    .line 415
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 497
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@4
    .line 498
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 499
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@a
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->cleanupMapReferences(Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@f
    .line 501
    :cond_0
    sget-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@11
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    if-ne v0, p0, :cond_1

    #@17
    .line 502
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@19
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    #@1b
    invoke-virtual {v0, v1}, Lcom/google/android/maps/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    #@1e
    .line 503
    iput-object v2, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@20
    .line 504
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid/com/google/googlenav/map/TrafficService;

    #@22
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/TrafficService;->close()V

    #@25
    .line 505
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@27
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/map/Map;->close(Z)V

    #@2b
    .line 509
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid/com/google/common/android/AndroidConfig;

    #@2d
    invoke-virtual {v0}, Landroid/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Landroid/com/google/common/io/android/AndroidHttpConnectionFactory;->close()V

    #@34
    .line 496
    return-void

    #@35
    .line 507
    :cond_1
    const-string/jumbo v0, "MapActivity"

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "onDestroy leaving the lights on for "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    sget-object v2, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@46
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    goto :goto_0
.end method

.method protected onGetMapDataSource()I
    .locals 1

    #@0
    .prologue
    .line 682
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    #@3
    .line 438
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->sendStartSession()V

    #@6
    .line 436
    return-void
.end method

.method protected onPause()V
    .locals 3

    #@0
    .prologue
    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    .line 481
    sget-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-ne v0, p0, :cond_0

    #@b
    .line 482
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid/com/google/googlenav/map/TrafficService;

    #@d
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/TrafficService;->stop()V

    #@10
    .line 483
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@12
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->pause()V

    #@15
    .line 484
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@17
    invoke-virtual {v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    #@1a
    .line 485
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@1c
    invoke-virtual {v0}, Lcom/google/android/maps/NetworkConnectivityListener;->stopListening()V

    #@1f
    .line 486
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@21
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->saveState()V

    #@24
    .line 487
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid/com/google/common/android/AndroidConfig;

    #@26
    invoke-virtual {v0}, Landroid/com/google/common/android/AndroidConfig;->getPersistentStore()Landroid/com/google/common/io/PersistentStore;

    #@29
    move-result-object v0

    #@2a
    invoke-interface {v0}, Landroid/com/google/common/io/PersistentStore;->savePreferences()V

    #@2d
    .line 478
    :goto_0
    return-void

    #@2e
    .line 489
    :cond_0
    const-string/jumbo v0, "MapActivity"

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "onPause leaving the lights on for "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    sget-object v2, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@3f
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    #@0
    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    .line 449
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->restoreGlobalState()V

    #@6
    .line 451
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid/com/google/googlenav/map/TrafficService;

    #@8
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/TrafficService;->start()V

    #@b
    .line 452
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@d
    invoke-virtual {v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->start()V

    #@10
    .line 453
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    #@12
    invoke-virtual {v0, p0}, Lcom/google/android/maps/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    #@15
    .line 454
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@17
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->resume()V

    #@1a
    .line 455
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1c
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1f
    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    #@21
    .line 447
    return-void
.end method

.method setupMapView(Lcom/google/android/maps/MapView;)V
    .locals 4
    .param p1, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 400
    const-string/jumbo v1, "You are only allowed to have a single MapView in a MapActivity"

    #@9
    .line 399
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 402
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@f
    iget-object v1, p1, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidMapKey(Ljava/lang/String;)V

    #@14
    .line 403
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@16
    .line 404
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "logging_id2"

    #@1d
    .line 403
    invoke-static {v1, v2}, Landroid/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidLoggingId2(Ljava/lang/String;)V

    #@24
    .line 405
    iput-object p1, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@26
    .line 406
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    #@28
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2a
    iget-object v2, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid/com/google/googlenav/map/TrafficService;

    #@2c
    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapView;->setup(Landroid/com/google/googlenav/map/Map;Landroid/com/google/googlenav/map/TrafficService;Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@31
    .line 397
    return-void
.end method
