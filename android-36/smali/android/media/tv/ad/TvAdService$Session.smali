.class public abstract Landroid/media/tv/ad/TvAdService$Session;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdService;
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

.field private blacklist mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

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

.field private blacklist mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;

.field private blacklist mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaFrame(Landroid/media/tv/ad/TvAdService$Session;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/ad/TvAdService$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/media/tv/ad/TvAdService$Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/ad/TvAdService$Session;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/ad/TvAdService$Session;Landroid/media/tv/ad/ITvAdSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->initialize(Landroid/media/tv/ad/ITvAdSessionCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    .line 186
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mContext:Landroid/content/Context;

    .line 187
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method private blacklist executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 788
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    if-nez v1, :cond_d

    .line 791
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 793
    :cond_d
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 794
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    .line 797
    :cond_1d
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    :goto_22
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist initialize(Landroid/media/tv/ad/ITvAdSessionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 720
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 722
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 723
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 724
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_b

    .line 725
    :cond_1b
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 726
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 811
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    .line 815
    :cond_8
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 816
    iput-object p2, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 817
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ad/TvAdService$Session;->onMediaViewSizeChanged(II)V

    .line 818
    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1e

    .line 819
    return-void

    .line 821
    :cond_1e
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    .line 822
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    if-nez v0, :cond_29

    .line 823
    return-void

    .line 825
    :cond_29
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    if-eqz v0, :cond_36

    .line 826
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;->cancel(Z)Z

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    .line 832
    :cond_36
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 833
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 835
    const/16 v7, 0x3e9

    .line 839
    .local v7, "type":I
    const/16 v0, 0x218

    .line 842
    .local v0, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 843
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    move v8, v0

    goto :goto_5a

    .line 842
    :cond_59
    move v8, v0

    .line 845
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

    iput-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 848
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 850
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 851
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 852
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    return-void
.end method

.method blacklist dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 690
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 691
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 692
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 693
    return v1

    .line 692
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_11
    goto :goto_3c

    .line 697
    :cond_12
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3c

    .line 698
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 699
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 700
    .local v2, "source":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 701
    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 702
    return v1

    .line 704
    :cond_2a
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_35

    .line 705
    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 706
    return v1

    .line 709
    :cond_35
    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 710
    return v1

    .line 697
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "source":I
    :cond_3c
    :goto_3c
    nop

    .line 715
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dispatchSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 749
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/ad/TvAdService$Session;->onSurfaceChanged(III)V

    .line 750
    return-void
.end method

.method public whitelist isMediaViewEnabled()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public whitelist layoutSurface(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 483
    if-gt p1, p3, :cond_12

    if-gt p2, p4, :cond_12

    .line 486
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$7;

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
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/ad/TvAdService$Session$7;-><init>(Landroid/media/tv/ad/TvAdService$Session;IIII)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 503
    return-void

    .line 483
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

    .line 484
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

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 773
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 774
    return-void
.end method

.method public whitelist notifySessionStateChanged(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "err"    # I

    .line 672
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$9;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session$9;-><init>(Landroid/media/tv/ad/TvAdService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 683
    return-void
.end method

.method blacklist notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 784
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 785
    return-void
.end method

.method blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 780
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onTvMessage(ILandroid/os/Bundle;)V

    .line 781
    return-void
.end method

.method public whitelist onCreateMediaView()Landroid/view/View;
    .registers 2

    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 541
    return-void
.end method

.method public whitelist onCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 553
    return-void
.end method

.method public whitelist onCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 535
    return-void
.end method

.method public whitelist onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 579
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMediaViewSizeChanged(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 622
    return-void
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onResetAdService()V
    .registers 1

    .line 267
    return-void
.end method

.method public abstract whitelist onSetSurface(Landroid/view/Surface;)Z
.end method

.method public whitelist onSigningResult(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 565
    return-void
.end method

.method public whitelist onStartAdService()V
    .registers 1

    .line 255
    return-void
.end method

.method public whitelist onStopAdService()V
    .registers 1

    .line 261
    return-void
.end method

.method public whitelist onSurfaceChanged(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 527
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 443
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

    .line 547
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 608
    return-void
.end method

.method public whitelist onTvMessage(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 596
    return-void
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 862
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 863
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 866
    :cond_1c
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ad/TvAdService$Session;->onMediaViewSizeChanged(II)V

    .line 868
    :cond_29
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 869
    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_34

    goto :goto_5c

    .line 872
    :cond_34
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 873
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 874
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 875
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 876
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    return-void

    .line 870
    :cond_5c
    :goto_5c
    return-void
.end method

.method blacklist release()V
    .registers 3

    .line 237
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onRelease()V

    .line 238
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 239
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 240
    iput-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    .line 242
    :cond_f
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_12
    iput-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    .line 244
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 245
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1f

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    .line 249
    return-void

    .line 245
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method blacklist removeMediaView(Z)V
    .registers 5
    .param p1, "clearWindowToken"    # Z

    .line 884
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 885
    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowToken:Landroid/os/IBinder;

    .line 886
    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    .line 888
    :cond_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1f

    .line 892
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 893
    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    .line 894
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 895
    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 896
    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 898
    :cond_1f
    return-void
.end method

.method public whitelist requestCurrentChannelUri()V
    .registers 2

    .line 309
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$3;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$3;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public whitelist requestCurrentTvInputId()V
    .registers 2

    .line 357
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$5;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$5;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public whitelist requestCurrentVideoBounds()V
    .registers 2

    .line 286
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$2;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$2;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method public whitelist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 11
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 396
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$6;

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
    invoke-direct/range {v0 .. v5}, Landroid/media/tv/ad/TvAdService$Session$6;-><init>(Landroid/media/tv/ad/TvAdService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method public whitelist requestTrackInfoList()V
    .registers 2

    .line 332
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$4;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$4;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method blacklist resetAdService()V
    .registers 1

    .line 278
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onResetAdService()V

    .line 279
    return-void
.end method

.method blacklist scheduleMediaViewCleanup()V
    .registers 6

    .line 905
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    .line 906
    .local v0, "mediaViewParent":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 907
    new-instance v1, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/ad/TvAdService-IA;)V

    iput-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    .line 908
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 911
    :cond_19
    return-void
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 757
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    .line 758
    return-void
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 765
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 753
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 754
    return-void
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 769
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onSigningResult(Ljava/lang/String;[B)V

    .line 770
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

    .line 761
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onTrackInfoList(Ljava/util/List;)V

    .line 762
    return-void
.end method

.method public whitelist sendTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 645
    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$8;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session$8;-><init>(Landroid/media/tv/ad/TvAdService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method public whitelist setMediaViewEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 204
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdService$Session$1;-><init>(Landroid/media/tv/ad/TvAdService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method blacklist setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 733
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onSetSurface(Landroid/view/Surface;)Z

    .line 734
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 735
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 737
    :cond_c
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    .line 739
    return-void
.end method

.method blacklist startAdService()V
    .registers 1

    .line 270
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onStartAdService()V

    .line 271
    return-void
.end method

.method blacklist stopAdService()V
    .registers 1

    .line 274
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onStopAdService()V

    .line 275
    return-void
.end method
