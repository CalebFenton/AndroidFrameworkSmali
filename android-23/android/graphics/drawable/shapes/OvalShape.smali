.class public Landroid/graphics/drawable/shapes/OvalShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "OvalShape.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@7
    .line 35
    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    #@3
    move-result-object v0

    #@4
    .line 42
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
    .line 43
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
    .line 42
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Outline;->setOval(IIII)V

    #@27
    .line 40
    return-void
.end method
