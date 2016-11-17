.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mAltXVelocity:F

.field private mAltYVelocity:F

.field private mBoundingBottom:F

.field private mBoundingLeft:F

.field private mBoundingRight:F

.field private mBoundingTop:F

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mHasBoundingBox:Z

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceCurrent:[Z

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    #@2
    return v0
.end method

.method static synthetic -get17(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    #@2
    return p1
.end method

.method static synthetic -set10(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    #@2
    return p1
.end method

.method static synthetic -set9(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 49
    new-array v0, v1, [F

    #@7
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    #@9
    .line 50
    new-array v0, v1, [F

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    #@d
    .line 51
    new-array v0, v1, [Z

    #@f
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    #@11
    .line 58
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    #@13
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    #@18
    .line 75
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    #@1a
    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    #@1f
    .line 76
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    #@21
    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    #@26
    .line 47
    return-void
.end method


# virtual methods
.method public addTrace(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "current"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 83
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    #@3
    array-length v3, v4

    #@4
    .line 84
    .local v3, "traceCapacity":I
    iget v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@6
    if-ne v4, v3, :cond_0

    #@8
    .line 85
    mul-int/lit8 v3, v3, 0x2

    #@a
    .line 86
    new-array v1, v3, [F

    #@c
    .line 87
    .local v1, "newTraceX":[F
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    #@e
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@10
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@13
    .line 88
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    #@15
    .line 90
    new-array v2, v3, [F

    #@17
    .line 91
    .local v2, "newTraceY":[F
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    #@19
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@1b
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@1e
    .line 92
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    #@20
    .line 94
    new-array v0, v3, [Z

    #@22
    .line 95
    .local v0, "newTraceCurrent":[Z
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    #@24
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@26
    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@29
    .line 96
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    #@2b
    .line 99
    .end local v0    # "newTraceCurrent":[Z
    .end local v1    # "newTraceX":[F
    .end local v2    # "newTraceY":[F
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    #@2d
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@2f
    aput p1, v4, v5

    #@31
    .line 100
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    #@33
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@35
    aput p2, v4, v5

    #@37
    .line 101
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    #@39
    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@3b
    aput-boolean p3, v4, v5

    #@3d
    .line 102
    iget v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@3f
    add-int/lit8 v4, v4, 0x1

    #@41
    iput v4, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@43
    .line 82
    return-void
.end method

.method public clearTrace()V
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    #@3
    .line 78
    return-void
.end method
