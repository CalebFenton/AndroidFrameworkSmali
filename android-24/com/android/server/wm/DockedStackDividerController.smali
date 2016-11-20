.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private final mDimLayer:Lcom/android/server/wm/DimLayer;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field private mLastAnimationProgress:F

.field private mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 64
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    #@5
    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@7
    const v1, 0x3e4ccccd    # 0.2f

    #@a
    const/4 v2, 0x0

    #@b
    const v3, 0x3dcccccd    # 0.1f

    #@e
    const/high16 v4, 0x3f800000    # 1.0f

    #@10
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@13
    .line 90
    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@15
    .line 62
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 107
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@11
    .line 108
    new-instance v1, Landroid/graphics/Rect;

    #@13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    #@18
    .line 109
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    #@1f
    .line 110
    const/4 v1, 0x0

    #@20
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@22
    .line 112
    new-instance v1, Landroid/os/RemoteCallbackList;

    #@24
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    #@27
    .line 111
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@29
    .line 125
    new-instance v1, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    #@30
    .line 135
    const/4 v1, 0x4

    #@31
    new-array v1, v1, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@33
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@35
    .line 139
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    .line 140
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@39
    .line 141
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@3b
    .line 142
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/wm/DimLayer;

    #@3d
    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3f
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@42
    move-result v3

    #@43
    .line 143
    const-string/jumbo v4, "DockedStackDim"

    #@46
    .line 142
    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    #@49
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@4b
    .line 145
    const v1, 0x10c000d

    #@4e
    .line 144
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@51
    move-result-object v1

    #@52
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    #@54
    .line 146
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    #@57
    .line 138
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F
    .param p3, "naturalAmount"    # F

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    .line 769
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@4
    cmpl-float v4, v4, v6

    #@6
    if-nez v4, :cond_0

    #@8
    .line 770
    return p3

    #@9
    .line 772
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    #@c
    move-result v1

    #@d
    .line 773
    .local v1, "minimizeDistance":I
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@11
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    #@14
    move-result v4

    #@15
    int-to-float v4, v4

    #@16
    .line 774
    int-to-float v5, v1

    #@17
    .line 773
    div-float v2, v4, v5

    #@19
    .line 775
    .local v2, "startPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@1b
    mul-float/2addr v4, p2

    #@1c
    sub-float v5, v6, p2

    #@1e
    mul-float/2addr v5, v2

    #@1f
    add-float v0, v4, v5

    #@21
    .line 776
    .local v0, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@23
    div-float v4, p2, v4

    #@25
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    #@28
    move-result v3

    #@29
    .line 777
    .local v3, "t2":F
    mul-float v4, v0, v3

    #@2b
    sub-float v5, v6, v3

    #@2d
    mul-float/2addr v5, p3

    #@2e
    add-float/2addr v4, v5

    #@2f
    return v4
.end method

.method private animateForIme(J)Z
    .locals 13
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/high16 v8, 0x3f800000    # 1.0f

    #@5
    .line 669
    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@7
    if-eqz v5, :cond_0

    #@9
    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 670
    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@f
    .line 671
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    #@11
    .line 673
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    #@16
    move-result v5

    #@17
    const/high16 v6, 0x438c0000    # 280.0f

    #@19
    mul-float/2addr v5, v6

    #@1a
    .line 672
    float-to-long v6, v5

    #@1b
    iput-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@1d
    .line 675
    :cond_1
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    #@1f
    sub-long v6, p1, v6

    #@21
    long-to-float v5, v6

    #@22
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@24
    long-to-float v6, v6

    #@25
    div-float/2addr v5, v6

    #@26
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    #@29
    move-result v3

    #@2a
    .line 676
    .local v3, "t":F
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@2c
    cmpl-float v5, v5, v8

    #@2e
    if-nez v5, :cond_3

    #@30
    sget-object v5, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@32
    :goto_0
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@35
    move-result v3

    #@36
    .line 678
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@38
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@3b
    move-result-object v2

    #@3c
    .line 679
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    const/4 v4, 0x0

    #@3d
    .line 680
    .local v4, "updated":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v5

    #@41
    add-int/lit8 v0, v5, -0x1

    #@43
    .end local v4    # "updated":Z
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    #@45
    .line 681
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@4b
    .line 682
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    #@4d
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_2

    #@53
    .line 683
    cmpl-float v5, v3, v8

    #@55
    if-ltz v5, :cond_4

    #@57
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@59
    cmpl-float v5, v5, v11

    #@5b
    if-nez v5, :cond_4

    #@5d
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    #@5f
    cmpl-float v5, v5, v11

    #@61
    if-nez v5, :cond_4

    #@63
    .line 684
    invoke-virtual {v1, v10}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    #@66
    .line 685
    const/4 v4, 0x1

    #@67
    .line 694
    :goto_2
    cmpl-float v5, v3, v8

    #@69
    if-ltz v5, :cond_2

    #@6b
    .line 695
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    #@6e
    .line 680
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@70
    goto :goto_1

    #@71
    .line 676
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_3
    sget-object v5, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@73
    goto :goto_0

    #@74
    .line 687
    .restart local v0    # "i":I
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    #@77
    move-result v5

    #@78
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@7a
    .line 688
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    #@7d
    move-result v5

    #@7e
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@80
    .line 690
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@82
    .line 691
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@84
    .line 689
    invoke-virtual {v1, v5, v6, v9}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    #@87
    move-result v5

    #@88
    or-int/2addr v4, v5

    #@89
    .local v4, "updated":Z
    goto :goto_2

    #@8a
    .line 699
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "updated":Z
    :cond_5
    if-eqz v4, :cond_6

    #@8c
    .line 700
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8e
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@90
    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@93
    .line 702
    :cond_6
    cmpl-float v5, v3, v8

    #@95
    if-ltz v5, :cond_7

    #@97
    .line 703
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@99
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@9b
    .line 704
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    #@9d
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@9f
    .line 705
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@a1
    .line 706
    return v9

    #@a2
    .line 708
    :cond_7
    return v10
.end method

.method private animateForMinimizedDockedStack(J)Z
    .locals 11
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/high16 v8, 0x3f800000    # 1.0f

    #@4
    .line 713
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@8
    const/4 v5, 0x3

    #@9
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@f
    .line 714
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@11
    if-nez v4, :cond_0

    #@13
    .line 715
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@15
    .line 716
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    #@17
    .line 717
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 718
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@21
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    #@24
    move-result-wide v2

    #@25
    .line 721
    .local v2, "transitionDuration":J
    :goto_0
    long-to-float v4, v2

    #@26
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    #@2b
    move-result v5

    #@2c
    mul-float/2addr v4, v5

    #@2d
    .line 720
    float-to-long v4, v4

    #@2e
    iput-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@30
    .line 722
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    #@33
    move-result v4

    #@34
    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@36
    .line 723
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@38
    .line 724
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@3a
    long-to-float v5, v6

    #@3b
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@3d
    mul-float/2addr v5, v6

    #@3e
    float-to-long v6, v5

    #@3f
    .line 723
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    #@42
    .line 726
    .end local v2    # "transitionDuration":J
    :cond_0
    iget-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    #@44
    sub-long v4, p1, v4

    #@46
    long-to-float v4, v4

    #@47
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@49
    long-to-float v5, v6

    #@4a
    div-float/2addr v4, v5

    #@4b
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    #@4e
    move-result v1

    #@4f
    .line 727
    .local v1, "t":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_3

    #@55
    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@57
    :goto_1
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@5a
    move-result v1

    #@5b
    .line 729
    if-eqz v0, :cond_1

    #@5d
    .line 730
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    #@60
    move-result v4

    #@61
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_1

    #@67
    .line 731
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@69
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@6b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@6e
    .line 734
    :cond_1
    cmpl-float v4, v1, v8

    #@70
    if-ltz v4, :cond_4

    #@72
    .line 735
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@74
    .line 736
    return v9

    #@75
    .line 719
    .end local v1    # "t":F
    :cond_2
    const-wide/16 v2, 0x150

    #@77
    goto :goto_0

    #@78
    .line 727
    .restart local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    #@7a
    goto :goto_1

    #@7b
    .line 738
    :cond_4
    return v10
.end method

.method private checkMinimizeChanged(Z)V
    .locals 10
    .param p1, "animate"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 504
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    #@7
    move-result-object v9

    #@8
    if-nez v9, :cond_0

    #@a
    .line 505
    return-void

    #@b
    .line 507
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@d
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    #@10
    move-result-object v2

    #@11
    .line 508
    .local v2, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_1

    #@13
    .line 509
    return-void

    #@14
    .line 511
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    #@17
    move-result-object v4

    #@18
    .line 512
    .local v4, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_4

    #@1a
    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_4

    #@20
    .line 516
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@2a
    .line 517
    .local v0, "fullscreenStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@2d
    move-result-object v3

    #@2e
    .line 518
    .local v3, "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v9

    #@32
    add-int/lit8 v9, v9, -0x1

    #@34
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Lcom/android/server/wm/Task;

    #@3a
    .line 519
    .local v6, "topHomeStackTask":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    #@3d
    move-result-object v9

    #@3e
    if-eqz v9, :cond_5

    #@40
    const/4 v5, 0x1

    #@41
    .line 520
    .local v5, "homeVisible":Z
    :goto_0
    if-eqz v0, :cond_2

    #@43
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    #@46
    move-result v9

    #@47
    if-nez v9, :cond_6

    #@49
    .line 521
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v9

    #@4d
    if-le v9, v8, :cond_7

    #@4f
    if-eq v6, v4, :cond_7

    #@51
    const/4 v1, 0x1

    #@52
    .line 522
    .local v1, "homeBehind":Z
    :goto_1
    if-eqz v5, :cond_3

    #@54
    if-eqz v1, :cond_8

    #@56
    :cond_3
    :goto_2
    invoke-direct {p0, v7, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    #@59
    .line 503
    return-void

    #@5a
    .line 513
    .end local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "homeBehind":Z
    .end local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "homeVisible":Z
    .end local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_4
    return-void

    #@5b
    .line 519
    .restart local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .restart local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .restart local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_5
    const/4 v5, 0x0

    #@5c
    .restart local v5    # "homeVisible":Z
    goto :goto_0

    #@5d
    .line 520
    :cond_6
    const/4 v1, 0x1

    #@5e
    .restart local v1    # "homeBehind":Z
    goto :goto_1

    #@5f
    .line 521
    .end local v1    # "homeBehind":Z
    :cond_7
    const/4 v1, 0x0

    #@60
    .restart local v1    # "homeBehind":Z
    goto :goto_1

    #@61
    :cond_8
    move v7, v8

    #@62
    .line 522
    goto :goto_2
.end method

.method private clearImeAdjustAnimation()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 562
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 563
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v0, v3, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@f
    .line 564
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@15
    .line 565
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 566
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    #@21
    .line 563
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 569
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@26
    .line 561
    return-void
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    #@0
    .prologue
    const v6, 0x3ecccccd    # 0.4f

    #@3
    const/high16 v5, 0x3f800000    # 1.0f

    #@5
    .line 785
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    if-nez p1, :cond_1

    #@d
    .line 787
    :cond_0
    return v5

    #@e
    .line 786
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@12
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 789
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    #@1b
    move-result v1

    #@1c
    .line 790
    .local v1, "minimizeDistance":I
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@20
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    #@23
    move-result v3

    #@24
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@27
    move-result v3

    #@28
    int-to-float v3, v3

    #@29
    .line 791
    int-to-float v4, v1

    #@2a
    .line 790
    div-float v0, v3, v4

    #@2c
    .line 792
    .local v0, "fraction":F
    const/4 v3, 0x0

    #@2d
    sub-float v4, v0, v6

    #@2f
    div-float/2addr v4, v6

    #@30
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    #@33
    move-result v4

    #@34
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    #@37
    move-result v2

    #@38
    .line 795
    .local v2, "t":F
    sub-float v3, v5, v2

    #@3a
    const v4, 0x3ecccccc    # 0.39999998f

    #@3d
    mul-float/2addr v3, v4

    #@3e
    .line 794
    const v4, 0x3f19999a    # 0.6f

    #@41
    add-float/2addr v3, v4

    #@42
    return v3
.end method

.method private getInterpolatedAnimationValue(F)F
    .locals 3
    .param p1, "t"    # F

    #@0
    .prologue
    .line 743
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@2
    mul-float/2addr v0, p1

    #@3
    const/high16 v1, 0x3f800000    # 1.0f

    #@5
    sub-float/2addr v1, p1

    #@6
    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@8
    mul-float/2addr v1, v2

    #@9
    add-float/2addr v0, v1

    #@a
    return v0
.end method

.method private getInterpolatedDividerValue(F)F
    .locals 3
    .param p1, "t"    # F

    #@0
    .prologue
    .line 747
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    #@2
    mul-float/2addr v0, p1

    #@3
    const/high16 v1, 0x3f800000    # 1.0f

    #@5
    sub-float/2addr v1, p1

    #@6
    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    #@8
    mul-float/2addr v1, v2

    #@9
    add-float/2addr v0, v1

    #@a
    return v0
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F

    #@0
    .prologue
    .line 754
    invoke-direct {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    #@3
    move-result v0

    #@4
    .line 755
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 756
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 758
    :cond_0
    return v0
.end method

.method private initSnapAlgorithmForRotations()V
    .locals 15

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v12, 0x1

    #@2
    .line 192
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@6
    .line 195
    .local v7, "baseConfig":Landroid/content/res/Configuration;
    new-instance v8, Landroid/content/res/Configuration;

    #@8
    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    #@b
    .line 196
    .local v8, "config":Landroid/content/res/Configuration;
    const/4 v10, 0x0

    #@c
    .local v10, "rotation":I
    :goto_0
    const/4 v0, 0x4

    #@d
    if-ge v10, v0, :cond_6

    #@f
    .line 197
    if-eq v10, v12, :cond_0

    #@11
    const/4 v0, 0x3

    #@12
    if-ne v10, v0, :cond_1

    #@14
    :cond_0
    move v9, v12

    #@15
    .line 198
    .local v9, "rotated":Z
    :goto_1
    if-eqz v9, :cond_2

    #@17
    .line 199
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@19
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@1b
    .line 201
    .local v2, "dw":I
    :goto_2
    if-eqz v9, :cond_3

    #@1d
    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1f
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@21
    .line 204
    .local v3, "dh":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@25
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@27
    invoke-interface {v0, v10, v2, v3, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    #@2a
    .line 205
    invoke-virtual {v8}, Landroid/content/res/Configuration;->setToDefaults()V

    #@2d
    .line 206
    if-gt v2, v3, :cond_4

    #@2f
    move v0, v12

    #@30
    :goto_4
    iput v0, v8, Landroid/content/res/Configuration;->orientation:I

    #@32
    .line 208
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@34
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@36
    iget v1, v7, Landroid/content/res/Configuration;->uiMode:I

    #@38
    invoke-interface {v0, v2, v3, v10, v1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIII)I

    #@3b
    move-result v0

    #@3c
    int-to-float v0, v0

    #@3d
    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@42
    move-result-object v1

    #@43
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@45
    .line 208
    div-float/2addr v0, v1

    #@46
    .line 207
    float-to-int v0, v0

    #@47
    iput v0, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    #@49
    .line 211
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4d
    iget v1, v7, Landroid/content/res/Configuration;->uiMode:I

    #@4f
    invoke-interface {v0, v2, v3, v10, v1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIII)I

    #@52
    move-result v0

    #@53
    int-to-float v0, v0

    #@54
    .line 212
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@56
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@59
    move-result-object v1

    #@5a
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@5c
    .line 211
    div-float/2addr v0, v1

    #@5d
    .line 210
    float-to-int v0, v0

    #@5e
    iput v0, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    #@60
    .line 213
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@62
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@64
    invoke-virtual {v0, v8}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@67
    move-result-object v11

    #@68
    .line 214
    .local v11, "rotationContext":Landroid/content/Context;
    iget-object v14, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@6a
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@6c
    .line 215
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@73
    move-result v4

    #@74
    .line 216
    iget v5, v8, Landroid/content/res/Configuration;->orientation:I

    #@76
    if-ne v5, v12, :cond_5

    #@78
    move v5, v12

    #@79
    :goto_5
    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@7b
    .line 214
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    #@7e
    aput-object v0, v14, v10

    #@80
    .line 196
    add-int/lit8 v10, v10, 0x1

    #@82
    goto :goto_0

    #@83
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v9    # "rotated":Z
    .end local v11    # "rotationContext":Landroid/content/Context;
    :cond_1
    move v9, v13

    #@84
    .line 197
    goto :goto_1

    #@85
    .line 200
    .restart local v9    # "rotated":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@87
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@89
    .restart local v2    # "dw":I
    goto :goto_2

    #@8a
    .line 203
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8c
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@8e
    .restart local v3    # "dh":I
    goto :goto_3

    #@8f
    .line 206
    :cond_4
    const/4 v0, 0x2

    #@90
    goto :goto_4

    #@91
    .restart local v11    # "rotationContext":Landroid/content/Context;
    :cond_5
    move v5, v13

    #@92
    .line 216
    goto :goto_5

    #@93
    .line 191
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v9    # "rotated":Z
    .end local v11    # "rotationContext":Landroid/content/Context;
    :cond_6
    return-void
.end method

.method private isAnimationMaximizing()Z
    .locals 2

    #@0
    .prologue
    .line 649
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-nez v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    .line 526
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@7
    .line 527
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@9
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@e
    .line 528
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@10
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method private loadDimens()V
    .locals 3

    #@0
    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 222
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 223
    const v2, 0x1050021

    #@b
    .line 222
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    #@11
    .line 224
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v1

    #@15
    .line 225
    const v2, 0x1050022

    #@18
    .line 224
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1b
    move-result v1

    #@1c
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@1e
    .line 227
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@20
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x4

    #@25
    .line 226
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@28
    move-result v1

    #@29
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    #@2b
    .line 228
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    #@2e
    .line 220
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .locals 3

    #@0
    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@5
    move-result-object v1

    #@6
    .line 269
    .local v1, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v0, v2, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@e
    .line 270
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@14
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    #@17
    .line 269
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 267
    :cond_0
    return-void
.end method

.method private setMinimizedDockedStack(Z)V
    .locals 4
    .param p1, "minimized"    # Z

    #@0
    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    #@5
    move-result-object v0

    #@6
    .line 639
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const-wide/16 v2, 0x0

    #@8
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    #@b
    .line 640
    if-nez v0, :cond_0

    #@d
    .line 641
    return-void

    #@e
    .line 643
    :cond_0
    if-eqz p1, :cond_2

    #@10
    const/high16 v1, 0x3f800000    # 1.0f

    #@12
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 644
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1a
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@1f
    .line 637
    :cond_1
    return-void

    #@20
    .line 643
    :cond_2
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method

.method private setMinimizedDockedStack(ZZ)V
    .locals 3
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 539
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@5
    .line 540
    .local v0, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@7
    .line 541
    if-ne p1, v0, :cond_0

    #@9
    .line 542
    return-void

    #@a
    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()V

    #@d
    .line 546
    if-eqz p1, :cond_2

    #@f
    .line 547
    if-eqz p2, :cond_1

    #@11
    .line 548
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    #@14
    .line 538
    :goto_0
    return-void

    #@15
    .line 550
    :cond_1
    const/4 v1, 0x1

    #@16
    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 553
    :cond_2
    if-eqz p2, :cond_3

    #@1c
    .line 554
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    #@1f
    goto :goto_0

    #@20
    .line 556
    :cond_3
    const/4 v1, 0x0

    #@21
    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)V

    #@24
    goto :goto_0
.end method

.method private startAdjustAnimation(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    #@0
    .prologue
    .line 573
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@3
    .line 574
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@6
    .line 575
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@8
    .line 576
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@a
    .line 572
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "imeWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/16 v8, 0x18

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 585
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@6
    if-nez v3, :cond_4

    #@8
    .line 586
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@a
    if-eqz v3, :cond_2

    #@c
    move v3, v4

    #@d
    :goto_0
    int-to-float v3, v3

    #@e
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@10
    .line 587
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@12
    if-eqz v3, :cond_3

    #@14
    move v3, v4

    #@15
    :goto_1
    int-to-float v3, v3

    #@16
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    #@18
    .line 588
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@1a
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@1c
    .line 589
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    #@1e
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@20
    .line 594
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@22
    .line 595
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@24
    .line 596
    if-eqz p1, :cond_5

    #@26
    move v3, v4

    #@27
    :goto_3
    int-to-float v3, v3

    #@28
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@2a
    .line 597
    if-eqz p2, :cond_0

    #@2c
    move v5, v4

    #@2d
    :cond_0
    int-to-float v3, v5

    #@2e
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    #@30
    .line 599
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@32
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@35
    move-result-object v2

    #@36
    .line 600
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v3

    #@3a
    add-int/lit8 v0, v3, -0x1

    #@3c
    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_6

    #@3e
    .line 601
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@44
    .line 602
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_1

    #@4a
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_1

    #@50
    .line 603
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    #@53
    .line 600
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@55
    goto :goto_4

    #@56
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_2
    move v3, v5

    #@57
    .line 586
    goto :goto_0

    #@58
    :cond_3
    move v3, v5

    #@59
    .line 587
    goto :goto_1

    #@5a
    .line 591
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@5c
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@5e
    .line 592
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@60
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    #@62
    goto :goto_2

    #@63
    :cond_5
    move v3, v5

    #@64
    .line 596
    goto :goto_3

    #@65
    .line 609
    .restart local v0    # "i":I
    .restart local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@67
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@6c
    move-result v3

    #@6d
    if-nez v3, :cond_9

    #@6f
    .line 610
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@71
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@73
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@76
    .line 611
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@78
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7a
    .line 612
    const-wide/16 v6, 0xc8

    #@7c
    .line 611
    invoke-virtual {v3, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    #@7f
    .line 613
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    #@81
    .line 614
    if-eqz p3, :cond_8

    #@83
    .line 617
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@85
    if-eqz v3, :cond_7

    #@87
    .line 618
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@89
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    #@8e
    .line 620
    :cond_7
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@90
    .line 621
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@92
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->startDelayingAnimationStart()V

    #@95
    .line 623
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@97
    new-instance v4, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;

    #@99
    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    #@9c
    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@9e
    .line 580
    :goto_5
    return-void

    #@9f
    .line 633
    :cond_9
    if-nez p1, :cond_a

    #@a1
    move v4, p2

    #@a2
    :cond_a
    const-wide/16 v6, 0x118

    #@a4
    .line 632
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@a7
    goto :goto_5
.end method


# virtual methods
.method synthetic -com_android_server_wm_DockedStackDividerController_lambda$1(ZZ)V
    .locals 2
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z

    #@0
    .prologue
    .line 624
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    #@3
    .line 625
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 626
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    #@e
    .line 629
    :cond_0
    if-nez p1, :cond_1

    #@10
    .end local p2    # "adjustedForDivider":Z
    :goto_0
    const-wide/16 v0, 0x118

    #@12
    .line 628
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@15
    .line 0
    return-void

    #@16
    .line 629
    .restart local p2    # "adjustedForDivider":Z
    :cond_1
    const/4 p2, 0x1

    #@17
    goto :goto_0
.end method

.method public animate(J)Z
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 653
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 654
    return v2

    #@6
    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 657
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 658
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 659
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 661
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@1a
    if-eqz v0, :cond_3

    #@1c
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 662
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@26
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@2a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    #@2d
    move-result v1

    #@2e
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    #@31
    .line 664
    :cond_3
    return v2
.end method

.method public dimFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 800
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "DockedStackDividerController"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "  mLastVisibility="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "  mMinimizedDock="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    const-string/jumbo v1, "  mAdjustedForIme="

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    const-string/jumbo v1, "  mAdjustedForDivider="

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 828
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@8d
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@90
    move-result v0

    #@91
    if-eqz v0, :cond_0

    #@93
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    const-string/jumbo v1, "  Dim layer is dimming: "

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@aa
    .line 830
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@ac
    new-instance v1, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    const-string/jumbo v2, "    "

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@c3
    .line 822
    :cond_0
    return-void
.end method

.method getContentInsets()I
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@2
    return v0
.end method

.method getContentWidth()I
    .locals 2

    #@0
    .prologue
    .line 240
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    #@2
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@4
    mul-int/lit8 v1, v1, 0x2

    #@6
    sub-int/2addr v0, v1

    #@7
    return v0
.end method

.method getContentWidthInactive()I
    .locals 1

    #@0
    .prologue
    .line 248
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    #@2
    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 809
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getImeHeightAdjustedFor()I
    .locals 1

    #@0
    .prologue
    .line 319
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    #@2
    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .locals 16
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 150
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@7
    move-result-object v9

    #@8
    .line 153
    .local v9, "di":Landroid/view/DisplayInfo;
    if-eqz p1, :cond_0

    #@a
    move-object/from16 v0, p1

    #@c
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@e
    if-nez v3, :cond_1

    #@10
    move-object/from16 v0, p1

    #@12
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@14
    if-nez v3, :cond_1

    #@16
    .line 154
    move-object/from16 v0, p1

    #@18
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@1a
    iget v4, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    #@1c
    if-ne v3, v4, :cond_1

    #@1e
    move-object/from16 v0, p1

    #@20
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    #@22
    iget v4, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 155
    :cond_0
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@2c
    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@2e
    return v3

    #@2f
    .line 157
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@33
    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@35
    .line 158
    .local v8, "baseDisplayWidth":I
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@39
    iget v7, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@3b
    .line 159
    .local v7, "baseDisplayHeight":I
    const v10, 0x7fffffff

    #@3e
    .line 163
    .local v10, "minWidth":I
    const/4 v14, 0x0

    #@3f
    .local v14, "rotation":I
    :goto_0
    const/4 v3, 0x4

    #@40
    if-ge v14, v3, :cond_7

    #@42
    .line 164
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b
    .line 165
    move-object/from16 v0, p0

    #@4d
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4f
    iget v4, v9, Landroid/view/DisplayInfo;->rotation:I

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@55
    invoke-virtual {v3, v4, v14, v5}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    #@58
    .line 166
    const/4 v3, 0x1

    #@59
    if-eq v14, v3, :cond_2

    #@5b
    const/4 v3, 0x3

    #@5c
    if-ne v14, v3, :cond_3

    #@5e
    :cond_2
    const/4 v13, 0x1

    #@5f
    .line 167
    .local v13, "rotated":Z
    :goto_1
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@63
    .line 168
    if-eqz v13, :cond_4

    #@65
    move v4, v7

    #@66
    .line 169
    :goto_2
    if-eqz v13, :cond_5

    #@68
    move v3, v8

    #@69
    .line 167
    :goto_3
    const/4 v6, 0x0

    #@6a
    const/4 v15, 0x0

    #@6b
    invoke-virtual {v5, v6, v15, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@6e
    .line 170
    move-object/from16 v0, p0

    #@70
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@72
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@75
    move-result v3

    #@76
    move-object/from16 v0, p0

    #@78
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@7a
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@7d
    move-result v4

    #@7e
    if-gt v3, v4, :cond_6

    #@80
    .line 171
    const/4 v11, 0x1

    #@81
    .line 173
    .local v11, "orientation":I
    :goto_4
    move-object/from16 v0, p0

    #@83
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@89
    invoke-static {v3, v4, v11}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    #@8c
    move-result v2

    #@8d
    .line 174
    .local v2, "dockSide":I
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@91
    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@94
    move-result v4

    #@95
    .line 174
    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    #@98
    move-result v12

    #@99
    .line 179
    .local v12, "position":I
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@9d
    aget-object v3, v3, v14

    #@9f
    invoke-virtual {v3, v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@a2
    move-result-object v3

    #@a3
    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@a5
    .line 181
    .local v1, "snappedPosition":I
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@a9
    .line 182
    move-object/from16 v0, p0

    #@ab
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@ad
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@b0
    move-result v4

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@b5
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@b8
    move-result v5

    #@b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@bc
    move-result v6

    #@bd
    .line 181
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    #@c0
    .line 183
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c4
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@ca
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@cd
    move-result v4

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@d2
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@d5
    move-result v5

    #@d6
    .line 184
    move-object/from16 v0, p0

    #@d8
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    #@da
    .line 183
    invoke-interface {v3, v14, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    #@dd
    .line 185
    move-object/from16 v0, p0

    #@df
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@ed
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@f0
    .line 186
    move-object/from16 v0, p0

    #@f2
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@f4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@f7
    move-result v3

    #@f8
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    #@fb
    move-result v10

    #@fc
    .line 163
    add-int/lit8 v14, v14, 0x1

    #@fe
    goto/16 :goto_0

    #@100
    .line 166
    .end local v1    # "snappedPosition":I
    .end local v2    # "dockSide":I
    .end local v11    # "orientation":I
    .end local v12    # "position":I
    .end local v13    # "rotated":Z
    :cond_3
    const/4 v13, 0x0

    #@101
    .restart local v13    # "rotated":Z
    goto/16 :goto_1

    #@103
    :cond_4
    move v4, v8

    #@104
    .line 168
    goto/16 :goto_2

    #@106
    :cond_5
    move v3, v7

    #@107
    .line 169
    goto/16 :goto_3

    #@109
    .line 172
    :cond_6
    const/4 v11, 0x2

    #@10a
    .restart local v11    # "orientation":I
    goto/16 :goto_4

    #@10c
    .line 188
    .end local v11    # "orientation":I
    .end local v13    # "rotated":Z
    :cond_7
    int-to-float v3, v10

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@111
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@114
    move-result-object v4

    #@115
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    #@117
    div-float/2addr v3, v4

    #@118
    float-to-int v3, v3

    #@119
    return v3
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 264
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@a
    move-result-object v0

    #@b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@d
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@12
    move-result-object v1

    #@13
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@18
    .line 262
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    #@0
    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@2
    return-object v0
.end method

.method isImeHideRequested()Z
    .locals 1

    #@0
    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    #@2
    return v0
.end method

.method isMinimizedDock()Z
    .locals 1

    #@0
    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@2
    return v0
.end method

.method isResizing()Z
    .locals 1

    #@0
    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    #@2
    return v0
.end method

.method notifyAdjustedForImeChanged(ZJ)V
    .locals 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    #@0
    .prologue
    .line 444
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 445
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 446
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/IDockedStackListener;

    #@11
    .line 448
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 445
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 449
    :catch_0
    move-exception v0

    #@18
    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@1b
    const-string/jumbo v5, "Error delivering adjusted for ime changed event."

    #@1e
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 443
    return-void
.end method

.method notifyAppTransitionStarting()V
    .locals 1

    #@0
    .prologue
    .line 496
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    #@4
    .line 495
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .locals 1

    #@0
    .prologue
    .line 492
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    #@4
    .line 491
    return-void
.end method

.method notifyDockSideChanged(I)V
    .locals 6
    .param p1, "newDockSide"    # I

    #@0
    .prologue
    .line 431
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 432
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 433
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/IDockedStackListener;

    #@11
    .line 435
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 432
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 436
    :catch_0
    move-exception v0

    #@18
    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@1b
    const-string/jumbo v5, "Error delivering dock side changed event."

    #@1e
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 430
    return-void
.end method

.method notifyDockedDividerVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 359
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 360
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/IDockedStackListener;

    #@11
    .line 362
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 359
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 363
    :catch_0
    move-exception v0

    #@18
    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@1b
    const-string/jumbo v5, "Error delivering divider visibility changed event."

    #@1e
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 357
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .locals 7
    .param p1, "exists"    # Z

    #@0
    .prologue
    .line 371
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v4

    #@6
    .line 372
    .local v4, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    #@9
    .line 373
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/view/IDockedStackListener;

    #@11
    .line 375
    .local v3, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 372
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 376
    :catch_0
    move-exception v0

    #@18
    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WindowManager"

    #@1b
    const-string/jumbo v6, "Error delivering docked stack exists changed event."

    #@1e
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 381
    if-eqz p1, :cond_2

    #@29
    .line 383
    const-class v5, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@2b
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@31
    .line 384
    .local v2, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_1

    #@33
    .line 388
    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    #@36
    .line 389
    const/4 v5, 0x1

    #@37
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    #@39
    .line 370
    .end local v2    # "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    :cond_1
    :goto_2
    return-void

    #@3a
    .line 392
    :cond_2
    const/4 v5, 0x0

    #@3b
    invoke-direct {p0, v5}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)V

    #@3e
    goto :goto_2
.end method

.method notifyDockedStackMinimizedChanged(ZJ)V
    .locals 8
    .param p1, "minimizedDock"    # Z
    .param p2, "animDuration"    # J

    #@0
    .prologue
    const/16 v7, 0x35

    #@2
    const/4 v5, 0x0

    #@3
    .line 415
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@a
    .line 416
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@e
    .line 417
    if-eqz p1, :cond_0

    #@10
    const/4 v4, 0x1

    #@11
    .line 416
    :goto_0
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 418
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@1a
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@1d
    move-result v3

    #@1e
    .line 419
    .local v3, "size":I
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    #@21
    .line 420
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@23
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/view/IDockedStackListener;

    #@29
    .line 422
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 419
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "size":I
    :cond_0
    move v4, v5

    #@30
    .line 417
    goto :goto_0

    #@31
    .line 423
    .restart local v1    # "i":I
    .restart local v2    # "listener":Landroid/view/IDockedStackListener;
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    #@32
    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@35
    const-string/jumbo v5, "Error delivering minimized dock changed event."

    #@38
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_2

    #@3c
    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@3e
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@41
    .line 414
    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    #@3
    .line 231
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@5
    move-result-object v1

    #@6
    .line 324
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_0

    #@8
    .line 330
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 331
    return-void

    #@e
    .line 333
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@10
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@13
    .line 335
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@16
    move-result v0

    #@17
    .line 336
    .local v0, "side":I
    packed-switch v0, :pswitch_data_0

    #@1a
    .line 354
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 322
    return-void

    #@20
    .line 338
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@22
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@24
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@26
    sub-int/2addr v2, v3

    #@27
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@29
    .line 339
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@2b
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@2d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@30
    move-result v5

    #@31
    add-int/2addr v4, v5

    #@32
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@34
    sub-int/2addr v4, v5

    #@35
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@37
    .line 338
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@3a
    goto :goto_0

    #@3b
    .line 342
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@3d
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@3f
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@41
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@43
    sub-int/2addr v3, v4

    #@44
    .line 343
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@46
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@48
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@4a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@4c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@4f
    move-result v6

    #@50
    add-int/2addr v5, v6

    #@51
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@53
    sub-int/2addr v5, v6

    #@54
    .line 342
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@57
    goto :goto_0

    #@58
    .line 346
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@5a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@5c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@5f
    move-result v3

    #@60
    sub-int/2addr v2, v3

    #@61
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@63
    add-int/2addr v2, v3

    #@64
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@66
    .line 347
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@68
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@6a
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@6c
    add-int/2addr v4, v5

    #@6d
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@6f
    .line 346
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@72
    goto :goto_0

    #@73
    .line 350
    :pswitch_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@75
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@77
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@79
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@7c
    move-result v4

    #@7d
    sub-int/2addr v3, v4

    #@7e
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@80
    add-int/2addr v3, v4

    #@81
    .line 351
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@83
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@85
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@87
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@89
    add-int/2addr v5, v6

    #@8a
    .line 350
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@8d
    goto :goto_0

    #@8e
    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reevaluateVisibility(Z)V
    .locals 5
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 281
    return-void

    #@5
    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@7
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@b
    const/4 v3, 0x3

    #@c
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@12
    .line 286
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    #@14
    const/4 v1, 0x1

    #@15
    .line 287
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@17
    if-ne v2, v1, :cond_1

    #@19
    if-eqz p1, :cond_4

    #@1b
    .line 290
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@1d
    .line 291
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    #@20
    .line 292
    if-nez v1, :cond_2

    #@22
    .line 293
    const/4 v2, 0x0

    #@23
    const/4 v3, -0x1

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    #@28
    .line 279
    :cond_2
    return-void

    #@29
    .line 286
    .end local v1    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "visible":Z
    goto :goto_0

    #@2b
    .line 288
    :cond_4
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 457
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@7
    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    #@e
    .line 460
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@10
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@14
    const/4 v1, 0x3

    #@15
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 459
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    #@1f
    .line 461
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@21
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    #@24
    .line 462
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@26
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@29
    .line 456
    return-void

    #@2a
    .line 460
    :cond_0
    const/4 v0, 0x0

    #@2b
    goto :goto_0
.end method

.method resetImeHideRequested()V
    .locals 1

    #@0
    .prologue
    .line 400
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    #@3
    .line 399
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "animate"    # Z
    .param p4, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p5, "imeHeight"    # I

    #@0
    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    if-eqz p1, :cond_3

    #@6
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    #@8
    if-eq v0, p5, :cond_3

    #@a
    .line 306
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    #@c
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@e
    if-eqz v0, :cond_4

    #@10
    .line 310
    :cond_1
    if-nez p1, :cond_5

    #@12
    move v0, p2

    #@13
    :goto_1
    const-wide/16 v2, 0x0

    #@15
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@18
    .line 312
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@1a
    .line 313
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    #@1c
    .line 314
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@1e
    .line 303
    :cond_2
    return-void

    #@1f
    .line 305
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@21
    if-eq v0, p2, :cond_2

    #@23
    goto :goto_0

    #@24
    .line 307
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    #@27
    goto :goto_2

    #@28
    .line 310
    :cond_5
    const/4 v0, 0x1

    #@29
    goto :goto_1
.end method

.method setResizeDimLayer(ZIF)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "targetStackId"    # I
    .param p3, "alpha"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 467
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@4
    .line 468
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@6
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@10
    .line 469
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@12
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@15
    move-result-object v0

    #@16
    .line 470
    .local v0, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz p1, :cond_0

    #@18
    if-eqz v1, :cond_0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    const/4 v3, 0x1

    #@1d
    :cond_0
    move v2, v3

    #@1e
    .line 471
    .local v2, "visibleAndValid":Z
    if-eqz v2, :cond_1

    #@20
    .line 472
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@25
    .line 473
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@27
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@2a
    move-result v3

    #@2b
    if-lez v3, :cond_3

    #@2d
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@2f
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@32
    move-result v3

    #@33
    if-lez v3, :cond_3

    #@35
    .line 474
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@37
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@3c
    .line 475
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@3e
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@40
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@42
    invoke-virtual {v4}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    #@45
    move-result v4

    #@46
    .line 476
    const-wide/16 v6, 0x0

    #@48
    .line 475
    invoke-virtual {v3, v4, p3, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@4b
    .line 481
    .end local v2    # "visibleAndValid":Z
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    #@4d
    .line 482
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@4f
    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->hide()V

    #@52
    .line 484
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@55
    .line 466
    return-void

    #@56
    .line 478
    .restart local v2    # "visibleAndValid":Z
    :cond_3
    const/4 v2, 0x0

    #@57
    .local v2, "visibleAndValid":Z
    goto :goto_0
.end method

.method setResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    #@0
    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 253
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    #@6
    .line 254
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    #@9
    .line 251
    :cond_0
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 258
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@2
    .line 276
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    #@6
    .line 274
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 815
    sget-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method wasVisible()Z
    .locals 1

    #@0
    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@2
    return v0
.end method
