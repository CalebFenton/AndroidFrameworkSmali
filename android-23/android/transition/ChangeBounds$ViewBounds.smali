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
.field private mBottom:I

.field private mIsBottomRightSet:Z

.field private mIsTopLeftSet:Z

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 478
    iput-object p1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    #@5
    .line 477
    return-void
.end method

.method private setLeftTopRightBottom()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 500
    iget-object v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    #@3
    iget v1, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    #@5
    iget v2, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    #@7
    iget v3, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    #@9
    iget v4, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    #@b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    #@e
    .line 501
    iput-boolean v5, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsTopLeftSet:Z

    #@10
    .line 502
    iput-boolean v5, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsBottomRightSet:Z

    #@12
    .line 499
    return-void
.end method


# virtual methods
.method public setBottomRight(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "bottomRight"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 491
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mRight:I

    #@8
    .line 492
    iget v0, p1, Landroid/graphics/PointF;->y:F

    #@a
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mBottom:I

    #@10
    .line 493
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsBottomRightSet:Z

    #@13
    .line 494
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsTopLeftSet:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 495
    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    #@1a
    .line 490
    :cond_0
    return-void
.end method

.method public setTopLeft(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "topLeft"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 482
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mLeft:I

    #@8
    .line 483
    iget v0, p1, Landroid/graphics/PointF;->y:F

    #@a
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mTop:I

    #@10
    .line 484
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsTopLeftSet:Z

    #@13
    .line 485
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$ViewBounds;->mIsBottomRightSet:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 486
    invoke-direct {p0}, Landroid/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    #@1a
    .line 481
    :cond_0
    return-void
.end method
