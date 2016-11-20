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

.field mRotationAnimationHint:I

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
    .line 62
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/AppWindowToken;->TAG:Ljava/lang/String;

    #@5
    .line 61
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V
    .locals 3
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;
    .param p3, "_voiceInteraction"    # Z

    #@0
    .prologue
    .line 150
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 151
    const/4 v1, 0x2

    #@5
    const/4 v2, 0x1

    #@6
    .line 150
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    #@9
    .line 69
    new-instance v0, Lcom/android/server/wm/WindowList;

    #@b
    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@10
    .line 76
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    #@13
    .line 88
    const-wide/high16 v0, -0x8000000000000000L

    #@15
    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    #@17
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 142
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@1e
    .line 145
    new-instance v0, Ljava/util/ArrayDeque;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@25
    .line 146
    new-instance v0, Ljava/util/ArrayDeque;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@2c
    .line 152
    iput-object p0, p0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2e
    .line 153
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@30
    .line 154
    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@32
    .line 155
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    #@34
    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@37
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@39
    .line 156
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    #@3b
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@40
    .line 149
    return-void
.end method

.method private canFreezeBounds()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 766
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

.method private destroySurfaces(Z)V
    .locals 8
    .param p1, "cleanupOnResume"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 398
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/ArrayList;

    #@a
    .line 399
    .local v0, "allWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v2, Lcom/android/server/wm/DisplayContentList;

    #@c
    invoke-direct {v2}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    #@f
    .line 400
    .local v2, "displayList":Lcom/android/server/wm/DisplayContentList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v5

    #@13
    add-int/lit8 v3, v5, -0x1

    #@15
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_9

    #@17
    .line 401
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@1d
    .line 403
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@1f
    if-nez v5, :cond_1

    #@21
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@23
    if-nez v5, :cond_1

    #@25
    move v5, p1

    #@26
    :goto_1
    if-nez v5, :cond_2

    #@28
    .line 400
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@2a
    goto :goto_0

    #@2b
    :cond_1
    move v5, v6

    #@2c
    .line 403
    goto :goto_1

    #@2d
    .line 407
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    #@32
    .line 409
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@34
    if-eqz v5, :cond_0

    #@36
    .line 418
    if-eqz p1, :cond_3

    #@38
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@3a
    if-eqz v5, :cond_4

    #@3c
    .line 419
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    #@3f
    .line 421
    :cond_4
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@41
    if-eqz v5, :cond_5

    #@43
    .line 422
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@45
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@48
    .line 424
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4b
    move-result-object v1

    #@4c
    .line 425
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_6

    #@4e
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_8

    #@54
    .line 428
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    #@56
    .line 429
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    #@59
    .line 431
    :cond_7
    iput-boolean v7, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@5b
    goto :goto_2

    #@5c
    .line 426
    :cond_8
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_3

    #@60
    .line 433
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    const/4 v3, 0x0

    #@61
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContentList;->size()I

    #@64
    move-result v5

    #@65
    if-ge v3, v5, :cond_a

    #@67
    .line 434
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContentList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v1

    #@6b
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    #@6d
    .line 435
    .restart local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@6f
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@71
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    #@78
    .line 436
    iput-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@7a
    .line 433
    add-int/lit8 v3, v3, 0x1

    #@7c
    goto :goto_4

    #@7d
    .line 397
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_a
    return-void
.end method

.method private freezeBounds()V
    .locals 4

    #@0
    .prologue
    .line 776
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
    .line 778
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
    .line 780
    new-instance v0, Landroid/content/res/Configuration;

    #@1c
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@1e
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@20
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@23
    .line 781
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@25
    iget-object v1, v1, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@27
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@2a
    .line 782
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@2c
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@2f
    .line 786
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@31
    iget-object v1, v1, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@33
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    #@36
    .line 775
    return-void

    #@37
    .line 784
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
    .line 793
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 794
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@d
    .line 796
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 797
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@1a
    .line 799
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@1f
    move-result v2

    #@20
    add-int/lit8 v0, v2, -0x1

    #@22
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@24
    .line 800
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@26
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@2c
    .line 801
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@2e
    if-nez v2, :cond_3

    #@30
    .line 799
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@32
    goto :goto_0

    #@33
    .line 804
    :cond_3
    const/4 v2, 0x1

    #@34
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@36
    .line 805
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@39
    .line 806
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@3b
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_2

    #@43
    .line 807
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_1

    #@4b
    .line 810
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@4d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@4f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@52
    .line 792
    return-void
.end method


# virtual methods
.method addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V
    .locals 1
    .param p1, "background"    # Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@0
    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 813
    return-void
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 715
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
    .line 716
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@13
    .line 717
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 718
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
    .line 717
    if-eqz v2, :cond_0

    #@31
    .line 719
    iput-object p1, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@33
    .line 720
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@35
    if-eqz v2, :cond_1

    #@37
    move v2, v3

    #@38
    :goto_1
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@3a
    .line 723
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@3c
    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleReplacingWindowTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    #@3f
    .line 715
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@41
    goto :goto_0

    #@42
    .line 720
    :cond_1
    const/4 v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 726
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@46
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@49
    .line 714
    return-void
.end method

.method canRestoreSurfaces()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 482
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
    .line 483
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 484
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canRestoreSurface()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 485
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 482
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 488
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
    .line 584
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@3
    .line 585
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@5
    .line 586
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    #@7
    .line 583
    return-void
.end method

.method clearAnimatingFlags()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 345
    const/4 v1, 0x0

    #@2
    .line 346
    .local v1, "wallpaperMightChange":Z
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@c
    .line 347
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@e
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@14
    .line 355
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@16
    if-nez v3, :cond_0

    #@18
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 346
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 363
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 364
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@25
    .line 365
    const/4 v1, 0x1

    #@26
    .line 367
    :cond_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@28
    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 368
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2e
    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@30
    .line 369
    const/4 v1, 0x1

    #@31
    .line 371
    :cond_3
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 372
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@37
    .line 373
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@39
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3e
    .line 374
    const/4 v1, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 378
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    if-eqz v1, :cond_5

    #@42
    .line 379
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    #@45
    .line 344
    :cond_5
    return-void
.end method

.method clearRelaunching()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 705
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 706
    return-void

    #@6
    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 709
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    #@f
    .line 711
    :cond_1
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@11
    .line 704
    return-void
.end method

.method clearTimedoutReplacesLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 740
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
    .line 747
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@13
    .line 748
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    if-nez v2, :cond_0

    #@17
    .line 746
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
    .line 751
    :cond_0
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@28
    .line 752
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 753
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@2e
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@30
    .line 759
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@32
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@35
    goto :goto_1

    #@36
    .line 739
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method clearVisibleBeforeClientHidden()V
    .locals 3

    #@0
    .prologue
    .line 492
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
    .line 493
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 494
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearVisibleBeforeClientHidden()V

    #@15
    .line 492
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 491
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method destroySavedSurfaces()V
    .locals 3

    #@0
    .prologue
    .line 577
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
    .line 578
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 579
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    #@15
    .line 577
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 576
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method destroySurfaces()V
    .locals 1

    #@0
    .prologue
    .line 384
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    #@4
    .line 383
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 860
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3
    .line 861
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 862
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
    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 865
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
    .line 867
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
    .line 868
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
    .line 869
    const-string/jumbo v0, " requestedOrientation="

    #@4a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@52
    .line 870
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
    .line 871
    const-string/jumbo v0, " clientHidden="

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6b
    .line 872
    const-string/jumbo v0, " reportedDrawn="

    #@6e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@76
    .line 873
    const-string/jumbo v0, " reportedVisible="

    #@79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@81
    .line 874
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@83
    if-eqz v0, :cond_2

    #@85
    .line 875
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
    .line 877
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@95
    if-eqz v0, :cond_3

    #@97
    .line 878
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
    .line 880
    :cond_3
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@a7
    if-nez v0, :cond_4

    #@a9
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@ab
    if-eqz v0, :cond_d

    #@ad
    .line 882
    :cond_4
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    const-string/jumbo v0, "numInterestingWindows="

    #@b3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b6
    .line 883
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@bb
    .line 884
    const-string/jumbo v0, " numDrawnWindows="

    #@be
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@c3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@c6
    .line 885
    const-string/jumbo v0, " inPendingTransaction="

    #@c9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cc
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d1
    .line 886
    const-string/jumbo v0, " allDrawn="

    #@d4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@dc
    .line 887
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
    .line 888
    const-string/jumbo v0, ")"

    #@ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 890
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@f1
    if-eqz v0, :cond_6

    #@f3
    .line 891
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "inPendingTransaction="

    #@f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    .line 892
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@fe
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@101
    .line 894
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
    .line 895
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
    .line 896
    const-string/jumbo v0, " removed="

    #@122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@125
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@12a
    .line 897
    const-string/jumbo v0, " firstWindowDrawn="

    #@12d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@135
    .line 898
    const-string/jumbo v0, " mIsExiting="

    #@138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13b
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@13d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@140
    .line 900
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@142
    if-nez v0, :cond_9

    #@144
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@146
    if-eqz v0, :cond_e

    #@148
    .line 902
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
    .line 903
    const-string/jumbo v0, " startingView="

    #@159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15c
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    #@15e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@161
    .line 904
    const-string/jumbo v0, " startingDisplayed="

    #@164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@16c
    .line 905
    const-string/jumbo v0, " startingMoved="

    #@16f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@172
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@177
    .line 907
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@179
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@17c
    move-result v0

    #@17d
    if-nez v0, :cond_b

    #@17f
    .line 908
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
    .line 909
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
    .line 911
    :cond_b
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@19d
    if-eqz v0, :cond_c

    #@19f
    .line 912
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
    .line 859
    :cond_c
    return-void

    #@1ae
    .line 881
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@1b0
    .line 880
    if-nez v0, :cond_4

    #@1b2
    .line 881
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1b4
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    #@1b6
    .line 880
    if-eqz v0, :cond_5

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 901
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@1bc
    .line 900
    if-nez v0, :cond_9

    #@1be
    .line 901
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@1c0
    .line 900
    if-eqz v0, :cond_a

    #@1c2
    goto :goto_1
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 5

    #@0
    .prologue
    .line 287
    const/4 v0, 0x0

    #@1
    .line 288
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v1

    #@7
    .line 289
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    .local v1, "j":I
    :cond_0
    :goto_0
    if-lez v1, :cond_3

    #@9
    .line 290
    add-int/lit8 v1, v1, -0x1

    #@b
    .line 291
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@13
    .line 292
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@15
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@17
    const/4 v4, 0x1

    #@18
    if-eq v3, v4, :cond_1

    #@1a
    .line 293
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1e
    const/4 v4, 0x3

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 297
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 298
    move-object v0, v2

    #@26
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    goto :goto_0

    #@27
    .line 300
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_2
    return-object v2

    #@28
    .line 304
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    return-object v0
.end method

.method finishRelaunching()V
    .locals 1

    #@0
    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 697
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    #@9
    .line 699
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@b
    if-lez v0, :cond_1

    #@d
    .line 700
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@13
    .line 695
    :cond_1
    return-void
.end method

.method hasWindowsAlive()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 630
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
    .line 631
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
    .line 632
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 630
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 635
    :cond_1
    return v2
.end method

.method isAnimatingInvisibleWithSavedSurface()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 503
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
    .line 504
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 505
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 506
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 503
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 509
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
    .line 685
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
    .line 312
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@6
    move-result v0

    #@7
    .line 313
    .local v0, "N":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 314
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@12
    .line 317
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@14
    if-nez v3, :cond_0

    #@16
    .line 318
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
    .line 319
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 320
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
    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 321
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@37
    if-nez v3, :cond_0

    #@39
    .line 322
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@3c
    move-result v3

    #@3d
    .line 317
    if-eqz v3, :cond_0

    #@3f
    .line 323
    const/4 v3, 0x1

    #@40
    return v3

    #@41
    .line 326
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
    .line 532
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
    .line 533
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 534
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 535
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@1b
    .line 536
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1d
    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@1f
    .line 532
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 531
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method notifyAppResumed(ZZ)V
    .locals 1
    .param p1, "wasStopped"    # Z
    .param p2, "allowSavedSurface"    # Z

    #@0
    .prologue
    .line 447
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@3
    .line 448
    if-nez p1, :cond_0

    #@5
    .line 449
    const/4 v0, 0x1

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    #@9
    .line 451
    :cond_0
    if-nez p2, :cond_1

    #@b
    .line 452
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    #@e
    .line 444
    :cond_1
    return-void
.end method

.method notifyAppStopped()V
    .locals 1

    #@0
    .prologue
    .line 462
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    #@3
    .line 463
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    #@6
    .line 465
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@8
    iget-object v0, v0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    #@d
    .line 460
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 184
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@3
    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllDeadWindows()V

    #@6
    .line 189
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 195
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    #@d
    .line 196
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 197
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@18
    const/4 v1, 0x7

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@1c
    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@1f
    .line 183
    return-void
.end method

.method overridePlayingAppAnimations(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "a"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 848
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    #@b
    move-result-object v6

    #@c
    .line 849
    .local v6, "win":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_0

    #@e
    .line 850
    return-void

    #@f
    .line 852
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@14
    move-result v2

    #@15
    .line 853
    .local v2, "width":I
    iget-object v0, v6, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@1a
    move-result v3

    #@1b
    .line 854
    .local v3, "height":I
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1d
    const/4 v4, 0x0

    #@1e
    const/4 v5, 0x2

    #@1f
    move-object v1, p1

    #@20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZI)V

    #@23
    .line 846
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method removeAllDeadWindows()V
    .locals 4

    #@0
    .prologue
    .line 610
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
    .line 617
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 618
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 623
    const/4 v2, 0x1

    #@17
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@19
    .line 624
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@1b
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@1e
    .line 616
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
    .line 609
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method removeAllWindows()V
    .locals 4

    #@0
    .prologue
    .line 591
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
    .line 598
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 603
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@14
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@17
    .line 597
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
    .line 605
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@2b
    .line 606
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@2d
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@30
    .line 590
    return-void
.end method

.method removeAppFromTaskLocked()V
    .locals 4

    #@0
    .prologue
    .line 330
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@3
    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindows()V

    #@6
    .line 334
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@8
    .line 335
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    #@a
    .line 336
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 337
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
    .line 338
    const-string/jumbo v3, " not found."

    #@25
    .line 337
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
    .line 340
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@32
    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@34
    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    #@37
    .line 329
    :cond_1
    return-void
.end method

.method removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V
    .locals 1
    .param p1, "background"    # Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 819
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    #@8
    .line 817
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 3

    #@0
    .prologue
    .line 678
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
    .line 679
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 680
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    #@15
    .line 678
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 677
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method resetReplacingWindows()V
    .locals 3

    #@0
    .prologue
    .line 671
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
    .line 672
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 673
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->resetReplacing()V

    #@15
    .line 671
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 667
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
    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->canRestoreSurfaces()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearVisibleBeforeClientHidden()V

    #@a
    .line 544
    return-void

    #@b
    .line 547
    :cond_0
    const/4 v2, 0x0

    #@c
    .line 548
    .local v2, "numInteresting":I
    const/4 v1, 0x0

    #@d
    .line 549
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
    .line 550
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@19
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@1f
    .line 551
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@21
    if-eq v3, v5, :cond_1

    #@23
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 549
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 551
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->wasVisibleBeforeClientHidden()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 552
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
    .line 553
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 554
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_4

    #@42
    .line 555
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()V

    #@45
    .line 557
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_1

    #@4b
    .line 558
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 563
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@50
    if-nez v5, :cond_7

    #@52
    .line 564
    if-lez v2, :cond_6

    #@54
    if-ne v2, v1, :cond_6

    #@56
    const/4 v4, 0x1

    #@57
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@59
    .line 565
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@5b
    if-eqz v4, :cond_7

    #@5d
    .line 566
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
    .line 569
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearVisibleBeforeClientHidden()V

    #@6f
    .line 541
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 6

    #@0
    .prologue
    .line 160
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v0

    #@6
    .line 161
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@9
    .line 162
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@b
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@11
    .line 163
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@13
    if-ne v3, v4, :cond_0

    #@15
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 161
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 170
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
    .line 171
    :catch_0
    move-exception v1

    #@28
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@29
    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v4, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 159
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
    .line 659
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
    .line 660
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@13
    .line 661
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 662
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setReplacing(Z)V

    #@1c
    .line 659
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 656
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method setReplacingWindows(Z)V
    .locals 3
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 642
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
    .line 643
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 644
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setReplacing(Z)V

    #@15
    .line 642
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 646
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    if-eqz p1, :cond_1

    #@1a
    .line 652
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    #@1f
    .line 638
    :cond_1
    return-void
.end method

.method setVisibleBeforeClientHidden()V
    .locals 3

    #@0
    .prologue
    .line 177
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
    .line 178
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 179
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setVisibleBeforeClientHidden()V

    #@15
    .line 177
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 176
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method shouldSaveSurface()Z
    .locals 1

    #@0
    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@2
    return v0
.end method

.method startRelaunching()V
    .locals 1

    #@0
    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 690
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    #@9
    .line 692
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    #@f
    .line 688
    return-void
.end method

.method stopUsingSavedSurfaceLocked()V
    .locals 4

    #@0
    .prologue
    .line 517
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
    .line 518
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@12
    .line 519
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 522
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    #@1b
    .line 523
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@1e
    .line 524
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@20
    const-string/jumbo v3, "stopUsingSavedSurfaceLocked"

    #@23
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@26
    .line 525
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@28
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@2a
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    #@2d
    .line 517
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 528
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    #@33
    .line 516
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 920
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AppWindowToken{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 921
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
    .line 922
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
    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@30
    .line 925
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
    .line 203
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@4
    if-nez v12, :cond_0

    #@6
    .line 204
    return-void

    #@7
    .line 207
    :cond_0
    const/4 v7, 0x0

    #@8
    .line 208
    .local v7, "numInteresting":I
    const/4 v8, 0x0

    #@9
    .line 209
    .local v8, "numVisible":I
    const/4 v6, 0x0

    #@a
    .line 210
    .local v6, "numDrawn":I
    const/4 v4, 0x1

    #@b
    .line 214
    .local v4, "nowGone":Z
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    #@10
    move-result v0

    #@11
    .line 215
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@14
    .line 216
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@16
    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v9

    #@1a
    check-cast v9, Lcom/android/server/wm/WindowState;

    #@1c
    .line 217
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@1e
    if-eq v9, v12, :cond_1

    #@20
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@22
    if-nez v12, :cond_1

    #@24
    .line 218
    iget v12, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@26
    if-eqz v12, :cond_2

    #@28
    .line 215
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 219
    :cond_2
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2f
    const/4 v13, 0x3

    #@30
    if-eq v12, v13, :cond_1

    #@32
    .line 220
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@34
    .line 217
    if-nez v12, :cond_1

    #@36
    .line 239
    add-int/lit8 v7, v7, 0x1

    #@38
    .line 240
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_4

    #@3e
    .line 241
    add-int/lit8 v6, v6, 0x1

    #@40
    .line 242
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@42
    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@45
    move-result v12

    #@46
    if-nez v12, :cond_3

    #@48
    .line 243
    add-int/lit8 v8, v8, 0x1

    #@4a
    .line 245
    :cond_3
    const/4 v4, 0x0

    #@4b
    goto :goto_1

    #@4c
    .line 246
    :cond_4
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@51
    move-result v12

    #@52
    if-eqz v12, :cond_1

    #@54
    .line 247
    const/4 v4, 0x0

    #@55
    goto :goto_1

    #@56
    .line 251
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v7, :cond_b

    #@58
    if-lt v6, v7, :cond_b

    #@5a
    const/4 v3, 0x1

    #@5b
    .line 252
    .local v3, "nowDrawn":Z
    :goto_2
    if-lez v7, :cond_c

    #@5d
    if-lt v8, v7, :cond_c

    #@5f
    const/4 v5, 0x1

    #@60
    .line 253
    .local v5, "nowVisible":Z
    :goto_3
    if-nez v4, :cond_7

    #@62
    .line 255
    if-nez v3, :cond_6

    #@64
    .line 256
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@66
    .line 258
    .end local v3    # "nowDrawn":Z
    :cond_6
    if-nez v5, :cond_7

    #@68
    .line 259
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@6a
    .line 264
    .end local v5    # "nowVisible":Z
    :cond_7
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@6c
    if-eq v3, v12, :cond_9

    #@6e
    .line 265
    if-eqz v3, :cond_8

    #@70
    .line 266
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@72
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@74
    .line 267
    const/16 v13, 0x9

    #@76
    .line 266
    invoke-virtual {v12, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@79
    move-result-object v2

    #@7a
    .line 268
    .local v2, "m":Landroid/os/Message;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@7c
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7e
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@81
    .line 270
    .end local v2    # "m":Landroid/os/Message;
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    #@83
    .line 272
    :cond_9
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@85
    if-eq v5, v12, :cond_a

    #@87
    .line 276
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    #@89
    .line 277
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@8b
    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@8d
    .line 279
    if-eqz v5, :cond_d

    #@8f
    move v12, v10

    #@90
    .line 280
    :goto_4
    if-eqz v4, :cond_e

    #@92
    .line 278
    :goto_5
    const/16 v11, 0x8

    #@94
    .line 277
    invoke-virtual {v13, v11, v12, v10, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@97
    move-result-object v2

    #@98
    .line 282
    .restart local v2    # "m":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@9a
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@9c
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@9f
    .line 202
    .end local v2    # "m":Landroid/os/Message;
    :cond_a
    return-void

    #@a0
    .line 251
    :cond_b
    const/4 v3, 0x0

    #@a1
    .restart local v3    # "nowDrawn":Z
    goto :goto_2

    #@a2
    .line 252
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
    .line 279
    goto :goto_4

    #@a6
    :cond_e
    move v10, v11

    #@a7
    .line 280
    goto :goto_5
.end method

.method updateSurfaceViewBackgroundVisibilities()V
    .locals 5

    #@0
    .prologue
    .line 828
    const/4 v0, 0x0

    #@1
    .line 829
    .local v0, "bottom":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    const v1, 0x7fffffff

    #@4
    .line 830
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
    .line 831
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@15
    .line 832
    .local v3, "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    iget v4, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@1b
    if-ge v4, v1, :cond_0

    #@1d
    .line 833
    iget v1, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@1f
    .line 834
    move-object v0, v3

    #@20
    .line 830
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 837
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
    .line 838
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@34
    .line 839
    .restart local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    if-eq v3, v0, :cond_2

    #@36
    const/4 v4, 0x1

    #@37
    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    #@3a
    .line 837
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 839
    :cond_2
    const/4 v4, 0x0

    #@3e
    goto :goto_2

    #@3f
    .line 827
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
    .line 730
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
    .line 731
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@13
    .line 732
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 733
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 730
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 736
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_1
    return v3
.end method

.method windowsAreFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 308
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
