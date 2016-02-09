.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final USE_CACHE:Z

.field private static sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private mDisplayIdCache:[I

.field private final mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDm:Landroid/hardware/display/IDisplayManager;

.field private final mLock:Ljava/lang/Object;

.field private mWifiDisplayScanNestCount:I


# direct methods
.method static synthetic -wrap0(Landroid/hardware/display/DisplayManagerGlobal;II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/hardware/display/IDisplayManager;)V
    .locals 1
    .param p1, "dm"    # Landroid/hardware/display/IDisplayManager;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@a
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 71
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@11
    .line 74
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    #@18
    .line 80
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@1a
    .line 79
    return-void
.end method

.method private findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    #@0
    .prologue
    .line 225
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 226
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 227
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    #@11
    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 228
    return v0

    #@16
    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 231
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method public static getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .locals 4

    #@0
    .prologue
    .line 90
    const-class v2, Landroid/hardware/display/DisplayManagerGlobal;

    #@2
    monitor-enter v2

    #@3
    .line 91
    :try_start_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 92
    const-string/jumbo v1, "display"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 93
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@10
    .line 94
    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal;

    #@12
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    #@19
    sput-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    #@1b
    .line 97
    :cond_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    return-object v1

    #@1f
    .line 90
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method private handleDisplayEvent(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 247
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 256
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 257
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 258
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    #@14
    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 257
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    :cond_0
    monitor-exit v3

    #@1b
    .line 246
    return-void

    #@1c
    .line 247
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method private registerCallbackIfNeededLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 235
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 236
    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    #@7
    invoke-direct {v1, p0, v3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;)V

    #@a
    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    #@c
    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@e
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    #@10
    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 234
    :cond_0
    :goto_0
    return-void

    #@14
    .line 239
    :catch_0
    move-exception v0

    #@15
    .line 240
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@18
    const-string/jumbo v2, "Failed to register callback with display manager service."

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 241
    iput-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    #@20
    goto :goto_0
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 293
    if-nez p1, :cond_0

    #@2
    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "deviceAddress must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 298
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@d
    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 292
    :goto_0
    return-void

    #@11
    .line 299
    :catch_0
    move-exception v0

    #@12
    .line 300
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Failed to connect to Wifi display "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "."

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_0
.end method

.method public createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "densityDpi"    # I
    .param p7, "surface"    # Landroid/view/Surface;
    .param p8, "flags"    # I
    .param p9, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p10, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 365
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 366
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "name must be non-null and non-empty"

    #@b
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 368
    :cond_0
    if-lez p4, :cond_1

    #@11
    if-gtz p5, :cond_2

    #@13
    .line 369
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v5, "width, height, and densityDpi must be greater than 0"

    #@18
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 368
    :cond_2
    if-lez p6, :cond_1

    #@1e
    .line 373
    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    #@20
    move-object/from16 v0, p9

    #@22
    move-object/from16 v1, p10

    #@24
    invoke-direct {v3, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    #@27
    .line 374
    .local v3, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    if-eqz p2, :cond_3

    #@29
    invoke-virtual/range {p2 .. p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    #@2c
    move-result-object v4

    #@2d
    .line 377
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2f
    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    move-object/from16 v6, p3

    #@35
    move/from16 v7, p4

    #@37
    move/from16 v8, p5

    #@39
    move/from16 v9, p6

    #@3b
    move-object/from16 v10, p7

    #@3d
    move/from16 v11, p8

    #@3f
    .line 377
    invoke-interface/range {v2 .. v11}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result v13

    #@43
    .line 383
    .local v13, "displayId":I
    if-gez v13, :cond_4

    #@45
    .line 384
    const-string/jumbo v2, "DisplayManager"

    #@48
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "Could not create virtual display: "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    move-object/from16 v0, p3

    #@56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 385
    const/4 v2, 0x0

    #@62
    return-object v2

    #@63
    .line 374
    .end local v13    # "displayId":I
    :cond_3
    const/4 v4, 0x0

    #@64
    .local v4, "projectionToken":Landroid/media/projection/IMediaProjection;
    goto :goto_0

    #@65
    .line 379
    .end local v4    # "projectionToken":Landroid/media/projection/IMediaProjection;
    :catch_0
    move-exception v14

    #@66
    .line 380
    .local v14, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    #@69
    new-instance v5, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v6, "Could not create virtual display: "

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    move-object/from16 v0, p3

    #@77
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-static {v2, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@82
    .line 381
    const/4 v2, 0x0

    #@83
    return-object v2

    #@84
    .line 387
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v13    # "displayId":I
    :cond_4
    invoke-virtual {p0, v13}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    #@87
    move-result-object v12

    #@88
    .line 388
    .local v12, "display":Landroid/view/Display;
    if-nez v12, :cond_5

    #@8a
    .line 389
    const-string/jumbo v2, "DisplayManager"

    #@8d
    new-instance v5, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v6, "Could not obtain display info for newly created virtual display: "

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    move-object/from16 v0, p3

    #@9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 392
    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@a8
    invoke-interface {v2, v3}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@ab
    .line 395
    :goto_1
    const/4 v2, 0x0

    #@ac
    return-object v2

    #@ad
    .line 397
    :cond_5
    new-instance v2, Landroid/hardware/display/VirtualDisplay;

    #@af
    move-object/from16 v0, p7

    #@b1
    invoke-direct {v2, p0, v12, v3, v0}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    #@b4
    return-object v2

    #@b5
    .line 393
    :catch_1
    move-exception v14

    #@b6
    .restart local v14    # "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public disconnectWifiDisplay()V
    .locals 3

    #@0
    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 320
    :goto_0
    return-void

    #@6
    .line 323
    :catch_0
    move-exception v0

    #@7
    .line 324
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@a
    const-string/jumbo v2, "Failed to disconnect from Wifi display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 342
    if-nez p1, :cond_0

    #@2
    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "deviceAddress must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 347
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@d
    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 341
    :goto_0
    return-void

    #@11
    .line 348
    :catch_0
    move-exception v0

    #@12
    .line 349
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@15
    const-string/jumbo v2, "Failed to forget Wifi display."

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method public getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@4
    move-result-object v0

    #@5
    .line 179
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_0

    #@7
    .line 180
    return-object v1

    #@8
    .line 182
    :cond_0
    new-instance v1, Landroid/view/Display;

    #@a
    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    #@d
    return-object v1
.end method

.method public getDisplayIds()[I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 147
    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 154
    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@6
    invoke-interface {v2}, Landroid/hardware/display/IDisplayManager;->getDisplayIds()[I

    #@9
    move-result-object v0

    #@a
    .line 158
    .local v0, "displayIds":[I
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    :try_start_2
    monitor-exit v3

    #@e
    .line 159
    return-object v0

    #@f
    .line 147
    .end local v0    # "displayIds":[I
    :catchall_0
    move-exception v2

    #@10
    monitor-exit v3

    #@11
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@12
    .line 161
    :catch_0
    move-exception v1

    #@13
    .line 162
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    #@16
    const-string/jumbo v3, "Could not get display ids from display manager."

    #@19
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 163
    const/4 v2, 0x1

    #@1d
    new-array v2, v2, [I

    #@1f
    aput v4, v2, v4

    #@21
    return-object v2
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 5
    .param p1, "displayId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 110
    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 119
    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@6
    invoke-interface {v2, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    move-result-object v1

    #@a
    .line 120
    .local v1, "info":Landroid/view/DisplayInfo;
    if-nez v1, :cond_0

    #@c
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@d
    .line 121
    return-object v4

    #@e
    .line 127
    :cond_0
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11
    :try_start_4
    monitor-exit v3

    #@12
    .line 132
    return-object v1

    #@13
    .line 110
    .end local v1    # "info":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v2

    #@14
    monitor-exit v3

    #@15
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@16
    .line 134
    :catch_0
    move-exception v0

    #@17
    .line 135
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    #@1a
    const-string/jumbo v3, "Could not get display information from display manager."

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 136
    return-object v4
.end method

.method public getRealDisplay(I)Landroid/view/Display;
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 192
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 3

    #@0
    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 356
    :catch_0
    move-exception v0

    #@8
    .line 357
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@b
    const-string/jumbo v2, "Failed to get Wifi display status."

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 358
    new-instance v1, Landroid/hardware/display/WifiDisplayStatus;

    #@13
    invoke-direct {v1}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    #@16
    return-object v1
.end method

.method public pauseWifiDisplay()V
    .locals 3

    #@0
    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 304
    :goto_0
    return-void

    #@6
    .line 307
    :catch_0
    move-exception v0

    #@7
    .line 308
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@a
    const-string/jumbo v2, "Failed to pause Wifi display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 196
    if-nez p1, :cond_0

    #@2
    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 200
    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v2

    #@e
    .line 201
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    #@11
    move-result v0

    #@12
    .line 202
    .local v0, "index":I
    if-gez v0, :cond_1

    #@14
    .line 203
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@16
    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    #@18
    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@1b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 204
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_1
    monitor-exit v2

    #@22
    .line 195
    return-void

    #@23
    .line 200
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 3
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;

    #@0
    .prologue
    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 417
    :goto_0
    return-void

    #@6
    .line 420
    :catch_0
    move-exception v0

    #@7
    .line 421
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@a
    const-string/jumbo v2, "Failed to release virtual display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 329
    if-nez p1, :cond_0

    #@2
    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "deviceAddress must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 334
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@d
    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 328
    :goto_0
    return-void

    #@11
    .line 335
    :catch_0
    move-exception v0

    #@12
    .line 336
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Failed to rename Wifi display "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 337
    const-string/jumbo v3, " with alias "

    #@28
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 337
    const-string/jumbo v3, "."

    #@33
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    goto :goto_0
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 3
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    #@0
    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 409
    :goto_0
    return-void

    #@6
    .line 412
    :catch_0
    move-exception v0

    #@7
    .line 413
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@a
    const-string/jumbo v2, "Failed to resize virtual display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public resumeWifiDisplay()V
    .locals 3

    #@0
    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 312
    :goto_0
    return-void

    #@6
    .line 315
    :catch_0
    move-exception v0

    #@7
    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@a
    const-string/jumbo v2, "Failed to resume Wifi display."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 3
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 400
    :goto_0
    return-void

    #@6
    .line 403
    :catch_0
    move-exception v0

    #@7
    .line 404
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    #@a
    const-string/jumbo v2, "Failed to set virtual display surface."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public startWifiDisplayScan()V
    .locals 4

    #@0
    .prologue
    .line 264
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 265
    :try_start_0
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    #@5
    add-int/lit8 v3, v1, 0x1

    #@7
    iput v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    #@9
    if-nez v1, :cond_0

    #@b
    .line 266
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 268
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@10
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :cond_0
    :goto_0
    monitor-exit v2

    #@14
    .line 263
    return-void

    #@15
    .line 269
    :catch_0
    move-exception v0

    #@16
    .line 270
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "DisplayManager"

    #@19
    const-string/jumbo v3, "Failed to scan for Wifi displays."

    #@1c
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 264
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public stopWifiDisplayScan()V
    .locals 5

    #@0
    .prologue
    .line 277
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 278
    :try_start_0
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    iput v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v1, :cond_1

    #@b
    .line 280
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    #@d
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v2

    #@11
    .line 276
    return-void

    #@12
    .line 281
    :catch_0
    move-exception v0

    #@13
    .line 282
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "DisplayManager"

    #@16
    const-string/jumbo v3, "Failed to scan for Wifi displays."

    #@19
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 277
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1

    #@20
    .line 284
    :cond_1
    :try_start_3
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    #@22
    if-gez v1, :cond_0

    #@24
    .line 285
    const-string/jumbo v1, "DisplayManager"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Wifi display scan nest count became negative: "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 286
    iget v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    #@35
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 287
    const/4 v1, 0x0

    #@41
    iput v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    goto :goto_0
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    #@0
    .prologue
    .line 210
    if-nez p1, :cond_0

    #@2
    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "listener must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 214
    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 215
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    #@11
    move-result v1

    #@12
    .line 216
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@14
    .line 217
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    #@1c
    .line 218
    .local v0, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    #@1f
    .line 219
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .end local v0    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    :cond_1
    monitor-exit v3

    #@25
    .line 209
    return-void

    #@26
    .line 214
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2
.end method
