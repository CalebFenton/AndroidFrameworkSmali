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
    .line 66
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    #@5
    .line 93
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
    .line 92
    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@15
    .line 64
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 109
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@11
    .line 110
    new-instance v1, Landroid/graphics/Rect;

    #@13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    #@18
    .line 111
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    #@1f
    .line 112
    const/4 v1, 0x0

    #@20
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@22
    .line 114
    new-instance v1, Landroid/os/RemoteCallbackList;

    #@24
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    #@27
    .line 113
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@29
    .line 127
    new-instance v1, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    #@30
    .line 137
    const/4 v1, 0x4

    #@31
    new-array v1, v1, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@33
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@35
    .line 141
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    .line 142
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@39
    .line 143
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@3b
    .line 144
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/wm/DimLayer;

    #@3d
    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3f
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@42
    move-result v3

    #@43
    .line 145
    const-string/jumbo v4, "DockedStackDim"

    #@46
    .line 144
    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    #@49
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@4b
    .line 147
    const v1, 0x10c000d

    #@4e
    .line 146
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@51
    move-result-object v1

    #@52
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    #@54
    .line 148
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    #@57
    .line 140
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
    .line 815
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@4
    cmpl-float v4, v4, v6

    #@6
    if-nez v4, :cond_0

    #@8
    .line 816
    return p3

    #@9
    .line 818
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    #@c
    move-result v1

    #@d
    .line 819
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
    .line 820
    int-to-float v5, v1

    #@17
    .line 819
    div-float v2, v4, v5

    #@19
    .line 821
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
    .line 822
    .local v0, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@23
    div-float v4, p2, v4

    #@25
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    #@28
    move-result v3

    #@29
    .line 823
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
    .line 715
    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@7
    if-eqz v5, :cond_0

    #@9
    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 716
    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@f
    .line 717
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    #@11
    .line 719
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
    .line 718
    float-to-long v6, v5

    #@1b
    iput-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@1d
    .line 721
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
    .line 722
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
    .line 724
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@38
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@3b
    move-result-object v2

    #@3c
    .line 725
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    const/4 v4, 0x0

    #@3d
    .line 726
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
    .line 727
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@4b
    .line 728
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    #@4d
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_2

    #@53
    .line 729
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
    .line 730
    invoke-virtual {v1, v10}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    #@66
    .line 731
    const/4 v4, 0x1

    #@67
    .line 740
    :goto_2
    cmpl-float v5, v3, v8

    #@69
    if-ltz v5, :cond_2

    #@6b
    .line 741
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    #@6e
    .line 726
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@70
    goto :goto_1

    #@71
    .line 722
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_3
    sget-object v5, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@73
    goto :goto_0

    #@74
    .line 733
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
    .line 734
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    #@7d
    move-result v5

    #@7e
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@80
    .line 736
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@82
    .line 737
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@84
    .line 735
    invoke-virtual {v1, v5, v6, v9}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    #@87
    move-result v5

    #@88
    or-int/2addr v4, v5

    #@89
    .local v4, "updated":Z
    goto :goto_2

    #@8a
    .line 745
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "updated":Z
    :cond_5
    if-eqz v4, :cond_6

    #@8c
    .line 746
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8e
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@90
    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@93
    .line 748
    :cond_6
    cmpl-float v5, v3, v8

    #@95
    if-ltz v5, :cond_7

    #@97
    .line 749
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@99
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@9b
    .line 750
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    #@9d
    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@9f
    .line 751
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@a1
    .line 752
    return v9

    #@a2
    .line 754
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
    .line 759
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
    .line 760
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@11
    if-nez v4, :cond_0

    #@13
    .line 761
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@15
    .line 762
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    #@17
    .line 763
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 764
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@21
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    #@24
    move-result-wide v2

    #@25
    .line 767
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
    .line 766
    float-to-long v4, v4

    #@2e
    iput-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    #@30
    .line 768
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    #@33
    move-result v4

    #@34
    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    #@36
    .line 769
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@38
    .line 770
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
    .line 769
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    #@42
    .line 772
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
    .line 773
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
    .line 775
    if-eqz v0, :cond_1

    #@5d
    .line 776
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
    .line 777
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@69
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@6b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@6e
    .line 780
    :cond_1
    cmpl-float v4, v1, v8

    #@70
    if-ltz v4, :cond_4

    #@72
    .line 781
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@74
    .line 782
    return v9

    #@75
    .line 765
    .end local v1    # "t":F
    :cond_2
    const-wide/16 v2, 0x150

    #@77
    goto :goto_0

    #@78
    .line 773
    .restart local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    #@7a
    goto :goto_1

    #@7b
    .line 784
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
    .line 530
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    #@7
    move-result-object v9

    #@8
    if-nez v9, :cond_0

    #@a
    .line 531
    return-void

    #@b
    .line 533
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@d
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    #@10
    move-result-object v2

    #@11
    .line 534
    .local v2, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_1

    #@13
    .line 535
    return-void

    #@14
    .line 537
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    #@17
    move-result-object v4

    #@18
    .line 538
    .local v4, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_4

    #@1a
    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_4

    #@20
    .line 542
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
    .line 543
    .local v0, "fullscreenStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@2d
    move-result-object v3

    #@2e
    .line 544
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
    .line 545
    .local v6, "topHomeStackTask":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    #@3d
    move-result-object v9

    #@3e
    if-eqz v9, :cond_5

    #@40
    const/4 v5, 0x1

    #@41
    .line 546
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
    .line 547
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
    .line 548
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
    .line 529
    return-void

    #@5a
    .line 539
    .end local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "homeBehind":Z
    .end local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "homeVisible":Z
    .end local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_4
    return-void

    #@5b
    .line 545
    .restart local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .restart local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .restart local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_5
    const/4 v5, 0x0

    #@5c
    .restart local v5    # "homeVisible":Z
    goto :goto_0

    #@5d
    .line 546
    :cond_6
    const/4 v1, 0x1

    #@5e
    .restart local v1    # "homeBehind":Z
    goto :goto_1

    #@5f
    .line 547
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
    .line 548
    goto :goto_2
.end method

.method private clearImeAdjustAnimation()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 597
    const/4 v0, 0x0

    #@2
    .line 598
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    .line 599
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v4

    #@c
    add-int/lit8 v1, v4, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@10
    .line 600
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/wm/TaskStack;

    #@16
    .line 601
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_0

    #@18
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 602
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    #@22
    .line 603
    const/4 v0, 0x1

    #@23
    .line 599
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@25
    goto :goto_0

    #@26
    .line 606
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@28
    .line 607
    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v4, 0x0

    #@1
    .line 516
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@4
    move-result v2

    #@5
    add-int/lit8 v0, v2, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@9
    .line 517
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@f
    .line 518
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@11
    if-eqz v2, :cond_0

    #@13
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@15
    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@17
    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@19
    const/4 v3, 0x3

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 519
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 516
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 522
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return v4
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
    .line 831
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    if-nez p1, :cond_1

    #@d
    .line 833
    :cond_0
    return v5

    #@e
    .line 832
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
    .line 835
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    #@1b
    move-result v1

    #@1c
    .line 836
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
    .line 837
    int-to-float v4, v1

    #@2a
    .line 836
    div-float v0, v3, v4

    #@2c
    .line 838
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
    .line 841
    .local v2, "t":F
    sub-float v3, v5, v2

    #@3a
    const v4, 0x3ecccccc    # 0.39999998f

    #@3d
    mul-float/2addr v3, v4

    #@3e
    .line 840
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
    .line 789
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
    .line 793
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
    .line 800
    invoke-direct {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    #@3
    move-result v0

    #@4
    .line 801
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 802
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 804
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
    .line 194
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@6
    .line 197
    .local v7, "baseConfig":Landroid/content/res/Configuration;
    new-instance v8, Landroid/content/res/Configuration;

    #@8
    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    #@b
    .line 198
    .local v8, "config":Landroid/content/res/Configuration;
    const/4 v10, 0x0

    #@c
    .local v10, "rotation":I
    :goto_0
    const/4 v0, 0x4

    #@d
    if-ge v10, v0, :cond_6

    #@f
    .line 199
    if-eq v10, v12, :cond_0

    #@11
    const/4 v0, 0x3

    #@12
    if-ne v10, v0, :cond_1

    #@14
    :cond_0
    move v9, v12

    #@15
    .line 200
    .local v9, "rotated":Z
    :goto_1
    if-eqz v9, :cond_2

    #@17
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@19
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@1b
    .line 203
    .local v2, "dw":I
    :goto_2
    if-eqz v9, :cond_3

    #@1d
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1f
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@21
    .line 206
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
    .line 207
    invoke-virtual {v8}, Landroid/content/res/Configuration;->setToDefaults()V

    #@2d
    .line 208
    if-gt v2, v3, :cond_4

    #@2f
    move v0, v12

    #@30
    :goto_4
    iput v0, v8, Landroid/content/res/Configuration;->orientation:I

    #@32
    .line 210
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
    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@42
    move-result-object v1

    #@43
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@45
    .line 210
    div-float/2addr v0, v1

    #@46
    .line 209
    float-to-int v0, v0

    #@47
    iput v0, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    #@49
    .line 213
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
    .line 214
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@56
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@59
    move-result-object v1

    #@5a
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@5c
    .line 213
    div-float/2addr v0, v1

    #@5d
    .line 212
    float-to-int v0, v0

    #@5e
    iput v0, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    #@60
    .line 215
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@62
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@64
    invoke-virtual {v0, v8}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@67
    move-result-object v11

    #@68
    .line 216
    .local v11, "rotationContext":Landroid/content/Context;
    iget-object v14, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@6a
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@6c
    .line 217
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@73
    move-result v4

    #@74
    .line 218
    iget v5, v8, Landroid/content/res/Configuration;->orientation:I

    #@76
    if-ne v5, v12, :cond_5

    #@78
    move v5, v12

    #@79
    :goto_5
    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@7b
    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    #@7e
    aput-object v0, v14, v10

    #@80
    .line 198
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
    .line 199
    goto :goto_1

    #@85
    .line 202
    .restart local v9    # "rotated":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@87
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@89
    .restart local v2    # "dw":I
    goto :goto_2

    #@8a
    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8c
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@8e
    .restart local v3    # "dh":I
    goto :goto_3

    #@8f
    .line 208
    :cond_4
    const/4 v0, 0x2

    #@90
    goto :goto_4

    #@91
    .restart local v11    # "rotationContext":Landroid/content/Context;
    :cond_5
    move v5, v13

    #@92
    .line 218
    goto :goto_5

    #@93
    .line 193
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
    .line 695
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
    .line 552
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@7
    .line 553
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@9
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@e
    .line 554
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
    .line 223
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 224
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 225
    const v2, 0x1050023

    #@b
    .line 224
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    #@11
    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v1

    #@15
    .line 227
    const v2, 0x1050024

    #@18
    .line 226
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1b
    move-result v1

    #@1c
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@1e
    .line 229
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@20
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x4

    #@25
    .line 228
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@28
    move-result v1

    #@29
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    #@2b
    .line 230
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    #@2e
    .line 222
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .locals 3

    #@0
    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@5
    move-result-object v1

    #@6
    .line 271
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
    .line 272
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@14
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    #@17
    .line 271
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 269
    :cond_0
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .locals 6
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    const/4 v3, 0x0

    #@3
    .line 565
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@5
    .line 566
    .local v2, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@7
    .line 567
    if-ne p1, v2, :cond_0

    #@9
    .line 568
    return-void

    #@a
    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    #@d
    move-result v0

    #@e
    .line 572
    .local v0, "imeChanged":Z
    const/4 v1, 0x0

    #@f
    .line 573
    .local v1, "minimizedChange":Z
    if-eqz p1, :cond_5

    #@11
    .line 574
    if-eqz p2, :cond_4

    #@13
    .line 575
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    #@16
    .line 586
    .end local v1    # "minimizedChange":Z
    :goto_0
    if-nez v0, :cond_1

    #@18
    if-eqz v1, :cond_3

    #@1a
    .line 587
    :cond_1
    if-eqz v0, :cond_2

    #@1c
    if-eqz v1, :cond_7

    #@1e
    .line 592
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@25
    .line 564
    :cond_3
    return-void

    #@26
    .line 577
    .restart local v1    # "minimizedChange":Z
    :cond_4
    const/4 v3, 0x1

    #@27
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    #@2a
    move-result v1

    #@2b
    .local v1, "minimizedChange":Z
    goto :goto_0

    #@2c
    .line 580
    .local v1, "minimizedChange":Z
    :cond_5
    if-eqz p2, :cond_6

    #@2e
    .line 581
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    #@31
    goto :goto_0

    #@32
    .line 583
    :cond_6
    const/4 v3, 0x0

    #@33
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    #@36
    move-result v1

    #@37
    .local v1, "minimizedChange":Z
    goto :goto_0

    #@38
    .line 588
    .end local v1    # "minimizedChange":Z
    :cond_7
    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    #@3a
    new-instance v4, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v5, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 590
    const-string/jumbo v5, " minimizedChange="

    #@4d
    .line 588
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_1
.end method

.method private setMinimizedDockedStack(Z)Z
    .locals 4
    .param p1, "minimized"    # Z

    #@0
    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    #@5
    move-result-object v0

    #@6
    .line 690
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const-wide/16 v2, 0x0

    #@8
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    #@b
    .line 691
    if-eqz v0, :cond_1

    #@d
    if-eqz p1, :cond_0

    #@f
    const/high16 v1, 0x3f800000    # 1.0f

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    #@14
    move-result v1

    #@15
    :goto_1
    return v1

    #@16
    :cond_0
    const/4 v1, 0x0

    #@17
    goto :goto_0

    #@18
    :cond_1
    const/4 v1, 0x0

    #@19
    goto :goto_1
.end method

.method private startAdjustAnimation(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    #@0
    .prologue
    .line 611
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@3
    .line 612
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@6
    .line 613
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@8
    .line 614
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@a
    .line 610
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
    .line 623
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@6
    if-nez v3, :cond_4

    #@8
    .line 624
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
    .line 625
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
    .line 626
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@1a
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@1c
    .line 627
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    #@1e
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@20
    .line 632
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@22
    .line 633
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    #@24
    .line 634
    if-eqz p1, :cond_5

    #@26
    move v3, v4

    #@27
    :goto_3
    int-to-float v3, v3

    #@28
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    #@2a
    .line 635
    if-eqz p2, :cond_0

    #@2c
    move v5, v4

    #@2d
    :cond_0
    int-to-float v3, v5

    #@2e
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    #@30
    .line 637
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@32
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@35
    move-result-object v2

    #@36
    .line 638
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
    .line 639
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@44
    .line 640
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
    .line 641
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    #@53
    .line 638
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
    .line 624
    goto :goto_0

    #@58
    :cond_3
    move v3, v5

    #@59
    .line 625
    goto :goto_1

    #@5a
    .line 629
    :cond_4
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    #@5c
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    #@5e
    .line 630
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    #@60
    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    #@62
    goto :goto_2

    #@63
    :cond_5
    move v3, v5

    #@64
    .line 634
    goto :goto_3

    #@65
    .line 647
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
    .line 648
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@71
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@73
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@76
    .line 649
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@78
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7a
    .line 650
    const-wide/16 v6, 0xc8

    #@7c
    .line 649
    invoke-virtual {v3, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    #@7f
    .line 651
    iput-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    #@81
    .line 652
    if-eqz p3, :cond_8

    #@83
    .line 655
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@85
    if-eqz v3, :cond_7

    #@87
    .line 656
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@89
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    #@8e
    .line 658
    :cond_7
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@90
    .line 659
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@92
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->startDelayingAnimationStart()V

    #@95
    .line 661
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@97
    new-instance v4, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;

    #@99
    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    #@9c
    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@9e
    .line 618
    :goto_5
    return-void

    #@9f
    .line 684
    :cond_9
    if-nez p1, :cond_a

    #@a1
    move v4, p2

    #@a2
    :cond_a
    const-wide/16 v6, 0x118

    #@a4
    .line 683
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@a7
    goto :goto_5
.end method


# virtual methods
.method synthetic -com_android_server_wm_DockedStackDividerController_lambda$1(ZZ)V
    .locals 5
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z

    #@0
    .prologue
    .line 662
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    #@3
    .line 663
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 664
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    #@9
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    #@e
    .line 668
    :cond_0
    const-wide/16 v0, 0x0

    #@10
    .line 669
    .local v0, "duration":J
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@12
    if-ne v2, p1, :cond_1

    #@14
    .line 670
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@16
    if-ne v2, p2, :cond_1

    #@18
    .line 671
    const-wide/16 v0, 0x118

    #@1a
    .line 680
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@1c
    if-nez v2, :cond_2

    #@1e
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@20
    .line 679
    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@23
    .line 0
    return-void

    #@24
    .line 673
    :cond_1
    sget-object v2, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "IME adjust changed while waiting for drawn: adjustedForIme="

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 675
    const-string/jumbo v4, " adjustedForDivider="

    #@39
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 676
    const-string/jumbo v4, " mAdjustedForIme="

    #@44
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 676
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@4a
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    .line 677
    const-string/jumbo v4, " mAdjustedForDivider="

    #@51
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 677
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@57
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    goto :goto_0

    #@63
    .line 680
    :cond_2
    const/4 v2, 0x1

    #@64
    goto :goto_1
.end method

.method public animate(J)Z
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 699
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 700
    return v2

    #@6
    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 703
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 704
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 707
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
    .line 708
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
    .line 710
    :cond_3
    return v2
.end method

.method public dimFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 846
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
    .line 869
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
    .line 870
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
    .line 871
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
    .line 872
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
    .line 873
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
    .line 874
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@8d
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@90
    move-result v0

    #@91
    if-eqz v0, :cond_0

    #@93
    .line 875
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
    .line 876
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
    .line 868
    :cond_0
    return-void
.end method

.method getContentInsets()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    #@2
    return v0
.end method

.method getContentWidth()I
    .locals 2

    #@0
    .prologue
    .line 242
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
    .line 250
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    #@2
    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 855
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 851
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
    .line 321
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    #@2
    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .locals 16
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 152
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@7
    move-result-object v9

    #@8
    .line 155
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
    .line 156
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
    .line 157
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
    .line 159
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@33
    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@35
    .line 160
    .local v8, "baseDisplayWidth":I
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@39
    iget v7, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@3b
    .line 161
    .local v7, "baseDisplayHeight":I
    const v10, 0x7fffffff

    #@3e
    .line 165
    .local v10, "minWidth":I
    const/4 v14, 0x0

    #@3f
    .local v14, "rotation":I
    :goto_0
    const/4 v3, 0x4

    #@40
    if-ge v14, v3, :cond_7

    #@42
    .line 166
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b
    .line 167
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
    .line 168
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
    .line 169
    .local v13, "rotated":Z
    :goto_1
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    #@63
    .line 170
    if-eqz v13, :cond_4

    #@65
    move v4, v7

    #@66
    .line 171
    :goto_2
    if-eqz v13, :cond_5

    #@68
    move v3, v8

    #@69
    .line 169
    :goto_3
    const/4 v6, 0x0

    #@6a
    const/4 v15, 0x0

    #@6b
    invoke-virtual {v5, v6, v15, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@6e
    .line 172
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
    .line 173
    const/4 v11, 0x1

    #@81
    .line 175
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
    .line 176
    .local v2, "dockSide":I
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@91
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@94
    move-result v4

    #@95
    .line 176
    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    #@98
    move-result v12

    #@99
    .line 181
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
    .line 183
    .local v1, "snappedPosition":I
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@a9
    .line 184
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
    .line 183
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    #@c0
    .line 185
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
    .line 186
    move-object/from16 v0, p0

    #@d8
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    #@da
    .line 185
    invoke-interface {v3, v14, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    #@dd
    .line 187
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
    .line 188
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
    .line 165
    add-int/lit8 v14, v14, 0x1

    #@fe
    goto/16 :goto_0

    #@100
    .line 168
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
    .line 170
    goto/16 :goto_2

    #@106
    :cond_5
    move v3, v7

    #@107
    .line 171
    goto/16 :goto_3

    #@109
    .line 174
    :cond_6
    const/4 v11, 0x2

    #@10a
    .restart local v11    # "orientation":I
    goto/16 :goto_4

    #@10c
    .line 190
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
    .line 265
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 266
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
    .line 264
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@2
    return-object v0
.end method

.method isImeHideRequested()Z
    .locals 1

    #@0
    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    #@2
    return v0
.end method

.method isMinimizedDock()Z
    .locals 1

    #@0
    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@2
    return v0
.end method

.method isResizing()Z
    .locals 1

    #@0
    .prologue
    .line 238
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
    .line 446
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 447
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 448
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/IDockedStackListener;

    #@11
    .line 450
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 451
    :catch_0
    move-exception v0

    #@18
    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@1b
    const-string/jumbo v5, "Error delivering adjusted for ime changed event."

    #@1e
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 445
    return-void
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .locals 3
    .param p2, "appTransition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v2, 0x1

    #@1
    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@3
    .line 499
    .local v0, "wasMinimized":Z
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    #@6
    .line 506
    if-eqz v0, :cond_0

    #@8
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 507
    if-eqz p2, :cond_0

    #@14
    .line 508
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    #@19
    .line 497
    :cond_0
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .locals 1

    #@0
    .prologue
    .line 494
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    #@4
    .line 493
    return-void
.end method

.method notifyDockSideChanged(I)V
    .locals 6
    .param p1, "newDockSide"    # I

    #@0
    .prologue
    .line 433
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 434
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 435
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/IDockedStackListener;

    #@11
    .line 437
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 434
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 438
    :catch_0
    move-exception v0

    #@18
    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@1b
    const-string/jumbo v5, "Error delivering dock side changed event."

    #@1e
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 432
    return-void
.end method

.method notifyDockedDividerVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 360
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 361
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 362
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/IDockedStackListener;

    #@11
    .line 364
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 365
    :catch_0
    move-exception v0

    #@18
    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@1b
    const-string/jumbo v5, "Error delivering divider visibility changed event."

    #@1e
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 369
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 359
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .locals 7
    .param p1, "exists"    # Z

    #@0
    .prologue
    .line 373
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v4

    #@6
    .line 374
    .local v4, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    #@9
    .line 375
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/view/IDockedStackListener;

    #@11
    .line 377
    .local v3, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 374
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 378
    :catch_0
    move-exception v0

    #@18
    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WindowManager"

    #@1b
    const-string/jumbo v6, "Error delivering docked stack exists changed event."

    #@1e
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@24
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@27
    .line 383
    if-eqz p1, :cond_2

    #@29
    .line 385
    const-class v5, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@2b
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@31
    .line 386
    .local v2, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_1

    #@33
    .line 390
    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    #@36
    .line 391
    const/4 v5, 0x1

    #@37
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    #@39
    .line 372
    .end local v2    # "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    :cond_1
    :goto_2
    return-void

    #@3a
    .line 393
    :cond_2
    const/4 v5, 0x0

    #@3b
    invoke-direct {p0, v5}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_1

    #@41
    .line 394
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@43
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@45
    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@48
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
    .line 417
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@7
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@a
    .line 418
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@e
    .line 419
    if-eqz p1, :cond_0

    #@10
    const/4 v4, 0x1

    #@11
    .line 418
    :goto_0
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 420
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@1a
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@1d
    move-result v3

    #@1e
    .line 421
    .local v3, "size":I
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    #@21
    .line 422
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@23
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/view/IDockedStackListener;

    #@29
    .line 424
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 421
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
    .line 419
    goto :goto_0

    #@31
    .line 425
    .restart local v1    # "i":I
    .restart local v2    # "listener":Landroid/view/IDockedStackListener;
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    #@32
    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@35
    const-string/jumbo v5, "Error delivering minimized dock changed event."

    #@38
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_2

    #@3c
    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@3e
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@41
    .line 416
    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    #@3
    .line 233
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@5
    move-result-object v1

    #@6
    .line 326
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_0

    #@8
    .line 332
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 333
    return-void

    #@e
    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@10
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@13
    .line 337
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@16
    move-result v0

    #@17
    .line 338
    .local v0, "side":I
    packed-switch v0, :pswitch_data_0

    #@1a
    .line 356
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 324
    return-void

    #@20
    .line 340
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
    .line 341
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
    .line 340
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@3a
    goto :goto_0

    #@3b
    .line 344
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
    .line 345
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
    .line 344
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@57
    goto :goto_0

    #@58
    .line 348
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
    .line 349
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
    .line 348
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@72
    goto :goto_0

    #@73
    .line 352
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
    .line 353
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
    .line 352
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@8d
    goto :goto_0

    #@8e
    .line 338
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
    .line 282
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 283
    return-void

    #@5
    .line 285
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
    .line 288
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    #@14
    const/4 v1, 0x1

    #@15
    .line 289
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@17
    if-ne v2, v1, :cond_1

    #@19
    if-eqz p1, :cond_4

    #@1b
    .line 292
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@1d
    .line 293
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    #@20
    .line 294
    if-nez v1, :cond_2

    #@22
    .line 295
    const/4 v2, 0x0

    #@23
    const/4 v3, -0x1

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    #@28
    .line 281
    :cond_2
    return-void

    #@29
    .line 288
    .end local v1    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "visible":Z
    goto :goto_0

    #@2b
    .line 290
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
    .line 459
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@7
    .line 460
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    #@e
    .line 462
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
    .line 461
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    #@1f
    .line 463
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    #@21
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    #@24
    .line 464
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@26
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    #@29
    .line 458
    return-void

    #@2a
    .line 462
    :cond_0
    const/4 v0, 0x0

    #@2b
    goto :goto_0
.end method

.method resetImeHideRequested()V
    .locals 1

    #@0
    .prologue
    .line 402
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    #@3
    .line 401
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
    .line 306
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
    .line 308
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    #@c
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    #@e
    if-eqz v0, :cond_4

    #@10
    .line 312
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
    .line 314
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    #@1a
    .line 315
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    #@1c
    .line 316
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@1e
    .line 305
    :cond_2
    return-void

    #@1f
    .line 307
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    #@21
    if-eq v0, p2, :cond_2

    #@23
    goto :goto_0

    #@24
    .line 309
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    #@27
    goto :goto_2

    #@28
    .line 312
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
    .line 469
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@4
    .line 470
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
    .line 471
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@12
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@15
    move-result-object v0

    #@16
    .line 472
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
    .line 473
    .local v2, "visibleAndValid":Z
    if-eqz v2, :cond_1

    #@20
    .line 474
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@25
    .line 475
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
    .line 476
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@37
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@3c
    .line 477
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
    .line 478
    const-wide/16 v6, 0x0

    #@48
    .line 477
    invoke-virtual {v3, v4, p3, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@4b
    .line 483
    .end local v2    # "visibleAndValid":Z
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    #@4d
    .line 484
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@4f
    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->hide()V

    #@52
    .line 486
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@55
    .line 468
    return-void

    #@56
    .line 480
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
    .line 254
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 255
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    #@6
    .line 256
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    #@9
    .line 253
    :cond_0
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 260
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    #@2
    .line 278
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    #@6
    .line 276
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 861
    sget-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method wasVisible()Z
    .locals 1

    #@0
    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    #@2
    return v0
.end method
