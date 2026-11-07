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
.field private static final greylist-max-o POSITION_UPDATE_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mCurrentPositionMs:J

.field private final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-r mOverlayFrame:Landroid/graphics/Rect;

.field private greylist-max-o mOverlayView:Landroid/view/View;

.field private greylist-max-o mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

.field private greylist-max-o mOverlayViewContainer:Landroid/widget/FrameLayout;

.field private greylist-max-o mOverlayViewEnabled:Z

.field private final greylist-max-o mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private greylist-max-o mStartPositionMs:J

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private final greylist-max-o mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

.field private final greylist-max-o mWindowManager:Landroid/view/WindowManager;

.field private greylist-max-o mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private greylist-max-o mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentPositionMs(Landroid/media/tv/TvInputService$Session;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayFrame(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayViewEnabled(Landroid/media/tv/TvInputService$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartPositionMs(Landroid/media/tv/TvInputService$Session;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeShiftPositionTrackingRunnable(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentPositionMs(Landroid/media/tv/TvInputService$Session;J)V
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewEnabled(Landroid/media/tv/TvInputService$Session;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartPositionMs(Landroid/media/tv/TvInputService$Session;J)V
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputService$Session;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimeShiftStartPositionChanged(Landroid/media/tv/TvInputService$Session;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 537
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    .line 538
    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    .line 539
    new-instance v0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService-IA;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    .line 554
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    .line 555
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    .line 556
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    .line 557
    return-void
.end method

.method private greylist-max-o executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 2315
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2316
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v1, :cond_d

    .line 2318
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2320
    :cond_d
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2321
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 2324
    :cond_1d
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2327
    :goto_22
    monitor-exit v0

    .line 2328
    return-void

    .line 2327
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private greylist-max-o initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    .line 2305
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2306
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    .line 2307
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2308
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2309
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_b

    .line 2310
    :cond_1b
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2311
    monitor-exit v0

    .line 2312
    return-void

    .line 2311
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private greylist-max-o notifyTimeShiftCurrentPositionChanged(J)V
    .registers 4
    .param p1, "timeMs"    # J

    .line 1142
    new-instance v0, Landroid/media/tv/TvInputService$Session$20;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$20;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1156
    return-void
.end method

.method private greylist-max-o notifyTimeShiftStartPositionChanged(J)V
    .registers 4
    .param p1, "timeMs"    # J

    .line 1125
    new-instance v0, Landroid/media/tv/TvInputService$Session$19;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$19;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1139
    return-void
.end method


# virtual methods
.method greylist-max-o appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2029
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2030
    return-void
.end method

.method greylist-max-o createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 2040
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 2041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    .line 2044
    :cond_8
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 2045
    iput-object p2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    .line 2046
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    .line 2047
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    if-nez v0, :cond_1e

    .line 2048
    return-void

    .line 2050
    :cond_1e
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onCreateOverlayView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    .line 2051
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    if-nez v0, :cond_29

    .line 2052
    return-void

    .line 2054
    :cond_29
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    if-eqz v0, :cond_36

    .line 2055
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;->cancel(Z)Z

    .line 2056
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    .line 2061
    :cond_36
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    .line 2062
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2065
    const/16 v7, 0x3ec

    .line 2069
    .local v7, "type":I
    const/16 v0, 0x218

    .line 2072
    .local v0, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2073
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    move v8, v0

    goto :goto_5a

    .line 2072
    :cond_59
    move v8, v0

    .line 2075
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

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2078
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2080
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2081
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2082
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2083
    return-void
.end method

.method greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .registers 10
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 2251
    const/4 v0, 0x0

    .line 2252
    .local v0, "isNavigationKey":Z
    const/4 v1, 0x0

    .line 2253
    .local v1, "skipDispatchToOverlayView":Z
    instance-of v2, p1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_34

    .line 2254
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 2255
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0, v5, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2256
    return v4

    .line 2258
    :cond_14
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/media/tv/TvInputService;->isNavigationKey(I)Z

    move-result v0

    .line 2263
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2264
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0xde

    if-ne v5, v6, :cond_2f

    goto :goto_31

    :cond_2f
    move v5, v3

    goto :goto_32

    :cond_31
    :goto_31
    move v5, v4

    :goto_32
    move v1, v5

    .line 2265
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :cond_33
    goto :goto_5e

    :cond_34
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_33

    .line 2266
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 2267
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 2268
    .local v5, "source":I
    invoke-virtual {v2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 2269
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 2270
    return v4

    .line 2272
    :cond_4c
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_57

    .line 2273
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 2274
    return v4

    .line 2277
    :cond_57
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 2278
    return v4

    .line 2282
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "source":I
    :cond_5e
    :goto_5e
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9d

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_9d

    if-eqz v1, :cond_6d

    goto :goto_9d

    .line 2286
    :cond_6d
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 2287
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 2288
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, v4}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 2290
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_7e
    if-eqz v0, :cond_92

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 2296
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 2297
    return v4

    .line 2299
    :cond_92
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 2300
    const/4 v2, -0x1

    return v2

    .line 2284
    :cond_9d
    :goto_9d
    return v3
.end method

.method greylist-max-o dispatchSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1963
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/TvInputService$Session;->onSurfaceChanged(III)V

    .line 1964
    return-void
.end method

.method public whitelist layoutSurface(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1328
    if-gt p1, p3, :cond_12

    if-gt p2, p4, :cond_12

    .line 1331
    new-instance v0, Landroid/media/tv/TvInputService$Session$27;

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
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputService$Session$27;-><init>(Landroid/media/tv/TvInputService$Session;IIII)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1346
    return-void

    .line 1328
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

    .line 1329
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

.method public whitelist notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 1068
    :try_start_0
    invoke-static {p1}, Landroid/media/tv/AdBuffer;->dupAdBuffer(Landroid/media/tv/AdBuffer;)Landroid/media/tv/AdBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_e

    .line 1072
    .local v0, "dupBuffer":Landroid/media/tv/AdBuffer;
    nop

    .line 1073
    new-instance v1, Landroid/media/tv/TvInputService$Session$17;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$Session$17;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/AdBuffer;)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1091
    return-void

    .line 1069
    .end local v0    # "dupBuffer":Landroid/media/tv/AdBuffer;
    :catch_e
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TvInputService"

    const-string v2, "dup AdBuffer error in notifyAdBufferConsumed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    return-void
.end method

.method blacklist notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 2235
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 2236
    return-void
.end method

.method public whitelist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 1044
    new-instance v0, Landroid/media/tv/TvInputService$Session$16;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$16;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/AdResponse;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1058
    return-void
.end method

.method public whitelist notifyAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    .registers 3
    .param p1, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 1168
    new-instance v0, Landroid/media/tv/TvInputService$Session$21;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$21;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/AitInfo;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1182
    return-void
.end method

.method public whitelist notifyAudioPresentationChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 832
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 833
    .local v0, "ap":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    new-instance v1, Landroid/media/tv/TvInputService$Session$10;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$Session$10;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 849
    return-void
.end method

.method public whitelist notifyAudioPresentationSelected(II)V
    .registers 4
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 866
    new-instance v0, Landroid/media/tv/TvInputService$Session$11;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$11;-><init>(Landroid/media/tv/TvInputService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public whitelist notifyAvailableSpeeds([F)V
    .registers 3
    .param p1, "speeds"    # [F

    .line 1222
    new-instance v0, Landroid/media/tv/TvInputService$Session$23;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$23;-><init>(Landroid/media/tv/TvInputService$Session;[F)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1237
    return-void
.end method

.method public whitelist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 1021
    new-instance v0, Landroid/media/tv/TvInputService$Session$15;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$15;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/BroadcastInfoResponse;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1035
    return-void
.end method

.method public whitelist notifyChannelRetuned(Landroid/net/Uri;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 627
    new-instance v0, Landroid/media/tv/TvInputService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$3;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method public whitelist notifyContentAllowed()V
    .registers 2

    .line 910
    new-instance v0, Landroid/media/tv/TvInputService$Session$12;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$12;-><init>(Landroid/media/tv/TvInputService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method public whitelist notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 954
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v0, Landroid/media/tv/TvInputService$Session$13;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$13;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvContentRating;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 969
    return-void
.end method

.method public whitelist notifyCueingMessageAvailability(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 1269
    new-instance v0, Landroid/media/tv/TvInputService$Session$25;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$25;-><init>(Landroid/media/tv/TvInputService$Session;Z)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1283
    return-void
.end method

.method public whitelist notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 601
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v0, Landroid/media/tv/TvInputService$Session$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$2;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method public whitelist notifySignalStrength(I)V
    .registers 3
    .param p1, "strength"    # I

    .line 1243
    new-instance v0, Landroid/media/tv/TvInputService$Session$24;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$24;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1257
    return-void
.end method

.method public whitelist notifyTimeShiftMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 1193
    new-instance v0, Landroid/media/tv/TvInputService$Session$22;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$22;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method public whitelist notifyTimeShiftStatusChanged(I)V
    .registers 3
    .param p1, "status"    # I

    .line 997
    new-instance v0, Landroid/media/tv/TvInputService$Session$14;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$14;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public whitelist notifyTrackSelected(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 709
    new-instance v0, Landroid/media/tv/TvInputService$Session$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$6;-><init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 723
    return-void
.end method

.method public whitelist notifyTracksChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 677
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 678
    .local v0, "tracksCopy":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    new-instance v1, Landroid/media/tv/TvInputService$Session$5;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$Session$5;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 692
    return-void
.end method

.method public whitelist notifyTuned(Landroid/net/Uri;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 649
    new-instance v0, Landroid/media/tv/TvInputService$Session$4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$4;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 663
    return-void
.end method

.method blacklist notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2239
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2240
    return-void
.end method

.method public whitelist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1108
    new-instance v0, Landroid/media/tv/TvInputService$Session$18;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$18;-><init>(Landroid/media/tv/TvInputService$Session;ILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method public whitelist notifyVideoAvailable()V
    .registers 2

    .line 736
    new-instance v0, Landroid/media/tv/TvInputService$Session$7;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$7;-><init>(Landroid/media/tv/TvInputService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method public whitelist notifyVideoFreezeUpdated(Z)V
    .registers 3
    .param p1, "isFrozen"    # Z

    .line 799
    new-instance v0, Landroid/media/tv/TvInputService$Session$9;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$9;-><init>(Landroid/media/tv/TvInputService$Session;Z)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 815
    return-void
.end method

.method public whitelist notifyVideoUnavailable(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 769
    if-ltz p1, :cond_6

    const/16 v0, 0x12

    if-le p1, v0, :cond_1e

    .line 771
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoUnavailable - unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvInputService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1e
    new-instance v0, Landroid/media/tv/TvInputService$Session$8;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$8;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public whitelist onAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 1457
    return-void
.end method

.method public whitelist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1590
    return-void
.end method

.method public whitelist onCreateOverlayView()Landroid/view/View;
    .registers 2

    .line 1599
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1913
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1817
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1837
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1858
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1877
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOverlayViewSizeChanged(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1415
    return-void
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onRemoveBroadcastInfo(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 1441
    return-void
.end method

.method public whitelist onRequestAd(Landroid/media/tv/AdRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 1449
    return-void
.end method

.method public whitelist onRequestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 1435
    return-void
.end method

.method public whitelist onResumePlayback()V
    .registers 1

    .line 1655
    return-void
.end method

.method public whitelist onSelectAudioPresentation(II)Z
    .registers 4
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 1576
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSelectTrack(ILjava/lang/String;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist onSetCaptionEnabled(Z)V
.end method

.method public whitelist onSetInteractiveAppNotificationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1560
    return-void
.end method

.method public whitelist onSetMain(Z)V
    .registers 2
    .param p1, "isMain"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1377
    return-void
.end method

.method public abstract whitelist onSetStreamVolume(F)V
.end method

.method public abstract whitelist onSetSurface(Landroid/view/Surface;)Z
.end method

.method public whitelist onSetTvMessageEnabled(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 1612
    return-void
.end method

.method public blacklist onSetVideoFrozen(Z)V
    .registers 2
    .param p1, "isFrozen"    # Z

    .line 1666
    return-void
.end method

.method public whitelist onStopPlayback(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1644
    return-void
.end method

.method public whitelist onSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1401
    return-void
.end method

.method public whitelist onTimeShiftGetCurrentPosition()J
    .registers 3

    .line 1798
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public whitelist onTimeShiftGetStartPosition()J
    .registers 3

    .line 1776
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public whitelist onTimeShiftPause()V
    .registers 1

    .line 1693
    return-void
.end method

.method public whitelist onTimeShiftPlay(Landroid/net/Uri;)V
    .registers 2
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 1680
    return-void
.end method

.method public whitelist onTimeShiftResume()V
    .registers 1

    .line 1706
    return-void
.end method

.method public whitelist onTimeShiftSeekTo(J)V
    .registers 3
    .param p1, "timeMs"    # J

    .line 1723
    return-void
.end method

.method public whitelist onTimeShiftSetMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1752
    return-void
.end method

.method public whitelist onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 1741
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1889
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1901
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist onTune(Landroid/net/Uri;)Z
.end method

.method public whitelist onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1498
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public whitelist onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1471
    return-void
.end method

.method public whitelist onTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1629
    return-void
.end method

.method blacklist onTvMessageReceived(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2243
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTvMessage(ILandroid/os/Bundle;)V

    .line 2244
    return-void
.end method

.method public whitelist onUnblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 2
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .line 1525
    return-void
.end method

.method greylist-max-o relayoutOverlayView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 2092
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    .line 2093
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 2096
    :cond_1c
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    .line 2098
    :cond_29
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    .line 2099
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_34

    goto :goto_5c

    .line 2102
    :cond_34
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2103
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2104
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2105
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2106
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2107
    return-void

    .line 2100
    :cond_5c
    :goto_5c
    return-void
.end method

.method greylist-max-o release()V
    .registers 3

    .line 1921
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 1922
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1923
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1924
    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    .line 1926
    :cond_f
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1927
    :try_start_12
    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    .line 1928
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1929
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_26

    .line 1932
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    .line 1933
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1934
    return-void

    .line 1929
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method blacklist removeBroadcastInfo(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 2227
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onRemoveBroadcastInfo(I)V

    .line 2228
    return-void
.end method

.method greylist-max-o removeOverlayView(Z)V
    .registers 5
    .param p1, "clearWindowToken"    # Z

    .line 2114
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2115
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 2116
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    .line 2118
    :cond_7
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1f

    .line 2122
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2123
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    .line 2124
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2125
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    .line 2126
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2128
    :cond_1f
    return-void
.end method

.method blacklist requestAd(Landroid/media/tv/AdRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 2231
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onRequestAd(Landroid/media/tv/AdRequest;)V

    .line 2232
    return-void
.end method

.method blacklist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 2223
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onRequestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 2224
    return-void
.end method

.method blacklist resumePlayback()V
    .registers 1

    .line 2141
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onResumePlayback()V

    .line 2142
    return-void
.end method

.method greylist-max-o scheduleOverlayViewCleanup()V
    .registers 6

    .line 2214
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    .line 2215
    .local v0, "overlayViewParent":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 2216
    new-instance v1, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;-><init>(Landroid/media/tv/TvInputService-IA;)V

    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    .line 2217
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2220
    :cond_19
    return-void
.end method

.method blacklist selectAudioPresentation(II)V
    .registers 3
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 1993
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onSelectAudioPresentation(II)Z

    .line 1994
    return-void
.end method

.method greylist-max-o selectTrack(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 2000
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onSelectTrack(ILjava/lang/String;)Z

    .line 2001
    return-void
.end method

.method public whitelist sendTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1300
    new-instance v0, Landroid/media/tv/TvInputService$Session$26;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$26;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1314
    return-void
.end method

.method greylist-max-o setCaptionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1986
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetCaptionEnabled(Z)V

    .line 1987
    return-void
.end method

.method blacklist setInteractiveAppNotificationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2015
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetInteractiveAppNotificationEnabled(Z)V

    .line 2016
    return-void
.end method

.method greylist-max-o setMain(Z)V
    .registers 2
    .param p1, "isMain"    # Z

    .line 1940
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetMain(Z)V

    .line 1941
    return-void
.end method

.method public whitelist setOverlayViewEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 574
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputService$Session$1;-><init>(Landroid/media/tv/TvInputService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    return-void
.end method

.method greylist-max-o setStreamVolume(F)V
    .registers 2
    .param p1, "volume"    # F

    .line 1970
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetStreamVolume(F)V

    .line 1971
    return-void
.end method

.method greylist-max-o setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1947
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetSurface(Landroid/view/Surface;)Z

    .line 1948
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 1949
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1951
    :cond_c
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    .line 1953
    return-void
.end method

.method blacklist setTvMessageEnabled(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 2022
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onSetTvMessageEnabled(IZ)V

    .line 2023
    return-void
.end method

.method blacklist setVideoFrozen(Z)V
    .registers 2
    .param p1, "isFrozen"    # Z

    .line 2148
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetVideoFrozen(Z)V

    .line 2149
    return-void
.end method

.method blacklist stopPlayback(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 2134
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onStopPlayback(I)V

    .line 2135
    return-void
.end method

.method greylist-max-o timeShiftEnablePositionTracking(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2200
    if-eqz p1, :cond_a

    .line 2201
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 2203
    :cond_a
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2204
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    .line 2205
    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    .line 2207
    :goto_17
    return-void
.end method

.method greylist-max-o timeShiftPause()V
    .registers 1

    .line 2163
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPause()V

    .line 2164
    return-void
.end method

.method greylist-max-o timeShiftPlay(Landroid/net/Uri;)V
    .registers 4
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 2155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    .line 2156
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPlay(Landroid/net/Uri;)V

    .line 2157
    return-void
.end method

.method greylist-max-o timeShiftResume()V
    .registers 1

    .line 2170
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftResume()V

    .line 2171
    return-void
.end method

.method greylist-max-o timeShiftSeekTo(J)V
    .registers 3
    .param p1, "timeMs"    # J

    .line 2177
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSeekTo(J)V

    .line 2178
    return-void
.end method

.method blacklist timeShiftSetMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 2191
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSetMode(I)V

    .line 2192
    return-void
.end method

.method greylist-max-o timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 2184
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 2185
    return-void
.end method

.method greylist-max-o tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1977
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    .line 1978
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z

    .line 1980
    return-void
.end method

.method greylist-max-o unblockContent(Ljava/lang/String;)V
    .registers 3
    .param p1, "unblockedRating"    # Ljava/lang/String;

    .line 2007
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->onUnblockContent(Landroid/media/tv/TvContentRating;)V

    .line 2009
    return-void
.end method
