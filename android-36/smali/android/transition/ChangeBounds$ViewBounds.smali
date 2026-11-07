.class Landroid/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private greylist-max-o mBottom:I

.field private greylist-max-o mBottomRightCalls:I

.field private greylist-max-o mLeft:I

.field private greylist-max-o mRight:I

.field private greylist-max-o mTop:I

.field private greylist-max-o mTopLeftCalls:I

.field private greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 489
    return-void
.end method

.method private greylist-max-o setLeftTopRightBottom()V
    .registers 6

    .line 510
    iget-object v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 512
    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 513
    return-void
.end method


# virtual methods
.method public greylist-max-o setBottomRight(Landroid/graphics/PointF;)V
    .registers 4
    .param p1, "bottomRight"    # Landroid/graphics/PointF;

    .line 501
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 502
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 503
    iget v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 504
    iget v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v0, v1, :cond_1f

    .line 505
    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    .line 507
    :cond_1f
    return-void
.end method

.method public greylist-max-o setTopLeft(Landroid/graphics/PointF;)V
    .registers 4
    .param p1, "topLeft"    # Landroid/graphics/PointF;

    .line 492
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 493
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 494
    iget v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 495
    iget v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v0, v1, :cond_1f

    .line 496
    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    .line 498
    :cond_1f
    return-void
.end method
