.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.super Landroid/service/wallpaper/IWallpaperEngine$Stub;
.source "WallpaperService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperEngineWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field final greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final blacklist mDescription:Landroid/app/wallpaper/WallpaperDescription;

.field final blacklist mDisplay:Landroid/view/Display;

.field final blacklist mDisplayId:I

.field final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final greylist-max-o mDisplayPadding:Landroid/graphics/Rect;

.field greylist-max-o mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field final blacklist mInfo:Landroid/app/WallpaperInfo;

.field final greylist-max-o mIsPreview:Z

.field final blacklist mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field blacklist mReportDraw:Z

.field greylist-max-o mReqHeight:I

.field greylist-max-o mReqWidth:I

.field greylist-max-o mShownReported:Z

.field final blacklist mWallpaperManager:Landroid/app/WallpaperManager;

.field blacklist mWhich:I

.field final greylist-max-o mWindowToken:Landroid/os/IBinder;

.field final greylist-max-o mWindowType:I

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    .registers 30
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p2, "service"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "conn"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "windowType"    # I
    .param p6, "isPreview"    # Z
    .param p7, "reqWidth"    # I
    .param p8, "reqHeight"    # I
    .param p9, "padding"    # Landroid/graphics/Rect;
    .param p10, "displayId"    # I
    .param p11, "which"    # I
    .param p12, "info"    # Landroid/app/WallpaperInfo;
    .param p13, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2500
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;-><init>()V

    .line 2480
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2485
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 2501
    const-class v2, Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2502
    new-instance v2, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual/range {p2 .. p2}, Landroid/service/wallpaper/WallpaperService;->onProvideEngineLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v5, p2

    invoke-direct {v2, v5, v3, v0, v4}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2503
    move-object/from16 v2, p3

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 2504
    move-object/from16 v3, p4

    iput-object v3, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 2505
    move/from16 v4, p5

    iput v4, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    .line 2506
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    .line 2507
    move/from16 v7, p7

    iput v7, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 2508
    move/from16 v8, p8

    iput v8, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 2509
    iget-object v9, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    move-object/from16 v10, p9

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2510
    move/from16 v9, p10

    iput v9, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    .line 2511
    move/from16 v11, p11

    iput v11, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    .line 2512
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    .line 2513
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    .line 2516
    const-class v14, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v14}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayManager;

    iput-object v14, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2517
    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v15, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {v14, v15}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v14

    iput-object v14, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    .line 2519
    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    if-eqz v14, :cond_84

    .line 2523
    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 2524
    .local v14, "msg":Landroid/os/Message;
    iget-object v15, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v15, v14}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2525
    return-void

    .line 2521
    .end local v14    # "msg":Landroid/os/Message;
    :cond_84
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find display with id"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v15, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private blacklist doAttachEngine()V
    .registers 5

    .line 2644
    const-string v0, "WallpaperService"

    const-string v1, "WPMS.onCreateEngine"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2646
    invoke-static {}, Landroid/app/Flags;->liveWallpaperContentHandling()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2647
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine(Landroid/app/wallpaper/WallpaperDescription;)Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v1

    .local v1, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    goto :goto_1c

    .line 2649
    .end local v1    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :cond_16
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v1

    .line 2651
    .restart local v1    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :goto_1c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2652
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPMS.mConnection.attachEngine-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2655
    :try_start_39
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-interface {v2, p0, v3}, Landroid/service/wallpaper/IWallpaperConnection;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_40} :catch_52
    .catchall {:try_start_39 .. :try_end_40} :catchall_50

    .line 2665
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2666
    nop

    .line 2667
    const-string v0, "WPMS.engine.attach"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2668
    invoke-virtual {v1, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V

    .line 2669
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2670
    return-void

    .line 2665
    :catchall_50
    move-exception v0

    goto :goto_69

    .line 2660
    :catch_52
    move-exception v2

    .line 2661
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_53
    const-string v3, "Connector instance already destroyed, can\'t attach engine to non existing connector"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_50

    .line 2665
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2663
    return-void

    .line 2656
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_5c
    move-exception v2

    .line 2657
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5d
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 2658
    const-string v3, "Wallpaper host disappeared"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_50

    .line 2665
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2659
    return-void

    .line 2665
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_69
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2666
    throw v0
.end method

.method private blacklist doDetachEngine()V
    .registers 6

    .line 2675
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_4c

    .line 2676
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 2677
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 2678
    :try_start_16
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2679
    .local v2, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v3, :cond_46

    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v3, :cond_46

    .line 2680
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2681
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2683
    .end local v2    # "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    :cond_46
    goto :goto_24

    .line 2684
    :cond_47
    monitor-exit v0

    goto :goto_4c

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_49

    throw v1

    .line 2686
    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist handleResized(Landroid/util/MergedConfiguration;Z)V
    .registers 8
    .param p1, "config"    # Landroid/util/MergedConfiguration;
    .param p2, "reportDraw"    # Z

    .line 2819
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 2820
    .local v0, "pendingCount":I
    :goto_a
    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 2821
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReportDraw:Z

    .line 2823
    :cond_f
    if-lez v0, :cond_12

    .line 2829
    return-void

    .line 2831
    :cond_12
    if-eqz p1, :cond_1b

    .line 2836
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v2, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2838
    :cond_1b
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReportDraw:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 2839
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReportDraw:Z

    .line 2840
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v2, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 2841
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->scaleAndCropScreenshot()V

    .line 2842
    return-void
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2609
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->addLocalColorsAreas(Ljava/util/List;)V

    .line 2610
    return-void
.end method

.method public blacklist applyDimming(F)V
    .registers 5
    .param p1, "dimAmount"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2618
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2617
    const/16 v2, 0x27d8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2619
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2620
    return-void
.end method

.method public greylist-max-o destroy()V
    .registers 4

    .line 2623
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2624
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2625
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2626
    return-void
.end method

.method public greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2562
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_a

    .line 2563
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 2565
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2567
    :goto_d
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 2571
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_12

    .line 2572
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "z":I
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v2, "action":Ljava/lang/String;
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "z":I
    .local v6, "extras":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/view/BaseIWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto :goto_17

    .line 2571
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "z":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    .restart local p4    # "z":I
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_12
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2574
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "z":I
    .end local p5    # "extras":Landroid/os/Bundle;
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v5    # "z":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    :goto_17
    return-void
.end method

.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 2704
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_126

    .line 2806
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_125

    .line 2803
    :sswitch_23
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onWallpaperFlagsChanged(I)V

    .line 2804
    goto/16 :goto_125

    .line 2736
    :sswitch_2c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V

    .line 2737
    goto/16 :goto_125

    .line 2751
    :sswitch_39
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_40

    move v1, v2

    :cond_40
    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onScreenTurningOnChanged(Z)V

    .line 2752
    goto/16 :goto_125

    .line 2798
    :sswitch_45
    const-string v0, "WPMS.MSG_REPORT_SHOWN"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    .line 2800
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2801
    goto/16 :goto_125

    .line 2739
    :sswitch_52
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mresizePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V

    .line 2740
    goto/16 :goto_125

    .line 2733
    :sswitch_5d
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setZoom(F)V

    .line 2734
    goto/16 :goto_125

    .line 2786
    :sswitch_6a
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-nez v0, :cond_70

    .line 2787
    goto/16 :goto_125

    .line 2790
    :cond_70
    :try_start_70
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v0

    .line 2791
    .local v0, "colors":Landroid/app/WallpaperColors;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V

    .line 2792
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-interface {v1, v0, v2}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_82} :catch_84

    .line 2795
    .end local v0    # "colors":Landroid/app/WallpaperColors;
    goto/16 :goto_125

    .line 2793
    :catch_84
    move-exception v0

    .line 2796
    goto/16 :goto_125

    .line 2767
    :sswitch_87
    const/4 v0, 0x0

    .line 2768
    .local v0, "skip":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    .line 2769
    .local v1, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_aa

    .line 2770
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2771
    :try_start_98
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v3, v1, :cond_a4

    .line 2772
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_a5

    .line 2775
    :cond_a4
    const/4 v0, 0x1

    .line 2777
    :goto_a5
    monitor-exit v2

    goto :goto_aa

    :catchall_a7
    move-exception v3

    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_a7

    throw v3

    .line 2779
    :cond_aa
    :goto_aa
    if-nez v0, :cond_b1

    .line 2781
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v2, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 2783
    :cond_b1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2784
    .end local v0    # "skip":Z
    .end local v1    # "ev":Landroid/view/MotionEvent;
    goto/16 :goto_125

    .line 2765
    :sswitch_b6
    goto/16 :goto_125

    .line 2761
    :sswitch_b8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/MergedConfiguration;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_c1

    move v1, v2

    :cond_c1
    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->handleResized(Landroid/util/MergedConfiguration;Z)V

    .line 2762
    goto :goto_125

    .line 2757
    :sswitch_c5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 2758
    .local v0, "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    .line 2759
    .end local v0    # "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    goto :goto_125

    .line 2754
    :sswitch_cf
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 2755
    goto :goto_125

    .line 2744
    :sswitch_d5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_dc

    move v1, v2

    :cond_dc
    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2745
    goto :goto_125

    .line 2730
    :sswitch_e0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, v2, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 2731
    goto :goto_125

    .line 2726
    :sswitch_e6
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_ed

    move v1, v2

    :cond_ed
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->doAmbientModeChanged(ZJ)V

    .line 2727
    return-void

    .line 2722
    :sswitch_f9
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doDisplayPaddingChanged(Landroid/graphics/Rect;)V

    .line 2723
    return-void

    .line 2718
    :sswitch_103
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doDesiredSizeChanged(II)V

    .line 2719
    return-void

    .line 2712
    :sswitch_10d
    const-string v0, "WPMS.DO_DETACH"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2713
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->doDetachEngine()V

    .line 2714
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2715
    return-void

    .line 2706
    :sswitch_119
    const-string v0, "WPMS.DO_ATTACH"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2707
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->doAttachEngine()V

    .line 2708
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2709
    return-void

    .line 2808
    :goto_125
    return-void

    :sswitch_data_126
    .sparse-switch
        0xa -> :sswitch_119
        0x14 -> :sswitch_10d
        0x1e -> :sswitch_103
        0x28 -> :sswitch_f9
        0x32 -> :sswitch_e6
        0x2710 -> :sswitch_e0
        0x271a -> :sswitch_d5
        0x2724 -> :sswitch_cf
        0x2729 -> :sswitch_c5
        0x272e -> :sswitch_b8
        0x2733 -> :sswitch_b6
        0x2738 -> :sswitch_87
        0x2742 -> :sswitch_6a
        0x2774 -> :sswitch_5d
        0x277e -> :sswitch_52
        0x27a6 -> :sswitch_45
        0x27ba -> :sswitch_39
        0x27d8 -> :sswitch_2c
        0x27e2 -> :sswitch_23
    .end sparse-switch
.end method

.method public blacklist mirrorSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 2635
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public blacklist onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;
    .registers 3
    .param p1, "which"    # I

    .line 2640
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist onScreenTurnedOn()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->updateScreenTurningOn(Z)V

    .line 2700
    return-void
.end method

.method public blacklist onScreenTurningOn()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->updateScreenTurningOn(Z)V

    .line 2696
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2613
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 2614
    return-void
.end method

.method public greylist-max-o reportShown()V
    .registers 4

    .line 2582
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "WallpaperService"

    if-nez v0, :cond_c

    .line 2583
    const-string v0, "Can\'t report null engine as shown."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    return-void

    .line 2586
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_18

    .line 2587
    const-string v0, "Engine was destroyed before we could draw."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    return-void

    .line 2590
    :cond_18
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_4b

    .line 2591
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    .line 2592
    const-string v0, "WPMS.mConnection.engineShown"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2594
    :try_start_24
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v0, p0}, Landroid/service/wallpaper/IWallpaperConnection;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V

    .line 2595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper has updated the surface:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_41} :catch_42

    .line 2598
    goto :goto_48

    .line 2596
    :catch_42
    move-exception v0

    .line 2597
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Wallpaper host disappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2599
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2601
    :cond_4b
    return-void
.end method

.method public greylist-max-o requestWallpaperColors()V
    .registers 3

    .line 2604
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2742

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2605
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2606
    return-void
.end method

.method public blacklist resizePreview(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 2629
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x277e

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2630
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2631
    return-void
.end method

.method public greylist-max-o setDesiredSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2528
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 2529
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2530
    return-void
.end method

.method public greylist-max-o setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 2533
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2534
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2535
    return-void
.end method

.method public blacklist setInAmbientMode(ZJ)V
    .registers 7
    .param p1, "inAmbientDisplay"    # Z
    .param p2, "animationDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2556
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2557
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2556
    const/16 v2, 0x32

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2558
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2559
    return-void
.end method

.method public greylist-max-o setVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 2538
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2539
    nop

    .line 2538
    const/16 v1, 0x271a

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2540
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2541
    return-void
.end method

.method public blacklist setWallpaperFlags(I)V
    .registers 4
    .param p1, "which"    # I

    .line 2545
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    if-ne p1, v0, :cond_5

    .line 2546
    return-void

    .line 2548
    :cond_5
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    .line 2549
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x27e2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2550
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2551
    return-void
.end method

.method public blacklist setZoomOut(F)V
    .registers 5
    .param p1, "scale"    # F

    .line 2577
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2774

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2578
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2579
    return-void
.end method

.method public blacklist updateScreenTurningOn(Z)V
    .registers 5
    .param p1, "isScreenTurningOn"    # Z

    .line 2689
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x27ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2691
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2692
    return-void
.end method
