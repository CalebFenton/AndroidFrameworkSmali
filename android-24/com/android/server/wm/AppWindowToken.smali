.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final allAppWindows:Lcom/android/server/wm/WindowList;

.field allDrawn:Z

.field allDrawnExcludingSaved:Z

.field appFullscreen:Z

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field inputDispatchingTimeoutNanos:J

.field lastTransactionSequence:J

.field layoutConfigChanges:Z

.field mAlwaysFocusable:Z

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mAppStopped:Z

.field mEnteringAnimation:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mIsExiting:Z

.field mLaunchTaskBehind:Z

.field mPendingRelaunchCount:I

.field private mSurfaceViewBackgrounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;",
            ">;"
        }
    .end annotation
.end field

.field mTask:Lcom/android/server/wm/Task;

.field numDrawnWindows:I

.field numDrawnWindowsExclusingSaved:I

.field numInterestingWindows:I

.field numInterestingWindowsExcludingSaved:I

.field removed:Z

.field reportedDrawn:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field showForAllUsers:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field targetSdk:I

.field final voiceInteraction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/AppWindowToken;->TAG:Ljava/lang/String;

    #@5
    .line 57
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V
    .locals 3
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;
    .param p3, "_voiceInteraction"    # Z

    #@0
    .prologue
    .line 145
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 146
    const/4 v1, 0x2

    #@5
    const/4 v2, 0x1

    #@6
    .line 145
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    #@9
    .line 65
    new-instance v0, Lcom/android/server/wm/WindowList;

    #@b
    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@10
    .line 72
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    #@13
    .line 84
    const-wide/high16 v0, -0x8000000000000000L

    #@15
    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    #@17
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 137
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@1e
    .line 140
    new-instance v0, Ljava/util/ArrayDeque;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@25
    .line 141
    new-instance v0, Ljava/util/ArrayDeque;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@2c
    .line 147
    iput-object p0, p0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2e
    .line 148
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@30
    .line 149
    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@32
    .line 150
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    #@34
    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@37
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@39
    .line 151
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    #@3b
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@40
    .line 144
    return-void
.end method

.method private canFreezeBounds()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 683
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@7
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private freezeBounds()V
    .locals 4

    #@0
    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@2
    new-instance v2, Landroid/graphics/Rect;

    #@4
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@6
    iget-object v3, v3, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    #@8
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@e
    .line 695
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@10
    iget-object v1, v1, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@12
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@14
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 697
    new-instance v0, Landroid/content/res/Configuration;

    #@1c
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@1e
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@20
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@23
    .line 698
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@25
    iget-object v1, v1, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@27
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@2a
    .line 699
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@2c
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@2f
    .line 703
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@31
    iget-object v1, v1, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@33
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    #@36
    .line 692
    return-void

    #@37
    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@39
    new-instance v2, Landroid/content/res/Configuration;

    #@3b
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@3d
    iget-object v3, v3, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@3f
    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@42
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@45
    goto :goto_0
.end method

.method private unfreezeBounds()V
    .locals 3

    #@0
    .prologue
    .line 710
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@5
    .line 711
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@a
    .line 712
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@f
    move-result v2

    #@10
    add-int/lit8 v0, v2, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@14
    .line 713
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@16
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@1c
    .line 714
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 712
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 717
    :cond_1
    const/4 v2, 0x1

    #@24
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@26
    .line 718
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@29
    .line 719
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@2b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_0

    #@33
    .line 720
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@35
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 723
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@3d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@3f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@42
    .line 709
    return-void
.end method


# virtual methods
.method addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V
    .locals 1
    .param p1, "background"    # Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@0
    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 726
    return-void
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 632
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 633
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@13
    .line 634
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 635
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@26
    move-result-object v4

    #@27
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    .line 634
    if-eqz v2, :cond_0

    #@31
    .line 636
    iput-object p1, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@33
    .line 637
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@35
    if-eqz v2, :cond_1

    #@37
    move v2, v3

    #@38
    :goto_1
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@3a
    .line 640
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@3c
    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleReplacingWindowTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    #@3f
    .line 632
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@41
    goto :goto_0

    #@42
    .line 637
    :cond_1
    const/4 v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 643
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@46
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@49
    .line 631
    return-void
.end method

.method canRestoreSurfaces()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 409
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 410
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 411
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canRestoreSurface()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 412
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 409
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 415
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return v3
.end method

.method clearAllDrawn()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 511
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@3
    .line 512
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@5
    .line 513
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    #@7
    .line 510
    return-void
.end method

.method clearTimedoutReplacesLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 657
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 664
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@13
    .line 665
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    if-nez v2, :cond_0

    #@17
    .line 663
    :goto_1
    add-int/lit8 v2, v1, -0x1

    #@19
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@1e
    move-result v3

    #@1f
    add-int/lit8 v3, v3, -0x1

    #@21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v1

    #@25
    goto :goto_0

    #@26
    .line 668
    :cond_0
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@28
    .line 669
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 670
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@2e
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@30
    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@32
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@35
    goto :goto_1

    #@36
    .line 656
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method clearVisibleBeforeClientHidden()V
    .locals 3

    #@0
    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 420
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 421
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearVisibleBeforeClientHidden()V

    #@15
    .line 419
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 418
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method destroySavedSurfaces()V
    .locals 3

    #@0
    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 505
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 506
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    #@15
    .line 504
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 503
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method destroySurfaces()V
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 343
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/ArrayList;

    #@a
    .line 344
    .local v0, "allWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v2, Lcom/android/server/wm/DisplayContentList;

    #@c
    invoke-direct {v2}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    #@f
    .line 345
    .local v2, "displayList":Lcom/android/server/wm/DisplayContentList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v5

    #@13
    add-int/lit8 v3, v5, -0x1

    #@15
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    #@17
    .line 346
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@1d
    .line 348
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@1f
    if-nez v5, :cond_1

    #@21
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@23
    :goto_1
    if-nez v5, :cond_2

    #@25
    .line 345
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@27
    goto :goto_0

    #@28
    :cond_1
    move v5, v6

    #@29
    .line 348
    goto :goto_1

    #@2a
    .line 352
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2c
    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    #@2f
    .line 354
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@31
    if-eqz v5, :cond_0

    #@33
    .line 363
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    #@36
    .line 364
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@38
    if-eqz v5, :cond_3

    #@3a
    .line 365
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@3c
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@3f
    .line 367
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@42
    move-result-object v1

    #@43
    .line 368
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_4

    #@45
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_5

    #@4b
    .line 371
    :cond_4
    :goto_3
    iput-boolean v7, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4d
    goto :goto_2

    #@4e
    .line 369
    :cond_5
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_3

    #@52
    .line 373
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    const/4 v3, 0x0

    #@53
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContentList;->size()I

    #@56
    move-result v5

    #@57
    if-ge v3, v5, :cond_7

    #@59
    .line 374
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContentList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    #@5f
    .line 375
    .restart local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@61
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@63
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    #@6a
    .line 376
    iput-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@6c
    .line 373
    add-int/lit8 v3, v3, 0x1

    #@6e
    goto :goto_4

    #@6f
    .line 342
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_7
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 758
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3
    .line 759
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 760
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    const-string/jumbo v0, "app=true voiceInteraction="

    #@d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@15
    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 763
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    const-string/jumbo v0, "allAppWindows="

    #@23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2b
    .line 765
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    const-string/jumbo v0, "task="

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@39
    .line 766
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v0, " appFullscreen="

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    #@44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@47
    .line 767
    const-string/jumbo v0, " requestedOrientation="

    #@4a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@52
    .line 768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    const-string/jumbo v0, "hiddenRequested="

    #@58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@60
    .line 769
    const-string/jumbo v0, " clientHidden="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6b
    .line 770
    const-string/jumbo v0, " reportedDrawn="

    #@6e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@76
    .line 771
    const-string/jumbo v0, " reportedVisible="

    #@79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@81
    .line 772
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@83
    if-eqz v0, :cond_2

    #@85
    .line 773
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    const-string/jumbo v0, "paused="

    #@8b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@93
    .line 775
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@95
    if-eqz v0, :cond_3

    #@97
    .line 776
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    const-string/jumbo v0, "mAppStopped="

    #@9d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@a5
    .line 778
    :cond_3
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@a7
    if-nez v0, :cond_4

    #@a9
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@ab
    if-eqz v0, :cond_d

    #@ad
    .line 780
    :cond_4
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    const-string/jumbo v0, "numInterestingWindows="

    #@b3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    .line 781
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@bb
    .line 782
    const-string/jumbo v0, " numDrawnWindows="

    #@be
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@c3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@c6
    .line 783
    const-string/jumbo v0, " inPendingTransaction="

    #@c9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d1
    .line 784
    const-string/jumbo v0, " allDrawn="

    #@d4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@dc
    .line 785
    const-string/jumbo v0, " (animator="

    #@df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@e4
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@e6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@e9
    .line 786
    const-string/jumbo v0, ")"

    #@ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 788
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@f1
    if-eqz v0, :cond_6

    #@f3
    .line 789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "inPendingTransaction="

    #@f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    .line 790
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@fe
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@101
    .line 792
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@103
    if-nez v0, :cond_7

    #@105
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@107
    if-nez v0, :cond_7

    #@109
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@10b
    if-nez v0, :cond_7

    #@10d
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@10f
    if-eqz v0, :cond_8

    #@111
    .line 793
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    const-string/jumbo v0, "startingData="

    #@117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@11c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@11f
    .line 794
    const-string/jumbo v0, " removed="

    #@122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@125
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@12a
    .line 795
    const-string/jumbo v0, " firstWindowDrawn="

    #@12d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@135
    .line 796
    const-string/jumbo v0, " mIsExiting="

    #@138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13b
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@13d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@140
    .line 798
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@142
    if-nez v0, :cond_9

    #@144
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@146
    if-eqz v0, :cond_e

    #@148
    .line 800
    :cond_9
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14b
    const-string/jumbo v0, "startingWindow="

    #@14e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@151
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@156
    .line 801
    const-string/jumbo v0, " startingView="

    #@159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15c
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@15e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@161
    .line 802
    const-string/jumbo v0, " startingDisplayed="

    #@164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@16c
    .line 803
    const-string/jumbo v0, " startingMoved="

    #@16f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@172
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@177
    .line 805
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@179
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@17c
    move-result v0

    #@17d
    if-nez v0, :cond_b

    #@17f
    .line 806
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    const-string/jumbo v0, "mFrozenBounds="

    #@185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@188
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@18a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@18d
    .line 807
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    const-string/jumbo v0, "mFrozenMergedConfig="

    #@193
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@198
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19b
    .line 809
    :cond_b
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@19d
    if-eqz v0, :cond_c

    #@19f
    .line 810
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    const-string/jumbo v0, "mPendingRelaunchCount="

    #@1a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@1aa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1ad
    .line 757
    :cond_c
    return-void

    #@1ae
    .line 779
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@1b0
    .line 778
    if-nez v0, :cond_4

    #@1b2
    .line 779
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1b4
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@1b6
    .line 778
    if-eqz v0, :cond_5

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 799
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@1bc
    .line 798
    if-nez v0, :cond_9

    #@1be
    .line 799
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@1c0
    .line 798
    if-eqz v0, :cond_a

    #@1c2
    goto :goto_1
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 5

    #@0
    .prologue
    .line 282
    const/4 v0, 0x0

    #@1
    .line 283
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v1

    #@7
    .line 284
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    .local v1, "j":I
    :cond_0
    :goto_0
    if-lez v1, :cond_3

    #@9
    .line 285
    add-int/lit8 v1, v1, -0x1

    #@b
    .line 286
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@13
    .line 287
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@15
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@17
    const/4 v4, 0x1

    #@18
    if-eq v3, v4, :cond_1

    #@1a
    .line 288
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1e
    const/4 v4, 0x3

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 292
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 293
    move-object v0, v2

    #@26
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    goto :goto_0

    #@27
    .line 295
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_2
    return-object v2

    #@28
    .line 299
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    return-object v0
.end method

.method finishRelaunching()V
    .locals 1

    #@0
    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 624
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    #@9
    .line 626
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@b
    if-lez v0, :cond_1

    #@d
    .line 627
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@13
    .line 622
    :cond_1
    return-void
.end method

.method hasWindowsAlive()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 557
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 558
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@15
    if-nez v1, :cond_0

    #@17
    .line 559
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 557
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 562
    :cond_1
    return v2
.end method

.method isAnimatingInvisibleWithSavedSurface()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 430
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 431
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 432
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 433
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 430
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 436
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return v3
.end method

.method isRelaunching()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 612
    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method isVisible()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 307
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v0

    #@7
    .line 308
    .local v0, "N":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 309
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@12
    .line 312
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@14
    if-nez v3, :cond_0

    #@16
    .line 313
    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@18
    if-eqz v3, :cond_1

    #@1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 314
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 315
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@2c
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 316
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@37
    if-nez v3, :cond_0

    #@39
    .line 317
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@3c
    move-result v3

    #@3d
    .line 312
    if-eqz v3, :cond_0

    #@3f
    .line 318
    const/4 v3, 0x1

    #@40
    return v3

    #@41
    .line 321
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    return v4
.end method

.method markSavedSurfaceExiting()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 459
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 460
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 461
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 462
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@1b
    .line 463
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1d
    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@1f
    .line 459
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 458
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method notifyAppStopped(Z)V
    .locals 1
    .param p1, "stopped"    # Z

    #@0
    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@2
    .line 388
    if-eqz p1, :cond_0

    #@4
    .line 389
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    #@7
    .line 391
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@9
    iget-object v0, v0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    #@e
    .line 384
    :cond_0
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 179
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@3
    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllDeadWindows()V

    #@6
    .line 184
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 190
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@d
    .line 191
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 192
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@18
    const/4 v1, 0x7

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@1c
    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@1f
    .line 178
    return-void
.end method

.method removeAllDeadWindows()V
    .locals 4

    #@0
    .prologue
    .line 537
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "winNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 544
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 545
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 550
    const/4 v2, 0x1

    #@17
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@19
    .line 551
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@1b
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@1e
    .line 543
    :cond_0
    add-int/lit8 v2, v1, -0x1

    #@20
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@25
    move-result v3

    #@26
    add-int/lit8 v3, v3, -0x1

    #@28
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@2b
    move-result v1

    #@2c
    goto :goto_0

    #@2d
    .line 536
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method removeAllWindows()V
    .locals 4

    #@0
    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "winNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 525
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 530
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@14
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@17
    .line 524
    add-int/lit8 v2, v1, -0x1

    #@19
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@1e
    move-result v3

    #@1f
    add-int/lit8 v3, v3, -0x1

    #@21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v1

    #@25
    goto :goto_0

    #@26
    .line 532
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@2b
    .line 533
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@2d
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@30
    .line 517
    return-void
.end method

.method removeAppFromTaskLocked()V
    .locals 4

    #@0
    .prologue
    .line 325
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@3
    .line 326
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindows()V

    #@6
    .line 329
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@8
    .line 330
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    #@a
    .line 331
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 332
    sget-object v1, Lcom/android/server/wm/AppWindowToken;->TAG:Ljava/lang/String;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "removeAppFromTaskLocked: token="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 333
    const-string/jumbo v3, " not found."

    #@25
    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 335
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@32
    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@34
    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    #@37
    .line 324
    :cond_1
    return-void
.end method

.method removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V
    .locals 1
    .param p1, "background"    # Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 732
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    #@8
    .line 730
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 3

    #@0
    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 606
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 607
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    #@15
    .line 605
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 604
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method resetReplacingWindows()V
    .locals 3

    #@0
    .prologue
    .line 598
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 599
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 600
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->resetReplacing()V

    #@15
    .line 598
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 594
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method restoreSavedSurfaces()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->canRestoreSurfaces()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 470
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearVisibleBeforeClientHidden()V

    #@a
    .line 471
    return-void

    #@b
    .line 474
    :cond_0
    const/4 v2, 0x0

    #@c
    .line 475
    .local v2, "numInteresting":I
    const/4 v1, 0x0

    #@d
    .line 476
    .local v1, "numDrawn":I
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    #@12
    move-result v5

    #@13
    add-int/lit8 v0, v5, -0x1

    #@15
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@17
    .line 477
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@19
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@1f
    .line 478
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@21
    if-eq v3, v5, :cond_1

    #@23
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 476
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 478
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->wasVisibleBeforeClientHidden()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 479
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@32
    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@34
    if-eqz v5, :cond_3

    #@36
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@38
    if-nez v5, :cond_1

    #@3a
    .line 480
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 481
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_4

    #@42
    .line 482
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()V

    #@45
    .line 484
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_1

    #@4b
    .line 485
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 490
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@50
    if-nez v5, :cond_7

    #@52
    .line 491
    if-lez v2, :cond_6

    #@54
    if-ne v2, v1, :cond_6

    #@56
    const/4 v4, 0x1

    #@57
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@59
    .line 492
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@5b
    if-eqz v4, :cond_7

    #@5d
    .line 493
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@5f
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@61
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@63
    const/16 v6, 0x20

    #@65
    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@6c
    .line 496
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearVisibleBeforeClientHidden()V

    #@6f
    .line 468
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 6

    #@0
    .prologue
    .line 155
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v0

    #@6
    .line 156
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@9
    .line 157
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@b
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@11
    .line 158
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@13
    if-ne v3, v4, :cond_0

    #@15
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 156
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 165
    :cond_0
    :try_start_0
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@1e
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@20
    if-eqz v4, :cond_1

    #@22
    const/4 v4, 0x0

    #@23
    :goto_2
    invoke-interface {v5, v4}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_1

    #@27
    .line 166
    :catch_0
    move-exception v1

    #@28
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@29
    .line 165
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v4, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 154
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method setReplacingChildren()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 586
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 587
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 588
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 589
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setReplacing(Z)V

    #@1c
    .line 586
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 583
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method setReplacingWindows(Z)V
    .locals 3
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 570
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 571
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setReplacing(Z)V

    #@15
    .line 569
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 573
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    if-eqz p1, :cond_1

    #@1a
    .line 579
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    #@1f
    .line 565
    :cond_1
    return-void
.end method

.method setVisibleBeforeClientHidden()V
    .locals 3

    #@0
    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 173
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 174
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setVisibleBeforeClientHidden()V

    #@15
    .line 172
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 171
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method shouldSaveSurface()Z
    .locals 1

    #@0
    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@2
    return v0
.end method

.method startRelaunching()V
    .locals 1

    #@0
    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 617
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    #@9
    .line 619
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@f
    .line 615
    return-void
.end method

.method stopUsingSavedSurfaceLocked()V
    .locals 4

    #@0
    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 445
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 446
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 449
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    #@1b
    .line 450
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@1e
    .line 451
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@20
    const-string/jumbo v3, "stopUsingSavedSurfaceLocked"

    #@23
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@26
    .line 452
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@28
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@2a
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@2d
    .line 444
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 455
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    #@33
    .line 443
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 818
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AppWindowToken{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 819
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 820
    const-string/jumbo v1, " token="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    const/16 v1, 0x7d

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 821
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@30
    .line 823
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@32
    return-object v1
.end method

.method updateReportedVisibilityLocked()V
    .locals 14

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 198
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@4
    if-nez v12, :cond_0

    #@6
    .line 199
    return-void

    #@7
    .line 202
    :cond_0
    const/4 v7, 0x0

    #@8
    .line 203
    .local v7, "numInteresting":I
    const/4 v8, 0x0

    #@9
    .line 204
    .local v8, "numVisible":I
    const/4 v6, 0x0

    #@a
    .line 205
    .local v6, "numDrawn":I
    const/4 v4, 0x1

    #@b
    .line 209
    .local v4, "nowGone":Z
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    #@10
    move-result v0

    #@11
    .line 210
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@14
    .line 211
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@16
    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v9

    #@1a
    check-cast v9, Lcom/android/server/wm/WindowState;

    #@1c
    .line 212
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1e
    if-eq v9, v12, :cond_1

    #@20
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@22
    if-nez v12, :cond_1

    #@24
    .line 213
    iget v12, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@26
    if-eqz v12, :cond_2

    #@28
    .line 210
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 214
    :cond_2
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2f
    const/4 v13, 0x3

    #@30
    if-eq v12, v13, :cond_1

    #@32
    .line 215
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@34
    .line 212
    if-nez v12, :cond_1

    #@36
    .line 234
    add-int/lit8 v7, v7, 0x1

    #@38
    .line 235
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_4

    #@3e
    .line 236
    add-int/lit8 v6, v6, 0x1

    #@40
    .line 237
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@42
    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@45
    move-result v12

    #@46
    if-nez v12, :cond_3

    #@48
    .line 238
    add-int/lit8 v8, v8, 0x1

    #@4a
    .line 240
    :cond_3
    const/4 v4, 0x0

    #@4b
    goto :goto_1

    #@4c
    .line 241
    :cond_4
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@51
    move-result v12

    #@52
    if-eqz v12, :cond_1

    #@54
    .line 242
    const/4 v4, 0x0

    #@55
    goto :goto_1

    #@56
    .line 246
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v7, :cond_b

    #@58
    if-lt v6, v7, :cond_b

    #@5a
    const/4 v3, 0x1

    #@5b
    .line 247
    .local v3, "nowDrawn":Z
    :goto_2
    if-lez v7, :cond_c

    #@5d
    if-lt v8, v7, :cond_c

    #@5f
    const/4 v5, 0x1

    #@60
    .line 248
    .local v5, "nowVisible":Z
    :goto_3
    if-nez v4, :cond_7

    #@62
    .line 250
    if-nez v3, :cond_6

    #@64
    .line 251
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@66
    .line 253
    .end local v3    # "nowDrawn":Z
    :cond_6
    if-nez v5, :cond_7

    #@68
    .line 254
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@6a
    .line 259
    .end local v5    # "nowVisible":Z
    :cond_7
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@6c
    if-eq v3, v12, :cond_9

    #@6e
    .line 260
    if-eqz v3, :cond_8

    #@70
    .line 261
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@72
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@74
    .line 262
    const/16 v13, 0x9

    #@76
    .line 261
    invoke-virtual {v12, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@79
    move-result-object v2

    #@7a
    .line 263
    .local v2, "m":Landroid/os/Message;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@7c
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7e
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@81
    .line 265
    .end local v2    # "m":Landroid/os/Message;
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@83
    .line 267
    :cond_9
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@85
    if-eq v5, v12, :cond_a

    #@87
    .line 271
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@89
    .line 272
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@8b
    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@8d
    .line 274
    if-eqz v5, :cond_d

    #@8f
    move v12, v10

    #@90
    .line 275
    :goto_4
    if-eqz v4, :cond_e

    #@92
    .line 273
    :goto_5
    const/16 v11, 0x8

    #@94
    .line 272
    invoke-virtual {v13, v11, v12, v10, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@97
    move-result-object v2

    #@98
    .line 277
    .restart local v2    # "m":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@9a
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@9c
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@9f
    .line 197
    .end local v2    # "m":Landroid/os/Message;
    :cond_a
    return-void

    #@a0
    .line 246
    :cond_b
    const/4 v3, 0x0

    #@a1
    .restart local v3    # "nowDrawn":Z
    goto :goto_2

    #@a2
    .line 247
    :cond_c
    const/4 v5, 0x0

    #@a3
    .restart local v5    # "nowVisible":Z
    goto :goto_3

    #@a4
    .end local v3    # "nowDrawn":Z
    .end local v5    # "nowVisible":Z
    :cond_d
    move v12, v11

    #@a5
    .line 274
    goto :goto_4

    #@a6
    :cond_e
    move v10, v11

    #@a7
    .line 275
    goto :goto_5
.end method

.method updateSurfaceViewBackgroundVisibilities()V
    .locals 5

    #@0
    .prologue
    .line 741
    const/4 v0, 0x0

    #@1
    .line 742
    .local v0, "bottom":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    const v1, 0x7fffffff

    #@4
    .line 743
    .local v1, "bottomLayer":I
    const/4 v2, 0x0

    #@5
    .end local v0    # "bottom":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    if-ge v2, v4, :cond_1

    #@d
    .line 744
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@15
    .line 745
    .local v3, "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    iget v4, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@1b
    if-ge v4, v1, :cond_0

    #@1d
    .line 746
    iget v1, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@1f
    .line 747
    move-object v0, v3

    #@20
    .line 743
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 750
    .end local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    :cond_1
    const/4 v2, 0x0

    #@24
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v4

    #@2a
    if-ge v2, v4, :cond_3

    #@2c
    .line 751
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@34
    .line 752
    .restart local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    if-eq v3, v0, :cond_2

    #@36
    const/4 v4, 0x1

    #@37
    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    #@3a
    .line 750
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 752
    :cond_2
    const/4 v4, 0x0

    #@3e
    goto :goto_2

    #@3f
    .line 740
    .end local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    :cond_3
    return-void
.end method

.method waitingForReplacement()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 647
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 648
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@13
    .line 649
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 650
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 647
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 653
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_1
    return v3
.end method

.method windowsAreFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@4
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@6
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method
