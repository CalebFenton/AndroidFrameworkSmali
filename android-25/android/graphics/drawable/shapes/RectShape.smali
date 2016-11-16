.class public Landroid/graphics/drawable/shapes/RectShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "RectShape.java"


# instance fields
.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    #@3
    .line 31
    new-instance v0, Landroid/graphics/RectF;

    #@5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    #@a
    .line 33
    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/graphics/drawable/shapes/RectShape;

    #@6
    .line 62
    .local v0, "shape":Landroid/graphics/drawable/shapes/RectShape;
    new-instance v1, Landroid/graphics/RectF;

    #@8
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    #@a
    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@d
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    #@f
    .line 63
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@5
    .line 36
    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    #@3
    move-result-object v0

    #@4
    .line 43
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    #@6
    float-to-double v2, v1

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@a
    move-result-wide v2

    #@b
    double-to-int v1, v2

    #@c
    iget v2, v0, Landroid/graphics/RectF;->top:F

    #@e
    float-to-double v2, v2

    #@f
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@12
    move-result-wide v2

    #@13
    double-to-int v2, v2

    #@14
    .line 44
    iget v3, v0, Landroid/graphics/RectF;->right:F

    #@16
    float-to-double v4, v3

    #@17
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@1a
    move-result-wide v4

    #@1b
    double-to-int v3, v4

    #@1c
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    #@1e
    float-to-double v4, v4

    #@1f
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@22
    move-result-wide v4

    #@23
    double-to-int v4, v4

    #@24
    .line 43
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Outline;->setRect(IIII)V

    #@27
    .line 41
    return-void
.end method

.method protected onResize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 49
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    #@3
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    #@6
    .line 48
    return-void
.end method

.method protected final rect()Landroid/graphics/RectF;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    #@2
    return-object v0
.end method
