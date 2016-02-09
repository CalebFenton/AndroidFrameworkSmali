.class public Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ViewDragHelper$Callback;,
        Landroid/support/v4/widget/ViewDragHelper$1;,
        Landroid/support/v4/widget/ViewDragHelper$2;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 326
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@0
    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    const/4 v2, -0x1

    #@4
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@6
    .line 333
    new-instance v2, Landroid/support/v4/widget/ViewDragHelper$2;

    #@8
    invoke-direct {v2, p0}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V

    #@b
    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@d
    .line 374
    if-nez p2, :cond_0

    #@f
    .line 375
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v3, "Parent view may not be null"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 377
    :cond_0
    if-nez p3, :cond_1

    #@1a
    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v3, "Callback may not be null"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 381
    :cond_1
    iput-object p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@25
    .line 382
    iput-object p3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@27
    .line 384
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@2a
    move-result-object v1

    #@2b
    .line 385
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@32
    move-result-object v2

    #@33
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    #@35
    .line 386
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    #@37
    mul-float/2addr v2, v0

    #@38
    const/high16 v3, 0x3f000000    # 0.5f

    #@3a
    add-float/2addr v2, v3

    #@3b
    float-to-int v2, v2

    #@3c
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@3e
    .line 388
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@41
    move-result v2

    #@42
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@44
    .line 389
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@47
    move-result v2

    #@48
    int-to-float v2, v2

    #@49
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@4b
    .line 390
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@4e
    move-result v2

    #@4f
    int-to-float v2, v2

    #@50
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@52
    .line 391
    sget-object v2, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    #@54
    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    #@57
    move-result-object v2

    #@58
    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@5a
    .line 373
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1251
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@4
    move-result v0

    #@5
    .line 1252
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@8
    move-result v1

    #@9
    .line 1254
    .local v1, "absODelta":F
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@b
    aget v3, v3, p3

    #@d
    and-int/2addr v3, p4

    #@e
    if-ne v3, p4, :cond_0

    #@10
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@12
    and-int/2addr v3, p4

    #@13
    if-nez v3, :cond_1

    #@15
    .line 1258
    :cond_0
    return v2

    #@16
    .line 1255
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@18
    aget v3, v3, p3

    #@1a
    and-int/2addr v3, p4

    #@1b
    if-eq v3, p4, :cond_0

    #@1d
    .line 1256
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@1f
    aget v3, v3, p3

    #@21
    and-int/2addr v3, p4

    #@22
    if-eq v3, p4, :cond_0

    #@24
    .line 1257
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@26
    int-to-float v3, v3

    #@27
    cmpg-float v3, v0, v3

    #@29
    if-gtz v3, :cond_2

    #@2b
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@2d
    int-to-float v3, v3

    #@2e
    cmpg-float v3, v1, v3

    #@30
    if-lez v3, :cond_0

    #@32
    .line 1260
    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    #@34
    mul-float/2addr v3, v1

    #@35
    cmpg-float v3, v0, v3

    #@37
    if-gez v3, :cond_3

    #@39
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3b
    invoke-virtual {v3, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_3

    #@41
    .line 1261
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@43
    aget v4, v3, p3

    #@45
    or-int/2addr v4, p4

    #@46
    aput v4, v3, p3

    #@48
    .line 1262
    return v2

    #@49
    .line 1264
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@4b
    aget v3, v3, p3

    #@4d
    and-int/2addr v3, p4

    #@4e
    if-nez v3, :cond_4

    #@50
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@52
    int-to-float v3, v3

    #@53
    cmpl-float v3, v0, v3

    #@55
    if-lez v3, :cond_4

    #@57
    const/4 v2, 0x1

    #@58
    :cond_4
    return v2
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1278
    if-nez p1, :cond_0

    #@4
    .line 1279
    return v3

    #@5
    .line 1281
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@7
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@a
    move-result v4

    #@b
    if-lez v4, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 1282
    .local v0, "checkHorizontal":Z
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@10
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@13
    move-result v4

    #@14
    if-lez v4, :cond_2

    #@16
    const/4 v1, 0x1

    #@17
    .line 1284
    .local v1, "checkVertical":Z
    :goto_1
    if-eqz v0, :cond_4

    #@19
    if-eqz v1, :cond_4

    #@1b
    .line 1285
    mul-float v4, p2, p2

    #@1d
    mul-float v5, p3, p3

    #@1f
    add-float/2addr v4, v5

    #@20
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@22
    iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@24
    mul-int/2addr v5, v6

    #@25
    int-to-float v5, v5

    #@26
    cmpl-float v4, v4, v5

    #@28
    if-lez v4, :cond_3

    #@2a
    :goto_2
    return v2

    #@2b
    .line 1281
    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_1
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "checkHorizontal":Z
    goto :goto_0

    #@2d
    .line 1282
    :cond_2
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "checkVertical":Z
    goto :goto_1

    #@2f
    :cond_3
    move v2, v3

    #@30
    .line 1285
    goto :goto_2

    #@31
    .line 1286
    :cond_4
    if-eqz v0, :cond_6

    #@33
    .line 1287
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@36
    move-result v4

    #@37
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@39
    int-to-float v5, v5

    #@3a
    cmpl-float v4, v4, v5

    #@3c
    if-lez v4, :cond_5

    #@3e
    :goto_3
    return v2

    #@3f
    :cond_5
    move v2, v3

    #@40
    goto :goto_3

    #@41
    .line 1288
    :cond_6
    if-eqz v1, :cond_8

    #@43
    .line 1289
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@46
    move-result v4

    #@47
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@49
    int-to-float v5, v5

    #@4a
    cmpl-float v4, v4, v5

    #@4c
    if-lez v4, :cond_7

    #@4e
    :goto_4
    return v2

    #@4f
    :cond_7
    move v2, v3

    #@50
    goto :goto_4

    #@51
    .line 1291
    :cond_8
    return v3
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 674
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@4
    move-result v0

    #@5
    .line 675
    .local v0, "absValue":F
    cmpg-float v1, v0, p2

    #@7
    if-gez v1, :cond_0

    #@9
    return v2

    #@a
    .line 676
    :cond_0
    cmpl-float v1, v0, p3

    #@c
    if-lez v1, :cond_2

    #@e
    cmpl-float v1, p1, v2

    #@10
    if-lez v1, :cond_1

    #@12
    .end local p3    # "absMax":F
    :goto_0
    return p3

    #@13
    .restart local p3    # "absMax":F
    :cond_1
    neg-float p3, p3

    #@14
    goto :goto_0

    #@15
    .line 677
    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 657
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@4
    move-result v0

    #@5
    .line 658
    .local v0, "absValue":I
    if-ge v0, p2, :cond_0

    #@7
    return v1

    #@8
    .line 659
    :cond_0
    if-le v0, p3, :cond_2

    #@a
    if-lez p1, :cond_1

    #@c
    .end local p3    # "absMax":I
    :goto_0
    return p3

    #@d
    .restart local p3    # "absMax":I
    :cond_1
    neg-int p3, p3

    #@e
    goto :goto_0

    #@f
    .line 660
    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 777
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@4
    if-nez v0, :cond_0

    #@6
    .line 778
    return-void

    #@7
    .line 780
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@c
    .line 781
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@e
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@11
    .line 782
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@13
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@16
    .line 783
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@1b
    .line 784
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@1d
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    #@20
    .line 785
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@22
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    #@25
    .line 786
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@27
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    #@2a
    .line 787
    iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@2c
    .line 776
    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@4
    if-nez v0, :cond_0

    #@6
    .line 792
    return-void

    #@7
    .line 794
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@9
    aput v1, v0, p1

    #@b
    .line 795
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@d
    aput v1, v0, p1

    #@f
    .line 796
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@11
    aput v1, v0, p1

    #@13
    .line 797
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@15
    aput v1, v0, p1

    #@17
    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@19
    aput v2, v0, p1

    #@1b
    .line 799
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@1d
    aput v2, v0, p1

    #@1f
    .line 800
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@21
    aput v2, v0, p1

    #@23
    .line 801
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@25
    const/4 v1, 0x1

    #@26
    shl-int/2addr v1, p1

    #@27
    not-int v1, v1

    #@28
    and-int/2addr v0, v1

    #@29
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@2b
    .line 790
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    #@0
    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    #@2
    const/4 v6, 0x0

    #@3
    .line 625
    if-nez p1, :cond_0

    #@5
    .line 626
    return v6

    #@6
    .line 629
    :cond_0
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    #@b
    move-result v5

    #@c
    .line 630
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    #@e
    .line 631
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@11
    move-result v6

    #@12
    int-to-float v6, v6

    #@13
    int-to-float v7, v5

    #@14
    div-float/2addr v6, v7

    #@15
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    #@18
    move-result v1

    #@19
    .line 632
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    #@1a
    int-to-float v7, v3

    #@1b
    .line 633
    invoke-direct {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    #@1e
    move-result v8

    #@1f
    .line 632
    mul-float/2addr v7, v8

    #@20
    add-float v0, v6, v7

    #@22
    .line 636
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@25
    move-result p2

    #@26
    .line 637
    if-lez p2, :cond_1

    #@28
    .line 638
    int-to-float v6, p2

    #@29
    div-float v6, v0, v6

    #@2b
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@2e
    move-result v6

    #@2f
    const/high16 v7, 0x447a0000    # 1000.0f

    #@31
    mul-float/2addr v6, v7

    #@32
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    #@35
    move-result v6

    #@36
    mul-int/lit8 v2, v6, 0x4

    #@38
    .line 643
    .local v2, "duration":I
    :goto_0
    const/16 v6, 0x258

    #@3a
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v6

    #@3e
    return v6

    #@3f
    .line 640
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@42
    move-result v6

    #@43
    int-to-float v6, v6

    #@44
    int-to-float v7, p3

    #@45
    div-float v4, v6, v7

    #@47
    .line 641
    .local v4, "range":F
    add-float v6, v4, v9

    #@49
    const/high16 v7, 0x43800000    # 256.0f

    #@4b
    mul-float/2addr v6, v7

    #@4c
    float-to-int v2, v6

    #@4d
    .restart local v2    # "duration":I
    goto :goto_0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    #@0
    .prologue
    .line 604
    iget v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    float-to-int v12, v12

    #@3
    iget v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@5
    float-to-int v13, v13

    #@6
    move/from16 v0, p4

    #@8
    invoke-direct {p0, v0, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    #@b
    move-result p4

    #@c
    .line 605
    iget v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@e
    float-to-int v12, v12

    #@f
    iget v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@11
    float-to-int v13, v13

    #@12
    move/from16 v0, p5

    #@14
    invoke-direct {p0, v0, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    #@17
    move-result p5

    #@18
    .line 606
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result v2

    #@1c
    .line 607
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    #@1f
    move-result v3

    #@20
    .line 608
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v4

    #@24
    .line 609
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    #@27
    move-result v5

    #@28
    .line 610
    .local v5, "absYVel":I
    add-int v7, v4, v5

    #@2a
    .line 611
    .local v7, "addedVel":I
    add-int v6, v2, v3

    #@2c
    .line 613
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    #@2e
    int-to-float v12, v4

    #@2f
    int-to-float v13, v7

    #@30
    div-float v9, v12, v13

    #@32
    .line 615
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    #@34
    int-to-float v12, v5

    #@35
    int-to-float v13, v7

    #@36
    div-float v11, v12, v13

    #@38
    .line 618
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3a
    invoke-virtual {v12, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@3d
    move-result v12

    #@3e
    move/from16 v0, p2

    #@40
    move/from16 v1, p4

    #@42
    invoke-direct {p0, v0, v1, v12}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    #@45
    move-result v8

    #@46
    .line 619
    .local v8, "xduration":I
    iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@48
    invoke-virtual {v12, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@4b
    move-result v12

    #@4c
    move/from16 v0, p3

    #@4e
    move/from16 v1, p5

    #@50
    invoke-direct {p0, v0, v1, v12}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    #@53
    move-result v10

    #@54
    .line 621
    .local v10, "yduration":I
    int-to-float v12, v8

    #@55
    mul-float/2addr v12, v9

    #@56
    int-to-float v13, v10

    #@57
    mul-float/2addr v13, v11

    #@58
    add-float/2addr v12, v13

    #@59
    float-to-int v12, v12

    #@5a
    return v12

    #@5b
    .line 614
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    #@5c
    int-to-float v13, v6

    #@5d
    div-float v9, v12, v13

    #@5f
    .restart local v9    # "xweight":F
    goto :goto_0

    #@60
    .line 616
    :cond_1
    int-to-float v12, v3

    #@61
    int-to-float v13, v6

    #@62
    div-float v11, v12, v13

    #@64
    .restart local v11    # "yweight":F
    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@0
    .prologue
    .line 360
    invoke-static {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@3
    move-result-object v0

    #@4
    .line 361
    .local v0, "helper":Landroid/support/v4/widget/ViewDragHelper;
    iget v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@6
    int-to-float v1, v1

    #@7
    const/high16 v2, 0x3f800000    # 1.0f

    #@9
    div-float/2addr v2, p1

    #@a
    mul-float/2addr v1, v2

    #@b
    float-to-int v1, v1

    #@c
    iput v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@e
    .line 362
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@0
    .prologue
    .line 347
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper;

    #@2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V

    #@9
    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 766
    iput-boolean v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@4
    .line 767
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@6
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@8
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    #@b
    .line 768
    iput-boolean v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@d
    .line 770
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@f
    if-ne v0, v3, :cond_0

    #@11
    .line 772
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@14
    .line 765
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    #@0
    .prologue
    .line 681
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    .line 682
    float-to-double v0, p1

    #@4
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    #@9
    mul-double/2addr v0, v2

    #@a
    double-to-float p1, v0

    #@b
    .line 683
    float-to-double v0, p1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@f
    move-result-wide v0

    #@10
    double-to-float v0, v0

    #@11
    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    #@0
    .prologue
    .line 1399
    move v2, p1

    #@1
    .line 1400
    .local v2, "clampedX":I
    move v3, p2

    #@2
    .line 1401
    .local v3, "clampedY":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@7
    move-result v6

    #@8
    .line 1402
    .local v6, "oldLeft":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@d
    move-result v7

    #@e
    .line 1403
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    #@10
    .line 1404
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@12
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@14
    invoke-virtual {v0, v1, p1, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    #@17
    move-result v2

    #@18
    .line 1405
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@1a
    sub-int v1, v2, v6

    #@1c
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1f
    .line 1407
    :cond_0
    if-eqz p4, :cond_1

    #@21
    .line 1408
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@23
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@25
    invoke-virtual {v0, v1, p2, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    #@28
    move-result v3

    #@29
    .line 1409
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2b
    sub-int v1, v3, v7

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@30
    .line 1412
    :cond_1
    if-nez p3, :cond_2

    #@32
    if-eqz p4, :cond_3

    #@34
    .line 1413
    :cond_2
    sub-int v4, v2, v6

    #@36
    .line 1414
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    #@38
    .line 1415
    .local v5, "clampedDy":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3a
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3c
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@3f
    .line 1398
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 805
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@3
    if-eqz v7, :cond_0

    #@5
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@7
    array-length v7, v7

    #@8
    if-gt v7, p1, :cond_2

    #@a
    .line 806
    :cond_0
    add-int/lit8 v7, p1, 0x1

    #@c
    new-array v3, v7, [F

    #@e
    .line 807
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    #@10
    new-array v4, v7, [F

    #@12
    .line 808
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    #@14
    new-array v5, v7, [F

    #@16
    .line 809
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    #@18
    new-array v6, v7, [F

    #@1a
    .line 810
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    #@1c
    new-array v2, v7, [I

    #@1e
    .line 811
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    #@20
    new-array v0, v7, [I

    #@22
    .line 812
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    #@24
    new-array v1, v7, [I

    #@26
    .line 814
    .local v1, "edl":[I
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@28
    if-eqz v7, :cond_1

    #@2a
    .line 815
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2e
    array-length v8, v8

    #@2f
    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    .line 816
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@34
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@36
    array-length v8, v8

    #@37
    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 817
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@3c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@3e
    array-length v8, v8

    #@3f
    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@42
    .line 818
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@44
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@46
    array-length v8, v8

    #@47
    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4a
    .line 819
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@4c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@4e
    array-length v8, v8

    #@4f
    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@52
    .line 820
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@54
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@56
    array-length v8, v8

    #@57
    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    .line 821
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@5c
    iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@5e
    array-length v8, v8

    #@5f
    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@62
    .line 824
    :cond_1
    iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@64
    .line 825
    iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@66
    .line 826
    iput-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@68
    .line 827
    iput-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@6a
    .line 828
    iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@6c
    .line 829
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@6e
    .line 830
    iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    #@70
    .line 804
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 584
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@6
    move-result v10

    #@7
    .line 585
    .local v10, "startLeft":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@c
    move-result v6

    #@d
    .line 586
    .local v6, "startTop":I
    sub-int v2, p1, v10

    #@f
    .line 587
    .local v2, "dx":I
    sub-int v3, p2, v6

    #@11
    .line 589
    .local v3, "dy":I
    if-nez v2, :cond_0

    #@13
    if-nez v3, :cond_0

    #@15
    .line 591
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@17
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@1a
    .line 592
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@1d
    .line 593
    return v1

    #@1e
    .line 596
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@20
    move-object v0, p0

    #@21
    move v4, p3

    #@22
    move v5, p4

    #@23
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    #@26
    move-result v9

    #@27
    .line 597
    .local v9, "duration":I
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@29
    move v5, v10

    #@2a
    move v7, v2

    #@2b
    move v8, v3

    #@2c
    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    #@2f
    .line 599
    const/4 v0, 0x2

    #@30
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@33
    .line 600
    const/4 v0, 0x1

    #@34
    return v0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1473
    const/4 v0, 0x0

    #@1
    .line 1475
    .local v0, "result":I
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    #@6
    move-result v1

    #@7
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@9
    add-int/2addr v1, v2

    #@a
    if-ge p1, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 1476
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    #@12
    move-result v1

    #@13
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@15
    add-int/2addr v1, v2

    #@16
    if-ge p2, v1, :cond_1

    #@18
    or-int/lit8 v0, v0, 0x4

    #@1a
    .line 1477
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    #@1f
    move-result v1

    #@20
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@22
    sub-int/2addr v1, v2

    #@23
    if-le p1, v1, :cond_2

    #@25
    or-int/lit8 v0, v0, 0x2

    #@27
    .line 1478
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@29
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    #@2c
    move-result v1

    #@2d
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@2f
    sub-int/2addr v1, v2

    #@30
    if-le p2, v1, :cond_3

    #@32
    or-int/lit8 v0, v0, 0x8

    #@34
    .line 1480
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    #@0
    .prologue
    .line 1388
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@4
    const/16 v4, 0x3e8

    #@6
    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@9
    .line 1390
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@d
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@10
    move-result v2

    #@11
    .line 1391
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@13
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@15
    .line 1389
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    #@18
    move-result v0

    #@19
    .line 1393
    .local v0, "xvel":F
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@1d
    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@20
    move-result v2

    #@21
    .line 1394
    iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@23
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    #@25
    .line 1392
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    #@28
    move-result v1

    #@29
    .line 1395
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    #@2c
    .line 1387
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    #@0
    .prologue
    .line 1230
    const/4 v0, 0x0

    #@1
    .line 1231
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1232
    const/4 v0, 0x1

    #@9
    .line 1234
    :cond_0
    const/4 v1, 0x4

    #@a
    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1235
    or-int/lit8 v0, v0, 0x4

    #@12
    .line 1237
    :cond_1
    const/4 v1, 0x2

    #@13
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1238
    or-int/lit8 v0, v0, 0x2

    #@1b
    .line 1240
    :cond_2
    const/16 v1, 0x8

    #@1d
    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 1241
    or-int/lit8 v0, v0, 0x8

    #@25
    .line 1244
    :cond_3
    if-eqz v0, :cond_4

    #@27
    .line 1245
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    #@29
    aget v2, v1, p3

    #@2b
    or-int/2addr v2, v0

    #@2c
    aput v2, v1, p3

    #@2e
    .line 1246
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@30
    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    #@33
    .line 1229
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    #@0
    .prologue
    .line 835
    invoke-direct {p0, p3}, Landroid/support/v4/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    #@3
    .line 836
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@5
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@7
    aput p1, v1, p3

    #@9
    aput p1, v0, p3

    #@b
    .line 837
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@d
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@f
    aput p2, v1, p3

    #@11
    aput p2, v0, p3

    #@13
    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@15
    float-to-int v1, p1

    #@16
    float-to-int v2, p2

    #@17
    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgesTouched(II)I

    #@1a
    move-result v1

    #@1b
    aput v1, v0, p3

    #@1d
    .line 839
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@1f
    const/4 v1, 0x1

    #@20
    shl-int/2addr v1, p3

    #@21
    or-int/2addr v0, v1

    #@22
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@24
    .line 834
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 843
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@3
    move-result v1

    #@4
    .line 844
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 845
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@a
    move-result v2

    #@b
    .line 846
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@e
    move-result v3

    #@f
    .line 847
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@12
    move-result v4

    #@13
    .line 848
    .local v4, "y":F
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@15
    aput v3, v5, v2

    #@17
    .line 849
    iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@19
    aput v4, v5, v2

    #@1b
    .line 844
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 842
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    #@0
    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@3
    .line 513
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 514
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@d
    move-result v6

    #@e
    .line 515
    .local v6, "oldX":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@10
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@13
    move-result v7

    #@14
    .line 516
    .local v7, "oldY":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@16
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@19
    .line 517
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@1e
    move-result v2

    #@1f
    .line 518
    .local v2, "newX":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@21
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@24
    move-result v3

    #@25
    .line 519
    .local v3, "newY":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@27
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@29
    sub-int v4, v2, v6

    #@2b
    sub-int v5, v3, v7

    #@2d
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@30
    .line 521
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    #@31
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@34
    .line 511
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    #@0
    .prologue
    .line 916
    instance-of v1, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v1, :cond_1

    #@4
    move-object v9, p1

    #@5
    .line 917
    check-cast v9, Landroid/view/ViewGroup;

    #@7
    .line 918
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v11

    #@b
    .line 919
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v12

    #@f
    .line 920
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v8

    #@13
    .line 922
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    #@15
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    #@17
    .line 925
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    .line 926
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    #@1d
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@20
    move-result v3

    #@21
    if-lt v1, v3, :cond_0

    #@23
    add-int v1, p5, v11

    #@25
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@28
    move-result v3

    #@29
    if-ge v1, v3, :cond_0

    #@2b
    .line 927
    add-int v1, p6, v12

    #@2d
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@30
    move-result v3

    #@31
    if-lt v1, v3, :cond_0

    #@33
    add-int v1, p6, v12

    #@35
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@38
    move-result v3

    #@39
    if-ge v1, v3, :cond_0

    #@3b
    .line 928
    add-int v1, p5, v11

    #@3d
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@40
    move-result v3

    #@41
    sub-int v6, v1, v3

    #@43
    .line 929
    add-int v1, p6, v12

    #@45
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@48
    move-result v3

    #@49
    sub-int v7, v1, v3

    #@4b
    .line 928
    const/4 v3, 0x1

    #@4c
    move-object v1, p0

    #@4d
    move/from16 v4, p3

    #@4f
    move/from16 v5, p4

    #@51
    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    #@54
    move-result v1

    #@55
    .line 926
    if-eqz v1, :cond_0

    #@57
    .line 930
    const/4 v1, 0x1

    #@58
    return v1

    #@59
    .line 922
    :cond_0
    add-int/lit8 v10, v10, -0x1

    #@5b
    goto :goto_0

    #@5c
    .line 935
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    #@5e
    move/from16 v0, p3

    #@60
    neg-int v1, v0

    #@61
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    #@64
    move-result v1

    #@65
    if-nez v1, :cond_2

    #@67
    .line 936
    move/from16 v0, p4

    #@69
    neg-int v1, v0

    #@6a
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    #@6d
    move-result v1

    #@6e
    .line 935
    :goto_1
    return v1

    #@6f
    :cond_2
    const/4 v1, 0x1

    #@70
    goto :goto_1

    #@71
    :cond_3
    const/4 v1, 0x0

    #@72
    goto :goto_1
.end method

.method public cancel()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 498
    const/4 v0, -0x1

    #@2
    iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@4
    .line 499
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory()V

    #@7
    .line 501
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@10
    .line 503
    iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@12
    .line 497
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    #@0
    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 462
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@18
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 462
    const-string/jumbo v2, ")"

    #@1f
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 465
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2d
    .line 466
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@2f
    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@31
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    #@34
    .line 468
    const/4 v0, 0x1

    #@35
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@38
    .line 459
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    #@0
    .prologue
    .line 1309
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@2
    array-length v0, v2

    #@3
    .line 1310
    .local v0, "count":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6
    .line 1311
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1312
    const/4 v2, 0x1

    #@d
    return v2

    #@e
    .line 1310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1315
    :cond_1
    const/4 v2, 0x0

    #@12
    return v2
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1334
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    #@5
    move-result v6

    #@6
    if-nez v6, :cond_0

    #@8
    .line 1335
    return v5

    #@9
    .line 1338
    :cond_0
    and-int/lit8 v6, p1, 0x1

    #@b
    if-ne v6, v4, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 1339
    .local v0, "checkHorizontal":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    #@10
    const/4 v7, 0x2

    #@11
    if-ne v6, v7, :cond_2

    #@13
    const/4 v1, 0x1

    #@14
    .line 1341
    .local v1, "checkVertical":Z
    :goto_1
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@16
    aget v6, v6, p2

    #@18
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@1a
    aget v7, v7, p2

    #@1c
    sub-float v2, v6, v7

    #@1e
    .line 1342
    .local v2, "dx":F
    iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@20
    aget v6, v6, p2

    #@22
    iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@24
    aget v7, v7, p2

    #@26
    sub-float v3, v6, v7

    #@28
    .line 1344
    .local v3, "dy":F
    if-eqz v0, :cond_4

    #@2a
    if-eqz v1, :cond_4

    #@2c
    .line 1345
    mul-float v6, v2, v2

    #@2e
    mul-float v7, v3, v3

    #@30
    add-float/2addr v6, v7

    #@31
    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@33
    iget v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@35
    mul-int/2addr v7, v8

    #@36
    int-to-float v7, v7

    #@37
    cmpl-float v6, v6, v7

    #@39
    if-lez v6, :cond_3

    #@3b
    :goto_2
    return v4

    #@3c
    .line 1338
    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_1
    const/4 v0, 0x0

    #@3d
    .restart local v0    # "checkHorizontal":Z
    goto :goto_0

    #@3e
    .line 1339
    :cond_2
    const/4 v1, 0x0

    #@3f
    .restart local v1    # "checkVertical":Z
    goto :goto_1

    #@40
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_3
    move v4, v5

    #@41
    .line 1345
    goto :goto_2

    #@42
    .line 1346
    :cond_4
    if-eqz v0, :cond_6

    #@44
    .line 1347
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@47
    move-result v6

    #@48
    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@4a
    int-to-float v7, v7

    #@4b
    cmpl-float v6, v6, v7

    #@4d
    if-lez v6, :cond_5

    #@4f
    :goto_3
    return v4

    #@50
    :cond_5
    move v4, v5

    #@51
    goto :goto_3

    #@52
    .line 1348
    :cond_6
    if-eqz v1, :cond_8

    #@54
    .line 1349
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@57
    move-result v6

    #@58
    iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@5a
    int-to-float v7, v7

    #@5b
    cmpl-float v6, v6, v7

    #@5d
    if-lez v6, :cond_7

    #@5f
    :goto_4
    return v4

    #@60
    :cond_7
    move v4, v5

    #@61
    goto :goto_4

    #@62
    .line 1351
    :cond_8
    return v5
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 722
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@4
    if-ne v0, v8, :cond_5

    #@6
    .line 723
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    #@b
    move-result v6

    #@c
    .line 724
    .local v6, "keepGoing":Z
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    #@11
    move-result v2

    #@12
    .line 725
    .local v2, "x":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@14
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    #@17
    move-result v3

    #@18
    .line 726
    .local v3, "y":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@1d
    move-result v0

    #@1e
    sub-int v4, v2, v0

    #@20
    .line 727
    .local v4, "dx":I
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@25
    move-result v0

    #@26
    sub-int v5, v3, v0

    #@28
    .line 729
    .local v5, "dy":I
    if-eqz v4, :cond_0

    #@2a
    .line 730
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2c
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@2f
    .line 732
    :cond_0
    if-eqz v5, :cond_1

    #@31
    .line 733
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@33
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@36
    .line 736
    :cond_1
    if-nez v4, :cond_2

    #@38
    if-eqz v5, :cond_3

    #@3a
    .line 737
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@3c
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3e
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    #@41
    .line 740
    :cond_3
    if-eqz v6, :cond_4

    #@43
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@45
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    #@48
    move-result v0

    #@49
    if-ne v2, v0, :cond_4

    #@4b
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@4d
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    #@50
    move-result v0

    #@51
    if-ne v3, v0, :cond_4

    #@53
    .line 743
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@55
    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    #@58
    .line 744
    const/4 v6, 0x0

    #@59
    .line 747
    .end local v6    # "keepGoing":Z
    :cond_4
    if-nez v6, :cond_5

    #@5b
    .line 748
    if-eqz p1, :cond_6

    #@5d
    .line 749
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@5f
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    #@64
    .line 756
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_5
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@66
    if-ne v0, v8, :cond_7

    #@68
    const/4 v0, 0x1

    #@69
    :goto_1
    return v0

    #@6a
    .line 751
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    :cond_6
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@6d
    goto :goto_0

    #@6e
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_7
    move v0, v7

    #@6f
    .line 756
    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1461
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v1

    #@6
    .line 1462
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 1463
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@c
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@e
    invoke-virtual {v4, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    #@11
    move-result v4

    #@12
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    .line 1464
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@19
    move-result v3

    #@1a
    if-lt p1, v3, :cond_0

    #@1c
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@1f
    move-result v3

    #@20
    if-ge p1, v3, :cond_0

    #@22
    .line 1465
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@25
    move-result v3

    #@26
    if-lt p2, v3, :cond_0

    #@28
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@2b
    move-result v3

    #@2c
    if-ge p2, v3, :cond_0

    #@2e
    .line 1466
    return-object v0

    #@2f
    .line 1462
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_0

    #@32
    .line 1469
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    #@33
    return-object v3
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    #@0
    .prologue
    .line 697
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 698
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 702
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    #@f
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@11
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@14
    move-result v1

    #@15
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@17
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@1a
    move-result v2

    #@1b
    .line 703
    iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@1f
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@22
    move-result v3

    #@23
    float-to-int v3, v3

    #@24
    .line 704
    iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@26
    iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@28
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@2b
    move-result v4

    #@2c
    float-to-int v4, v4

    #@2d
    move v5, p1

    #@2e
    move v6, p3

    #@2f
    move v7, p2

    #@30
    move v8, p4

    #@31
    .line 702
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    #@34
    .line 707
    const/4 v0, 0x2

    #@35
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    #@38
    .line 696
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    #@0
    .prologue
    .line 483
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@2
    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    #@0
    .prologue
    .line 448
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    #@2
    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    #@0
    .prologue
    .line 412
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    #@0
    .prologue
    .line 490
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    #@2
    return v0
.end method

.method public getViewDragState()I
    .locals 1

    #@0
    .prologue
    .line 421
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@2
    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1430
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    #@0
    .prologue
    .line 1364
    iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@2
    array-length v0, v2

    #@3
    .line 1365
    .local v0, "count":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6
    .line 1366
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1367
    const/4 v2, 0x1

    #@d
    return v2

    #@e
    .line 1365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1370
    :cond_1
    const/4 v2, 0x0

    #@12
    return v2
.end method

.method public isEdgeTouched(II)Z
    .locals 2
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1384
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@9
    aget v1, v1, p2

    #@b
    and-int/2addr v1, p1

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public isPointerDown(I)Z
    .locals 4
    .param p1, "pointerId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 867
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    #@4
    shl-int v3, v0, p1

    #@6
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    move v0, v1

    #@b
    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1443
    if-nez p1, :cond_0

    #@3
    .line 1444
    return v0

    #@4
    .line 1446
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@7
    move-result v1

    #@8
    if-lt p2, v1, :cond_1

    #@a
    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@d
    move-result v1

    #@e
    if-ge p2, v1, :cond_1

    #@10
    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@13
    move-result v1

    #@14
    if-lt p3, v1, :cond_1

    #@16
    .line 1449
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@19
    move-result v1

    #@1a
    if-ge p3, v1, :cond_1

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 1446
    :cond_1
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1079
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@3
    move-result v3

    #@4
    .line 1080
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@7
    move-result v4

    #@8
    .line 1082
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    #@a
    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@d
    .line 1088
    :cond_0
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    move-object/from16 v19, v0

    #@13
    if-nez v19, :cond_1

    #@15
    .line 1089
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v19

    #@19
    move-object/from16 v0, v19

    #@1b
    move-object/from16 v1, p0

    #@1d
    iput-object v0, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1f
    .line 1091
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@23
    move-object/from16 v19, v0

    #@25
    move-object/from16 v0, v19

    #@27
    move-object/from16 v1, p1

    #@29
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2c
    .line 1093
    packed-switch v3, :pswitch_data_0

    #@2f
    .line 1078
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    #@30
    .line 1095
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@33
    move-result v17

    #@34
    .line 1096
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@37
    move-result v18

    #@38
    .line 1097
    .local v18, "y":F
    const/16 v19, 0x0

    #@3a
    move-object/from16 v0, p1

    #@3c
    move/from16 v1, v19

    #@3e
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@41
    move-result v15

    #@42
    .line 1098
    .local v15, "pointerId":I
    move/from16 v0, v17

    #@44
    float-to-int v0, v0

    #@45
    move/from16 v19, v0

    #@47
    move/from16 v0, v18

    #@49
    float-to-int v0, v0

    #@4a
    move/from16 v20, v0

    #@4c
    move-object/from16 v0, p0

    #@4e
    move/from16 v1, v19

    #@50
    move/from16 v2, v20

    #@52
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@55
    move-result-object v16

    #@56
    .line 1100
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    #@58
    move/from16 v1, v17

    #@5a
    move/from16 v2, v18

    #@5c
    invoke-direct {v0, v1, v2, v15}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@5f
    .line 1105
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, v16

    #@63
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@66
    .line 1107
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@6a
    move-object/from16 v19, v0

    #@6c
    aget v7, v19, v15

    #@6e
    .line 1108
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    #@70
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@72
    move/from16 v19, v0

    #@74
    and-int v19, v19, v7

    #@76
    if-eqz v19, :cond_2

    #@78
    .line 1109
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@7c
    move-object/from16 v19, v0

    #@7e
    move-object/from16 v0, p0

    #@80
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@82
    move/from16 v20, v0

    #@84
    and-int v20, v20, v7

    #@86
    move-object/from16 v0, v19

    #@88
    move/from16 v1, v20

    #@8a
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@8d
    goto :goto_0

    #@8e
    .line 1115
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    #@90
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@93
    move-result v15

    #@94
    .line 1116
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    #@96
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@99
    move-result v17

    #@9a
    .line 1117
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    #@9c
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@9f
    move-result v18

    #@a0
    .line 1119
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, v17

    #@a4
    move/from16 v2, v18

    #@a6
    invoke-direct {v0, v1, v2, v15}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@a9
    .line 1122
    move-object/from16 v0, p0

    #@ab
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@ad
    move/from16 v19, v0

    #@af
    if-nez v19, :cond_3

    #@b1
    .line 1125
    move/from16 v0, v17

    #@b3
    float-to-int v0, v0

    #@b4
    move/from16 v19, v0

    #@b6
    move/from16 v0, v18

    #@b8
    float-to-int v0, v0

    #@b9
    move/from16 v20, v0

    #@bb
    move-object/from16 v0, p0

    #@bd
    move/from16 v1, v19

    #@bf
    move/from16 v2, v20

    #@c1
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@c4
    move-result-object v16

    #@c5
    .line 1126
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    #@c7
    move-object/from16 v1, v16

    #@c9
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@cc
    .line 1128
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@d0
    move-object/from16 v19, v0

    #@d2
    aget v7, v19, v15

    #@d4
    .line 1129
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    #@d6
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@d8
    move/from16 v19, v0

    #@da
    and-int v19, v19, v7

    #@dc
    if-eqz v19, :cond_2

    #@de
    .line 1130
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@e2
    move-object/from16 v19, v0

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@e8
    move/from16 v20, v0

    #@ea
    and-int v20, v20, v7

    #@ec
    move-object/from16 v0, v19

    #@ee
    move/from16 v1, v20

    #@f0
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 1132
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    #@f7
    float-to-int v0, v0

    #@f8
    move/from16 v19, v0

    #@fa
    move/from16 v0, v18

    #@fc
    float-to-int v0, v0

    #@fd
    move/from16 v20, v0

    #@ff
    move-object/from16 v0, p0

    #@101
    move/from16 v1, v19

    #@103
    move/from16 v2, v20

    #@105
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    #@108
    move-result v19

    #@109
    if-eqz v19, :cond_2

    #@10b
    .line 1137
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@10f
    move-object/from16 v19, v0

    #@111
    move-object/from16 v0, p0

    #@113
    move-object/from16 v1, v19

    #@115
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@118
    goto/16 :goto_0

    #@11a
    .line 1143
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    #@11c
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@11e
    move/from16 v19, v0

    #@120
    const/16 v20, 0x1

    #@122
    move/from16 v0, v19

    #@124
    move/from16 v1, v20

    #@126
    if-ne v0, v1, :cond_4

    #@128
    .line 1144
    move-object/from16 v0, p0

    #@12a
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@12c
    move/from16 v19, v0

    #@12e
    move-object/from16 v0, p1

    #@130
    move/from16 v1, v19

    #@132
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@135
    move-result v12

    #@136
    .line 1145
    .local v12, "index":I
    move-object/from16 v0, p1

    #@138
    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@13b
    move-result v17

    #@13c
    .line 1146
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    #@13e
    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@141
    move-result v18

    #@142
    .line 1147
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    #@146
    move-object/from16 v19, v0

    #@148
    move-object/from16 v0, p0

    #@14a
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@14c
    move/from16 v20, v0

    #@14e
    aget v19, v19, v20

    #@150
    sub-float v19, v17, v19

    #@152
    move/from16 v0, v19

    #@154
    float-to-int v10, v0

    #@155
    .line 1148
    .local v10, "idx":I
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    #@159
    move-object/from16 v19, v0

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@15f
    move/from16 v20, v0

    #@161
    aget v19, v19, v20

    #@163
    sub-float v19, v18, v19

    #@165
    move/from16 v0, v19

    #@167
    float-to-int v11, v0

    #@168
    .line 1150
    .local v11, "idy":I
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@16c
    move-object/from16 v19, v0

    #@16e
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    #@171
    move-result v19

    #@172
    add-int v19, v19, v10

    #@174
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@178
    move-object/from16 v20, v0

    #@17a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    #@17d
    move-result v20

    #@17e
    add-int v20, v20, v11

    #@180
    move-object/from16 v0, p0

    #@182
    move/from16 v1, v19

    #@184
    move/from16 v2, v20

    #@186
    invoke-direct {v0, v1, v2, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->dragTo(IIII)V

    #@189
    .line 1152
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@18c
    goto/16 :goto_0

    #@18e
    .line 1155
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@191
    move-result v14

    #@192
    .line 1156
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    #@193
    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    #@195
    .line 1157
    move-object/from16 v0, p1

    #@197
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@19a
    move-result v15

    #@19b
    .line 1158
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    #@19d
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@1a0
    move-result v17

    #@1a1
    .line 1159
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    #@1a3
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@1a6
    move-result v18

    #@1a7
    .line 1160
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@1ab
    move-object/from16 v19, v0

    #@1ad
    aget v19, v19, v15

    #@1af
    sub-float v5, v17, v19

    #@1b1
    .line 1161
    .local v5, "dx":F
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@1b5
    move-object/from16 v19, v0

    #@1b7
    aget v19, v19, v15

    #@1b9
    sub-float v6, v18, v19

    #@1bb
    .line 1163
    .local v6, "dy":F
    move-object/from16 v0, p0

    #@1bd
    invoke-direct {v0, v5, v6, v15}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    #@1c0
    .line 1164
    move-object/from16 v0, p0

    #@1c2
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@1c4
    move/from16 v19, v0

    #@1c6
    const/16 v20, 0x1

    #@1c8
    move/from16 v0, v19

    #@1ca
    move/from16 v1, v20

    #@1cc
    if-ne v0, v1, :cond_6

    #@1ce
    .line 1175
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@1d1
    goto/16 :goto_0

    #@1d3
    .line 1169
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    #@1d5
    float-to-int v0, v0

    #@1d6
    move/from16 v19, v0

    #@1d8
    move/from16 v0, v18

    #@1da
    float-to-int v0, v0

    #@1db
    move/from16 v20, v0

    #@1dd
    move-object/from16 v0, p0

    #@1df
    move/from16 v1, v19

    #@1e1
    move/from16 v2, v20

    #@1e3
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@1e6
    move-result-object v16

    #@1e7
    .line 1170
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    #@1e9
    move-object/from16 v1, v16

    #@1eb
    invoke-direct {v0, v1, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    #@1ee
    move-result v19

    #@1ef
    if-eqz v19, :cond_7

    #@1f1
    .line 1171
    move-object/from16 v0, p0

    #@1f3
    move-object/from16 v1, v16

    #@1f5
    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@1f8
    move-result v19

    #@1f9
    .line 1170
    if-nez v19, :cond_5

    #@1fb
    .line 1156
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@1fd
    goto :goto_1

    #@1fe
    .line 1181
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    #@200
    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@203
    move-result v15

    #@204
    .line 1182
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    #@206
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@208
    move/from16 v19, v0

    #@20a
    const/16 v20, 0x1

    #@20c
    move/from16 v0, v19

    #@20e
    move/from16 v1, v20

    #@210
    if-ne v0, v1, :cond_b

    #@212
    move-object/from16 v0, p0

    #@214
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@216
    move/from16 v19, v0

    #@218
    move/from16 v0, v19

    #@21a
    if-ne v15, v0, :cond_b

    #@21c
    .line 1184
    const/4 v13, -0x1

    #@21d
    .line 1185
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@220
    move-result v14

    #@221
    .line 1186
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    #@222
    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    #@224
    .line 1187
    move-object/from16 v0, p1

    #@226
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@229
    move-result v9

    #@22a
    .line 1188
    .local v9, "id":I
    move-object/from16 v0, p0

    #@22c
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@22e
    move/from16 v19, v0

    #@230
    move/from16 v0, v19

    #@232
    if-ne v9, v0, :cond_9

    #@234
    .line 1186
    :cond_8
    add-int/lit8 v8, v8, 0x1

    #@236
    goto :goto_2

    #@237
    .line 1193
    :cond_9
    move-object/from16 v0, p1

    #@239
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@23c
    move-result v17

    #@23d
    .line 1194
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    #@23f
    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@242
    move-result v18

    #@243
    .line 1195
    .restart local v18    # "y":F
    move/from16 v0, v17

    #@245
    float-to-int v0, v0

    #@246
    move/from16 v19, v0

    #@248
    move/from16 v0, v18

    #@24a
    float-to-int v0, v0

    #@24b
    move/from16 v20, v0

    #@24d
    move-object/from16 v0, p0

    #@24f
    move/from16 v1, v19

    #@251
    move/from16 v2, v20

    #@253
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@256
    move-result-object v19

    #@257
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@25b
    move-object/from16 v20, v0

    #@25d
    move-object/from16 v0, v19

    #@25f
    move-object/from16 v1, v20

    #@261
    if-ne v0, v1, :cond_8

    #@263
    .line 1196
    move-object/from16 v0, p0

    #@265
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@267
    move-object/from16 v19, v0

    #@269
    move-object/from16 v0, p0

    #@26b
    move-object/from16 v1, v19

    #@26d
    invoke-virtual {v0, v1, v9}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@270
    move-result v19

    #@271
    .line 1195
    if-eqz v19, :cond_8

    #@273
    .line 1197
    move-object/from16 v0, p0

    #@275
    iget v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@277
    .line 1202
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    #@279
    move/from16 v0, v19

    #@27b
    if-ne v13, v0, :cond_b

    #@27d
    .line 1204
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    #@280
    .line 1207
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    #@282
    invoke-direct {v0, v15}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    #@285
    goto/16 :goto_0

    #@287
    .line 1212
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    #@289
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@28b
    move/from16 v19, v0

    #@28d
    const/16 v20, 0x1

    #@28f
    move/from16 v0, v19

    #@291
    move/from16 v1, v20

    #@293
    if-ne v0, v1, :cond_c

    #@295
    .line 1213
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    #@298
    .line 1215
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@29b
    goto/16 :goto_0

    #@29d
    .line 1220
    :pswitch_6
    move-object/from16 v0, p0

    #@29f
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@2a1
    move/from16 v19, v0

    #@2a3
    const/16 v20, 0x1

    #@2a5
    move/from16 v0, v19

    #@2a7
    move/from16 v1, v20

    #@2a9
    if-ne v0, v1, :cond_d

    #@2ab
    .line 1221
    const/16 v19, 0x0

    #@2ad
    const/16 v20, 0x0

    #@2af
    move-object/from16 v0, p0

    #@2b1
    move/from16 v1, v19

    #@2b3
    move/from16 v2, v20

    #@2b5
    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    #@2b8
    .line 1223
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@2bb
    goto/16 :goto_0

    #@2bd
    .line 1093
    nop

    #@2be
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 872
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@9
    if-eq v0, p1, :cond_0

    #@b
    .line 873
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@d
    .line 874
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@f
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    #@12
    .line 875
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@14
    if-nez v0, :cond_0

    #@16
    .line 876
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@19
    .line 870
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    #@0
    .prologue
    .line 437
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@2
    .line 436
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    #@0
    .prologue
    .line 401
    iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    #@2
    .line 400
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    #@0
    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 570
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@f
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@11
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@14
    move-result v0

    #@15
    float-to-int v0, v0

    #@16
    .line 571
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@18
    iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@1a
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    #@1d
    move-result v1

    #@1e
    float-to-int v1, v1

    #@1f
    .line 569
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 947
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@3
    move-result v4

    #@4
    .line 948
    .local v4, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@7
    move-result v5

    #@8
    .line 950
    .local v5, "actionIndex":I
    if-nez v4, :cond_0

    #@a
    .line 953
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@d
    .line 956
    :cond_0
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    move-object/from16 v24, v0

    #@13
    if-nez v24, :cond_1

    #@15
    .line 957
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v24

    #@19
    move-object/from16 v0, v24

    #@1b
    move-object/from16 v1, p0

    #@1d
    iput-object v0, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1f
    .line 959
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@23
    move-object/from16 v24, v0

    #@25
    move-object/from16 v0, v24

    #@27
    move-object/from16 v1, p1

    #@29
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2c
    .line 961
    packed-switch v4, :pswitch_data_0

    #@2f
    .line 1069
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@31
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@33
    move/from16 v24, v0

    #@35
    const/16 v25, 0x1

    #@37
    move/from16 v0, v24

    #@39
    move/from16 v1, v25

    #@3b
    if-ne v0, v1, :cond_a

    #@3d
    const/16 v24, 0x1

    #@3f
    :goto_1
    return v24

    #@40
    .line 963
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@43
    move-result v22

    #@44
    .line 964
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@47
    move-result v23

    #@48
    .line 965
    .local v23, "y":F
    const/16 v24, 0x0

    #@4a
    move-object/from16 v0, p1

    #@4c
    move/from16 v1, v24

    #@4e
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@51
    move-result v17

    #@52
    .line 966
    .local v17, "pointerId":I
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v22

    #@56
    move/from16 v2, v23

    #@58
    move/from16 v3, v17

    #@5a
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@5d
    .line 968
    move/from16 v0, v22

    #@5f
    float-to-int v0, v0

    #@60
    move/from16 v24, v0

    #@62
    move/from16 v0, v23

    #@64
    float-to-int v0, v0

    #@65
    move/from16 v25, v0

    #@67
    move-object/from16 v0, p0

    #@69
    move/from16 v1, v24

    #@6b
    move/from16 v2, v25

    #@6d
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@70
    move-result-object v20

    #@71
    .line 971
    .local v20, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@75
    move-object/from16 v24, v0

    #@77
    move-object/from16 v0, v20

    #@79
    move-object/from16 v1, v24

    #@7b
    if-ne v0, v1, :cond_3

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@81
    move/from16 v24, v0

    #@83
    const/16 v25, 0x2

    #@85
    move/from16 v0, v24

    #@87
    move/from16 v1, v25

    #@89
    if-ne v0, v1, :cond_3

    #@8b
    .line 972
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, v20

    #@8f
    move/from16 v2, v17

    #@91
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@94
    .line 975
    :cond_3
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@98
    move-object/from16 v24, v0

    #@9a
    aget v8, v24, v17

    #@9c
    .line 976
    .local v8, "edgesTouched":I
    move-object/from16 v0, p0

    #@9e
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@a0
    move/from16 v24, v0

    #@a2
    and-int v24, v24, v8

    #@a4
    if-eqz v24, :cond_2

    #@a6
    .line 977
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@aa
    move-object/from16 v24, v0

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@b0
    move/from16 v25, v0

    #@b2
    and-int v25, v25, v8

    #@b4
    move-object/from16 v0, v24

    #@b6
    move/from16 v1, v25

    #@b8
    move/from16 v2, v17

    #@ba
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@bd
    goto/16 :goto_0

    #@bf
    .line 983
    .end local v8    # "edgesTouched":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    #@c1
    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@c4
    move-result v17

    #@c5
    .line 984
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    #@c7
    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@ca
    move-result v22

    #@cb
    .line 985
    .restart local v22    # "x":F
    move-object/from16 v0, p1

    #@cd
    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@d0
    move-result v23

    #@d1
    .line 987
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    #@d3
    move/from16 v1, v22

    #@d5
    move/from16 v2, v23

    #@d7
    move/from16 v3, v17

    #@d9
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    #@dc
    .line 990
    move-object/from16 v0, p0

    #@de
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@e0
    move/from16 v24, v0

    #@e2
    if-nez v24, :cond_4

    #@e4
    .line 991
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    #@e8
    move-object/from16 v24, v0

    #@ea
    aget v8, v24, v17

    #@ec
    .line 992
    .restart local v8    # "edgesTouched":I
    move-object/from16 v0, p0

    #@ee
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@f0
    move/from16 v24, v0

    #@f2
    and-int v24, v24, v8

    #@f4
    if-eqz v24, :cond_2

    #@f6
    .line 993
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@fa
    move-object/from16 v24, v0

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    #@100
    move/from16 v25, v0

    #@102
    and-int v25, v25, v8

    #@104
    move-object/from16 v0, v24

    #@106
    move/from16 v1, v25

    #@108
    move/from16 v2, v17

    #@10a
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    #@10d
    goto/16 :goto_0

    #@10f
    .line 995
    .end local v8    # "edgesTouched":I
    :cond_4
    move-object/from16 v0, p0

    #@111
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@113
    move/from16 v24, v0

    #@115
    const/16 v25, 0x2

    #@117
    move/from16 v0, v24

    #@119
    move/from16 v1, v25

    #@11b
    if-ne v0, v1, :cond_2

    #@11d
    .line 997
    move/from16 v0, v22

    #@11f
    float-to-int v0, v0

    #@120
    move/from16 v24, v0

    #@122
    move/from16 v0, v23

    #@124
    float-to-int v0, v0

    #@125
    move/from16 v25, v0

    #@127
    move-object/from16 v0, p0

    #@129
    move/from16 v1, v24

    #@12b
    move/from16 v2, v25

    #@12d
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@130
    move-result-object v20

    #@131
    .line 998
    .restart local v20    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@135
    move-object/from16 v24, v0

    #@137
    move-object/from16 v0, v20

    #@139
    move-object/from16 v1, v24

    #@13b
    if-ne v0, v1, :cond_2

    #@13d
    .line 999
    move-object/from16 v0, p0

    #@13f
    move-object/from16 v1, v20

    #@141
    move/from16 v2, v17

    #@143
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@146
    goto/16 :goto_0

    #@148
    .line 1006
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@14c
    move-object/from16 v24, v0

    #@14e
    if-eqz v24, :cond_2

    #@150
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@154
    move-object/from16 v24, v0

    #@156
    if-eqz v24, :cond_2

    #@158
    .line 1009
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    #@15b
    move-result v16

    #@15c
    .line 1010
    .local v16, "pointerCount":I
    const/4 v10, 0x0

    #@15d
    .local v10, "i":I
    :goto_2
    move/from16 v0, v16

    #@15f
    if-ge v10, v0, :cond_6

    #@161
    .line 1011
    move-object/from16 v0, p1

    #@163
    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@166
    move-result v17

    #@167
    .line 1012
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    #@169
    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@16c
    move-result v22

    #@16d
    .line 1013
    .restart local v22    # "x":F
    move-object/from16 v0, p1

    #@16f
    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@172
    move-result v23

    #@173
    .line 1014
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    #@177
    move-object/from16 v24, v0

    #@179
    aget v24, v24, v17

    #@17b
    sub-float v6, v22, v24

    #@17d
    .line 1015
    .local v6, "dx":F
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    #@181
    move-object/from16 v24, v0

    #@183
    aget v24, v24, v17

    #@185
    sub-float v7, v23, v24

    #@187
    .line 1017
    .local v7, "dy":F
    move/from16 v0, v22

    #@189
    float-to-int v0, v0

    #@18a
    move/from16 v24, v0

    #@18c
    move/from16 v0, v23

    #@18e
    float-to-int v0, v0

    #@18f
    move/from16 v25, v0

    #@191
    move-object/from16 v0, p0

    #@193
    move/from16 v1, v24

    #@195
    move/from16 v2, v25

    #@197
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@19a
    move-result-object v20

    #@19b
    .line 1018
    .restart local v20    # "toCapture":Landroid/view/View;
    if-eqz v20, :cond_7

    #@19d
    move-object/from16 v0, p0

    #@19f
    move-object/from16 v1, v20

    #@1a1
    invoke-direct {v0, v1, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    #@1a4
    move-result v15

    #@1a5
    .line 1019
    :goto_3
    if-eqz v15, :cond_8

    #@1a7
    .line 1025
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    #@1aa
    move-result v13

    #@1ab
    .line 1026
    .local v13, "oldLeft":I
    float-to-int v0, v6

    #@1ac
    move/from16 v24, v0

    #@1ae
    add-int v18, v13, v24

    #@1b0
    .line 1027
    .local v18, "targetLeft":I
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@1b4
    move-object/from16 v24, v0

    #@1b6
    .line 1028
    float-to-int v0, v6

    #@1b7
    move/from16 v25, v0

    #@1b9
    .line 1027
    move-object/from16 v0, v24

    #@1bb
    move-object/from16 v1, v20

    #@1bd
    move/from16 v2, v18

    #@1bf
    move/from16 v3, v25

    #@1c1
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    #@1c4
    move-result v11

    #@1c5
    .line 1029
    .local v11, "newLeft":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    #@1c8
    move-result v14

    #@1c9
    .line 1030
    .local v14, "oldTop":I
    float-to-int v0, v7

    #@1ca
    move/from16 v24, v0

    #@1cc
    add-int v19, v14, v24

    #@1ce
    .line 1031
    .local v19, "targetTop":I
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@1d2
    move-object/from16 v24, v0

    #@1d4
    .line 1032
    float-to-int v0, v7

    #@1d5
    move/from16 v25, v0

    #@1d7
    .line 1031
    move-object/from16 v0, v24

    #@1d9
    move-object/from16 v1, v20

    #@1db
    move/from16 v2, v19

    #@1dd
    move/from16 v3, v25

    #@1df
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    #@1e2
    move-result v12

    #@1e3
    .line 1033
    .local v12, "newTop":I
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@1e7
    move-object/from16 v24, v0

    #@1e9
    move-object/from16 v0, v24

    #@1eb
    move-object/from16 v1, v20

    #@1ed
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    #@1f0
    move-result v9

    #@1f1
    .line 1035
    .local v9, "horizontalDragRange":I
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@1f5
    move-object/from16 v24, v0

    #@1f7
    move-object/from16 v0, v24

    #@1f9
    move-object/from16 v1, v20

    #@1fb
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    #@1fe
    move-result v21

    #@1ff
    .line 1036
    .local v21, "verticalDragRange":I
    if-eqz v9, :cond_5

    #@201
    if-lez v9, :cond_8

    #@203
    .line 1037
    if-ne v11, v13, :cond_8

    #@205
    :cond_5
    if-eqz v21, :cond_6

    #@207
    .line 1038
    if-lez v21, :cond_8

    #@209
    if-ne v12, v14, :cond_8

    #@20b
    .line 1052
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v9    # "horizontalDragRange":I
    .end local v11    # "newLeft":I
    .end local v12    # "newTop":I
    .end local v13    # "oldLeft":I
    .end local v14    # "oldTop":I
    .end local v17    # "pointerId":I
    .end local v18    # "targetLeft":I
    .end local v19    # "targetTop":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v21    # "verticalDragRange":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    #@20e
    goto/16 :goto_0

    #@210
    .line 1018
    .restart local v6    # "dx":F
    .restart local v7    # "dy":F
    .restart local v17    # "pointerId":I
    .restart local v20    # "toCapture":Landroid/view/View;
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_7
    const/4 v15, 0x0

    #@211
    .local v15, "pastSlop":Z
    goto :goto_3

    #@212
    .line 1042
    .end local v15    # "pastSlop":Z
    :cond_8
    move-object/from16 v0, p0

    #@214
    move/from16 v1, v17

    #@216
    invoke-direct {v0, v6, v7, v1}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    #@219
    .line 1043
    move-object/from16 v0, p0

    #@21b
    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@21d
    move/from16 v24, v0

    #@21f
    const/16 v25, 0x1

    #@221
    move/from16 v0, v24

    #@223
    move/from16 v1, v25

    #@225
    if-eq v0, v1, :cond_6

    #@227
    .line 1048
    if-eqz v15, :cond_9

    #@229
    move-object/from16 v0, p0

    #@22b
    move-object/from16 v1, v20

    #@22d
    move/from16 v2, v17

    #@22f
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    #@232
    move-result v24

    #@233
    if-nez v24, :cond_6

    #@235
    .line 1010
    :cond_9
    add-int/lit8 v10, v10, 0x1

    #@237
    goto/16 :goto_2

    #@239
    .line 1057
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v10    # "i":I
    .end local v16    # "pointerCount":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    #@23b
    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@23e
    move-result v17

    #@23f
    .line 1058
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p0

    #@241
    move/from16 v1, v17

    #@243
    invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    #@246
    goto/16 :goto_0

    #@248
    .line 1064
    .end local v17    # "pointerId":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@24b
    goto/16 :goto_0

    #@24d
    .line 1069
    :cond_a
    const/16 v24, 0x0

    #@24f
    goto/16 :goto_1

    #@251
    .line 961
    nop

    #@252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 539
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@4
    .line 540
    const/4 v1, -0x1

    #@5
    iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@7
    .line 542
    invoke-direct {p0, p2, p3, v2, v2}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    #@a
    move-result v0

    #@b
    .line 543
    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    #@d
    iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    #@f
    if-nez v1, :cond_0

    #@11
    iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 546
    iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@17
    .line 549
    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 891
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    #@3
    if-ne p1, v0, :cond_0

    #@5
    iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@7
    if-ne v0, p2, :cond_0

    #@9
    .line 893
    return v1

    #@a
    .line 895
    :cond_0
    if-eqz p1, :cond_1

    #@c
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 896
    iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    #@16
    .line 897
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@19
    .line 898
    return v1

    #@1a
    .line 900
    :cond_1
    const/4 v0, 0x0

    #@1b
    return v0
.end method
