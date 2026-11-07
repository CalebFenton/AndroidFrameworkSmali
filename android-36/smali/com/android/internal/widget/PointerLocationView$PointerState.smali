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
.field private blacklist mAltXVelocity:F

.field private blacklist mAltYVelocity:F

.field private blacklist mBoundingBottom:F

.field private blacklist mBoundingLeft:F

.field private blacklist mBoundingRight:F

.field private blacklist mBoundingTop:F

.field private final blacklist mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private greylist mCurDown:Z

.field private blacklist mCurrentPointIsHistorical:Z

.field private blacklist mCurrentX:F

.field private blacklist mCurrentY:F

.field private blacklist mFirstX:F

.field private blacklist mFirstY:F

.field private blacklist mHasBoundingBox:Z

.field private blacklist mPreviousPointIsHistorical:Z

.field private blacklist mPreviousX:F

.field private blacklist mPreviousY:F

.field private blacklist mToolType:I

.field private blacklist mXVelocity:F

.field private blacklist mYVelocity:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousPointIsHistorical(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousPointIsHistorical:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousX(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousY(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentX:F

    .line 75
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentY:F

    .line 76
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousX:F

    .line 77
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousY:F

    .line 78
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstX:F

    .line 79
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstY:F

    .line 88
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 106
    return-void
.end method


# virtual methods
.method blacklist addTrace(FFZ)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isHistorical"    # Z

    .line 109
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstX:F

    .line 112
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    iput p2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mFirstY:F

    .line 116
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentX:F

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousX:F

    .line 117
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentY:F

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousY:F

    .line 118
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentX:F

    .line 119
    iput p2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentY:F

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentPointIsHistorical:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mPreviousPointIsHistorical:Z

    .line 121
    iput-boolean p3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurrentPointIsHistorical:Z

    .line 122
    return-void
.end method
