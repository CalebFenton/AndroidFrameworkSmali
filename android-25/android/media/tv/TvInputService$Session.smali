.class public abstract Landroid/media/tv/TvInputService$Session;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    }
.end annotation


# static fields
.field private static final POSITION_UPDATE_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPositionMs:J

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOverlayFrame:Landroid/graphics/Rect;

.field private mOverlayView:Landroid/view/View;

.field private mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

.field private mOverlayViewContainer:Landroid/widget/FrameLayout;

.field private mOverlayViewEnabled:Z

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private mStartPositionMs:J

.field private mSurface:Landroid/view/Surface;

.field private final mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputService$Session;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvInputService$Session;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/tv/TvInputService$Session;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvInputService$Session;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvInputService$Session;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvInputService$Session;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/tv/TvInputService$Session;J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/tv/TvInputService$Session;J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    #@5
    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@a
    .line 290
    new-instance v0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;)V

    #@10
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@12
    .line 292
    new-instance v0, Ljava/lang/Object;

    #@14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@17
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    #@19
    .line 296
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    #@20
    .line 304
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    #@22
    .line 305
    const-string/jumbo v0, "window"

    #@25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/view/WindowManager;

    #@2b
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    #@2d
    .line 306
    new-instance v0, Landroid/os/Handler;

    #@2f
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@36
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@38
    .line 307
    const-wide/high16 v0, -0x8000000000000000L

    #@3a
    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    #@3c
    .line 303
    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1449
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1450
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1452
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    #@9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :goto_0
    monitor-exit v1

    #@d
    .line 1448
    return-void

    #@e
    .line 1454
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@10
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1455
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 1449
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 1458
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_0
.end method

.method private initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    #@0
    .prologue
    .line 1439
    iget-object v3, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1440
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    #@5
    .line 1441
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "runnable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Runnable;

    #@17
    .line 1442
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 1439
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "runnable$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2

    #@1e
    .line 1444
    .restart local v1    # "runnable$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    #@20
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 1438
    return-void
.end method

.method private notifyTimeShiftCurrentPositionChanged(J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 664
    new-instance v0, Landroid/media/tv/TvInputService$Session$12;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$12;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 663
    return-void
.end method

.method private notifyTimeShiftStartPositionChanged(J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 647
    new-instance v0, Landroid/media/tv/TvInputService$Session$11;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$11;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 646
    return-void
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1216
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    .line 1215
    return-void
.end method

.method createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1227
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1228
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    #@9
    .line 1231
    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    #@b
    .line 1232
    iput-object p2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@d
    .line 1233
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@f
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@11
    sub-int/2addr v0, v1

    #@12
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@14
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@16
    sub-int/2addr v1, v2

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    #@1a
    .line 1234
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 1235
    return-void

    #@1f
    .line 1237
    :cond_1
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onCreateOverlayView()Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    #@25
    .line 1238
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    #@27
    if-nez v0, :cond_2

    #@29
    .line 1239
    return-void

    #@2a
    .line 1241
    :cond_2
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 1242
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    #@30
    const/4 v1, 0x1

    #@31
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    #@34
    .line 1243
    iput-object v3, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    #@36
    .line 1248
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    #@38
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@41
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@43
    .line 1249
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@45
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    #@47
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@4a
    .line 1252
    const/16 v5, 0x3ec

    #@4c
    .line 1256
    .local v5, "type":I
    const/16 v6, 0x218

    #@4e
    .line 1259
    .local v6, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_4

    #@54
    .line 1260
    const v6, 0x1000218

    #@57
    .line 1262
    :cond_4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@59
    .line 1263
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@5b
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@5d
    sub-int/2addr v1, v2

    #@5e
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    #@60
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@62
    sub-int/2addr v2, v3

    #@63
    .line 1264
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@65
    iget v4, p2, Landroid/graphics/Rect;->top:I

    #@67
    const/4 v7, -0x2

    #@68
    .line 1262
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    #@6b
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@6d
    .line 1265
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@6f
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@71
    or-int/lit8 v1, v1, 0x40

    #@73
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@75
    .line 1267
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@77
    const v1, 0x800033

    #@7a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@7c
    .line 1268
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@7e
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@80
    .line 1269
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    #@82
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@84
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@86
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@89
    .line 1226
    return-void
.end method

.method dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 1386
    const/4 v0, 0x0

    #@3
    .line 1387
    .local v0, "isNavigationKey":Z
    const/4 v3, 0x0

    #@4
    .line 1388
    .local v3, "skipDispatchToOverlayView":Z
    instance-of v5, p1, Landroid/view/KeyEvent;

    #@6
    if-eqz v5, :cond_5

    #@8
    move-object v1, p1

    #@9
    .line 1389
    nop

    #@a
    nop

    #@b
    .line 1390
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@d
    invoke-virtual {v1, p0, v5, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 1391
    return v7

    #@14
    .line 1393
    :cond_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@17
    move-result v5

    #@18
    invoke-static {v5}, Landroid/media/tv/TvInputService;->isNavigationKey(I)Z

    #@1b
    move-result v0

    #@1c
    .line 1398
    .local v0, "isNavigationKey":Z
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@1f
    move-result v5

    #@20
    invoke-static {v5}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_3

    #@26
    .line 1399
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@29
    move-result v5

    #@2a
    const/16 v6, 0xde

    #@2c
    if-ne v5, v6, :cond_4

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 1417
    .end local v0    # "isNavigationKey":Z
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@31
    if-eqz v5, :cond_2

    #@33
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@35
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_2

    #@3b
    if-eqz v3, :cond_8

    #@3d
    .line 1419
    :cond_2
    return v8

    #@3e
    .line 1398
    .restart local v0    # "isNavigationKey":Z
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_3
    const/4 v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1399
    :cond_4
    const/4 v3, 0x0

    #@41
    goto :goto_0

    #@42
    .line 1400
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    .local v0, "isNavigationKey":Z
    :cond_5
    instance-of v5, p1, Landroid/view/MotionEvent;

    #@44
    if-eqz v5, :cond_1

    #@46
    move-object v2, p1

    #@47
    .line 1401
    nop

    #@48
    nop

    #@49
    .line 1402
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    #@4c
    move-result v4

    #@4d
    .line 1403
    .local v4, "source":I
    invoke-virtual {v2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_6

    #@53
    .line 1404
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_1

    #@59
    .line 1405
    return v7

    #@5a
    .line 1407
    :cond_6
    and-int/lit8 v5, v4, 0x4

    #@5c
    if-eqz v5, :cond_7

    #@5e
    .line 1408
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_1

    #@64
    .line 1409
    return v7

    #@65
    .line 1412
    :cond_7
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@68
    move-result v5

    #@69
    if-eqz v5, :cond_1

    #@6b
    .line 1413
    return v7

    #@6c
    .line 1421
    .end local v0    # "isNavigationKey":Z
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "source":I
    :cond_8
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@6e
    invoke-virtual {v5}, Landroid/view/View;->hasWindowFocus()Z

    #@71
    move-result v5

    #@72
    if-nez v5, :cond_9

    #@74
    .line 1422
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@76
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5, v7, v7}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    #@7d
    .line 1424
    :cond_9
    if-eqz v0, :cond_a

    #@7f
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@81
    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocusable()Z

    #@84
    move-result v5

    #@85
    if-eqz v5, :cond_a

    #@87
    .line 1430
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@89
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    #@90
    .line 1431
    return v7

    #@91
    .line 1433
    :cond_a
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@93
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v5, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    #@9a
    .line 1434
    const/4 v5, -0x1

    #@9b
    return v5
.end method

.method dispatchSurfaceChanged(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 1171
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/TvInputService$Session;->onSurfaceChanged(III)V

    #@3
    .line 1166
    return-void
.end method

.method public layoutSurface(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 692
    if-gt p1, p3, :cond_0

    #@2
    if-le p2, p4, :cond_1

    #@4
    .line 693
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Invalid parameter"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 695
    :cond_1
    new-instance v0, Landroid/media/tv/TvInputService$Session$13;

    #@f
    move-object v1, p0

    #@10
    move v2, p1

    #@11
    move v3, p2

    #@12
    move v4, p3

    #@13
    move v5, p4

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputService$Session$13;-><init>(Landroid/media/tv/TvInputService$Session;IIII)V

    #@17
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@1a
    .line 691
    return-void
.end method

.method public notifyChannelRetuned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 378
    new-instance v0, Landroid/media/tv/TvInputService$Session$3;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$3;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 377
    return-void
.end method

.method public notifyContentAllowed()V
    .locals 1

    #@0
    .prologue
    .line 543
    new-instance v0, Landroid/media/tv/TvInputService$Session$8;

    #@2
    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$8;-><init>(Landroid/media/tv/TvInputService$Session;)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 542
    return-void
.end method

.method public notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 587
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 588
    new-instance v0, Landroid/media/tv/TvInputService$Session$9;

    #@5
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$9;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvContentRating;)V

    #@8
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@b
    .line 586
    return-void
.end method

.method public notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 352
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 353
    new-instance v0, Landroid/media/tv/TvInputService$Session$2;

    #@5
    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$2;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    #@8
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@b
    .line 351
    return-void
.end method

.method public notifyTimeShiftStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 630
    new-instance v0, Landroid/media/tv/TvInputService$Session$10;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$10;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 629
    return-void
.end method

.method public notifyTrackSelected(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 438
    new-instance v0, Landroid/media/tv/TvInputService$Session$5;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$5;-><init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 437
    return-void
.end method

.method public notifyTracksChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 406
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 407
    .local v0, "tracksCopy":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    new-instance v1, Landroid/media/tv/TvInputService$Session$4;

    #@7
    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$Session$4;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V

    #@a
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@d
    .line 405
    return-void
.end method

.method public notifyVideoAvailable()V
    .locals 1

    #@0
    .prologue
    .line 465
    new-instance v0, Landroid/media/tv/TvInputService$Session$6;

    #@2
    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$6;-><init>(Landroid/media/tv/TvInputService$Session;)V

    #@5
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@8
    .line 464
    return-void
.end method

.method public notifyVideoUnavailable(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 498
    if-ltz p1, :cond_0

    #@2
    .line 499
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 500
    :cond_0
    const-string/jumbo v0, "TvInputService"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "notifyVideoUnavailable - unknown reason: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 502
    :cond_1
    new-instance v0, Landroid/media/tv/TvInputService$Session$7;

    #@21
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$7;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    #@24
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    #@27
    .line 497
    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 876
    return-void
.end method

.method public onCreateOverlayView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 886
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1025
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1045
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1066
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1085
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onOverlayViewSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 778
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onSelectTrack(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 863
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract onSetCaptionEnabled(Z)V
.end method

.method public onSetMain(Z)V
    .locals 0
    .param p1, "isMain"    # Z

    #@0
    .prologue
    .line 740
    return-void
.end method

.method public abstract onSetStreamVolume(F)V
.end method

.method public abstract onSetSurface(Landroid/view/Surface;)Z
.end method

.method public onSurfaceChanged(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 764
    return-void
.end method

.method public onTimeShiftGetCurrentPosition()J
    .locals 2

    #@0
    .prologue
    .line 1006
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    return-wide v0
.end method

.method public onTimeShiftGetStartPosition()J
    .locals 2

    #@0
    .prologue
    .line 986
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    return-wide v0
.end method

.method public onTimeShiftPause()V
    .locals 0

    #@0
    .prologue
    .line 913
    return-void
.end method

.method public onTimeShiftPlay(Landroid/net/Uri;)V
    .locals 0
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 900
    return-void
.end method

.method public onTimeShiftResume()V
    .locals 0

    #@0
    .prologue
    .line 926
    return-void
.end method

.method public onTimeShiftSeekTo(J)V
    .locals 0
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 943
    return-void
.end method

.method public onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 961
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1097
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1109
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract onTune(Landroid/net/Uri;)Z
.end method

.method public onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 818
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onUnblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 844
    return-void
.end method

.method relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1279
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v1

    #@e
    if-eq v0, v1, :cond_3

    #@10
    .line 1283
    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@12
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@14
    sub-int/2addr v0, v1

    #@15
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@17
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@19
    sub-int/2addr v1, v2

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    #@1d
    .line 1285
    :cond_1
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@1f
    .line 1286
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@25
    if-nez v0, :cond_4

    #@27
    .line 1287
    :cond_2
    return-void

    #@28
    .line 1280
    :cond_3
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@2a
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@31
    move-result v1

    #@32
    if-eq v0, v1, :cond_1

    #@34
    goto :goto_0

    #@35
    .line 1289
    :cond_4
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@37
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@3b
    .line 1290
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@3d
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@3f
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@41
    .line 1291
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@43
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@45
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@47
    sub-int/2addr v1, v2

    #@48
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@4a
    .line 1292
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@4c
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@4e
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@50
    sub-int/2addr v1, v2

    #@51
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@53
    .line 1293
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    #@55
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@57
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@59
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5c
    .line 1277
    return-void
.end method

.method release()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1129
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    #@4
    .line 1130
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1131
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    #@a
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@d
    .line 1132
    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    #@f
    .line 1134
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 1135
    const/4 v0, 0x0

    #@13
    :try_start_0
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    #@15
    .line 1136
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    #@17
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 1140
    const/4 v0, 0x1

    #@1c
    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    #@1f
    .line 1141
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@21
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@26
    .line 1128
    return-void

    #@27
    .line 1134
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method removeOverlayView(Z)V
    .locals 3
    .param p1, "clearWindowToken"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1301
    if-eqz p1, :cond_0

    #@3
    .line 1302
    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    #@5
    .line 1303
    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    #@7
    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1309
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@d
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@12
    .line 1310
    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    #@14
    .line 1311
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    #@16
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@18
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@1b
    .line 1312
    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@1d
    .line 1313
    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    #@1f
    .line 1299
    :cond_1
    return-void
.end method

.method scheduleOverlayViewCleanup()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1373
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    #@3
    .line 1374
    .local v0, "overlayViewParent":Landroid/view/View;
    if-eqz v0, :cond_0

    #@5
    .line 1375
    new-instance v1, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    #@7
    invoke-direct {v1, v2}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;-><init>(Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;)V

    #@a
    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    #@c
    .line 1376
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    #@e
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Landroid/view/View;

    #@13
    .line 1377
    const/4 v4, 0x0

    #@14
    aput-object v0, v3, v4

    #@16
    .line 1376
    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@19
    .line 1372
    :cond_0
    return-void
.end method

.method selectTrack(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1201
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onSelectTrack(ILjava/lang/String;)Z

    #@3
    .line 1200
    return-void
.end method

.method setCaptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1194
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetCaptionEnabled(Z)V

    #@3
    .line 1193
    return-void
.end method

.method setMain(Z)V
    .locals 0
    .param p1, "isMain"    # Z

    #@0
    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetMain(Z)V

    #@3
    .line 1147
    return-void
.end method

.method public setOverlayViewEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/tv/TvInputService$Session$1;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputService$Session$1;-><init>(Landroid/media/tv/TvInputService$Session;Z)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 324
    return-void
.end method

.method setStreamVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 1178
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetStreamVolume(F)V

    #@3
    .line 1177
    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetSurface(Landroid/view/Surface;)Z

    #@3
    .line 1156
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1157
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    #@9
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@c
    .line 1159
    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    #@e
    .line 1154
    return-void
.end method

.method timeShiftEnablePositionTracking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    .line 1359
    if-eqz p1, :cond_0

    #@4
    .line 1360
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 1358
    :goto_0
    return-void

    #@c
    .line 1362
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@e
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@13
    .line 1363
    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    #@15
    .line 1364
    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    #@17
    goto :goto_0
.end method

.method timeShiftPause()V
    .locals 0

    #@0
    .prologue
    .line 1329
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPause()V

    #@3
    .line 1328
    return-void
.end method

.method timeShiftPlay(Landroid/net/Uri;)V
    .locals 2
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1321
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    #@4
    .line 1322
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPlay(Landroid/net/Uri;)V

    #@7
    .line 1320
    return-void
.end method

.method timeShiftResume()V
    .locals 0

    #@0
    .prologue
    .line 1336
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftResume()V

    #@3
    .line 1335
    return-void
.end method

.method timeShiftSeekTo(J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 1343
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSeekTo(J)V

    #@3
    .line 1342
    return-void
.end method

.method timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    #@3
    .line 1349
    return-void
.end method

.method tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1185
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    #@4
    .line 1186
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z

    #@7
    .line 1184
    return-void
.end method

.method unblockContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "unblockedRating"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1208
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->onUnblockContent(Landroid/media/tv/TvContentRating;)V

    #@7
    .line 1207
    return-void
.end method
