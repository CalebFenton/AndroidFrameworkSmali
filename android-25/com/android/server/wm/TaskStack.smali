.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;
.implements Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBounds:Landroid/graphics/Rect;

.field private final mBoundsAfterRotation:Landroid/graphics/Rect;

.field private mBoundsAnimating:Z

.field mDeferDetach:Z

.field mDensity:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDockedStackMinimizeThickness:I

.field private mDragResizing:Z

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFullscreen:Z

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private mMinimizeAmount:F

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStackId:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@a
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@11
    .line 81
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@18
    .line 84
    new-instance v0, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@1f
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    #@21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@26
    .line 93
    new-instance v0, Landroid/graphics/Rect;

    #@28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@2d
    .line 96
    const/4 v0, 0x1

    #@2e
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@30
    .line 111
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    #@32
    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@37
    .line 119
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@3e
    .line 133
    const/4 v0, 0x0

    #@3f
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    #@41
    .line 137
    new-instance v0, Landroid/graphics/Rect;

    #@43
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    #@48
    .line 140
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a
    .line 141
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@4c
    .line 142
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@4e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v0

    #@52
    .line 143
    const v1, 0x1050025

    #@55
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@58
    move-result v0

    #@59
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    #@5b
    .line 144
    const/16 v0, 0x791c

    #@5d
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    #@60
    .line 139
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .locals 19
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@3
    move-result v7

    #@4
    .line 968
    .local v7, "dockedSide":I
    const/4 v14, 0x2

    #@5
    if-eq v7, v14, :cond_0

    #@7
    const/4 v14, 0x4

    #@8
    if-ne v7, v14, :cond_2

    #@a
    :cond_0
    const/4 v8, 0x1

    #@b
    .line 969
    .local v8, "dockedTopOrBottom":Z
    :goto_0
    if-eqz p1, :cond_3

    #@d
    if-eqz v8, :cond_3

    #@f
    .line 973
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@13
    .line 974
    .local v3, "displayContentRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@17
    .line 977
    .local v2, "contentBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@1a
    move-result-object v14

    #@1b
    invoke-virtual {v14, v3}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    #@1e
    .line 978
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@21
    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@24
    move-result-object v14

    #@25
    iget v14, v14, Landroid/graphics/Rect;->top:I

    #@27
    iget v15, v2, Landroid/graphics/Rect;->top:I

    #@29
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result v9

    #@2d
    .line 981
    .local v9, "imeTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@30
    move-result-object v14

    #@31
    iget v14, v14, Landroid/graphics/Rect;->top:I

    #@33
    add-int/2addr v9, v14

    #@34
    .line 982
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    #@36
    if-le v14, v9, :cond_1

    #@38
    .line 983
    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    #@3a
    .line 986
    :cond_1
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    #@3c
    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    #@3e
    sub-int v13, v14, v15

    #@40
    .line 989
    .local v13, "yOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@43
    move-result-object v14

    #@44
    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@46
    invoke-virtual {v14}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@49
    move-result v4

    #@4a
    .line 991
    .local v4, "dividerWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4d
    move-result-object v14

    #@4e
    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@50
    invoke-virtual {v14}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    #@53
    move-result v6

    #@54
    .line 993
    .local v6, "dividerWidthInactive":I
    const/4 v14, 0x2

    #@55
    if-ne v7, v14, :cond_4

    #@57
    .line 998
    move-object/from16 v0, p0

    #@59
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@5b
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    #@5d
    move-object/from16 v0, p0

    #@5f
    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    #@62
    move-result v10

    #@63
    .line 1000
    .local v10, "minTopStackBottom":I
    move-object/from16 v0, p0

    #@65
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@67
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    #@69
    sub-int/2addr v14, v13

    #@6a
    add-int/2addr v14, v4

    #@6b
    sub-int/2addr v14, v6

    #@6c
    .line 999
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v1

    #@70
    .line 1002
    .local v1, "bottom":I
    move-object/from16 v0, p0

    #@72
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@78
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7b
    .line 1003
    move-object/from16 v0, p0

    #@7d
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@7f
    .line 1004
    move-object/from16 v0, p0

    #@81
    iget v15, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@83
    int-to-float v0, v1

    #@84
    move/from16 v16, v0

    #@86
    mul-float v15, v15, v16

    #@88
    move-object/from16 v0, p0

    #@8a
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@8c
    move/from16 v16, v0

    #@8e
    const/high16 v17, 0x3f800000    # 1.0f

    #@90
    sub-float v16, v17, v16

    #@92
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@96
    move-object/from16 v17, v0

    #@98
    move-object/from16 v0, v17

    #@9a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@9c
    move/from16 v17, v0

    #@9e
    move/from16 v0, v17

    #@a0
    int-to-float v0, v0

    #@a1
    move/from16 v17, v0

    #@a3
    mul-float v16, v16, v17

    #@a5
    add-float v15, v15, v16

    #@a7
    float-to-int v15, v15

    #@a8
    .line 1003
    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    #@aa
    .line 1005
    move-object/from16 v0, p0

    #@ac
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@b2
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b5
    .line 1032
    .end local v1    # "bottom":I
    :goto_1
    const/4 v14, 0x1

    #@b6
    return v14

    #@b7
    .line 968
    .end local v2    # "contentBounds":Landroid/graphics/Rect;
    .end local v3    # "displayContentRect":Landroid/graphics/Rect;
    .end local v4    # "dividerWidth":I
    .end local v6    # "dividerWidthInactive":I
    .end local v8    # "dockedTopOrBottom":Z
    .end local v9    # "imeTop":I
    .end local v10    # "minTopStackBottom":I
    .end local v13    # "yOffset":I
    :cond_2
    const/4 v8, 0x0

    #@b8
    .restart local v8    # "dockedTopOrBottom":Z
    goto/16 :goto_0

    #@ba
    .line 970
    :cond_3
    const/4 v14, 0x0

    #@bb
    return v14

    #@bc
    .line 1008
    .restart local v2    # "contentBounds":Landroid/graphics/Rect;
    .restart local v3    # "displayContentRect":Landroid/graphics/Rect;
    .restart local v4    # "dividerWidth":I
    .restart local v6    # "dividerWidthInactive":I
    .restart local v9    # "imeTop":I
    .restart local v13    # "yOffset":I
    :cond_4
    sub-int v5, v6, v4

    #@be
    .line 1015
    .local v5, "dividerWidthDelta":I
    move-object/from16 v0, p0

    #@c0
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@c2
    iget v14, v14, Landroid/graphics/Rect;->top:I

    #@c4
    sub-int/2addr v14, v4

    #@c5
    add-int v12, v14, v6

    #@c7
    .line 1017
    .local v12, "topBeforeImeAdjust":I
    move-object/from16 v0, p0

    #@c9
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@cb
    iget v14, v14, Landroid/graphics/Rect;->top:I

    #@cd
    sub-int/2addr v14, v4

    #@ce
    move-object/from16 v0, p0

    #@d0
    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    #@d3
    move-result v10

    #@d4
    .line 1019
    .restart local v10    # "minTopStackBottom":I
    move-object/from16 v0, p0

    #@d6
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@d8
    iget v14, v14, Landroid/graphics/Rect;->top:I

    #@da
    sub-int/2addr v14, v13

    #@db
    add-int v15, v10, v6

    #@dd
    .line 1018
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    #@e0
    move-result v11

    #@e1
    .line 1021
    .local v11, "top":I
    move-object/from16 v0, p0

    #@e3
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@e9
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@ec
    .line 1025
    move-object/from16 v0, p0

    #@ee
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@f4
    iget v15, v15, Landroid/graphics/Rect;->top:I

    #@f6
    .line 1026
    move-object/from16 v0, p0

    #@f8
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@fa
    move/from16 v16, v0

    #@fc
    sub-int v17, v11, v12

    #@fe
    move/from16 v0, v17

    #@100
    int-to-float v0, v0

    #@101
    move/from16 v17, v0

    #@103
    mul-float v16, v16, v17

    #@105
    .line 1027
    move-object/from16 v0, p0

    #@107
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@109
    move/from16 v17, v0

    #@10b
    int-to-float v0, v5

    #@10c
    move/from16 v18, v0

    #@10e
    mul-float v17, v17, v18

    #@110
    .line 1026
    add-float v16, v16, v17

    #@112
    move/from16 v0, v16

    #@114
    float-to-int v0, v0

    #@115
    move/from16 v16, v0

    #@117
    .line 1025
    add-int v15, v15, v16

    #@119
    iput v15, v14, Landroid/graphics/Rect;->top:I

    #@11b
    .line 1028
    move-object/from16 v0, p0

    #@11d
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@123
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@126
    .line 1029
    move-object/from16 v0, p0

    #@128
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@12a
    iput v11, v14, Landroid/graphics/Rect;->top:I

    #@12c
    .line 1030
    move-object/from16 v0, p0

    #@12e
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@130
    move-object/from16 v0, p0

    #@132
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@134
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    #@137
    move-result v15

    #@138
    add-int/2addr v15, v11

    #@139
    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    #@13b
    goto/16 :goto_1
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .locals 8
    .param p1, "minimizeAmount"    # F

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    .line 1036
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@6
    move-result v0

    #@7
    .line 1037
    .local v0, "dockSide":I
    const/4 v3, -0x1

    #@8
    if-ne v0, v3, :cond_0

    #@a
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 1041
    :cond_0
    const/4 v3, 0x2

    #@13
    if-ne v0, v3, :cond_3

    #@15
    .line 1042
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    #@1c
    .line 1043
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@1e
    iget v1, v3, Landroid/graphics/Rect;->top:I

    #@20
    .line 1044
    .local v1, "topInset":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@22
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@27
    .line 1045
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@29
    .line 1046
    int-to-float v4, v1

    #@2a
    mul-float/2addr v4, p1

    #@2b
    sub-float v5, v6, p1

    #@2d
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@2f
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@31
    int-to-float v6, v6

    #@32
    mul-float/2addr v5, v6

    #@33
    add-float/2addr v4, v5

    #@34
    float-to-int v4, v4

    #@35
    .line 1045
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@37
    .line 1060
    .end local v1    # "topInset":I
    :cond_1
    :goto_0
    return v7

    #@38
    .line 1038
    :cond_2
    const/4 v3, 0x0

    #@39
    return v3

    #@3a
    .line 1047
    :cond_3
    if-ne v0, v7, :cond_4

    #@3c
    .line 1048
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@3e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@40
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@43
    .line 1049
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@45
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@48
    move-result v2

    #@49
    .line 1050
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@4b
    .line 1051
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    #@4d
    int-to-float v4, v4

    #@4e
    mul-float/2addr v4, p1

    #@4f
    .line 1052
    sub-float v5, v6, p1

    #@51
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@53
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@55
    int-to-float v6, v6

    #@56
    mul-float/2addr v5, v6

    #@57
    .line 1051
    add-float/2addr v4, v5

    #@58
    float-to-int v4, v4

    #@59
    .line 1050
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@5b
    .line 1053
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@5d
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@5f
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@61
    sub-int/2addr v4, v2

    #@62
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@64
    goto :goto_0

    #@65
    .line 1054
    .end local v2    # "width":I
    :cond_4
    const/4 v3, 0x3

    #@66
    if-ne v0, v3, :cond_1

    #@68
    .line 1055
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@6a
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@6c
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6f
    .line 1056
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@71
    .line 1057
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@73
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@75
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    #@77
    sub-int/2addr v4, v5

    #@78
    int-to-float v4, v4

    #@79
    mul-float/2addr v4, p1

    #@7a
    .line 1058
    sub-float v5, v6, p1

    #@7c
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@7e
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@80
    int-to-float v6, v6

    #@81
    mul-float/2addr v5, v6

    #@82
    .line 1057
    add-float/2addr v4, v5

    #@83
    float-to-int v4, v4

    #@84
    .line 1056
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@86
    goto :goto_0
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 251
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 252
    return-void

    #@7
    .line 255
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v4

    #@d
    add-int/lit8 v2, v4, -0x1

    #@f
    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_3

    #@11
    .line 256
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/wm/Task;

    #@19
    .line 257
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 260
    invoke-virtual {v1, v6, v6, v3}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    #@22
    .line 261
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    #@27
    .line 262
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    #@2c
    .line 255
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 264
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@31
    if-eqz v4, :cond_2

    #@33
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@36
    move-result v4

    #@37
    const/4 v5, 0x2

    #@38
    if-ne v4, v5, :cond_2

    #@3a
    const/4 v0, 0x1

    #@3b
    .line 265
    .local v0, "alignBottom":Z
    :goto_2
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@3e
    goto :goto_1

    #@3f
    .end local v0    # "alignBottom":Z
    :cond_2
    move v0, v3

    #@40
    .line 264
    goto :goto_2

    #@41
    .line 250
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_3
    return-void
.end method

.method private computeMaxPosition(I)I
    .locals 4
    .param p1, "maxPosition"    # I

    #@0
    .prologue
    .line 593
    :goto_0
    if-lez p1, :cond_0

    #@2
    .line 594
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@4
    add-int/lit8 v3, p1, -0x1

    #@6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/wm/Task;

    #@c
    .line 596
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 597
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    #@16
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@19
    move-result v0

    #@1a
    .line 598
    .local v0, "canShowTmpTask":Z
    :goto_1
    if-nez v0, :cond_2

    #@1c
    .line 603
    .end local v0    # "canShowTmpTask":Z
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_0
    return p1

    #@1d
    .line 596
    .restart local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v0, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 601
    .restart local v0    # "canShowTmpTask":Z
    :cond_2
    add-int/lit8 p1, p1, -0x1

    #@21
    goto :goto_0
.end method

.method private computeMinPosition(II)I
    .locals 4
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 574
    :goto_0
    if-ge p1, p2, :cond_0

    #@2
    .line 575
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/wm/Task;

    #@a
    .line 577
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 578
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    #@14
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@17
    move-result v0

    #@18
    .line 579
    .local v0, "canShowTmpTask":Z
    :goto_1
    if-eqz v0, :cond_2

    #@1a
    .line 584
    .end local v0    # "canShowTmpTask":Z
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_0
    return p1

    #@1b
    .line 577
    .restart local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v0, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 582
    .restart local v0    # "canShowTmpTask":Z
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@1f
    goto :goto_0
.end method

.method static getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 1215
    if-ne p2, v3, :cond_1

    #@4
    .line 1217
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@6
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@8
    sub-int/2addr v0, v1

    #@9
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@b
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@d
    sub-int/2addr v1, v2

    #@e
    if-gt v0, v1, :cond_0

    #@10
    .line 1218
    return v4

    #@11
    .line 1220
    :cond_0
    const/4 v0, 0x4

    #@12
    return v0

    #@13
    .line 1222
    :cond_1
    if-ne p2, v4, :cond_3

    #@15
    .line 1224
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@17
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@19
    sub-int/2addr v0, v1

    #@1a
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@1c
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@1e
    sub-int/2addr v1, v2

    #@1f
    if-gt v0, v1, :cond_2

    #@21
    .line 1225
    return v3

    #@22
    .line 1227
    :cond_2
    const/4 v0, 0x3

    #@23
    return v0

    #@24
    .line 1230
    :cond_3
    const/4 v0, -0x1

    #@25
    return v0
.end method

.method private getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V
    .locals 11
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "stackId"    # I
    .param p4, "dockedBounds"    # Landroid/graphics/Rect;
    .param p5, "dockDividerWidth"    # I
    .param p6, "dockOnTopOrLeft"    # Z

    #@0
    .prologue
    .line 726
    const/4 v0, 0x3

    #@1
    if-ne p3, v0, :cond_0

    #@3
    const/4 v8, 0x1

    #@4
    .line 727
    .local v8, "dockedStack":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@b
    move-result v1

    #@c
    if-le v0, v1, :cond_1

    #@e
    const/4 v10, 0x1

    #@f
    .line 729
    .local v10, "splitHorizontally":Z
    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@12
    .line 730
    if-eqz v8, :cond_7

    #@14
    .line 731
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 732
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@21
    .line 733
    return-void

    #@22
    .line 726
    .end local v8    # "dockedStack":Z
    .end local v10    # "splitHorizontally":Z
    :cond_0
    const/4 v8, 0x0

    #@23
    .restart local v8    # "dockedStack":Z
    goto :goto_0

    #@24
    .line 727
    :cond_1
    const/4 v10, 0x0

    #@25
    .restart local v10    # "splitHorizontally":Z
    goto :goto_1

    #@26
    .line 739
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@28
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@2b
    move-result-object v7

    #@2c
    .line 740
    .local v7, "di":Landroid/view/DisplayInfo;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@30
    iget v1, v7, Landroid/view/DisplayInfo;->rotation:I

    #@32
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    #@34
    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    #@36
    .line 741
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@38
    .line 740
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    #@3b
    .line 742
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@3d
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3f
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v1

    #@45
    .line 743
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    #@47
    .line 744
    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    #@49
    .line 746
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@4d
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    #@4f
    const/4 v5, 0x1

    #@50
    if-ne v4, v5, :cond_3

    #@52
    const/4 v5, 0x1

    #@53
    .line 747
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@55
    move/from16 v4, p5

    #@57
    .line 742
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    #@5a
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@5d
    move-result-object v0

    #@5e
    iget v9, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@60
    .line 749
    .local v9, "position":I
    if-eqz p6, :cond_5

    #@62
    .line 750
    if-eqz v10, :cond_4

    #@64
    .line 751
    iput v9, p2, Landroid/graphics/Rect;->right:I

    #@66
    .line 762
    :goto_3
    return-void

    #@67
    .line 746
    .end local v9    # "position":I
    :cond_3
    const/4 v5, 0x0

    #@68
    goto :goto_2

    #@69
    .line 753
    .restart local v9    # "position":I
    :cond_4
    iput v9, p2, Landroid/graphics/Rect;->bottom:I

    #@6b
    goto :goto_3

    #@6c
    .line 756
    :cond_5
    if-eqz v10, :cond_6

    #@6e
    .line 757
    add-int v0, v9, p5

    #@70
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@72
    goto :goto_3

    #@73
    .line 759
    :cond_6
    add-int v0, v9, p5

    #@75
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@77
    goto :goto_3

    #@78
    .line 766
    .end local v7    # "di":Landroid/view/DisplayInfo;
    .end local v9    # "position":I
    :cond_7
    if-nez p6, :cond_9

    #@7a
    .line 767
    if-eqz v10, :cond_8

    #@7c
    .line 768
    iget v0, p4, Landroid/graphics/Rect;->left:I

    #@7e
    sub-int v0, v0, p5

    #@80
    iput v0, p2, Landroid/graphics/Rect;->right:I

    #@82
    .line 779
    :goto_4
    if-eqz p6, :cond_b

    #@84
    const/4 v0, 0x0

    #@85
    :goto_5
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    #@88
    .line 725
    return-void

    #@89
    .line 770
    :cond_8
    iget v0, p4, Landroid/graphics/Rect;->top:I

    #@8b
    sub-int v0, v0, p5

    #@8d
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    #@8f
    goto :goto_4

    #@90
    .line 773
    :cond_9
    if-eqz v10, :cond_a

    #@92
    .line 774
    iget v0, p4, Landroid/graphics/Rect;->right:I

    #@94
    add-int v0, v0, p5

    #@96
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@98
    goto :goto_4

    #@99
    .line 776
    :cond_a
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    #@9b
    add-int v0, v0, p5

    #@9d
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@9f
    goto :goto_4

    #@a0
    .line 779
    :cond_b
    const/4 v0, 0x1

    #@a1
    goto :goto_5
.end method

.method private repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    #@3
    move-result v0

    #@4
    .line 436
    .local v0, "dockSide":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@8
    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->isDockSideAllowed(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 437
    return-void

    #@f
    .line 439
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@11
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@16
    .line 440
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    #@19
    move-result v0

    #@1a
    .line 441
    packed-switch v0, :pswitch_data_0

    #@1d
    .line 434
    :goto_0
    return-void

    #@1e
    .line 443
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@20
    .line 444
    .local v1, "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@22
    sub-int/2addr v2, v1

    #@23
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@25
    .line 445
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@27
    sub-int/2addr v2, v1

    #@28
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@2a
    goto :goto_0

    #@2b
    .line 448
    .end local v1    # "movement":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@2d
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@2f
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@31
    sub-int v1, v2, v3

    #@33
    .line 449
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@35
    add-int/2addr v2, v1

    #@36
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@38
    .line 450
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@3a
    add-int/2addr v2, v1

    #@3b
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@3d
    goto :goto_0

    #@3e
    .line 453
    .end local v1    # "movement":I
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@40
    .line 454
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@42
    sub-int/2addr v2, v1

    #@43
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@45
    .line 455
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@47
    sub-int/2addr v2, v1

    #@48
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@4a
    goto :goto_0

    #@4b
    .line 458
    .end local v1    # "movement":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@4d
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@4f
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@51
    sub-int v1, v2, v3

    #@53
    .line 459
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@55
    add-int/2addr v2, v1

    #@56
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@58
    .line 460
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@5a
    add-int/2addr v2, v1

    #@5b
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@5d
    goto :goto_0

    #@5e
    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 230
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 234
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@14
    .line 235
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    const/4 v0, 0x0

    #@1d
    .line 236
    .local v0, "adjusted":Z
    :goto_0
    const/4 v1, 0x0

    #@1e
    .line 237
    .local v1, "insetBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_4

    #@20
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDock()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_4

    #@26
    .line 238
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@28
    .line 246
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    #@2a
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@2c
    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@2f
    .line 247
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@31
    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@33
    .line 229
    return-void

    #@34
    .line 231
    .end local v0    # "adjusted":Z
    :cond_2
    return-void

    #@35
    :cond_3
    move v0, v3

    #@36
    .line 235
    goto :goto_0

    #@37
    .line 239
    .restart local v0    # "adjusted":Z
    .restart local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_1

    #@39
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 240
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    #@3f
    if-eqz v2, :cond_5

    #@41
    .line 241
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@43
    .local v1, "insetBounds":Landroid/graphics/Rect;
    goto :goto_1

    #@44
    .line 243
    .local v1, "insetBounds":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@46
    .local v1, "insetBounds":Landroid/graphics/Rect;
    goto :goto_1

    #@47
    .line 246
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@49
    goto :goto_2
.end method

.method private setBounds(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 271
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@4
    .line 272
    .local v1, "oldFullscreen":Z
    const/4 v2, 0x0

    #@5
    .line 273
    .local v2, "rotation":I
    const/4 v0, 0x0

    #@6
    .line 274
    .local v0, "density":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 275
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@c
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@11
    .line 276
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@13
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@16
    move-result-object v3

    #@17
    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    #@19
    .line 277
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@1e
    move-result-object v3

    #@1f
    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@21
    .line 278
    if-nez p1, :cond_1

    #@23
    move v3, v4

    #@24
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@26
    .line 279
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 280
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@2c
    .line 284
    :cond_0
    if-nez p1, :cond_2

    #@2e
    .line 286
    return v5

    #@2f
    :cond_1
    move v3, v5

    #@30
    .line 278
    goto :goto_0

    #@31
    .line 288
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@33
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@3b
    if-ne v1, v3, :cond_3

    #@3d
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@3f
    if-ne v3, v2, :cond_3

    #@41
    .line 289
    return v5

    #@42
    .line 292
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@44
    if-eqz v3, :cond_4

    #@46
    .line 293
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@48
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@4a
    invoke-virtual {v3, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@4d
    .line 294
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@4f
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@52
    .line 297
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@54
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@57
    .line 298
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@59
    .line 299
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    #@5b
    .line 301
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    #@5e
    .line 303
    return v4
.end method

.method private snapDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 471
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@7
    move-result-object v13

    #@8
    .line 472
    .local v13, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@17
    move-result v6

    #@18
    .line 474
    .local v6, "dividerSize":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    #@1b
    move-result v15

    #@1c
    .line 475
    .local v15, "dockSide":I
    move-object/from16 v0, p1

    #@1e
    invoke-static {v0, v15, v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    #@21
    move-result v14

    #@22
    .line 477
    .local v14, "dividerPosition":I
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@26
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@29
    move-result-object v3

    #@2a
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    #@2c
    .line 478
    .local v4, "displayWidth":I
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@30
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@33
    move-result-object v3

    #@34
    iget v5, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    #@36
    .line 481
    .local v5, "displayHeight":I
    iget v0, v13, Landroid/view/DisplayInfo;->rotation:I

    #@38
    move/from16 v17, v0

    #@3a
    .line 482
    .local v17, "rotation":I
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3e
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@40
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    #@42
    move/from16 v16, v0

    #@44
    .line 483
    .local v16, "orientation":I
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@48
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4a
    move/from16 v0, v17

    #@4c
    move-object/from16 v1, p1

    #@4e
    invoke-interface {v3, v0, v4, v5, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    #@51
    .line 484
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@53
    .line 485
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@57
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@59
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v3

    #@5d
    .line 486
    const/4 v7, 0x1

    #@5e
    move/from16 v0, v16

    #@60
    if-ne v0, v7, :cond_0

    #@62
    const/4 v7, 0x1

    #@63
    :goto_0
    move-object/from16 v8, p1

    #@65
    .line 484
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    #@68
    .line 487
    .local v2, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v2, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@6b
    move-result-object v18

    #@6c
    .line 490
    .local v18, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, v18

    #@6e
    iget v7, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@70
    .line 491
    iget v10, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    #@72
    iget v11, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    #@74
    move v8, v15

    #@75
    move-object/from16 v9, p1

    #@77
    move v12, v6

    #@78
    .line 490
    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    #@7b
    .line 468
    return-void

    #@7c
    .line 486
    .end local v2    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v18    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    const/4 v7, 0x0

    #@7d
    goto :goto_0
.end method

.method private updateAdjustedBounds()V
    .locals 6

    #@0
    .prologue
    .line 1087
    const/4 v0, 0x0

    #@1
    .line 1088
    .local v0, "adjust":Z
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@3
    const/4 v4, 0x0

    #@4
    cmpl-float v3, v3, v4

    #@6
    if-eqz v3, :cond_3

    #@8
    .line 1089
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@a
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    #@d
    move-result v0

    #@e
    .line 1093
    .end local v0    # "adjust":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    #@10
    .line 1094
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    #@15
    .line 1096
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    #@17
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    #@1a
    .line 1098
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    #@1f
    move-result-object v3

    #@20
    if-ne v3, p0, :cond_4

    #@22
    const/4 v2, 0x1

    #@23
    .line 1099
    .local v2, "isImeTarget":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@25
    if-eqz v3, :cond_2

    #@27
    if-eqz v0, :cond_2

    #@29
    if-eqz v2, :cond_5

    #@2b
    .line 1086
    :cond_2
    :goto_2
    return-void

    #@2c
    .line 1090
    .end local v2    # "isImeTarget":Z
    .restart local v0    # "adjust":Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 1091
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    #@32
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    #@35
    move-result v0

    #@36
    .local v0, "adjust":Z
    goto :goto_0

    #@37
    .line 1098
    .end local v0    # "adjust":Z
    :cond_4
    const/4 v2, 0x0

    #@38
    .restart local v2    # "isImeTarget":Z
    goto :goto_1

    #@39
    .line 1100
    :cond_5
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@3b
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@3d
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    #@40
    move-result v3

    #@41
    .line 1101
    const/high16 v4, 0x3e800000    # 0.25f

    #@43
    .line 1100
    mul-float v1, v3, v4

    #@45
    .line 1102
    .local v1, "alpha":F
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@47
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@49
    const/4 v5, 0x1

    #@4a
    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    #@4d
    goto :goto_2
.end method

.method private updateBoundsAfterConfigChange()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 382
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 385
    return v3

    #@8
    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@b
    move-result-object v5

    #@c
    iget v2, v5, Landroid/view/DisplayInfo;->rotation:I

    #@e
    .line 388
    .local v2, "newRotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@11
    move-result-object v5

    #@12
    iget v0, v5, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@14
    .line 390
    .local v0, "newDensity":I
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@16
    if-ne v5, v2, :cond_1

    #@18
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    #@1a
    if-ne v5, v0, :cond_1

    #@1c
    .line 392
    return v3

    #@1d
    .line 395
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 397
    invoke-direct {p0, v8}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@24
    .line 399
    return v3

    #@25
    .line 402
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@27
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2c
    .line 403
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2e
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@30
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v5, v6, v2, v7}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    #@35
    .line 404
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@37
    const/4 v6, 0x3

    #@38
    if-ne v5, v6, :cond_4

    #@3a
    .line 405
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@3c
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V

    #@3f
    .line 406
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@41
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/graphics/Rect;)V

    #@44
    .line 407
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@46
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    #@49
    move-result v1

    #@4a
    .line 411
    .local v1, "newDockSide":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4c
    .line 412
    if-eq v1, v4, :cond_3

    #@4e
    const/4 v6, 0x2

    #@4f
    if-ne v1, v6, :cond_5

    #@51
    .line 411
    :cond_3
    :goto_0
    invoke-virtual {v5, v3, v8}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    #@54
    .line 416
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@56
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    #@5d
    .line 419
    .end local v1    # "newDockSide":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    #@5f
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@61
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@64
    .line 420
    return v4

    #@65
    .restart local v1    # "newDockSide":I
    :cond_5
    move v3, v4

    #@66
    .line 414
    goto :goto_0
.end method

.method private useCurrentBounds()Z
    .locals 1

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 317
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@6
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 318
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 320
    :cond_0
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@14
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 322
    const/4 v0, 0x0

    #@1b
    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    #@0
    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;ZZ)V

    #@7
    .line 511
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    #@0
    .prologue
    .line 522
    if-eqz p2, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/TaskStack;->positionTask(Lcom/android/server/wm/Task;IZ)V

    #@b
    .line 521
    return-void

    #@c
    .line 522
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1107
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@3
    const/4 v3, 0x0

    #@4
    cmpl-float v1, v1, v3

    #@6
    if-nez v1, :cond_0

    #@8
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1108
    :cond_0
    return-void

    #@15
    .line 1111
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@1b
    .line 1112
    .local v0, "insetBounds":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@20
    move-result v1

    #@21
    const/4 v4, 0x2

    #@22
    if-ne v1, v4, :cond_3

    #@24
    move v1, v2

    #@25
    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@28
    .line 1113
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2a
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@2c
    .line 1106
    return-void

    #@2d
    .line 1111
    .end local v0    # "insetBounds":Landroid/graphics/Rect;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    #@2f
    .restart local v0    # "insetBounds":Landroid/graphics/Rect;
    goto :goto_0

    #@30
    .line 1112
    :cond_3
    const/4 v1, 0x0

    #@31
    goto :goto_1
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 643
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "attachDisplayContent: Already attached"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 647
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@10
    .line 648
    new-instance v0, Lcom/android/server/wm/DimLayer;

    #@12
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@16
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@19
    move-result v3

    #@1a
    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "animation background stackId="

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 648
    invoke-direct {v0, v1, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    #@33
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@35
    .line 651
    const/4 v2, 0x0

    #@36
    .line 652
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v7

    #@3e
    check-cast v7, Lcom/android/server/wm/TaskStack;

    #@40
    .line 653
    .local v7, "dockedStack":Lcom/android/server/wm/TaskStack;
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@42
    if-eq v0, v8, :cond_2

    #@44
    .line 654
    if-eqz v7, :cond_1

    #@46
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@48
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_1

    #@4e
    .line 655
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_2

    #@54
    .line 673
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    #@57
    .line 642
    return-void

    #@58
    .line 660
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    #@5a
    .end local v2    # "bounds":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@5d
    .line 661
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@5f
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@62
    .line 662
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@64
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@67
    .line 663
    if-eqz v7, :cond_3

    #@69
    .line 664
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@6b
    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    #@6e
    .line 666
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@70
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    #@72
    if-nez v0, :cond_4

    #@74
    const/4 v6, 0x1

    #@75
    .line 668
    .local v6, "dockedOnTopOrLeft":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@77
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@79
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@7b
    .line 669
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@7d
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@7f
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@82
    move-result v5

    #@83
    move-object v0, p0

    #@84
    .line 668
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    #@87
    goto :goto_0

    #@88
    .line 666
    .end local v6    # "dockedOnTopOrLeft":Z
    :cond_4
    const/4 v6, 0x0

    #@89
    .restart local v6    # "dockedOnTopOrLeft":Z
    goto :goto_1
.end method

.method beginImeAdjustAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 943
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 944
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/Task;

    #@13
    .line 945
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisible()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 946
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    #@1c
    .line 947
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->addWindowsWaitingForDrawnIfResizingChanged()V

    #@1f
    .line 943
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 942
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void
.end method

.method close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 847
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 848
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@a
    .line 849
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@c
    .line 851
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@e
    .line 846
    return-void
.end method

.method detachDisplay()V
    .locals 8

    #@0
    .prologue
    .line 796
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2
    const/16 v7, 0x791e

    #@4
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 798
    const/4 v3, 0x0

    #@8
    .line 799
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v6

    #@e
    add-int/lit8 v4, v6, -0x1

    #@10
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    #@12
    .line 800
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Lcom/android/server/wm/Task;

    #@1a
    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1c
    .line 801
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@1f
    move-result v6

    #@20
    add-int/lit8 v0, v6, -0x1

    #@22
    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    #@24
    .line 802
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    #@2a
    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2c
    .line 803
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@2f
    move-result v6

    #@30
    add-int/lit8 v5, v6, -0x1

    #@32
    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    #@34
    .line 806
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@3c
    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@3f
    .line 807
    const/4 v3, 0x1

    #@40
    .line 803
    add-int/lit8 v5, v5, -0x1

    #@42
    goto :goto_2

    #@43
    .line 801
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@45
    goto :goto_1

    #@46
    .line 799
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 811
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    #@4b
    .line 812
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4d
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@4f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@52
    .line 815
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->close()V

    #@55
    .line 795
    return-void
.end method

.method public dimFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 1166
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "mStackId="

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "mDeferDetach="

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    const-string/jumbo v4, "mFullscreen="

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    const-string/jumbo v4, "mBounds="

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@69
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 1125
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@7a
    const/4 v4, 0x0

    #@7b
    cmpl-float v3, v3, v4

    #@7d
    if-eqz v3, :cond_0

    #@7f
    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    const-string/jumbo v4, "mMinimizeAmout="

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 1128
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@9e
    if-eqz v3, :cond_1

    #@a0
    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    const-string/jumbo v4, "mAdjustedForIme=true"

    #@ac
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b7
    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v3

    #@c0
    const-string/jumbo v4, "mAdjustImeAmount="

    #@c3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v3

    #@c7
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@c9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v3

    #@dd
    const-string/jumbo v4, "mAdjustDividerAmount="

    #@e0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v3

    #@e4
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@e6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f1
    .line 1133
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@f3
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    #@f6
    move-result v3

    #@f7
    if-nez v3, :cond_2

    #@f9
    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v3

    #@102
    const-string/jumbo v4, "mAdjustedBounds="

    #@105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v3

    #@109
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@10b
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@10e
    move-result-object v4

    #@10f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11a
    .line 1136
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@11c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11f
    move-result v3

    #@120
    add-int/lit8 v1, v3, -0x1

    #@122
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_3

    #@124
    .line 1137
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@126
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@129
    move-result-object v3

    #@12a
    check-cast v3, Lcom/android/server/wm/Task;

    #@12c
    new-instance v4, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v4

    #@135
    const-string/jumbo v5, "  "

    #@138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v4

    #@13c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v4

    #@140
    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@143
    .line 1136
    add-int/lit8 v1, v1, -0x1

    #@145
    goto :goto_0

    #@146
    .line 1139
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@148
    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@14b
    move-result v3

    #@14c
    if-eqz v3, :cond_4

    #@14e
    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v3

    #@157
    const-string/jumbo v4, "mWindowAnimationBackgroundSurface:"

    #@15a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v3

    #@15e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v3

    #@162
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@165
    .line 1141
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@167
    new-instance v4, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v4

    #@170
    const-string/jumbo v5, "  "

    #@173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v4

    #@177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v4

    #@17b
    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@17e
    .line 1143
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@180
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    #@183
    move-result v3

    #@184
    if-nez v3, :cond_5

    #@186
    .line 1144
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@189
    .line 1145
    const-string/jumbo v3, "  Exiting application tokens:"

    #@18c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18f
    .line 1146
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@191
    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    #@194
    move-result v3

    #@195
    add-int/lit8 v0, v3, -0x1

    #@197
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    #@199
    .line 1147
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@19b
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@19e
    move-result-object v2

    #@19f
    check-cast v2, Lcom/android/server/wm/WindowToken;

    #@1a1
    .line 1148
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v3, "  Exiting App #"

    #@1a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1aa
    .line 1149
    const/16 v3, 0x20

    #@1ac
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@1af
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1b2
    .line 1150
    const/16 v3, 0x3a

    #@1b4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    #@1b7
    .line 1151
    const-string/jumbo v3, "    "

    #@1ba
    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1bd
    .line 1146
    add-int/lit8 v0, v0, -0x1

    #@1bf
    goto :goto_1

    #@1c0
    .line 1120
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_5
    return-void
.end method

.method endImeAdjustAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 956
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 957
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/Task;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    #@17
    .line 956
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 955
    :cond_0
    return-void
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 156
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 157
    return-object v2

    #@6
    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@10
    .line 161
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/wm/Task;

    #@18
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isHomeTask()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 162
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lcom/android/server/wm/Task;

    #@26
    return-object v1

    #@27
    .line 160
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 165
    :cond_2
    return-object v2
.end method

.method forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1306
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@3
    .line 1308
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@5
    .line 1309
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v5

    #@9
    add-int/lit8 v1, v5, -0x1

    #@b
    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    #@d
    .line 1310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    #@13
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@15
    .line 1311
    .local v4, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v3, v5, -0x1

    #@1b
    .local v3, "winNdx":I
    :goto_1
    if-ltz v3, :cond_1

    #@1d
    .line 1312
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Lcom/android/server/wm/WindowState;

    #@23
    iget-object v2, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@25
    .line 1313
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v2, :cond_0

    #@27
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_0

    #@2d
    .line 1316
    iget-object v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2f
    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1311
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@34
    goto :goto_1

    #@35
    .line 1309
    .end local v2    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@37
    goto :goto_0

    #@38
    .line 1320
    .end local v3    # "winNdx":I
    .end local v4    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@3b
    .line 1305
    return-void

    #@3c
    .line 1319
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :catchall_0
    move-exception v5

    #@3d
    .line 1320
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@40
    .line 1319
    throw v5
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 331
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    #@10
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@13
    .line 336
    :goto_0
    return-void

    #@14
    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@16
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@19
    goto :goto_0

    #@1a
    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1c
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@1f
    .line 325
    return-void
.end method

.method public getBoundsAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    #@2
    return v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 425
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@a
    .line 423
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@3
    .line 347
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getDockSide()I
    .locals 1

    #@0
    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1203
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@3
    const/4 v2, 0x3

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@8
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1206
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@10
    if-nez v1, :cond_2

    #@12
    .line 1207
    return v3

    #@13
    .line 1204
    :cond_1
    return v3

    #@14
    .line 1209
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@16
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@1b
    .line 1210
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@1f
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    #@21
    .line 1211
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@23
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    #@26
    move-result v1

    #@27
    return v1
.end method

.method public getForceScaleToCrop()Z
    .locals 1

    #@0
    .prologue
    .line 1365
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    #@2
    return v0
.end method

.method public getFullScreenBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    #@7
    .line 1356
    return-void
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .locals 3
    .param p1, "displayContentRect"    # Landroid/graphics/Rect;
    .param p2, "originalStackBottom"    # I

    #@0
    .prologue
    .line 962
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@2
    .line 963
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    sub-int v1, p2, v1

    #@6
    int-to-float v1, v1

    #@7
    const v2, 0x3e99999a    # 0.3f

    #@a
    mul-float/2addr v1, v2

    #@b
    .line 962
    float-to-int v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method getMinimizeDistance()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1067
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@4
    move-result v0

    #@5
    .line 1068
    .local v0, "dockSide":I
    const/4 v2, -0x1

    #@6
    if-ne v0, v2, :cond_0

    #@8
    .line 1069
    return v3

    #@9
    .line 1072
    :cond_0
    const/4 v2, 0x2

    #@a
    if-ne v0, v2, :cond_1

    #@c
    .line 1073
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@10
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    #@13
    .line 1074
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@15
    iget v1, v2, Landroid/graphics/Rect;->top:I

    #@17
    .line 1075
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@19
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@1b
    sub-int/2addr v2, v1

    #@1c
    return v2

    #@1d
    .line 1076
    .end local v1    # "topInset":I
    :cond_1
    const/4 v2, 0x1

    #@1e
    if-eq v0, v2, :cond_2

    #@20
    const/4 v2, 0x3

    #@21
    if-ne v0, v2, :cond_3

    #@23
    .line 1077
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@28
    move-result v2

    #@29
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    #@2b
    sub-int/2addr v2, v3

    #@2c
    return v2

    #@2d
    .line 1079
    :cond_3
    return v3
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 310
    return-void
.end method

.method getRawFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@2
    return v0
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Z)V
    .locals 9
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "ignoreVisibility"    # Z

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 677
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@7
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@f
    if-nez v0, :cond_2

    #@11
    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@13
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 680
    return-void

    #@17
    .line 683
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v8

    #@1f
    check-cast v8, Lcom/android/server/wm/TaskStack;

    #@21
    .line 684
    .local v8, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-nez v8, :cond_3

    #@23
    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    #@25
    .line 687
    const-string/jumbo v1, "Calling getStackDockedModeBoundsLocked() when there is no docked stack."

    #@28
    .line 686
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 689
    :cond_3
    if-nez p2, :cond_4

    #@2e
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_5

    #@34
    .line 697
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    #@37
    move-result v7

    #@38
    .line 698
    .local v7, "dockedSide":I
    const/4 v0, -0x1

    #@39
    if-ne v7, v0, :cond_6

    #@3b
    .line 700
    const-string/jumbo v0, "WindowManager"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Failed to get valid docked side for docked stack="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 701
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@57
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5a
    .line 702
    return-void

    #@5b
    .line 693
    .end local v7    # "dockedSide":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@5d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@60
    .line 694
    return-void

    #@61
    .line 705
    .restart local v7    # "dockedSide":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@63
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@65
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@68
    .line 706
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v8, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    #@6d
    .line 707
    const/4 v0, 0x2

    #@6e
    if-eq v7, v0, :cond_7

    #@70
    const/4 v0, 0x1

    #@71
    if-ne v7, v0, :cond_8

    #@73
    :cond_7
    const/4 v6, 0x1

    #@74
    .line 708
    .local v6, "dockedOnTopOrLeft":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@76
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@78
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@7a
    .line 709
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@7c
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@7e
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    #@81
    move-result v5

    #@82
    move-object v0, p0

    #@83
    move-object v2, p1

    #@84
    .line 708
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    #@87
    .line 676
    return-void

    #@88
    .line 707
    .end local v6    # "dockedOnTopOrLeft":Z
    :cond_8
    const/4 v6, 0x0

    #@89
    .restart local v6    # "dockedOnTopOrLeft":Z
    goto :goto_0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public hasMovementAnimations()Z
    .locals 1

    #@0
    .prologue
    .line 1361
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->hasMovementAnimations(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isAdjustedForIme()Z
    .locals 1

    #@0
    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@2
    return v0
.end method

.method isAdjustedForMinimizedDock()Z
    .locals 2

    #@0
    .prologue
    .line 935
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-eqz v0, :cond_0

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

.method isAdjustedForMinimizedDockedStack()Z
    .locals 2

    #@0
    .prologue
    .line 1117
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-eqz v0, :cond_0

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

.method isAnimating()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 496
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v6

    #@7
    add-int/lit8 v2, v6, -0x1

    #@9
    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    #@b
    .line 497
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Lcom/android/server/wm/Task;

    #@13
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@15
    .line 498
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v6

    #@19
    add-int/lit8 v1, v6, -0x1

    #@1b
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    #@1d
    .line 499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    #@23
    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@25
    .line 500
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v6

    #@29
    add-int/lit8 v4, v6, -0x1

    #@2b
    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    #@2d
    .line 501
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@33
    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@35
    .line 502
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@3d
    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@3f
    if-eqz v6, :cond_1

    #@41
    .line 503
    :cond_0
    const/4 v6, 0x1

    #@42
    return v6

    #@43
    .line 500
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@45
    goto :goto_2

    #@46
    .line 498
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@48
    goto :goto_1

    #@49
    .line 496
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 508
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return v7
.end method

.method isAnimatingForIme()Z
    .locals 1

    #@0
    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isDragResizing()Z
    .locals 1

    #@0
    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    #@2
    return v0
.end method

.method isFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1171
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@8
    return v0

    #@9
    .line 1176
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method isFullscreenBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 217
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@a
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@f
    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method isVisibleLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1235
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method isVisibleLocked(Z)Z
    .locals 6
    .param p1, "ignoreKeyguard"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1239
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@5
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_2

    #@b
    .line 1240
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@f
    iget-boolean v4, v4, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    #@11
    if-eqz v4, :cond_1

    #@13
    const/4 v2, 0x0

    #@14
    .line 1241
    .local v2, "keyguardOn":Z
    :goto_0
    if-nez p1, :cond_0

    #@16
    if-eqz v2, :cond_0

    #@18
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@1a
    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isAllowedOverLockscreen(I)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_3

    #@20
    .line 1246
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v0, v4, -0x1

    #@28
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_6

    #@2a
    .line 1247
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/server/wm/Task;

    #@32
    .line 1248
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@34
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@37
    move-result v4

    #@38
    add-int/lit8 v1, v4, -0x1

    #@3a
    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_5

    #@3c
    .line 1249
    iget-object v4, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3e
    invoke-virtual {v4, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@44
    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    #@46
    if-nez v4, :cond_4

    #@48
    .line 1250
    const/4 v4, 0x1

    #@49
    return v4

    #@4a
    .line 1240
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "keyguardOn":Z
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v2, 0x1

    #@4b
    .restart local v2    # "keyguardOn":Z
    goto :goto_0

    #@4c
    .line 1239
    .end local v2    # "keyguardOn":Z
    :cond_2
    const/4 v2, 0x0

    #@4d
    .restart local v2    # "keyguardOn":Z
    goto :goto_0

    #@4e
    .line 1243
    :cond_3
    return v5

    #@4f
    .line 1248
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@51
    goto :goto_2

    #@52
    .line 1246
    :cond_5
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_1

    #@55
    .line 1255
    .end local v1    # "j":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_6
    return v5
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 616
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    #@9
    .line 613
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 610
    const/4 v0, 0x1

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    #@9
    .line 606
    return-void
.end method

.method public moveToFullscreen()V
    .locals 4

    #@0
    .prologue
    .line 1349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@4
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@6
    const/4 v3, 0x1

    #@7
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1347
    :goto_0
    return-void

    #@b
    .line 1350
    :catch_0
    move-exception v0

    #@c
    .line 1351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@f
    goto :goto_0
.end method

.method public onAnimationEnd()V
    .locals 3

    #@0
    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v2

    #@5
    .line 1334
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    #@8
    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 1337
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@10
    const/4 v2, 0x4

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 1339
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@17
    invoke-interface {v1}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1a
    .line 1332
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 1333
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1

    #@1e
    .line 1340
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 2

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v0

    #@5
    .line 1327
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 1325
    return-void

    #@a
    .line 1326
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method onConfigurationChanged()Z
    .locals 1

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method overridePlayingAppAnimations(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 1376
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1377
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/Task;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->overridePlayingAppAnimations(Landroid/view/animation/Animation;)V

    #@15
    .line 1376
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1375
    :cond_0
    return-void
.end method

.method positionTask(Lcom/android/server/wm/Task;IZ)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "showForAllUsers"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 527
    if-nez p3, :cond_3

    #@4
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget v8, p1, Lcom/android/server/wm/Task;->mUserId:I

    #@8
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@b
    move-result v0

    #@c
    .line 528
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@11
    .line 529
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v3

    #@17
    .line 530
    .local v3, "stackSize":I
    const/4 v2, 0x0

    #@18
    .line 531
    .local v2, "minPosition":I
    move v1, v3

    #@19
    .line 533
    .local v1, "maxPosition":I
    if-eqz v0, :cond_4

    #@1b
    .line 534
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    #@1e
    move-result v2

    #@1f
    .line 539
    :goto_1
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v7

    #@23
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    #@26
    move-result p2

    #@27
    .line 543
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v7, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2c
    .line 546
    iget-object v7, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2e
    if-eq v7, p0, :cond_0

    #@30
    .line 547
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->resetScrollLocked()V

    #@33
    .line 549
    :cond_0
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@35
    .line 550
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@37
    invoke-virtual {p1, v7}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    #@3a
    .line 551
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v7

    #@40
    add-int/lit8 v7, v7, -0x1

    #@42
    if-ne p2, v7, :cond_5

    #@44
    move v4, v6

    #@45
    .line 552
    .local v4, "toTop":Z
    :goto_2
    if-eqz v4, :cond_1

    #@47
    .line 553
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@49
    invoke-virtual {v7, p0, v6}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    #@4c
    .line 556
    :cond_1
    iget v7, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@4e
    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_6

    #@54
    .line 560
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/TaskStack;->forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V

    #@57
    .line 564
    :goto_3
    const/4 v7, 0x3

    #@58
    new-array v7, v7, [Ljava/lang/Object;

    #@5a
    iget v8, p1, Lcom/android/server/wm/Task;->mTaskId:I

    #@5c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v8

    #@60
    aput-object v8, v7, v5

    #@62
    if-eqz v4, :cond_2

    #@64
    move v5, v6

    #@65
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v5

    #@69
    aput-object v5, v7, v6

    #@6b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v5

    #@6f
    const/4 v6, 0x2

    #@70
    aput-object v5, v7, v6

    #@72
    const/16 v5, 0x791a

    #@74
    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@77
    .line 525
    return-void

    #@78
    .line 527
    .end local v1    # "maxPosition":I
    .end local v2    # "minPosition":I
    .end local v3    # "stackSize":I
    .end local v4    # "toTop":Z
    :cond_3
    const/4 v0, 0x1

    #@79
    .local v0, "canShowTask":Z
    goto :goto_0

    #@7a
    .line 536
    .end local v0    # "canShowTask":Z
    .restart local v1    # "maxPosition":I
    .restart local v2    # "minPosition":I
    .restart local v3    # "stackSize":I
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    #@7d
    move-result v1

    #@7e
    goto :goto_1

    #@7f
    :cond_5
    move v4, v5

    #@80
    .line 551
    goto :goto_2

    #@81
    .line 562
    .restart local v4    # "toTop":Z
    :cond_6
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskStack;->forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V

    #@84
    goto :goto_3
.end method

.method prepareFreezingTaskBounds()V
    .locals 3

    #@0
    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 210
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/Task;

    #@12
    .line 211
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    #@15
    .line 209
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 208
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_0
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 626
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    .line 627
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 628
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 629
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@14
    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    #@17
    .line 631
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@19
    const/4 v3, 0x1

    #@1a
    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1c
    .line 633
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@21
    move-result v2

    #@22
    add-int/lit8 v0, v2, -0x1

    #@24
    .local v0, "appNdx":I
    :goto_0
    if-ltz v0, :cond_3

    #@26
    .line 634
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@28
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@2e
    .line 635
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@30
    if-ne v2, p1, :cond_2

    #@32
    .line 636
    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@34
    .line 637
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@36
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    #@39
    .line 633
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 624
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .locals 4
    .param p1, "adjustBoundsNow"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 905
    if-eqz p1, :cond_0

    #@4
    .line 906
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    #@7
    .line 907
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@9
    .line 908
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    #@b
    .line 909
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@d
    .line 910
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@f
    .line 911
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    #@12
    .line 912
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@16
    const/high16 v2, 0x3f800000    # 1.0f

    #@18
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    #@1b
    .line 904
    :goto_0
    return-void

    #@1c
    .line 914
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    #@1e
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@20
    or-int/2addr v0, v1

    #@21
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    #@23
    goto :goto_0
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    #@0
    .prologue
    .line 819
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3
    .line 820
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    #@8
    .line 818
    return-void
.end method

.method resetDockedStackToMiddle()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x1

    #@2
    .line 783
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@4
    if-eq v1, v4, :cond_0

    #@6
    .line 784
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Not a docked stack="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 787
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    const/4 v2, 0x0

    #@23
    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    #@25
    .line 789
    new-instance v0, Landroid/graphics/Rect;

    #@27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2a
    .line 790
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Z)V

    #@2d
    .line 791
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@31
    const/16 v2, 0x2a

    #@33
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@3a
    .line 782
    return-void
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .locals 3
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceUpdate"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 860
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    #@4
    .line 861
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    #@7
    .line 862
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    if-eqz p2, :cond_1

    #@d
    .line 863
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    #@f
    .line 864
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@11
    .line 865
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@13
    .line 866
    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    #@16
    .line 859
    :cond_1
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .locals 1
    .param p1, "minimizeAmount"    # F

    #@0
    .prologue
    .line 925
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 926
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    #@8
    .line 927
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    #@b
    .line 928
    const/4 v0, 0x1

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 930
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 824
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@2
    .line 825
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 826
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@8
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 827
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    .line 828
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    #@13
    move-result v0

    #@14
    .line 829
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    #@16
    add-int/lit8 v2, v0, -0x1

    #@18
    .line 830
    shr-int/lit8 v3, p2, 0x18

    #@1a
    and-int/lit16 v3, v3, 0xff

    #@1c
    int-to-float v3, v3

    #@1d
    const/high16 v4, 0x437f0000    # 255.0f

    #@1f
    div-float/2addr v3, v4

    #@20
    const-wide/16 v4, 0x0

    #@22
    .line 829
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@25
    .line 823
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 9
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/Configuration;>;"
    .local p3, "taskBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p4, "taskTempInsetBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@5
    .line 181
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    add-int/lit8 v3, v4, -0x1

    #@d
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    #@f
    .line 182
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/wm/Task;

    #@17
    .line 183
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    #@19
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/content/res/Configuration;

    #@1f
    .line 184
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_2

    #@21
    .line 185
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    #@23
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/graphics/Rect;

    #@29
    .line 186
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 192
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    #@32
    .line 193
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@34
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    #@37
    .line 194
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    #@3c
    .line 181
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@3e
    goto :goto_0

    #@3f
    .line 196
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    #@42
    .line 198
    if-eqz p4, :cond_1

    #@44
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    #@46
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Landroid/graphics/Rect;

    #@4c
    .line 197
    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    #@4f
    goto :goto_1

    #@50
    :cond_1
    move-object v4, v5

    #@51
    .line 199
    goto :goto_2

    #@52
    .line 202
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_2
    const-string/jumbo v4, "WindowManager"

    #@55
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v7, "No config for task: "

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    const-string/jumbo v7, ", is there a mismatch with AM?"

    #@68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    goto :goto_1

    #@74
    .line 205
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_3
    const/4 v4, 0x1

    #@75
    return v4
.end method

.method setDragResizingLocked(Z)V
    .locals 2
    .param p1, "resizing"    # Z

    #@0
    .prologue
    .line 1263
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 1264
    return-void

    #@5
    .line 1266
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    #@7
    .line 1267
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v0, v1, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@11
    .line 1268
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/wm/Task;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    #@1c
    .line 1267
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1262
    :cond_1
    return-void
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@5
    monitor-enter v2

    #@6
    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v1, :cond_0

    #@a
    monitor-exit v2

    #@b
    .line 1289
    return v4

    #@c
    .line 1291
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@e
    const/4 v3, 0x4

    #@f
    if-eq v1, v3, :cond_1

    #@11
    .line 1292
    const-string/jumbo v1, "WindowManager"

    #@14
    const-string/jumbo v3, "Attempt to use pinned stack resize animation helper onnon pinned stack"

    #@17
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 1294
    return v4

    #@1c
    :cond_1
    monitor-exit v2

    #@1d
    .line 1298
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@21
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@24
    .line 1302
    :goto_0
    const/4 v1, 0x1

    #@25
    return v1

    #@26
    .line 1287
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1

    #@29
    .line 1299
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setSize(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6
    monitor-enter v0

    #@7
    .line 1275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v1, :cond_0

    #@b
    monitor-exit v0

    #@c
    .line 1276
    return v2

    #@d
    :cond_0
    monitor-exit v0

    #@e
    .line 1280
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@12
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    const/4 v5, 0x0

    #@17
    const/4 v6, -0x1

    #@18
    move-object v2, p1

    #@19
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1c
    .line 1283
    :goto_0
    return v8

    #@1d
    .line 1274
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v0

    #@1f
    throw v1

    #@20
    .line 1281
    :catch_0
    move-exception v7

    #@21
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method switchUser()V
    .locals 5

    #@0
    .prologue
    .line 835
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 836
    .local v2, "top":I
    const/4 v1, 0x0

    #@7
    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@9
    .line 837
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wm/Task;

    #@11
    .line 838
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    #@15
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 839
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@26
    .line 840
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 841
    add-int/lit8 v2, v2, -0x1

    #@2d
    .line 836
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 834
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Stack="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{stackId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " tasks="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .locals 1
    .param p1, "adjustAmount"    # F
    .param p2, "adjustDividerAmount"    # F
    .param p3, "force"    # Z

    #@0
    .prologue
    .line 887
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 888
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@8
    cmpl-float v0, p2, v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 889
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    #@e
    .line 890
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    #@10
    .line 891
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    #@13
    .line 892
    const/4 v0, 0x1

    #@14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 887
    :cond_1
    if-nez p3, :cond_0

    #@1b
    .line 894
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method updateDisplayInfo(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 352
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 353
    return-void

    #@6
    .line 356
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v2, v3, -0x1

    #@e
    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    #@10
    .line 357
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/wm/Task;

    #@18
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1a
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    #@1d
    .line 356
    add-int/lit8 v2, v2, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 359
    :cond_1
    if-eqz p1, :cond_2

    #@22
    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@25
    .line 361
    return-void

    #@26
    .line 362
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 363
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@2d
    .line 364
    return-void

    #@2e
    .line 367
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@30
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@35
    .line 368
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@37
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@3a
    move-result-object v3

    #@3b
    iget v1, v3, Landroid/view/DisplayInfo;->rotation:I

    #@3d
    .line 369
    .local v1, "newRotation":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3f
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@42
    move-result-object v3

    #@43
    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@45
    .line 370
    .local v0, "newDensity":I
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    #@47
    if-ne v3, v1, :cond_4

    #@49
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    #@4b
    if-ne v3, v0, :cond_4

    #@4d
    .line 371
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    #@4f
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    #@52
    .line 351
    :cond_4
    return-void
.end method
