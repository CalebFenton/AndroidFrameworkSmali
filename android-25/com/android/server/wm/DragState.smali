.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0x1f4L

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field mClientChannel:Landroid/view/InputChannel;

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragInProgress:Z

.field mDragResult:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mFlags:I

.field mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalAlpha:F

.field mOriginalX:F

.field mOriginalY:F

.field mPid:I

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field mToken:Landroid/os/IBinder;

.field mTouchSource:I

.field final mTransformation:Landroid/view/animation/Transformation;

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    new-instance v0, Landroid/view/animation/Transformation;

    #@5
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTransformation:Landroid/view/animation/Transformation;

    #@a
    .line 108
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@c
    const/high16 v1, 0x3fc00000    # 1.5f

    #@e
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@11
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    #@13
    .line 112
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    .line 113
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@17
    .line 114
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@19
    .line 115
    iput p4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@1b
    .line 116
    iput-object p5, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@1d
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@24
    .line 111
    return-void
.end method

.method private broadcastDragEndedLw()V
    .locals 13

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 338
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@4
    move-result v10

    #@5
    .line 343
    .local v10, "myPid":I
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v12

    #@b
    .local v12, "ws$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v11

    #@15
    check-cast v11, Lcom/android/server/wm/WindowState;

    #@17
    .line 344
    .local v11, "ws":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    #@18
    .line 345
    .local v1, "x":F
    const/4 v2, 0x0

    #@19
    .line 346
    .local v2, "y":F
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@1b
    if-nez v0, :cond_1

    #@1d
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@1f
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    #@21
    iget v4, p0, Lcom/android/server/wm/DragState;->mPid:I

    #@23
    if-ne v0, v4, :cond_1

    #@25
    .line 348
    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@27
    .line 349
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@29
    .line 352
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@2b
    .line 351
    const/4 v0, 0x4

    #@2c
    move-object v4, v3

    #@2d
    move-object v5, v3

    #@2e
    move-object v6, v3

    #@2f
    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@32
    move-result-object v9

    #@33
    .line 354
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@35
    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 360
    :goto_1
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@3a
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    #@3c
    if-eq v10, v0, :cond_0

    #@3e
    .line 361
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@41
    goto :goto_0

    #@42
    .line 355
    :catch_0
    move-exception v8

    #@43
    .line 356
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Unable to drag-end window "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_1

    #@5e
    .line 364
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "evt":Landroid/view/DragEvent;
    .end local v11    # "ws":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@63
    .line 365
    const/4 v0, 0x0

    #@64
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@66
    .line 337
    return-void
.end method

.method private cleanUpDragLw()V
    .locals 4

    #@0
    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    #@3
    .line 390
    const/16 v0, 0x2002

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 391
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@f
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@11
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@13
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    #@16
    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->unregister()V

    #@19
    .line 398
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->reset()V

    #@1c
    .line 399
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    const/4 v1, 0x0

    #@1f
    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@21
    .line 401
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@25
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@29
    .line 388
    return-void
.end method

.method private createCancelAnimationLocked()Landroid/view/animation/Animation;
    .locals 9

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    .line 578
    new-instance v7, Landroid/view/animation/AnimationSet;

    #@6
    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@9
    .line 579
    .local v7, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@b
    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@d
    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@f
    move v3, v1

    #@10
    move v4, v2

    #@11
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@14
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@17
    .line 580
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@19
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    #@1b
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@1e
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@21
    .line 581
    const-wide/16 v0, 0x1f4

    #@23
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@26
    .line 582
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    #@28
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@2b
    .line 583
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@2e
    .line 584
    invoke-virtual {v7}, Landroid/view/animation/AnimationSet;->start()V

    #@31
    .line 585
    return-object v7
.end method

.method private createReturnAnimationLocked()Landroid/view/animation/Animation;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 566
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@4
    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@7
    .line 567
    .local v0, "set":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #@9
    .line 568
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    #@b
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@d
    sub-float/2addr v2, v3

    #@e
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    #@10
    iget v4, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@12
    sub-float/2addr v3, v4

    #@13
    .line 567
    invoke-direct {v1, v6, v2, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@16
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@19
    .line 569
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    #@1b
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    #@1d
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    #@1f
    const/high16 v4, 0x40000000    # 2.0f

    #@21
    div-float/2addr v3, v4

    #@22
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@25
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@28
    .line 570
    const-wide/16 v2, 0x1f4

    #@2a
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@2d
    .line 571
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    #@2f
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@32
    .line 572
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@35
    .line 573
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    #@38
    .line 574
    return-object v0
.end method

.method private isFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 589
    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 287
    if-nez p1, :cond_0

    #@4
    .line 288
    return v1

    #@5
    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 291
    return v1

    #@c
    .line 293
    :cond_1
    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@e
    and-int/lit16 v2, v2, 0x100

    #@10
    if-eqz v2, :cond_4

    #@12
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_4

    #@18
    .line 300
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    #@1a
    if-nez v2, :cond_3

    #@1c
    .line 301
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    #@1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    #@21
    move-result v3

    #@22
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@25
    move-result v3

    #@26
    if-ne v2, v3, :cond_5

    #@28
    .line 300
    :cond_3
    :goto_0
    return v0

    #@29
    .line 295
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@2b
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2d
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@30
    move-result-object v3

    #@31
    if-eq v2, v3, :cond_2

    #@33
    .line 296
    return v1

    #@34
    :cond_5
    move v0, v1

    #@35
    .line 301
    goto :goto_0
.end method

.method private isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "ws$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 330
    .local v0, "ws":Lcom/android/server/wm/WindowState;
    if-ne v0, p1, :cond_0

    #@14
    .line 331
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 334
    .end local v0    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .locals 8
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p8, "result"    # Z

    #@0
    .prologue
    .line 537
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    #@3
    move-result v1

    #@4
    .line 538
    .local v1, "winX":F
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    #@7
    move-result v2

    #@8
    .local v2, "winY":F
    move v0, p1

    #@9
    move-object v3, p4

    #@a
    move-object v4, p5

    #@b
    move-object v5, p6

    #@c
    move-object v6, p7

    #@d
    move/from16 v7, p8

    #@f
    .line 539
    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 11
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 268
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 269
    const/4 v1, 0x1

    #@c
    .line 270
    const/4 v8, 0x0

    #@d
    move-object v0, p1

    #@e
    move v2, p2

    #@f
    move v3, p3

    #@10
    move-object v5, p4

    #@11
    move-object v6, v4

    #@12
    move-object v7, v4

    #@13
    .line 269
    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@16
    move-result-object v10

    #@17
    .line 272
    .local v10, "event":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@19
    invoke-interface {v0, v10}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@1c
    .line 274
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 279
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@24
    move-result v0

    #@25
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@27
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    #@29
    if-eq v0, v1, :cond_0

    #@2b
    .line 280
    invoke-virtual {v10}, Landroid/view/DragEvent;->recycle()V

    #@2e
    .line 267
    .end local v10    # "event":Landroid/view/DragEvent;
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 275
    .restart local v10    # "event":Landroid/view/DragEvent;
    :catch_0
    move-exception v9

    #@30
    .line 276
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "WindowManager"

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "Unable to drag-start window "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 279
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@4d
    move-result v0

    #@4e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@50
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    #@52
    if-eq v0, v1, :cond_0

    #@54
    .line 280
    invoke-virtual {v10}, Landroid/view/DragEvent;->recycle()V

    #@57
    goto :goto_0

    #@58
    .line 277
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@59
    .line 279
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@5c
    move-result v1

    #@5d
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@5f
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    #@61
    if-eq v1, v2, :cond_1

    #@63
    .line 280
    invoke-virtual {v10}, Landroid/view/DragEvent;->recycle()V

    #@66
    .line 277
    :cond_1
    throw v0
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "targetWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 307
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 308
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@7
    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->targetSdk:I

    #@9
    const/16 v2, 0x18

    #@b
    if-lt v1, v2, :cond_1

    #@d
    .line 307
    :cond_0
    :goto_0
    return v0

    #@e
    .line 308
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method


# virtual methods
.method broadcastDragStartedLw(FF)V
    .locals 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 226
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@5
    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    #@7
    .line 227
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@9
    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    #@b
    .line 231
    iget-object v8, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@d
    if-eqz v8, :cond_0

    #@f
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@11
    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@14
    move-result-object v5

    #@15
    :cond_0
    iput-object v5, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    #@17
    .line 232
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 233
    iput-boolean v7, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@1e
    .line 235
    iget v5, p0, Lcom/android/server/wm/DragState;->mUid:I

    #@20
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@23
    move-result v5

    #@24
    iput v5, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    #@26
    .line 238
    const-string/jumbo v5, "user"

    #@29
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/os/IUserManager;

    #@2f
    .line 240
    .local v3, "userManager":Landroid/os/IUserManager;
    :try_start_0
    iget v5, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    #@31
    invoke-interface {v3, v5}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    #@34
    move-result-object v5

    #@35
    .line 241
    const-string/jumbo v8, "no_cross_profile_copy_paste"

    #@38
    .line 240
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_1

    #@3e
    move v5, v6

    #@3f
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 251
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@43
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@46
    move-result-object v4

    #@47
    .line 252
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@4a
    move-result v0

    #@4b
    .line 253
    .local v0, "N":I
    const/4 v2, 0x0

    #@4c
    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    #@4e
    .line 254
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Lcom/android/server/wm/WindowState;

    #@54
    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    #@56
    invoke-direct {p0, v5, p1, p2, v6}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    #@59
    .line 253
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_2

    #@5c
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    move v5, v7

    #@5d
    .line 240
    goto :goto_0

    #@5e
    .line 242
    :catch_0
    move-exception v1

    #@5f
    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WindowManager"

    #@62
    new-instance v7, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v8, "Remote Exception calling UserManager: "

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 244
    iput-boolean v6, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    #@7b
    goto :goto_1

    #@7c
    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v4    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    return-void
.end method

.method cancelDragLw()V
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 382
    return-void

    #@5
    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@b
    .line 385
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@10
    .line 380
    return-void
.end method

.method endDragLw()V
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 370
    return-void

    #@5
    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@7
    if-nez v0, :cond_1

    #@9
    .line 373
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/view/animation/Animation;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@f
    .line 374
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@14
    .line 375
    return-void

    #@15
    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->cleanUpDragLw()V

    #@18
    .line 368
    return-void
.end method

.method getDragLayerLw()I
    .locals 2

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    const/16 v1, 0x7e0

    #@6
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@9
    move-result v0

    #@a
    mul-int/lit16 v0, v0, 0x2710

    #@c
    add-int/lit16 v0, v0, 0x3e8

    #@e
    return v0
.end method

.method notifyDropLw(FF)Z
    .locals 23
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 474
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 475
    const/4 v3, 0x0

    #@7
    return v3

    #@8
    .line 477
    :cond_0
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p0

    #@c
    iput v0, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@e
    .line 478
    move/from16 v0, p2

    #@10
    move-object/from16 v1, p0

    #@12
    iput v0, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@14
    .line 480
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@18
    move/from16 v0, p1

    #@1a
    move/from16 v1, p2

    #@1c
    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    #@1f
    move-result-object v9

    #@20
    .line 482
    .local v9, "touchedWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@22
    invoke-direct {v0, v9}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_1

    #@28
    .line 485
    const/4 v3, 0x0

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-boolean v3, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@2d
    .line 486
    const/4 v3, 0x1

    #@2e
    return v3

    #@2f
    .line 493
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    #@32
    move-result v3

    #@33
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@36
    move-result v8

    #@37
    .line 495
    .local v8, "targetUserId":I
    const/4 v2, 0x0

    #@38
    .line 496
    .local v2, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    move-object/from16 v0, p0

    #@3a
    iget v3, v0, Lcom/android/server/wm/DragState;->mFlags:I

    #@3c
    and-int/lit16 v3, v3, 0x100

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 497
    move-object/from16 v0, p0

    #@42
    iget v3, v0, Lcom/android/server/wm/DragState;->mFlags:I

    #@44
    and-int/lit8 v3, v3, 0x3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 498
    new-instance v2, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    #@4a
    .line 499
    .end local v2    # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@4e
    .line 500
    move-object/from16 v0, p0

    #@50
    iget v4, v0, Lcom/android/server/wm/DragState;->mUid:I

    #@52
    .line 501
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 502
    move-object/from16 v0, p0

    #@58
    iget v6, v0, Lcom/android/server/wm/DragState;->mFlags:I

    #@5a
    and-int/lit16 v6, v6, 0xc3

    #@5c
    .line 503
    move-object/from16 v0, p0

    #@5e
    iget v7, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    #@60
    .line 498
    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Landroid/content/ClipData;ILjava/lang/String;III)V

    #@63
    .line 506
    :cond_2
    move-object/from16 v0, p0

    #@65
    iget v3, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    #@67
    if-eq v3, v8, :cond_3

    #@69
    .line 507
    move-object/from16 v0, p0

    #@6b
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget v4, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    #@71
    invoke-virtual {v3, v4}, Landroid/content/ClipData;->fixUris(I)V

    #@74
    .line 509
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@77
    move-result v21

    #@78
    .line 510
    .local v21, "myPid":I
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@7a
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@7d
    move-result-object v22

    #@7e
    .line 512
    .local v22, "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@80
    iget-object v15, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@82
    .line 511
    const/4 v10, 0x3

    #@83
    .line 512
    const/4 v13, 0x0

    #@84
    const/4 v14, 0x0

    #@85
    const/16 v17, 0x0

    #@87
    move/from16 v11, p1

    #@89
    move/from16 v12, p2

    #@8b
    move-object/from16 v16, v2

    #@8d
    .line 511
    invoke-static/range {v9 .. v17}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@90
    move-result-object v19

    #@91
    .line 514
    .local v19, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@93
    move-object/from16 v0, v19

    #@95
    invoke-interface {v3, v0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@98
    .line 517
    move-object/from16 v0, p0

    #@9a
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9c
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@9e
    const/16 v4, 0x15

    #@a0
    move-object/from16 v0, v22

    #@a2
    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    #@a5
    .line 518
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a9
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@ab
    const/16 v4, 0x15

    #@ad
    move-object/from16 v0, v22

    #@af
    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b2
    move-result-object v20

    #@b3
    .line 519
    .local v20, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@b5
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b7
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@b9
    const-wide/16 v4, 0x1388

    #@bb
    move-object/from16 v0, v20

    #@bd
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c0
    .line 524
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@c2
    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    #@c4
    move/from16 v0, v21

    #@c6
    if-eq v0, v3, :cond_4

    #@c8
    .line 525
    invoke-virtual/range {v19 .. v19}, Landroid/view/DragEvent;->recycle()V

    #@cb
    .line 528
    :cond_4
    move-object/from16 v0, v22

    #@cd
    move-object/from16 v1, p0

    #@cf
    iput-object v0, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@d1
    .line 529
    const/4 v3, 0x0

    #@d2
    return v3

    #@d3
    .line 520
    .end local v20    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v18

    #@d4
    .line 521
    .local v18, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "WindowManager"

    #@d7
    new-instance v4, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v5, "can\'t send drop notification to win "

    #@df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v4

    #@e3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v4

    #@e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v4

    #@eb
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ee
    .line 522
    const/4 v3, 0x1

    #@ef
    .line 524
    iget-object v4, v9, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@f1
    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    #@f3
    move/from16 v0, v21

    #@f5
    if-eq v0, v4, :cond_5

    #@f7
    .line 525
    invoke-virtual/range {v19 .. v19}, Landroid/view/DragEvent;->recycle()V

    #@fa
    .line 522
    :cond_5
    return v3

    #@fb
    .line 523
    .end local v18    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@fc
    .line 524
    iget-object v4, v9, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@fe
    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    #@100
    move/from16 v0, v21

    #@102
    if-eq v0, v4, :cond_6

    #@104
    .line 525
    invoke-virtual/range {v19 .. v19}, Landroid/view/DragEvent;->recycle()V

    #@107
    .line 523
    :cond_6
    throw v3
.end method

.method notifyLocationLw(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    #@5
    move-result-object v12

    #@6
    .line 431
    .local v12, "touchedWin":Lcom/android/server/wm/WindowState;
    if-eqz v12, :cond_0

    #@8
    invoke-direct {p0, v12}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_3

    #@e
    .line 438
    .end local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@11
    move-result v11

    #@12
    .line 441
    .local v11, "myPid":I
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@14
    if-eq v12, v0, :cond_1

    #@16
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 446
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@1c
    .line 447
    const/4 v2, 0x0

    #@1d
    const/4 v3, 0x0

    #@1e
    .line 446
    const/4 v1, 0x6

    #@1f
    .line 447
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    const/4 v8, 0x0

    #@24
    .line 446
    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@27
    move-result-object v10

    #@28
    .line 448
    .local v10, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@2a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2c
    invoke-interface {v0, v10}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@2f
    .line 449
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@31
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@33
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    #@35
    if-eq v11, v0, :cond_1

    #@37
    .line 450
    invoke-virtual {v10}, Landroid/view/DragEvent;->recycle()V

    #@3a
    .line 453
    .end local v10    # "evt":Landroid/view/DragEvent;
    :cond_1
    if-eqz v12, :cond_2

    #@3c
    .line 457
    const/4 v1, 0x2

    #@3d
    .line 458
    const/4 v4, 0x0

    #@3e
    const/4 v5, 0x0

    #@3f
    const/4 v6, 0x0

    #@40
    const/4 v7, 0x0

    #@41
    const/4 v8, 0x0

    #@42
    move-object v0, v12

    #@43
    move v2, p1

    #@44
    move v3, p2

    #@45
    .line 457
    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    #@48
    move-result-object v10

    #@49
    .line 459
    .restart local v10    # "evt":Landroid/view/DragEvent;
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@4b
    invoke-interface {v0, v10}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@4e
    .line 460
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@50
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    #@52
    if-eq v11, v0, :cond_2

    #@54
    .line 461
    invoke-virtual {v10}, Landroid/view/DragEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 467
    .end local v10    # "evt":Landroid/view/DragEvent;
    .end local v11    # "myPid":I
    :cond_2
    :goto_1
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@59
    .line 428
    return-void

    #@5a
    .line 434
    .restart local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v12, 0x0

    #@5b
    .local v12, "touchedWin":Lcom/android/server/wm/WindowState;
    goto :goto_0

    #@5c
    .line 464
    .end local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v9

    #@5d
    .line 465
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@60
    const-string/jumbo v1, "can\'t send drag notification to windows"

    #@63
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_1
.end method

.method notifyMoveLw(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 406
    return-void

    #@5
    .line 408
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@7
    .line 409
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@9
    .line 414
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@c
    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@e
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@10
    sub-float v1, p1, v1

    #@12
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@14
    sub-float v2, p2, v2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 421
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1c
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationLw(FF)V

    #@1f
    .line 404
    return-void

    #@20
    .line 420
    :catchall_0
    move-exception v0

    #@21
    .line 421
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@24
    .line 420
    throw v0
.end method

.method overridePointerIconLw(I)V
    .locals 2
    .param p1, "touchSource"    # I

    #@0
    .prologue
    .line 593
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    #@2
    .line 594
    const/16 v0, 0x2002

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 595
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@d
    move-result-object v0

    #@e
    const/16 v1, 0x3fd

    #@10
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    #@13
    .line 592
    :cond_0
    return-void
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    const-wide v10, 0x12a05f200L

    #@5
    const/4 v8, 0x1

    #@6
    const/4 v7, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    .line 138
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 139
    const-string/jumbo v2, "WindowManager"

    #@f
    const-string/jumbo v3, "Duplicate register of drag input channel"

    #@12
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 136
    :goto_0
    return-void

    #@16
    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@22
    .line 143
    const-string/jumbo v2, "drag"

    #@25
    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@28
    move-result-object v0

    #@29
    .line 144
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    #@2b
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@2d
    .line 145
    aget-object v2, v0, v8

    #@2f
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@31
    .line 146
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@35
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@37
    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    #@3a
    .line 147
    new-instance v2, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@3c
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@43
    .line 148
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@47
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@4a
    move-result-object v5

    #@4b
    .line 147
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@4e
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@50
    .line 150
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    #@52
    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@55
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@57
    .line 151
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@59
    const-string/jumbo v3, "drag"

    #@5c
    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@5e
    .line 152
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@60
    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@62
    .line 155
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    #@64
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@66
    .line 156
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@69
    move-result v4

    #@6a
    .line 155
    invoke-direct {v2, v3, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@6d
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6f
    .line 157
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@71
    const-string/jumbo v3, "drag"

    #@74
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@76
    .line 158
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@78
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@7a
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@7c
    .line 159
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@7e
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    #@81
    move-result v3

    #@82
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@84
    .line 160
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@86
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@88
    .line 161
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@8a
    const/16 v3, 0x7e0

    #@8c
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@8e
    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@90
    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@92
    .line 164
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@94
    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@96
    .line 165
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@98
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@9a
    .line 166
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@9c
    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@9e
    .line 167
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a0
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@a2
    .line 168
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a4
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@a6
    .line 169
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a8
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@ab
    move-result v3

    #@ac
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@ae
    .line 170
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@b0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@b3
    move-result v3

    #@b4
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@b6
    .line 171
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@b8
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@ba
    .line 172
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@bc
    const/high16 v3, 0x3f800000    # 1.0f

    #@be
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@c0
    .line 175
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@c2
    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@c4
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    #@c7
    .line 178
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@c9
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@cb
    .line 179
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@cd
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@cf
    .line 180
    new-instance v1, Landroid/graphics/Point;

    #@d1
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@d4
    .line 181
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@d7
    .line 182
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@d9
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@db
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@dd
    .line 183
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@df
    iget v3, v1, Landroid/graphics/Point;->y:I

    #@e1
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@e3
    .line 189
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e5
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    #@e8
    goto/16 :goto_0
.end method

.method reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 121
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@b
    .line 124
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@d
    .line 125
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@10
    .line 126
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@12
    .line 127
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@14
    .line 128
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@16
    .line 129
    iput v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@18
    iput v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@1a
    .line 130
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@1c
    .line 120
    return-void
.end method

.method sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 319
    return-void

    #@b
    .line 324
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@d
    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@f
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    #@11
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    #@14
    .line 315
    :cond_1
    return-void
.end method

.method stepAnimationLocked(J)Z
    .locals 7
    .param p1, "currentTimeMs"    # J

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 544
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 545
    return v5

    #@7
    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransformation:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    #@c
    .line 549
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimation:Landroid/view/animation/Animation;

    #@e
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTransformation:Landroid/view/animation/Transformation;

    #@10
    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 550
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->cleanUpDragLw()V

    #@19
    .line 551
    return v5

    #@1a
    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransformation:Landroid/view/animation/Transformation;

    #@1c
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@1f
    move-result-object v1

    #@20
    .line 555
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@22
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@24
    sub-float/2addr v2, v3

    #@25
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@27
    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@29
    sub-float/2addr v3, v4

    #@2a
    .line 554
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@2d
    .line 556
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    #@31
    .line 557
    .local v0, "tmpFloats":[F
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransformation:Landroid/view/animation/Transformation;

    #@33
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@3a
    .line 558
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3c
    const/4 v2, 0x2

    #@3d
    aget v2, v0, v2

    #@3f
    const/4 v3, 0x5

    #@40
    aget v3, v0, v3

    #@42
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@45
    .line 559
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@47
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTransformation:Landroid/view/animation/Transformation;

    #@49
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    #@4c
    move-result v2

    #@4d
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@50
    .line 560
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@52
    aget v2, v0, v5

    #@54
    const/4 v3, 0x3

    #@55
    aget v3, v0, v3

    #@57
    .line 561
    aget v4, v0, v6

    #@59
    const/4 v5, 0x4

    #@5a
    aget v5, v0, v5

    #@5c
    .line 560
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@5f
    .line 562
    return v6
.end method

.method unregister()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 195
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 196
    const-string/jumbo v0, "WindowManager"

    #@8
    const-string/jumbo v1, "Unregister of nonexistent drag input channel"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 193
    :goto_0
    return-void

    #@f
    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@13
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@18
    .line 199
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    #@1d
    .line 200
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@1f
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@21
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@24
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@26
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@29
    .line 203
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@2b
    .line 204
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@2d
    .line 206
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@2f
    .line 207
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@31
    .line 213
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    #@36
    goto :goto_0
.end method
