.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final greylist-max-o BALLISTIC:I = 0x2

.field private static final greylist-max-o CUBIC:I = 0x1

.field private static greylist-max-o DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o GRAVITY:F = 2000.0f

.field private static final greylist-max-o INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SPLINE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private greylist mCurrVelocity:F

.field private greylist-max-o mCurrentPosition:I

.field private greylist-max-o mDeceleration:F

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFinal:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mOver:I

.field private greylist-max-o mPhysicalCoeff:F

.field private greylist-max-o mSplineDistance:I

.field private greylist-max-o mSplineDuration:I

.field private greylist-max-o mStart:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mVelocity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 21

    .line 586
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 594
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 595
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 604
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_cd

    .line 605
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 607
    .local v5, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 610
    .local v3, "x_max":F
    :goto_30
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 611
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 612
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 613
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_bd

    .line 617
    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 619
    const/high16 v13, 0x3f800000    # 1.0f

    .line 622
    .local v13, "y_max":F
    :goto_72
    sub-float v14, v13, v1

    div-float/2addr v14, v7

    add-float/2addr v14, v1

    .line 623
    .local v14, "y":F
    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v9, v18, v19

    .line 624
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v9

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 625
    .local v18, "dy":F
    sub-float v19, v18, v5

    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpg-double v4, v7, v15

    if-gez v4, :cond_a9

    .line 629
    sget-object v4, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sub-float v7, v20, v14

    mul-float/2addr v7, v11

    mul-float/2addr v12, v14

    add-float/2addr v7, v12

    mul-float/2addr v7, v9

    mul-float v8, v14, v14

    mul-float/2addr v8, v14

    add-float/2addr v7, v8

    aput v7, v4, v2

    .line 604
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    .line 626
    .restart local v3    # "x_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v9    # "coef":F
    .restart local v10    # "tx":F
    .restart local v13    # "y_max":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    :cond_a9
    cmpl-float v4, v18, v5

    if-lez v4, :cond_b5

    move v13, v14

    move/from16 v4, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_72

    .line 627
    :cond_b5
    move v1, v14

    move/from16 v4, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_72

    .line 614
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    :cond_bd
    move/from16 v20, v4

    cmpl-float v4, v10, v5

    if-lez v4, :cond_c8

    move v3, v6

    move/from16 v4, v20

    goto/16 :goto_30

    .line 615
    :cond_c8
    move v0, v6

    move/from16 v4, v20

    goto/16 :goto_30

    .line 604
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    :cond_cd
    move/from16 v20, v4

    .line 631
    .end local v2    # "i":I
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v4, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v20, v4, v3

    aput v20, v2, v3

    .line 632
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 641
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 645
    return-void
.end method

.method private greylist-max-o adjustDuration(III)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 666
    sub-int v0, p2, p1

    .line 667
    .local v0, "oldDistance":I
    sub-int v1, p3, p1

    .line 668
    .local v1, "newDistance":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 669
    .local v2, "x":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    .line 670
    .local v4, "index":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_34

    .line 671
    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 672
    .local v5, "x_inf":F
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 673
    .local v6, "x_sup":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v3, v4

    .line 674
    .local v3, "t_inf":F
    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    .line 675
    .local v7, "t_sup":F
    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    .line 676
    .local v8, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 678
    .end local v3    # "t_inf":F
    .end local v5    # "x_inf":F
    .end local v6    # "x_sup":F
    .end local v7    # "t_sup":F
    .end local v8    # "timeCoef":F
    :cond_34
    return-void
.end method

.method private greylist-max-o fitOnBounceCurve(III)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 802
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 804
    .local v0, "durationToApex":F
    int-to-float v1, p3

    int-to-float v2, p3

    mul-float/2addr v1, v2

    .line 805
    .local v1, "velocitySquared":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    .line 806
    .local v2, "distanceToApex":F
    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 807
    .local v3, "distanceToEdge":F
    add-float v4, v2, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 808
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 807
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 809
    .local v4, "totalDuration":F
    iget-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v7, 0x447a0000    # 1000.0f

    sub-float v8, v4, v0

    mul-float/2addr v8, v7

    float-to-int v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 810
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 811
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 812
    return-void
.end method

.method private static greylist-max-o getDeceleration(I)F
    .registers 2
    .param p0, "velocity"    # I

    .line 658
    if-lez p0, :cond_5

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_7
    return v0
.end method

.method private greylist-max-o getSplineDeceleration(I)D
    .registers 5
    .param p1, "velocity"    # I

    .line 784
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(I)D
    .registers 10
    .param p1, "velocity"    # I

    .line 788
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 789
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 790
    .local v2, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private greylist-max-o getSplineFlingDuration(I)I
    .registers 10
    .param p1, "velocity"    # I

    .line 795
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 796
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 797
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private greylist-max-o onEdgeReached()V
    .registers 7

    .line 857
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 858
    .local v0, "velocitySquared":F
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    .line 859
    .local v1, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 861
    .local v3, "sign":F
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2c

    .line 863
    neg-float v4, v3

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 864
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v2

    .line 867
    :cond_2c
    float-to-int v2, v1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 868
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 869
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_3a

    move v4, v1

    goto :goto_3b

    :cond_3a
    neg-float v4, v1

    :goto_3b
    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 870
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 871
    return-void
.end method

.method private greylist-max-o startAfterEdge(IIII)V
    .registers 19
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 821
    move/from16 v0, p3

    move/from16 v3, p4

    const/4 v1, 0x1

    move/from16 v7, p2

    if-le p1, v7, :cond_16

    if-ge p1, v0, :cond_16

    .line 822
    const-string v2, "OverScroller"

    const-string/jumbo v4, "startAfterEdge called from a valid position"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 824
    return-void

    .line 826
    :cond_16
    const/4 v2, 0x0

    if-le p1, v0, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    :goto_1c
    move v8, v4

    .line 827
    .local v8, "positive":Z
    if-eqz v8, :cond_21

    move v4, v0

    goto :goto_22

    :cond_21
    move v4, v7

    :goto_22
    move v9, v4

    .line 828
    .local v9, "edge":I
    sub-int v10, p1, v9

    .line 829
    .local v10, "overDistance":I
    mul-int v4, v10, v3

    if-ltz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    move v11, v1

    .line 830
    .local v11, "keepIncreasing":Z
    if-eqz v11, :cond_32

    .line 832
    invoke-direct {p0, p1, v9, v3}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_54

    .line 834
    :cond_32
    invoke-direct {p0, v3}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    .line 835
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v12, v1

    if-lez v1, :cond_51

    .line 836
    if-eqz v8, :cond_43

    move v4, v7

    goto :goto_44

    :cond_43
    move v4, p1

    :goto_44
    if-eqz v8, :cond_48

    move v5, p1

    goto :goto_49

    :cond_48
    move v5, v0

    :goto_49
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_54

    .line 838
    :cond_51
    invoke-direct {p0, p1, v9, v3}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 841
    .end local v12    # "totalDistance":D
    :goto_54
    return-void
.end method

.method private greylist-max-o startBounceAfterEdge(III)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 815
    if-nez p3, :cond_5

    sub-int v0, p1, p2

    goto :goto_6

    :cond_5
    move v0, p3

    :goto_6
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 816
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 817
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 818
    return-void
.end method

.method private greylist-max-o startSpringback(III)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 736
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 737
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 738
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 739
    sub-int v0, p1, p2

    .line 740
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 742
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 743
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 744
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 745
    return-void
.end method


# virtual methods
.method greylist-max-o continueWhenFinished()Z
    .registers 7

    .line 874
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_44

    goto :goto_3e

    .line 891
    :pswitch_7
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 892
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 893
    goto :goto_3e

    .line 895
    :pswitch_17
    return v1

    .line 877
    :pswitch_18
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_3d

    .line 879
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 881
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 882
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 883
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 884
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_3e

    .line 887
    :cond_3d
    return v1

    .line 898
    :goto_3e
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 899
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_7
    .end packed-switch
.end method

.method greylist-max-o extendDuration(I)V
    .registers 6
    .param p1, "extend"    # I

    .line 709
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 710
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 711
    .local v2, "elapsedTime":I
    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 712
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 713
    return-void
.end method

.method greylist-max-o finish()V
    .registers 2

    .line 695
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 700
    return-void
.end method

.method greylist-max-o fling(IIIII)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 748
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 750
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 751
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 752
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 753
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 755
    if-gt p1, p4, :cond_59

    if-ge p1, p3, :cond_1d

    goto :goto_59

    .line 760
    :cond_1d
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 761
    const-wide/16 v0, 0x0

    .line 763
    .local v0, "totalDistance":D
    if-eqz p2, :cond_2f

    .line 764
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 765
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 768
    :cond_2f
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 769
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 772
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_4b

    .line 773
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 774
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 777
    :cond_4b
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_58

    .line 778
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 779
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 781
    :cond_58
    return-void

    .line 756
    .end local v0    # "totalDistance":D
    :cond_59
    :goto_59
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 757
    return-void
.end method

.method greylist-max-o notifyEdgeReached(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 845
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    .line 846
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 847
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 850
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 852
    :cond_12
    return-void
.end method

.method greylist-max-o setFinalPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 703
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 704
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 706
    return-void
.end method

.method greylist-max-o setFriction(F)V
    .registers 2
    .param p1, "friction"    # F

    .line 635
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 636
    return-void
.end method

.method greylist-max-o springback(III)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 718
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 719
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 721
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 722
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 724
    if-ge p1, p2, :cond_1a

    .line 725
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1f

    .line 726
    :cond_1a
    if-le p1, p3, :cond_1f

    .line 727
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 730
    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o startScroll(III)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 683
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 684
    add-int v1, p1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 686
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 687
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 690
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 691
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 692
    return-void
.end method

.method greylist-max-o update()Z
    .registers 20

    .line 908
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 909
    .local v1, "time":J
    iget-wide v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    .line 911
    .local v3, "currentTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_18

    .line 913
    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v5, :cond_17

    move v6, v7

    :cond_17
    return v6

    .line 915
    :cond_18
    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v8, v5

    cmp-long v5, v3, v8

    if-lez v5, :cond_20

    .line 916
    return v6

    .line 919
    :cond_20
    const-wide/16 v5, 0x0

    .line 920
    .local v5, "distance":D
    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v9, 0x447a0000    # 1000.0f

    const/high16 v10, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_b4

    goto/16 :goto_a9

    .line 941
    :pswitch_2d
    long-to-float v8, v3

    div-float/2addr v8, v9

    .line 942
    .local v8, "t":F
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 943
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v8

    mul-float/2addr v11, v8

    div-float/2addr v11, v10

    add-float/2addr v9, v11

    float-to-double v5, v9

    .line 944
    goto :goto_a9

    .line 948
    .end local v8    # "t":F
    :pswitch_44
    long-to-float v8, v3

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 949
    .restart local v8    # "t":F
    mul-float v9, v8, v8

    .line 950
    .local v9, "t2":F
    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    .line 951
    .local v11, "sign":F
    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v9

    mul-float/2addr v10, v8

    mul-float/2addr v10, v9

    sub-float/2addr v13, v10

    mul-float/2addr v12, v13

    float-to-double v5, v12

    .line 952
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v10, v10

    mul-float/2addr v10, v11

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v10, v12

    neg-float v12, v8

    add-float/2addr v12, v9

    mul-float/2addr v10, v12

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 953
    goto :goto_a9

    .line 922
    .end local v8    # "t":F
    .end local v9    # "t2":F
    .end local v11    # "sign":F
    :pswitch_6b
    long-to-float v8, v3

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 923
    .restart local v8    # "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v11, v8, v10

    float-to-int v11, v11

    .line 924
    .local v11, "index":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 925
    .local v12, "distanceCoef":F
    const/4 v13, 0x0

    .line 926
    .local v13, "velocityCoef":F
    const/16 v14, 0x64

    if-ge v11, v14, :cond_98

    .line 927
    int-to-float v14, v11

    div-float/2addr v14, v10

    .line 928
    .local v14, "t_inf":F
    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    div-float/2addr v15, v10

    .line 929
    .local v15, "t_sup":F
    sget-object v10, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v10, v10, v11

    .line 930
    .local v10, "d_inf":F
    sget-object v16, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v17, v11, 0x1

    aget v16, v16, v17

    .line 931
    .local v16, "d_sup":F
    sub-float v17, v16, v10

    sub-float v18, v15, v14

    div-float v13, v17, v18

    .line 932
    sub-float v17, v8, v14

    mul-float v17, v17, v13

    add-float v12, v10, v17

    .line 935
    .end local v10    # "d_inf":F
    .end local v14    # "t_inf":F
    .end local v15    # "t_sup":F
    .end local v16    # "d_sup":F
    :cond_98
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-double v5, v10

    .line 936
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v13

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v14, v14

    div-float/2addr v10, v14

    mul-float/2addr v10, v9

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 937
    nop

    .line 957
    .end local v8    # "t":F
    .end local v11    # "index":I
    .end local v12    # "distanceCoef":F
    .end local v13    # "velocityCoef":F
    :goto_a9
    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 959
    return v7

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_44
        :pswitch_2d
    .end packed-switch
.end method

.method blacklist updateScroll(FF)V
    .registers 6
    .param p1, "q"    # F
    .param p2, "q2"    # F

    .line 648
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v0, v1

    .line 649
    .local v0, "distance":I
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v2, v0

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 651
    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float v2, p1, p2

    mul-float/2addr v2, v1

    int-to-float v1, v0

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 652
    return-void
.end method
