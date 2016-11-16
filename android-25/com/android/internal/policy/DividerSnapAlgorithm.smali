.class public Lcom/android/internal/policy/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# static fields
.field private static final MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final SNAP_FIXED_RATIO:I = 0x1

.field private static final SNAP_MODE_16_9:I = 0x0

.field private static final SNAP_ONLY_1_1:I = 0x2


# instance fields
.field private final mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private final mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mFixedRatio:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsHorizontalDivision:Z

.field private final mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mSnapMode:I

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@b
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    #@d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@12
    .line 97
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@15
    move-result-object v0

    #@16
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@18
    const/high16 v1, 0x43c80000    # 400.0f

    #@1a
    mul-float/2addr v0, v1

    #@1b
    .line 96
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    #@1d
    .line 99
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@20
    move-result-object v0

    #@21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@23
    const/high16 v1, 0x44160000    # 600.0f

    #@25
    mul-float/2addr v0, v1

    #@26
    .line 98
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    #@28
    .line 100
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@2a
    .line 101
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@2c
    .line 102
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@2e
    .line 103
    iput-boolean p5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    #@30
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@35
    .line 106
    const v0, 0x10e00a4

    #@38
    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    #@3e
    .line 108
    const v0, 0x1130005

    #@41
    .line 107
    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    #@47
    .line 110
    const v0, 0x10500c1

    #@4a
    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@4d
    move-result v0

    #@4e
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    #@50
    .line 111
    invoke-direct {p0, p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateTargets(Z)V

    #@53
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@5b
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@5d
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@5f
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@64
    move-result v1

    #@65
    add-int/lit8 v1, v1, -0x2

    #@67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@6d
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@6f
    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@71
    const/4 v1, 0x0

    #@72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@78
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@7a
    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@7c
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@7e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@81
    move-result v1

    #@82
    add-int/lit8 v1, v1, -0x1

    #@84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v0

    #@88
    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@8a
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@8c
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@8e
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v1

    #@94
    div-int/lit8 v1, v1, 0x2

    #@96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v0

    #@9a
    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@9c
    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@9e
    .line 95
    return-void
.end method

.method private addFixedDivisionTargets(ZI)V
    .locals 7
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    #@0
    .prologue
    .line 276
    if-eqz p1, :cond_0

    #@2
    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@4
    iget v3, v5, Landroid/graphics/Rect;->top:I

    #@6
    .line 277
    .local v3, "start":I
    :goto_0
    if-eqz p1, :cond_1

    #@8
    .line 278
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@a
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@c
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@e
    sub-int v1, v5, v6

    #@10
    .line 280
    .local v1, "end":I
    :goto_1
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    #@12
    sub-int v6, v1, v3

    #@14
    int-to-float v6, v6

    #@15
    mul-float/2addr v5, v6

    #@16
    float-to-int v5, v5

    #@17
    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@19
    div-int/lit8 v6, v6, 0x2

    #@1b
    sub-int v2, v5, v6

    #@1d
    .line 281
    .local v2, "size":I
    add-int v4, v3, v2

    #@1f
    .line 282
    .local v4, "topPosition":I
    sub-int v5, v1, v2

    #@21
    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@23
    sub-int v0, v5, v6

    #@25
    .line 283
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    #@28
    .line 275
    return-void

    #@29
    .line 276
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "size":I
    .end local v3    # "start":I
    .end local v4    # "topPosition":I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@2b
    iget v3, v5, Landroid/graphics/Rect;->left:I

    #@2d
    .restart local v3    # "start":I
    goto :goto_0

    #@2e
    .line 279
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@30
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@32
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@34
    sub-int v1, v5, v6

    #@36
    .restart local v1    # "end":I
    goto :goto_1
.end method

.method private addMiddleTarget(Z)V
    .locals 5
    .param p1, "isHorizontalDivision"    # Z

    #@0
    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@2
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@4
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@6
    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@8
    .line 313
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    #@b
    move-result v0

    #@c
    .line 315
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@e
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    #@14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 312
    return-void
.end method

.method private addNonDismissingTargets(ZIII)V
    .locals 2
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "topPosition"    # I
    .param p3, "bottomPosition"    # I
    .param p4, "dividerMax"    # I

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    sub-int v0, p2, v0

    #@6
    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    #@9
    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    #@c
    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@10
    sub-int v0, p4, v0

    #@12
    .line 272
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@14
    add-int/2addr v1, p3

    #@15
    .line 271
    sub-int/2addr v0, v1

    #@16
    invoke-direct {p0, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    #@19
    .line 268
    return-void
.end method

.method private addRatio16_9Targets(ZI)V
    .locals 10
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    #@0
    .prologue
    .line 287
    if-eqz p1, :cond_0

    #@2
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@4
    iget v5, v8, Landroid/graphics/Rect;->top:I

    #@6
    .line 288
    .local v5, "start":I
    :goto_0
    if-eqz p1, :cond_1

    #@8
    .line 289
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@a
    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@c
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@e
    sub-int v1, v8, v9

    #@10
    .line 291
    .local v1, "end":I
    :goto_1
    if-eqz p1, :cond_2

    #@12
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@14
    iget v6, v8, Landroid/graphics/Rect;->left:I

    #@16
    .line 292
    .local v6, "startOther":I
    :goto_2
    if-eqz p1, :cond_3

    #@18
    .line 293
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@1a
    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@1c
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@1e
    sub-int v2, v8, v9

    #@20
    .line 295
    .local v2, "endOther":I
    :goto_3
    sub-int v8, v2, v6

    #@22
    int-to-float v8, v8

    #@23
    const/high16 v9, 0x3f100000    # 0.5625f

    #@25
    mul-float v3, v9, v8

    #@27
    .line 296
    .local v3, "size":F
    float-to-double v8, v3

    #@28
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@2b
    move-result-wide v8

    #@2c
    double-to-int v4, v8

    #@2d
    .line 297
    .local v4, "sizeInt":I
    add-int v7, v5, v4

    #@2f
    .line 298
    .local v7, "topPosition":I
    sub-int v8, v1, v4

    #@31
    iget v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@33
    sub-int v0, v8, v9

    #@35
    .line 299
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v7, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    #@38
    .line 286
    return-void

    #@39
    .line 287
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "endOther":I
    .end local v3    # "size":F
    .end local v4    # "sizeInt":I
    .end local v5    # "start":I
    .end local v6    # "startOther":I
    .end local v7    # "topPosition":I
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@3b
    iget v5, v8, Landroid/graphics/Rect;->left:I

    #@3d
    .restart local v5    # "start":I
    goto :goto_0

    #@3e
    .line 290
    :cond_1
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@40
    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@42
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@44
    sub-int v1, v8, v9

    #@46
    .restart local v1    # "end":I
    goto :goto_1

    #@47
    .line 291
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@49
    iget v6, v8, Landroid/graphics/Rect;->top:I

    #@4b
    .restart local v6    # "startOther":I
    goto :goto_2

    #@4c
    .line 294
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@4e
    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@50
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@52
    sub-int v2, v8, v9

    #@54
    goto :goto_3
.end method

.method private calculateTargets(Z)V
    .locals 8
    .param p1, "isHorizontalDivision"    # Z

    #@0
    .prologue
    const v7, 0x3eb33333    # 0.35f

    #@3
    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 246
    if-eqz p1, :cond_0

    #@a
    .line 247
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@c
    .line 249
    .local v0, "dividerMax":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@e
    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@10
    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@12
    neg-int v4, v4

    #@13
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@15
    neg-int v5, v5

    #@16
    const/4 v6, 0x1

    #@17
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    #@1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 251
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    #@1f
    packed-switch v2, :pswitch_data_0

    #@22
    .line 262
    :goto_1
    if-eqz p1, :cond_1

    #@24
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@26
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 263
    .local v1, "navBarSize":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@2a
    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2c
    sub-int v4, v0, v1

    #@2e
    .line 264
    const/4 v5, 0x2

    #@2f
    .line 263
    invoke-direct {v3, v4, v0, v5, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    #@32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 244
    return-void

    #@36
    .line 248
    .end local v0    # "dividerMax":I
    .end local v1    # "navBarSize":I
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@38
    .restart local v0    # "dividerMax":I
    goto :goto_0

    #@39
    .line 253
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    #@3c
    goto :goto_1

    #@3d
    .line 256
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    #@40
    goto :goto_1

    #@41
    .line 259
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    #@44
    goto :goto_1

    #@45
    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@47
    iget v1, v2, Landroid/graphics/Rect;->right:I

    #@49
    .restart local v1    # "navBarSize":I
    goto :goto_2

    #@4a
    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "insets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 79
    new-instance v7, Landroid/view/DisplayInfo;

    #@4
    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    #@7
    .line 80
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    const-class v0, Landroid/hardware/display/DisplayManager;

    #@9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@f
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@16
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v0

    #@1a
    .line 83
    const v1, 0x1050023

    #@1d
    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@20
    move-result v9

    #@21
    .line 84
    .local v9, "dividerWindowWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object v0

    #@25
    .line 85
    const v1, 0x1050024

    #@28
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2b
    move-result v8

    #@2c
    .line 86
    .local v8, "dividerInsets":I
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    #@2e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v1

    #@32
    .line 87
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    #@34
    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    #@36
    .line 88
    mul-int/lit8 v4, v8, 0x2

    #@38
    sub-int v4, v9, v4

    #@3a
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3d
    move-result-object v10

    #@3e
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@45
    move-result-object v10

    #@46
    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    #@48
    if-ne v10, v5, :cond_0

    #@4a
    :goto_0
    move-object v6, p1

    #@4b
    .line 86
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    #@4e
    return-object v0

    #@4f
    :cond_0
    move v5, v6

    #@50
    .line 89
    goto :goto_0
.end method

.method private getEndInset()I
    .locals 1

    #@0
    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8
    return v0

    #@9
    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@b
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@d
    return v0
.end method

.method private getStartInset()I
    .locals 1

    #@0
    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@8
    return v0

    #@9
    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@d
    return v0
.end method

.method private maybeAddTarget(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smallerSize"    # I

    #@0
    .prologue
    .line 307
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    #@2
    if-lt p2, v0, :cond_0

    #@4
    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@6
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v1, p1, p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    #@c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 306
    :cond_0
    return-void
.end method

.method private snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 7
    .param p1, "position"    # I
    .param p2, "hardDismiss"    # Z

    #@0
    .prologue
    .line 227
    const/4 v3, -0x1

    #@1
    .line 228
    .local v3, "minIndex":I
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    #@4
    .line 229
    .local v2, "minDistance":F
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v4

    #@a
    .line 230
    .local v4, "size":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@d
    .line 231
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@15
    .line 232
    .local v5, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v6, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@17
    sub-int v6, p1, v6

    #@19
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@1c
    move-result v6

    #@1d
    int-to-float v0, v6

    #@1e
    .line 233
    .local v0, "distance":F
    if-eqz p2, :cond_0

    #@20
    .line 234
    invoke-static {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->-get0(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    #@23
    move-result v6

    #@24
    div-float/2addr v0, v6

    #@25
    .line 236
    :cond_0
    cmpg-float v6, v0, v2

    #@27
    if-gez v6, :cond_1

    #@29
    .line 237
    move v3, v1

    #@2a
    .line 238
    move v2, v0

    #@2b
    .line 230
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 241
    .end local v0    # "distance":F
    .end local v5    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    check-cast v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@36
    return-object v6
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    #@9
    move-result v0

    #@a
    sub-int v0, p1, v0

    #@c
    int-to-float v0, v0

    #@d
    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@f
    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@11
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    #@14
    move-result v2

    #@15
    sub-int/2addr v1, v2

    #@16
    int-to-float v1, v1

    #@17
    .line 172
    div-float/2addr v0, v1

    #@18
    const/high16 v1, 0x3f800000    # 1.0f

    #@1a
    sub-float v0, v1, v0

    #@1c
    return v0

    #@1d
    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@1f
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@21
    if-le p1, v0, :cond_1

    #@23
    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@25
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@27
    sub-int v0, p1, v0

    #@29
    int-to-float v0, v0

    #@2a
    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2c
    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@2e
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@30
    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@32
    sub-int/2addr v1, v2

    #@33
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@35
    sub-int/2addr v1, v2

    #@36
    int-to-float v1, v1

    #@37
    .line 175
    div-float/2addr v0, v1

    #@38
    return v0

    #@39
    .line 178
    :cond_1
    const/4 v0, 0x0

    #@3a
    return v0
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 160
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@4
    move-result-object v0

    #@5
    .line 161
    .local v0, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@b
    return-object v1

    #@c
    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@12
    return-object v1

    #@13
    .line 166
    :cond_1
    return-object v0
.end method

.method public calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1
    .param p1, "position"    # I
    .param p2, "velocity"    # F

    #@0
    .prologue
    .line 134
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "hardDismiss"    # Z

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    #@8
    neg-float v0, v0

    #@9
    cmpg-float v0, p2, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@f
    return-object v0

    #@10
    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@12
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@14
    if-le p1, v0, :cond_1

    #@16
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    #@18
    cmpl-float v0, p2, v0

    #@1a
    if-lez v0, :cond_1

    #@1c
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@1e
    return-object v0

    #@1f
    .line 149
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@22
    move-result v0

    #@23
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    #@25
    cmpg-float v0, v0, v1

    #@27
    if-gez v0, :cond_2

    #@29
    .line 150
    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 152
    :cond_2
    const/4 v0, 0x0

    #@2f
    cmpg-float v0, p2, v0

    #@31
    if-gez v0, :cond_3

    #@33
    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@35
    return-object v0

    #@36
    .line 155
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@38
    return-object v0
.end method

.method public cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 5
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p2, "increment"    # I

    #@0
    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 352
    .local v0, "index":I
    const/4 v2, -0x1

    #@7
    if-eq v0, v2, :cond_2

    #@9
    .line 353
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@b
    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v3

    #@11
    add-int/2addr v3, v0

    #@12
    add-int/2addr v3, p2

    #@13
    .line 354
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v4

    #@19
    .line 353
    rem-int/2addr v3, v4

    #@1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@20
    .line 355
    .local v1, "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@22
    if-ne v1, v2, :cond_0

    #@24
    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@26
    return-object v2

    #@27
    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@29
    if-ne v1, v2, :cond_1

    #@2b
    .line 358
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2d
    return-object v2

    #@2e
    .line 360
    :cond_1
    return-object v1

    #@2f
    .line 363
    .end local v1    # "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    return-object p1
.end method

.method public getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@8
    return-object v0

    #@9
    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@b
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@d
    if-le p1, v0, :cond_1

    #@f
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@11
    return-object v0

    #@12
    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@14
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@16
    sub-int v0, p1, v0

    #@18
    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@1a
    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@1c
    sub-int/2addr v1, p1

    #@1d
    .line 186
    if-ge v0, v1, :cond_2

    #@1f
    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@21
    return-object v0

    #@22
    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@24
    return-object v0
.end method

.method public getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    return-object v0
.end method

.method public getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    return-object v0
.end method

.method public getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    return-object v0
.end method

.method public getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    return-object v0
.end method

.method public getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    return-object v0
.end method

.method public getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@0
    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 324
    .local v0, "index":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@15
    add-int/lit8 v2, v0, 0x1

    #@17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@1d
    return-object v1

    #@1e
    .line 327
    :cond_0
    return-object p1
.end method

.method public getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@0
    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 332
    .local v0, "index":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    if-lez v0, :cond_0

    #@b
    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    #@d
    add-int/lit8 v2, v0, -0x1

    #@f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@15
    return-object v1

    #@16
    .line 335
    :cond_0
    return-object p1
.end method

.method public isFirstSplitTargetAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isLastSplitTargetAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@2
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isSplitScreenFeasible()Z
    .locals 6

    #@0
    .prologue
    .line 124
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@2
    iget v3, v4, Landroid/graphics/Rect;->top:I

    #@4
    .line 125
    .local v3, "statusBarSize":I
    iget-boolean v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@a
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    #@c
    .line 126
    .local v1, "navBarSize":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 127
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    #@12
    .line 129
    .local v2, "size":I
    :goto_1
    sub-int v4, v2, v1

    #@14
    sub-int/2addr v4, v3

    #@15
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    #@17
    sub-int v0, v4, v5

    #@19
    .line 130
    .local v0, "availableSpace":I
    div-int/lit8 v4, v0, 0x2

    #@1b
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    #@1d
    if-lt v4, v5, :cond_2

    #@1f
    const/4 v4, 0x1

    #@20
    :goto_2
    return v4

    #@21
    .line 125
    .end local v0    # "availableSpace":I
    .end local v1    # "navBarSize":I
    .end local v2    # "size":I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    #@23
    iget v1, v4, Landroid/graphics/Rect;->right:I

    #@25
    .restart local v1    # "navBarSize":I
    goto :goto_0

    #@26
    .line 128
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    #@28
    goto :goto_1

    #@29
    .line 130
    .restart local v0    # "availableSpace":I
    .restart local v2    # "size":I
    :cond_2
    const/4 v4, 0x0

    #@2a
    goto :goto_2
.end method
