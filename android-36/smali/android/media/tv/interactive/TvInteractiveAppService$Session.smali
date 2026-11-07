.class public abstract Landroid/media/tv/interactive/TvInteractiveAppService$Session;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMediaFrame:Landroid/graphics/Rect;

.field private blacklist mMediaView:Landroid/view/View;

.field private blacklist mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

.field private blacklist mMediaViewContainer:Landroid/widget/FrameLayout;

.field private blacklist mMediaViewEnabled:Z

.field private final blacklist mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;

.field private blacklist mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$Le6GH3N7Wh_FIfE7hBayPdz5wM0(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestTvRecordingInfo$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q9kswjIRqgSVtCOIONIa6gaWDdo(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$setTvRecordingInfo$5(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bamAdOiUMBxH2vH9Q-uhCmTud6E(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestSelectedTrackInfo$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g5DsJYXRzwcl5hAnfWHHNzI9z7c(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestScheduleRecording$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iTr054f9-mzVPwoq9BqOdfwDU2A(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestStopRecording$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lfiugovpuEKmAoHGTOqbbx3YQTg(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestTvRecordingInfoList$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mHbDzilxkE2-X1T6MsTrT77wEMY(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestStartRecording$1(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$w8UutNC6l41KhVEC9NxCUi1AY6c(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestScheduleRecording$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaFrame(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    .line 453
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    .line 454
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    .line 456
    return-void
.end method

.method private blacklist executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 2229
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2230
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-nez v1, :cond_d

    .line 2232
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2234
    :cond_d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2235
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 2238
    :cond_1d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2241
    :goto_22
    monitor-exit v0

    .line 2242
    return-void

    .line 2241
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 2196
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2197
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 2198
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2199
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2200
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_b

    .line 2201
    :cond_1b
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2202
    monitor-exit v0

    .line 2203
    return-void

    .line 2202
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private synthetic blacklist lambda$requestScheduleRecording$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "programUri"    # Landroid/net/Uri;
    .param p5, "params"    # Landroid/os/Bundle;

    .line 1500
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_12

    .line 1501
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_18

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .local v2, "requestId":Ljava/lang/String;
    .local v3, "inputId":Ljava/lang/String;
    .local v4, "channelUri":Landroid/net/Uri;
    .local v5, "programUri":Landroid/net/Uri;
    .local v6, "params":Landroid/os/Bundle;
    :try_start_b
    invoke-interface/range {v1 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_17

    .line 1504
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .line 1500
    .end local v2    # "requestId":Ljava/lang/String;
    .end local v3    # "inputId":Ljava/lang/String;
    .end local v4    # "channelUri":Landroid/net/Uri;
    .end local v5    # "programUri":Landroid/net/Uri;
    .end local v6    # "params":Landroid/os/Bundle;
    .restart local p1    # "requestId":Ljava/lang/String;
    .restart local p2    # "inputId":Ljava/lang/String;
    .restart local p3    # "channelUri":Landroid/net/Uri;
    .restart local p4    # "programUri":Landroid/net/Uri;
    .restart local p5    # "params":Landroid/os/Bundle;
    :cond_12
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1506
    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .restart local v2    # "requestId":Ljava/lang/String;
    .restart local v3    # "inputId":Ljava/lang/String;
    .restart local v4    # "channelUri":Landroid/net/Uri;
    .restart local v5    # "programUri":Landroid/net/Uri;
    .restart local v6    # "params":Landroid/os/Bundle;
    :goto_17
    goto :goto_26

    .line 1504
    .end local v2    # "requestId":Ljava/lang/String;
    .end local v3    # "inputId":Ljava/lang/String;
    .end local v4    # "channelUri":Landroid/net/Uri;
    .end local v5    # "programUri":Landroid/net/Uri;
    .end local v6    # "params":Landroid/os/Bundle;
    .restart local p1    # "requestId":Ljava/lang/String;
    .restart local p2    # "inputId":Ljava/lang/String;
    .restart local p3    # "channelUri":Landroid/net/Uri;
    .restart local p4    # "programUri":Landroid/net/Uri;
    .restart local p5    # "params":Landroid/os/Bundle;
    :catch_18
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 1505
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .restart local v2    # "requestId":Ljava/lang/String;
    .restart local v3    # "inputId":Ljava/lang/String;
    .restart local v4    # "channelUri":Landroid/net/Uri;
    .restart local v5    # "programUri":Landroid/net/Uri;
    .restart local v6    # "params":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    const-string p2, "TvInteractiveAppService"

    const-string p3, "error in requestScheduleRecording"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1507
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method private synthetic blacklist lambda$requestScheduleRecording$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 21
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "duration"    # J
    .param p8, "repeatDays"    # I
    .param p9, "params"    # Landroid/os/Bundle;

    .line 1540
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_13

    .line 1541
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1546
    :cond_13
    goto :goto_1c

    .line 1544
    :catch_14
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestScheduleRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method private synthetic blacklist lambda$requestSelectedTrackInfo$0()V
    .registers 4

    .line 1401
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_9

    .line 1402
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestSelectedTrackInfo()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1406
    :cond_9
    goto :goto_12

    .line 1404
    :catch_a
    move-exception v0

    .line 1405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestSelectedTrackInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1407
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private synthetic blacklist lambda$requestStartRecording$1(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "programUri"    # Landroid/net/Uri;

    .line 1438
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_9

    .line 1439
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1443
    :cond_9
    goto :goto_12

    .line 1441
    :catch_a
    move-exception v0

    .line 1442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestStartRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1444
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private synthetic blacklist lambda$requestStopRecording$2(Ljava/lang/String;)V
    .registers 5
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1464
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_9

    .line 1465
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestStopRecording(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1469
    :cond_9
    goto :goto_12

    .line 1467
    :catch_a
    move-exception v0

    .line 1468
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestStopRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private synthetic blacklist lambda$requestTvRecordingInfo$6(Ljava/lang/String;)V
    .registers 5
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1587
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_9

    .line 1588
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestTvRecordingInfo(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1592
    :cond_9
    goto :goto_12

    .line 1590
    :catch_a
    move-exception v0

    .line 1591
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestTvRecordingInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1593
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private synthetic blacklist lambda$requestTvRecordingInfoList$7(I)V
    .registers 5
    .param p1, "type"    # I

    .line 1608
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_9

    .line 1609
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestTvRecordingInfoList(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1613
    :cond_9
    goto :goto_12

    .line 1611
    :catch_a
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestTvRecordingInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private synthetic blacklist lambda$setTvRecordingInfo$5(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1565
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_9

    .line 1566
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1570
    :cond_9
    goto :goto_12

    .line 1568
    :catch_a
    move-exception v0

    .line 1569
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in setTvRecordingInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1571
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method


# virtual methods
.method blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1767
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1768
    return-void
.end method

.method blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 2252
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 2253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 2256
    :cond_8
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 2257
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2258
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    .line 2259
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1e

    .line 2260
    return-void

    .line 2262
    :cond_1e
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    .line 2263
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    if-nez v0, :cond_29

    .line 2264
    return-void

    .line 2266
    :cond_29
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    if-eqz v0, :cond_36

    .line 2267
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->cancel(Z)Z

    .line 2268
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    .line 2273
    :cond_36
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 2274
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2276
    const/16 v7, 0x3e9

    .line 2280
    .local v7, "type":I
    const/16 v0, 0x218

    .line 2283
    .local v0, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2284
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    move v8, v0

    goto :goto_5a

    .line 2283
    :cond_59
    move v8, v0

    .line 2286
    .end local v0    # "flags":I
    .local v8, "flags":I
    :goto_5a
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v1

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v9, -0x2

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2289
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2291
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2292
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2293
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2294
    return-void
.end method

.method blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 2
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 1771
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V

    .line 1772
    return-void
.end method

.method blacklist dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 2167
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 2168
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 2169
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2170
    return v1

    .line 2169
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_11
    goto :goto_3c

    .line 2174
    :cond_12
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3c

    .line 2175
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 2176
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 2177
    .local v2, "source":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2178
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2179
    return v1

    .line 2181
    :cond_2a
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_35

    .line 2182
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2183
    return v1

    .line 2186
    :cond_35
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2187
    return v1

    .line 2174
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "source":I
    :cond_3c
    :goto_3c
    nop

    .line 2192
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dispatchSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2225
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSurfaceChanged(III)V

    .line 2226
    return-void
.end method

.method public whitelist isMediaViewEnabled()Z
    .registers 2

    .line 495
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public whitelist layoutSurface(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1047
    if-gt p1, p3, :cond_12

    if-gt p2, p4, :cond_12

    .line 1050
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;IIII)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1067
    return-void

    .line 1047
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .restart local p1    # "left":I
    .restart local p2    # "top":I
    .restart local p3    # "right":I
    .restart local p4    # "bottom":I
    :cond_12
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1048
    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "top":I
    .restart local v4    # "right":I
    .restart local v5    # "bottom":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 1956
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 1957
    return-void
.end method

.method public whitelist notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 2133
    :try_start_0
    invoke-static {p1}, Landroid/media/tv/AdBuffer;->dupAdBuffer(Landroid/media/tv/AdBuffer;)Landroid/media/tv/AdBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_e

    .line 2137
    .local v0, "dupBuffer":Landroid/media/tv/AdBuffer;
    nop

    .line 2138
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;

    invoke-direct {v1, p0, p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdBuffer;Landroid/media/tv/AdBuffer;)V

    invoke-direct {p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2159
    return-void

    .line 2134
    .end local v0    # "dupBuffer":Landroid/media/tv/AdBuffer;
    :catch_e
    move-exception v0

    .line 2135
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TvInteractiveAppService"

    const-string v2, "dup AdBuffer error in notifyAdBufferReady:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2136
    return-void
.end method

.method blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 1931
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdResponse(Landroid/media/tv/AdResponse;)V

    .line 1932
    return-void
.end method

.method public final whitelist notifyBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;

    .line 2078
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2095
    return-void
.end method

.method blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 1921
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 1922
    return-void
.end method

.method blacklist notifyContentAllowed()V
    .registers 1

    .line 1896
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentAllowed()V

    .line 1897
    return-void
.end method

.method blacklist notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 2
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1903
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 1904
    return-void
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1828
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1829
    return-void
.end method

.method blacklist notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 1977
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method blacklist notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 1984
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    return-void
.end method

.method blacklist notifyRecordingError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 1998
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingError(Ljava/lang/String;I)V

    .line 1999
    return-void
.end method

.method blacklist notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 2005
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    return-void
.end method

.method blacklist notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 1963
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    return-void
.end method

.method blacklist notifyRecordingStopped(Ljava/lang/String;)V
    .registers 2
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1970
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingStopped(Ljava/lang/String;)V

    .line 1971
    return-void
.end method

.method blacklist notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1991
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1992
    return-void
.end method

.method public whitelist notifySessionStateChanged(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "err"    # I

    .line 2048
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$20;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$20;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2065
    return-void
.end method

.method blacklist notifySignalStrength(I)V
    .registers 2
    .param p1, "strength"    # I

    .line 1910
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSignalStrength(I)V

    .line 1911
    return-void
.end method

.method public final whitelist notifyTeletextAppStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 2104
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$22;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$22;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2121
    return-void
.end method

.method blacklist notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 2033
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    .line 2034
    return-void
.end method

.method blacklist notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 2012
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 2013
    return-void
.end method

.method blacklist notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 2026
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    .line 2027
    return-void
.end method

.method blacklist notifyTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 2019
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    .line 2020
    return-void
.end method

.method blacklist notifyTrackSelected(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 1858
    if-nez p2, :cond_4

    .line 1859
    const-string p2, ""

    .line 1861
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackSelected(ILjava/lang/String;)V

    .line 1862
    return-void
.end method

.method blacklist notifyTracksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1868
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTracksChanged(Ljava/util/List;)V

    .line 1869
    return-void
.end method

.method blacklist notifyTuned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1850
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTuned(Landroid/net/Uri;)V

    .line 1851
    return-void
.end method

.method blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1938
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvMessage(ILandroid/os/Bundle;)V

    .line 1939
    return-void
.end method

.method blacklist notifyVideoAvailable()V
    .registers 1

    .line 1875
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoAvailable()V

    .line 1876
    return-void
.end method

.method blacklist notifyVideoFreezeUpdated(Z)V
    .registers 2
    .param p1, "isFrozen"    # Z

    .line 1889
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoFreezeUpdated(Z)V

    .line 1890
    return-void
.end method

.method blacklist notifyVideoUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1882
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoUnavailable(I)V

    .line 1883
    return-void
.end method

.method public whitelist onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 946
    return-void
.end method

.method public whitelist onAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 938
    return-void
.end method

.method public whitelist onAvailableSpeeds([F)V
    .registers 2
    .param p1, "speeds"    # [F

    .line 610
    return-void
.end method

.method public whitelist onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 932
    return-void
.end method

.method public whitelist onCertificate(Ljava/lang/String;ILandroid/net/http/SslCertificate;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "cert"    # Landroid/net/http/SslCertificate;

    .line 748
    return-void
.end method

.method public whitelist onContentAllowed()V
    .registers 1

    .line 914
    return-void
.end method

.method public whitelist onContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 2
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 920
    return-void
.end method

.method public whitelist onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 527
    return-void
.end method

.method public whitelist onCreateMediaView()Landroid/view/View;
    .registers 2

    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCurrentChannelLcn(I)V
    .registers 2
    .param p1, "lcn"    # I

    .line 566
    return-void
.end method

.method public whitelist onCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 560
    return-void
.end method

.method public whitelist onCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 586
    return-void
.end method

.method public whitelist onCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 554
    return-void
.end method

.method public whitelist onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V
    .registers 2
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 539
    return-void
.end method

.method public whitelist onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 762
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 996
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMediaViewSizeChanged(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 848
    return-void
.end method

.method public whitelist onRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 670
    return-void
.end method

.method public whitelist onRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 681
    return-void
.end method

.method public whitelist onRecordingError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 711
    return-void
.end method

.method public whitelist onRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 726
    return-void
.end method

.method public whitelist onRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 647
    return-void
.end method

.method public whitelist onRecordingStopped(Ljava/lang/String;)V
    .registers 2
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 657
    return-void
.end method

.method public whitelist onRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 693
    return-void
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onResetInteractiveApp()V
    .registers 1

    .line 514
    return-void
.end method

.method public whitelist onSelectedTrackInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 977
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public abstract whitelist onSetSurface(Landroid/view/Surface;)Z
.end method

.method public whitelist onSetTeletextAppEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 546
    return-void
.end method

.method public whitelist onSignalStrength(I)V
    .registers 2
    .param p1, "strength"    # I

    .line 926
    return-void
.end method

.method public whitelist onSigningResult(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 737
    return-void
.end method

.method public whitelist onStartInteractiveApp()V
    .registers 1

    .line 502
    return-void
.end method

.method public whitelist onStopInteractiveApp()V
    .registers 1

    .line 508
    return-void
.end method

.method public whitelist onStreamVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .line 574
    return-void
.end method

.method public whitelist onSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 834
    return-void
.end method

.method public whitelist onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 809
    return-void
.end method

.method public whitelist onTimeShiftMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 597
    return-void
.end method

.method public whitelist onTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 771
    return-void
.end method

.method public whitelist onTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 799
    return-void
.end method

.method public whitelist onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 789
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTrackSelected(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 881
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTracksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 887
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTuned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 872
    return-void
.end method

.method public whitelist onTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 963
    return-void
.end method

.method public whitelist onTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .registers 2
    .param p1, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 619
    return-void
.end method

.method public whitelist onTvRecordingInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p1, "recordingInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    return-void
.end method

.method public whitelist onVideoAvailable()V
    .registers 1

    .line 893
    return-void
.end method

.method public whitelist onVideoFreezeUpdated(Z)V
    .registers 2
    .param p1, "isFrozen"    # Z

    .line 908
    return-void
.end method

.method public whitelist onVideoUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 899
    return-void
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 2303
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2304
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 2307
    :cond_1c
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    .line 2309
    :cond_29
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2310
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_34

    goto :goto_5c

    .line 2313
    :cond_34
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2314
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2315
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2316
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2317
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2318
    return-void

    .line 2311
    :cond_5c
    :goto_5c
    return-void
.end method

.method blacklist release()V
    .registers 3

    .line 1832
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRelease()V

    .line 1833
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1834
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1835
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    .line 1837
    :cond_f
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_12
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    .line 1839
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1840
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1f

    .line 1843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 1844
    return-void

    .line 1840
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist removeBroadcastInfo(I)V
    .registers 3
    .param p1, "requestId"    # I

    .line 1100
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method

.method blacklist removeMediaView(Z)V
    .registers 5
    .param p1, "clearWindowToken"    # Z

    .line 2325
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2326
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 2327
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 2329
    :cond_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1f

    .line 2333
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2334
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    .line 2335
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2336
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 2337
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2339
    :cond_1f
    return-void
.end method

.method public whitelist requestAd(Landroid/media/tv/AdRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 1736
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$19;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$19;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1752
    return-void
.end method

.method public whitelist requestAvailableSpeeds()V
    .registers 2

    .line 1366
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1382
    return-void
.end method

.method public whitelist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 1075
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1092
    return-void
.end method

.method public whitelist requestCertificate(Ljava/lang/String;I)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 1711
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$18;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$18;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1727
    return-void
.end method

.method public whitelist requestCurrentChannelLcn()V
    .registers 2

    .line 1249
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1265
    return-void
.end method

.method public whitelist requestCurrentChannelUri()V
    .registers 2

    .line 1226
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method

.method public whitelist requestCurrentTvInputId()V
    .registers 2

    .line 1320
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1336
    return-void
.end method

.method public whitelist requestCurrentVideoBounds()V
    .registers 2

    .line 1203
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1219
    return-void
.end method

.method public whitelist requestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 21
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "duration"    # J
    .param p8, "repeatDays"    # I
    .param p9, "params"    # Landroid/os/Bundle;

    .line 1535
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1548
    return-void
.end method

.method public whitelist requestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "programUri"    # Landroid/net/Uri;
    .param p5, "params"    # Landroid/os/Bundle;

    .line 1495
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "requestId":Ljava/lang/String;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "channelUri":Landroid/net/Uri;
    .end local p4    # "programUri":Landroid/net/Uri;
    .end local p5    # "params":Landroid/os/Bundle;
    .local v2, "requestId":Ljava/lang/String;
    .local v3, "inputId":Ljava/lang/String;
    .local v4, "channelUri":Landroid/net/Uri;
    .local v5, "programUri":Landroid/net/Uri;
    .local v6, "params":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1508
    return-void
.end method

.method public whitelist requestSelectedTrackInfo()V
    .registers 2

    .line 1396
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1408
    return-void
.end method

.method public whitelist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 13
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "data"    # [B

    .line 1683
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "signingId":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "data":[B
    .local v2, "signingId":Ljava/lang/String;
    .local v3, "algorithm":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    .local v5, "port":I
    .local v6, "data":[B
    invoke-direct/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1700
    return-void
.end method

.method public whitelist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 11
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 1640
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "signingId":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .local v2, "signingId":Ljava/lang/String;
    .local v3, "algorithm":Ljava/lang/String;
    .local v4, "alias":Ljava/lang/String;
    .local v5, "data":[B
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1656
    return-void
.end method

.method public whitelist requestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "programUri"    # Landroid/net/Uri;

    .line 1433
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1445
    return-void
.end method

.method public whitelist requestStopRecording(Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1459
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1471
    return-void
.end method

.method public whitelist requestStreamVolume()V
    .registers 2

    .line 1272
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method public whitelist requestTimeShiftMode()V
    .registers 2

    .line 1343
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1359
    return-void
.end method

.method public whitelist requestTrackInfoList()V
    .registers 2

    .line 1295
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1311
    return-void
.end method

.method public whitelist requestTvRecordingInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 1582
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1594
    return-void
.end method

.method public whitelist requestTvRecordingInfoList(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1603
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1615
    return-void
.end method

.method blacklist resetInteractiveApp()V
    .registers 1

    .line 1763
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onResetInteractiveApp()V

    .line 1764
    return-void
.end method

.method blacklist scheduleMediaViewCleanup()V
    .registers 6

    .line 2346
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 2347
    .local v0, "mediaViewParent":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 2348
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService-IA;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    .line 2349
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2352
    :cond_19
    return-void
.end method

.method blacklist sendAvailableSpeeds([F)V
    .registers 2
    .param p1, "speeds"    # [F

    .line 1807
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAvailableSpeeds([F)V

    .line 1808
    return-void
.end method

.method blacklist sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "certBundle"    # Landroid/os/Bundle;

    .line 1823
    invoke-static {p3}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 1824
    .local v0, "cert":Landroid/net/http/SslCertificate;
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCertificate(Ljava/lang/String;ILandroid/net/http/SslCertificate;)V

    .line 1825
    return-void
.end method

.method blacklist sendCurrentChannelLcn(I)V
    .registers 2
    .param p1, "lcn"    # I

    .line 1787
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelLcn(I)V

    .line 1788
    return-void
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1783
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    .line 1784
    return-void
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1799
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    .line 1800
    return-void
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1779
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 1780
    return-void
.end method

.method public whitelist sendPlaybackCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 1128
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method blacklist sendSelectedTrackInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1945
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSelectedTrackInfo(Ljava/util/List;)V

    .line 1946
    return-void
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 1819
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSigningResult(Ljava/lang/String;[B)V

    .line 1820
    return-void
.end method

.method blacklist sendStreamVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .line 1791
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStreamVolume(F)V

    .line 1792
    return-void
.end method

.method public whitelist sendTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 1156
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1173
    return-void
.end method

.method blacklist sendTimeShiftMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1803
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftMode(I)V

    .line 1804
    return-void
.end method

.method blacklist sendTrackInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1795
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackInfoList(Ljava/util/List;)V

    .line 1796
    return-void
.end method

.method blacklist sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .registers 2
    .param p1, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1811
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    .line 1812
    return-void
.end method

.method blacklist sendTvRecordingInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    .line 1815
    .local p1, "recordingInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvRecordingInfoList(Ljava/util/List;)V

    .line 1816
    return-void
.end method

.method public whitelist setMediaViewEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 471
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    return-void
.end method

.method blacklist setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2209
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetSurface(Landroid/view/Surface;)Z

    .line 2210
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 2211
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2213
    :cond_c
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    .line 2215
    return-void
.end method

.method blacklist setTeletextAppEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1775
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetTeletextAppEnabled(Z)V

    .line 1776
    return-void
.end method

.method public whitelist setTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 4
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 1560
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1572
    return-void
.end method

.method public whitelist setVideoBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1180
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1196
    return-void
.end method

.method blacklist startInteractiveApp()V
    .registers 1

    .line 1755
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStartInteractiveApp()V

    .line 1756
    return-void
.end method

.method blacklist stopInteractiveApp()V
    .registers 1

    .line 1759
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStopInteractiveApp()V

    .line 1760
    return-void
.end method
