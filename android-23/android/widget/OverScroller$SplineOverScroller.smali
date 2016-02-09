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
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static synthetic -get0(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 16

    #@0
    .prologue
    .line 587
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    #@5
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    #@8
    move-result-wide v12

    #@9
    const-wide v14, 0x3feccccccccccccdL    # 0.9

    #@e
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    #@11
    move-result-wide v14

    #@12
    div-double/2addr v12, v14

    #@13
    double-to-float v11, v12

    #@14
    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    #@16
    .line 595
    const/16 v11, 0x65

    #@18
    new-array v11, v11, [F

    #@1a
    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    #@1c
    .line 596
    const/16 v11, 0x65

    #@1e
    new-array v11, v11, [F

    #@20
    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    #@22
    .line 603
    const/4 v7, 0x0

    #@23
    .line 604
    .local v7, "x_min":F
    const/4 v10, 0x0

    #@24
    .line 605
    .local v10, "y_min":F
    const/4 v3, 0x0

    #@25
    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    #@27
    if-ge v3, v11, :cond_4

    #@29
    .line 606
    int-to-float v11, v3

    #@2a
    const/high16 v12, 0x42c80000    # 100.0f

    #@2c
    div-float v0, v11, v12

    #@2e
    .line 608
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    #@30
    .line 611
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    #@32
    const/high16 v12, 0x40000000    # 2.0f

    #@34
    div-float/2addr v11, v12

    #@35
    add-float v5, v7, v11

    #@37
    .line 612
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    #@39
    mul-float/2addr v11, v5

    #@3a
    const/high16 v12, 0x3f800000    # 1.0f

    #@3c
    sub-float/2addr v12, v5

    #@3d
    mul-float v1, v11, v12

    #@3f
    .line 613
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    #@41
    sub-float/2addr v11, v5

    #@42
    const v12, 0x3e333333    # 0.175f

    #@45
    mul-float/2addr v11, v12

    #@46
    const v12, 0x3eb33334    # 0.35000002f

    #@49
    mul-float/2addr v12, v5

    #@4a
    add-float/2addr v11, v12

    #@4b
    mul-float/2addr v11, v1

    #@4c
    mul-float v12, v5, v5

    #@4e
    mul-float/2addr v12, v5

    #@4f
    add-float v4, v11, v12

    #@51
    .line 614
    .local v4, "tx":F
    sub-float v11, v4, v0

    #@53
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@56
    move-result v11

    #@57
    float-to-double v12, v11

    #@58
    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@5d
    cmpg-double v11, v12, v14

    #@5f
    if-gez v11, :cond_0

    #@61
    .line 618
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    #@63
    const/high16 v12, 0x3f800000    # 1.0f

    #@65
    sub-float/2addr v12, v5

    #@66
    const/high16 v13, 0x3f000000    # 0.5f

    #@68
    mul-float/2addr v12, v13

    #@69
    add-float/2addr v12, v5

    #@6a
    mul-float/2addr v12, v1

    #@6b
    mul-float v13, v5, v5

    #@6d
    mul-float/2addr v13, v5

    #@6e
    add-float/2addr v12, v13

    #@6f
    aput v12, v11, v3

    #@71
    .line 620
    const/high16 v9, 0x3f800000    # 1.0f

    #@73
    .line 623
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    #@75
    const/high16 v12, 0x40000000    # 2.0f

    #@77
    div-float/2addr v11, v12

    #@78
    add-float v8, v10, v11

    #@7a
    .line 624
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    #@7c
    mul-float/2addr v11, v8

    #@7d
    const/high16 v12, 0x3f800000    # 1.0f

    #@7f
    sub-float/2addr v12, v8

    #@80
    mul-float v1, v11, v12

    #@82
    .line 625
    const/high16 v11, 0x3f800000    # 1.0f

    #@84
    sub-float/2addr v11, v8

    #@85
    const/high16 v12, 0x3f000000    # 0.5f

    #@87
    mul-float/2addr v11, v12

    #@88
    add-float/2addr v11, v8

    #@89
    mul-float/2addr v11, v1

    #@8a
    mul-float v12, v8, v8

    #@8c
    mul-float/2addr v12, v8

    #@8d
    add-float v2, v11, v12

    #@8f
    .line 626
    .local v2, "dy":F
    sub-float v11, v2, v0

    #@91
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@94
    move-result v11

    #@95
    float-to-double v12, v11

    #@96
    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@9b
    cmpg-double v11, v12, v14

    #@9d
    if-gez v11, :cond_2

    #@9f
    .line 630
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    #@a1
    const/high16 v12, 0x3f800000    # 1.0f

    #@a3
    sub-float/2addr v12, v8

    #@a4
    const v13, 0x3e333333    # 0.175f

    #@a7
    mul-float/2addr v12, v13

    #@a8
    const v13, 0x3eb33334    # 0.35000002f

    #@ab
    mul-float/2addr v13, v8

    #@ac
    add-float/2addr v12, v13

    #@ad
    mul-float/2addr v12, v1

    #@ae
    mul-float v13, v8, v8

    #@b0
    mul-float/2addr v13, v8

    #@b1
    add-float/2addr v12, v13

    #@b2
    aput v12, v11, v3

    #@b4
    .line 605
    add-int/lit8 v3, v3, 0x1

    #@b6
    goto/16 :goto_0

    #@b8
    .line 615
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    #@ba
    if-lez v11, :cond_1

    #@bc
    move v6, v5

    #@bd
    goto/16 :goto_1

    #@bf
    .line 616
    :cond_1
    move v7, v5

    #@c0
    goto/16 :goto_1

    #@c2
    .line 627
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    #@c4
    if-lez v11, :cond_3

    #@c6
    move v9, v8

    #@c7
    goto :goto_2

    #@c8
    .line 628
    :cond_3
    move v10, v8

    #@c9
    goto :goto_2

    #@ca
    .line 632
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    #@cc
    sget-object v12, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    #@ce
    const/high16 v13, 0x3f800000    # 1.0f

    #@d0
    const/16 v14, 0x64

    #@d2
    aput v13, v12, v14

    #@d4
    const/high16 v12, 0x3f800000    # 1.0f

    #@d6
    const/16 v13, 0x64

    #@d8
    aput v12, v11, v13

    #@da
    .line 538
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 576
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    #@9
    .line 579
    const/4 v1, 0x0

    #@a
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@c
    .line 640
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@f
    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@16
    move-result-object v1

    #@17
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@19
    const/high16 v2, 0x43200000    # 160.0f

    #@1b
    mul-float v0, v1, v2

    #@1d
    .line 642
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    #@20
    mul-float/2addr v1, v0

    #@21
    .line 645
    const v2, 0x3f570a3d    # 0.84f

    #@24
    .line 642
    mul-float/2addr v1, v2

    #@25
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    #@27
    .line 639
    return-void
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    #@0
    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    #@2
    .line 664
    sub-int v2, p2, p1

    #@4
    .line 665
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    #@6
    .line 666
    .local v1, "newDistance":I
    int-to-float v9, v1

    #@7
    int-to-float v10, v2

    #@8
    div-float/2addr v9, v10

    #@9
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@c
    move-result v6

    #@d
    .line 667
    .local v6, "x":F
    mul-float v9, v11, v6

    #@f
    float-to-int v0, v9

    #@10
    .line 668
    .local v0, "index":I
    const/16 v9, 0x64

    #@12
    if-ge v0, v9, :cond_0

    #@14
    .line 669
    int-to-float v9, v0

    #@15
    div-float v7, v9, v11

    #@17
    .line 670
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    #@19
    int-to-float v9, v9

    #@1a
    div-float v8, v9, v11

    #@1c
    .line 671
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    #@1e
    aget v3, v9, v0

    #@20
    .line 672
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    #@22
    add-int/lit8 v10, v0, 0x1

    #@24
    aget v4, v9, v10

    #@26
    .line 673
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    #@28
    sub-float v10, v8, v7

    #@2a
    div-float/2addr v9, v10

    #@2b
    sub-float v10, v4, v3

    #@2d
    mul-float/2addr v9, v10

    #@2e
    add-float v5, v3, v9

    #@30
    .line 674
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@32
    int-to-float v9, v9

    #@33
    mul-float/2addr v9, v5

    #@34
    float-to-int v9, v9

    #@35
    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@37
    .line 663
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    #@0
    .prologue
    .line 799
    neg-int v5, p3

    #@1
    int-to-float v5, v5

    #@2
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@4
    div-float v2, v5, v6

    #@6
    .line 801
    .local v2, "durationToApex":F
    int-to-float v5, p3

    #@7
    int-to-float v6, p3

    #@8
    mul-float v4, v5, v6

    #@a
    .line 802
    .local v4, "velocitySquared":F
    const/high16 v5, 0x40000000    # 2.0f

    #@c
    div-float v5, v4, v5

    #@e
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@10
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result v6

    #@14
    div-float v0, v5, v6

    #@16
    .line 803
    .local v0, "distanceToApex":F
    sub-int v5, p2, p1

    #@18
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result v5

    #@1c
    int-to-float v1, v5

    #@1d
    .line 805
    .local v1, "distanceToEdge":F
    add-float v5, v0, v1

    #@1f
    float-to-double v6, v5

    #@20
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@22
    mul-double/2addr v6, v8

    #@23
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@25
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@28
    move-result v5

    #@29
    float-to-double v8, v5

    #@2a
    div-double/2addr v6, v8

    #@2b
    .line 804
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@2e
    move-result-wide v6

    #@2f
    double-to-float v3, v6

    #@30
    .line 806
    .local v3, "totalDuration":F
    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@32
    sub-float v5, v3, v2

    #@34
    const/high16 v8, 0x447a0000    # 1000.0f

    #@36
    mul-float/2addr v5, v8

    #@37
    float-to-int v5, v5

    #@38
    int-to-long v8, v5

    #@39
    sub-long/2addr v6, v8

    #@3a
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@3c
    .line 807
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@3e
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@40
    .line 808
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@42
    neg-float v5, v5

    #@43
    mul-float/2addr v5, v3

    #@44
    float-to-int v5, v5

    #@45
    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@47
    .line 797
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    #@0
    .prologue
    .line 656
    if-lez p0, :cond_0

    #@2
    const/high16 v0, -0x3b060000    # -2000.0f

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    #@7
    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    #@0
    .prologue
    .line 781
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    const v1, 0x3eb33333    # 0.35f

    #@8
    mul-float/2addr v0, v1

    #@9
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    #@b
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    #@d
    mul-float/2addr v1, v2

    #@e
    div-float/2addr v0, v1

    #@f
    float-to-double v0, v0

    #@10
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    #@0
    .prologue
    .line 785
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    #@3
    move-result-wide v2

    #@4
    .line 786
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    #@6
    float-to-double v4, v4

    #@7
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@9
    sub-double v0, v4, v6

    #@b
    .line 787
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    #@d
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    #@f
    mul-float/2addr v4, v5

    #@10
    float-to-double v4, v4

    #@11
    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    #@13
    float-to-double v6, v6

    #@14
    div-double/2addr v6, v0

    #@15
    mul-double/2addr v6, v2

    #@16
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@19
    move-result-wide v6

    #@1a
    mul-double/2addr v4, v6

    #@1b
    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    #@0
    .prologue
    .line 792
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    #@3
    move-result-wide v2

    #@4
    .line 793
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    #@6
    float-to-double v4, v4

    #@7
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@9
    sub-double v0, v4, v6

    #@b
    .line 794
    .local v0, "decelMinusOne":D
    div-double v4, v2, v0

    #@d
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    #@10
    move-result-wide v4

    #@11
    const-wide v6, 0x408f400000000000L    # 1000.0

    #@16
    mul-double/2addr v4, v6

    #@17
    double-to-int v4, v4

    #@18
    return v4
.end method

.method private onEdgeReached()V
    .locals 6

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 854
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@4
    int-to-float v3, v3

    #@5
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@7
    int-to-float v4, v4

    #@8
    mul-float v2, v3, v4

    #@a
    .line 855
    .local v2, "velocitySquared":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@c
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@f
    move-result v3

    #@10
    mul-float/2addr v3, v5

    #@11
    div-float v0, v2, v3

    #@13
    .line 856
    .local v0, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@15
    int-to-float v3, v3

    #@16
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    #@19
    move-result v1

    #@1a
    .line 858
    .local v1, "sign":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@1c
    int-to-float v3, v3

    #@1d
    cmpl-float v3, v0, v3

    #@1f
    if-lez v3, :cond_0

    #@21
    .line 860
    neg-float v3, v1

    #@22
    mul-float/2addr v3, v2

    #@23
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@25
    int-to-float v4, v4

    #@26
    mul-float/2addr v4, v5

    #@27
    div-float/2addr v3, v4

    #@28
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@2a
    .line 861
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@2c
    int-to-float v0, v3

    #@2d
    .line 864
    :cond_0
    float-to-int v3, v0

    #@2e
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@30
    .line 865
    const/4 v3, 0x2

    #@31
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@33
    .line 866
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@35
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@37
    if-lez v4, :cond_1

    #@39
    .end local v0    # "distance":F
    :goto_0
    float-to-int v4, v0

    #@3a
    add-int/2addr v3, v4

    #@3b
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@3d
    .line 867
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@3f
    int-to-float v3, v3

    #@40
    const/high16 v4, 0x447a0000    # 1000.0f

    #@42
    mul-float/2addr v3, v4

    #@43
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@45
    div-float/2addr v3, v4

    #@46
    float-to-int v3, v3

    #@47
    neg-int v3, v3

    #@48
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@4a
    .line 851
    return-void

    #@4b
    .line 866
    .restart local v0    # "distance":F
    :cond_1
    neg-float v0, v0

    #@4c
    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    #@0
    .prologue
    .line 818
    move/from16 v0, p2

    #@2
    if-le p1, v0, :cond_0

    #@4
    move/from16 v0, p3

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 819
    const-string/jumbo v2, "OverScroller"

    #@b
    const-string/jumbo v3, "startAfterEdge called from a valid position"

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 820
    const/4 v2, 0x1

    #@12
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@14
    .line 821
    return-void

    #@15
    .line 823
    :cond_0
    move/from16 v0, p3

    #@17
    if-le p1, v0, :cond_1

    #@19
    const/4 v11, 0x1

    #@1a
    .line 824
    .local v11, "positive":Z
    :goto_0
    if-eqz v11, :cond_2

    #@1c
    move/from16 v8, p3

    #@1e
    .line 825
    .local v8, "edge":I
    :goto_1
    sub-int v10, p1, v8

    #@20
    .line 826
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    #@22
    if-ltz v2, :cond_3

    #@24
    const/4 v9, 0x1

    #@25
    .line 827
    .local v9, "keepIncreasing":Z
    :goto_2
    if-eqz v9, :cond_4

    #@27
    .line 829
    move/from16 v0, p4

    #@29
    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    #@2c
    .line 817
    :goto_3
    return-void

    #@2d
    .line 823
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_1
    const/4 v11, 0x0

    #@2e
    .restart local v11    # "positive":Z
    goto :goto_0

    #@2f
    .line 824
    :cond_2
    move/from16 v8, p2

    #@31
    .restart local v8    # "edge":I
    goto :goto_1

    #@32
    .line 826
    .restart local v10    # "overDistance":I
    :cond_3
    const/4 v9, 0x0

    #@33
    .restart local v9    # "keepIncreasing":Z
    goto :goto_2

    #@34
    .line 831
    :cond_4
    move/from16 v0, p4

    #@36
    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    #@39
    move-result-wide v12

    #@3a
    .line 832
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@3d
    move-result v2

    #@3e
    int-to-double v2, v2

    #@3f
    cmpl-double v2, v12, v2

    #@41
    if-lez v2, :cond_7

    #@43
    .line 833
    if-eqz v11, :cond_5

    #@45
    move/from16 v5, p2

    #@47
    :goto_4
    if-eqz v11, :cond_6

    #@49
    move v6, p1

    #@4a
    :goto_5
    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@4c
    move-object v2, p0

    #@4d
    move v3, p1

    #@4e
    move/from16 v4, p4

    #@50
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    #@53
    goto :goto_3

    #@54
    :cond_5
    move v5, p1

    #@55
    goto :goto_4

    #@56
    :cond_6
    move/from16 v6, p3

    #@58
    goto :goto_5

    #@59
    .line 835
    :cond_7
    move/from16 v0, p4

    #@5b
    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    #@5e
    goto :goto_3
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    #@0
    .prologue
    .line 812
    if-nez p3, :cond_0

    #@2
    sub-int v0, p1, p2

    #@4
    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@a
    .line 813
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    #@d
    .line 814
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    #@10
    .line 811
    return-void

    #@11
    :cond_0
    move v0, p3

    #@12
    .line 812
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    #@0
    .prologue
    .line 732
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@3
    .line 733
    const/4 v1, 0x1

    #@4
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@6
    .line 734
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@8
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@a
    .line 735
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@c
    .line 736
    sub-int v0, p1, p2

    #@e
    .line 737
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@14
    .line 739
    neg-int v1, v0

    #@15
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@17
    .line 740
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@1d
    .line 741
    int-to-double v2, v0

    #@1e
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    #@20
    mul-double/2addr v2, v4

    #@21
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@23
    float-to-double v4, v1

    #@24
    div-double/2addr v2, v4

    #@25
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@28
    move-result-wide v2

    #@29
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@2e
    mul-double/2addr v2, v4

    #@2f
    double-to-int v1, v2

    #@30
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@32
    .line 730
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 871
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 895
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    #@9
    .line 896
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 874
    :pswitch_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@d
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 876
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@13
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@15
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@17
    .line 878
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@19
    float-to-int v0, v0

    #@1a
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@1c
    .line 879
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@1e
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@24
    .line 880
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@26
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@28
    int-to-long v2, v2

    #@29
    add-long/2addr v0, v2

    #@2a
    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@2c
    .line 881
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    #@2f
    goto :goto_0

    #@30
    .line 884
    :cond_0
    return v4

    #@31
    .line 888
    :pswitch_1
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@33
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@35
    int-to-long v2, v2

    #@36
    add-long/2addr v0, v2

    #@37
    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@39
    .line 889
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@3b
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@3d
    invoke-direct {p0, v0, v1, v4}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    #@40
    goto :goto_0

    #@41
    .line 892
    :pswitch_2
    return v4

    #@42
    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    #@0
    .prologue
    .line 706
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 707
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@6
    sub-long v4, v2, v4

    #@8
    long-to-int v0, v4

    #@9
    .line 708
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    #@b
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@d
    .line 709
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@10
    .line 705
    return-void
.end method

.method finish()V
    .locals 1

    #@0
    .prologue
    .line 693
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@2
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@4
    .line 697
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@7
    .line 692
    return-void
.end method

.method fling(IIIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 745
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@3
    .line 746
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@5
    .line 747
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@7
    int-to-float v2, p2

    #@8
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@a
    .line 748
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    #@c
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@e
    .line 749
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@14
    .line 750
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@16
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@18
    .line 752
    if-gt p1, p4, :cond_0

    #@1a
    if-ge p1, p3, :cond_1

    #@1c
    .line 753
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    #@1f
    .line 754
    return-void

    #@20
    .line 757
    :cond_1
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@22
    .line 758
    const-wide/16 v0, 0x0

    #@24
    .line 760
    .local v0, "totalDistance":D
    if-eqz p2, :cond_2

    #@26
    .line 761
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    #@29
    move-result v2

    #@2a
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    #@2c
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@2e
    .line 762
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    #@31
    move-result-wide v0

    #@32
    .line 765
    :cond_2
    int-to-float v2, p2

    #@33
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    #@36
    move-result v2

    #@37
    float-to-double v2, v2

    #@38
    mul-double/2addr v2, v0

    #@39
    double-to-int v2, v2

    #@3a
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    #@3c
    .line 766
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    #@3e
    add-int/2addr v2, p1

    #@3f
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@41
    .line 769
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@43
    if-ge v2, p3, :cond_3

    #@45
    .line 770
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@47
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@49
    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    #@4c
    .line 771
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@4e
    .line 774
    :cond_3
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@50
    if-le v2, p4, :cond_4

    #@52
    .line 775
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@54
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@56
    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    #@59
    .line 776
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@5b
    .line 744
    :cond_4
    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    #@0
    .prologue
    .line 842
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 843
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@6
    .line 844
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@c
    .line 847
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@e
    float-to-int v0, v0

    #@f
    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    #@12
    .line 840
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 701
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@2
    .line 702
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@5
    .line 700
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    #@0
    .prologue
    .line 636
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    #@2
    .line 635
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 713
    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@4
    .line 715
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@6
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@8
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@a
    .line 716
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@c
    .line 718
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@12
    .line 719
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@14
    .line 721
    if-ge p1, p2, :cond_1

    #@16
    .line 722
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    #@19
    .line 727
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@1b
    if-eqz v2, :cond_2

    #@1d
    :goto_1
    return v0

    #@1e
    .line 723
    :cond_1
    if-le p1, p3, :cond_0

    #@20
    .line 724
    invoke-direct {p0, p1, p3, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    #@23
    goto :goto_0

    #@24
    :cond_2
    move v0, v1

    #@25
    .line 727
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 679
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    #@3
    .line 681
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@5
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@7
    .line 682
    add-int v0, p1, p2

    #@9
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@b
    .line 684
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@11
    .line 685
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@13
    .line 688
    const/4 v0, 0x0

    #@14
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@16
    .line 689
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@18
    .line 678
    return-void
.end method

.method update()Z
    .locals 22

    #@0
    .prologue
    .line 905
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v16

    #@4
    .line 906
    .local v16, "time":J
    move-object/from16 v0, p0

    #@6
    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    #@8
    move-wide/from16 v18, v0

    #@a
    sub-long v2, v16, v18

    #@c
    .line 908
    .local v2, "currentTime":J
    const-wide/16 v18, 0x0

    #@e
    cmp-long v18, v2, v18

    #@10
    if-nez v18, :cond_1

    #@12
    .line 910
    move-object/from16 v0, p0

    #@14
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@16
    move/from16 v18, v0

    #@18
    if-lez v18, :cond_0

    #@1a
    const/16 v18, 0x1

    #@1c
    :goto_0
    return v18

    #@1d
    :cond_0
    const/16 v18, 0x0

    #@1f
    goto :goto_0

    #@20
    .line 912
    :cond_1
    move-object/from16 v0, p0

    #@22
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@24
    move/from16 v18, v0

    #@26
    move/from16 v0, v18

    #@28
    int-to-long v0, v0

    #@29
    move-wide/from16 v18, v0

    #@2b
    cmp-long v18, v2, v18

    #@2d
    if-lez v18, :cond_2

    #@2f
    .line 913
    const/16 v18, 0x0

    #@31
    return v18

    #@32
    .line 916
    :cond_2
    const-wide/16 v6, 0x0

    #@34
    .line 917
    .local v6, "distance":D
    move-object/from16 v0, p0

    #@36
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    #@38
    move/from16 v18, v0

    #@3a
    packed-switch v18, :pswitch_data_0

    #@3d
    .line 954
    :goto_1
    move-object/from16 v0, p0

    #@3f
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@41
    move/from16 v18, v0

    #@43
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    #@46
    move-result-wide v20

    #@47
    move-wide/from16 v0, v20

    #@49
    long-to-int v0, v0

    #@4a
    move/from16 v19, v0

    #@4c
    add-int v18, v18, v19

    #@4e
    move/from16 v0, v18

    #@50
    move-object/from16 v1, p0

    #@52
    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@54
    .line 956
    const/16 v18, 0x1

    #@56
    return v18

    #@57
    .line 919
    :pswitch_0
    long-to-float v0, v2

    #@58
    move/from16 v18, v0

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    #@5e
    move/from16 v19, v0

    #@60
    move/from16 v0, v19

    #@62
    int-to-float v0, v0

    #@63
    move/from16 v19, v0

    #@65
    div-float v11, v18, v19

    #@67
    .line 920
    .local v11, "t":F
    const/high16 v18, 0x42c80000    # 100.0f

    #@69
    mul-float v18, v18, v11

    #@6b
    move/from16 v0, v18

    #@6d
    float-to-int v9, v0

    #@6e
    .line 921
    .local v9, "index":I
    const/high16 v8, 0x3f800000    # 1.0f

    #@70
    .line 922
    .local v8, "distanceCoef":F
    const/4 v15, 0x0

    #@71
    .line 923
    .local v15, "velocityCoef":F
    const/16 v18, 0x64

    #@73
    move/from16 v0, v18

    #@75
    if-ge v9, v0, :cond_3

    #@77
    .line 924
    int-to-float v0, v9

    #@78
    move/from16 v18, v0

    #@7a
    const/high16 v19, 0x42c80000    # 100.0f

    #@7c
    div-float v13, v18, v19

    #@7e
    .line 925
    .local v13, "t_inf":F
    add-int/lit8 v18, v9, 0x1

    #@80
    move/from16 v0, v18

    #@82
    int-to-float v0, v0

    #@83
    move/from16 v18, v0

    #@85
    const/high16 v19, 0x42c80000    # 100.0f

    #@87
    div-float v14, v18, v19

    #@89
    .line 926
    .local v14, "t_sup":F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    #@8b
    aget v4, v18, v9

    #@8d
    .line 927
    .local v4, "d_inf":F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    #@8f
    add-int/lit8 v19, v9, 0x1

    #@91
    aget v5, v18, v19

    #@93
    .line 928
    .local v5, "d_sup":F
    sub-float v18, v5, v4

    #@95
    sub-float v19, v14, v13

    #@97
    div-float v15, v18, v19

    #@99
    .line 929
    sub-float v18, v11, v13

    #@9b
    mul-float v18, v18, v15

    #@9d
    add-float v8, v4, v18

    #@9f
    .line 932
    .end local v4    # "d_inf":F
    .end local v5    # "d_sup":F
    .end local v13    # "t_inf":F
    .end local v14    # "t_sup":F
    :cond_3
    move-object/from16 v0, p0

    #@a1
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    #@a3
    move/from16 v18, v0

    #@a5
    move/from16 v0, v18

    #@a7
    int-to-float v0, v0

    #@a8
    move/from16 v18, v0

    #@aa
    mul-float v18, v18, v8

    #@ac
    move/from16 v0, v18

    #@ae
    float-to-double v6, v0

    #@af
    .line 933
    move-object/from16 v0, p0

    #@b1
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    #@b3
    move/from16 v18, v0

    #@b5
    move/from16 v0, v18

    #@b7
    int-to-float v0, v0

    #@b8
    move/from16 v18, v0

    #@ba
    mul-float v18, v18, v15

    #@bc
    move-object/from16 v0, p0

    #@be
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    #@c0
    move/from16 v19, v0

    #@c2
    move/from16 v0, v19

    #@c4
    int-to-float v0, v0

    #@c5
    move/from16 v19, v0

    #@c7
    div-float v18, v18, v19

    #@c9
    const/high16 v19, 0x447a0000    # 1000.0f

    #@cb
    mul-float v18, v18, v19

    #@cd
    move/from16 v0, v18

    #@cf
    move-object/from16 v1, p0

    #@d1
    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@d3
    goto/16 :goto_1

    #@d5
    .line 938
    .end local v8    # "distanceCoef":F
    .end local v9    # "index":I
    .end local v11    # "t":F
    .end local v15    # "velocityCoef":F
    :pswitch_1
    long-to-float v0, v2

    #@d6
    move/from16 v18, v0

    #@d8
    const/high16 v19, 0x447a0000    # 1000.0f

    #@da
    div-float v11, v18, v19

    #@dc
    .line 939
    .restart local v11    # "t":F
    move-object/from16 v0, p0

    #@de
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@e0
    move/from16 v18, v0

    #@e2
    move/from16 v0, v18

    #@e4
    int-to-float v0, v0

    #@e5
    move/from16 v18, v0

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@eb
    move/from16 v19, v0

    #@ed
    mul-float v19, v19, v11

    #@ef
    add-float v18, v18, v19

    #@f1
    move/from16 v0, v18

    #@f3
    move-object/from16 v1, p0

    #@f5
    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@f7
    .line 940
    move-object/from16 v0, p0

    #@f9
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@fb
    move/from16 v18, v0

    #@fd
    move/from16 v0, v18

    #@ff
    int-to-float v0, v0

    #@100
    move/from16 v18, v0

    #@102
    mul-float v18, v18, v11

    #@104
    move-object/from16 v0, p0

    #@106
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    #@108
    move/from16 v19, v0

    #@10a
    mul-float v19, v19, v11

    #@10c
    mul-float v19, v19, v11

    #@10e
    const/high16 v20, 0x40000000    # 2.0f

    #@110
    div-float v19, v19, v20

    #@112
    add-float v18, v18, v19

    #@114
    move/from16 v0, v18

    #@116
    float-to-double v6, v0

    #@117
    .line 941
    goto/16 :goto_1

    #@119
    .line 945
    .end local v11    # "t":F
    :pswitch_2
    long-to-float v0, v2

    #@11a
    move/from16 v18, v0

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    #@120
    move/from16 v19, v0

    #@122
    move/from16 v0, v19

    #@124
    int-to-float v0, v0

    #@125
    move/from16 v19, v0

    #@127
    div-float v11, v18, v19

    #@129
    .line 946
    .restart local v11    # "t":F
    mul-float v12, v11, v11

    #@12b
    .line 947
    .local v12, "t2":F
    move-object/from16 v0, p0

    #@12d
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    #@12f
    move/from16 v18, v0

    #@131
    move/from16 v0, v18

    #@133
    int-to-float v0, v0

    #@134
    move/from16 v18, v0

    #@136
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    #@139
    move-result v10

    #@13a
    .line 948
    .local v10, "sign":F
    move-object/from16 v0, p0

    #@13c
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@13e
    move/from16 v18, v0

    #@140
    move/from16 v0, v18

    #@142
    int-to-float v0, v0

    #@143
    move/from16 v18, v0

    #@145
    mul-float v18, v18, v10

    #@147
    const/high16 v19, 0x40400000    # 3.0f

    #@149
    mul-float v19, v19, v12

    #@14b
    const/high16 v20, 0x40000000    # 2.0f

    #@14d
    mul-float v20, v20, v11

    #@14f
    mul-float v20, v20, v12

    #@151
    sub-float v19, v19, v20

    #@153
    mul-float v18, v18, v19

    #@155
    move/from16 v0, v18

    #@157
    float-to-double v6, v0

    #@158
    .line 949
    move-object/from16 v0, p0

    #@15a
    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    #@15c
    move/from16 v18, v0

    #@15e
    move/from16 v0, v18

    #@160
    int-to-float v0, v0

    #@161
    move/from16 v18, v0

    #@163
    mul-float v18, v18, v10

    #@165
    const/high16 v19, 0x40c00000    # 6.0f

    #@167
    mul-float v18, v18, v19

    #@169
    neg-float v0, v11

    #@16a
    move/from16 v19, v0

    #@16c
    add-float v19, v19, v12

    #@16e
    mul-float v18, v18, v19

    #@170
    move/from16 v0, v18

    #@172
    move-object/from16 v1, p0

    #@174
    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    #@176
    goto/16 :goto_1

    #@178
    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    #@0
    .prologue
    .line 649
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@2
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    #@4
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    #@6
    sub-int/2addr v1, v2

    #@7
    int-to-float v1, v1

    #@8
    mul-float/2addr v1, p1

    #@9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    #@10
    .line 648
    return-void
.end method
