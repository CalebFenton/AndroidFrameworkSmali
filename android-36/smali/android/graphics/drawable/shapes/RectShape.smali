.class public Landroid/graphics/drawable/shapes/RectShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "RectShape.java"


# instance fields
.field private greylist-max-o mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/RectShape;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 64
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/RectShape;

    .line 65
    .local v0, "shape":Landroid/graphics/drawable/shapes/RectShape;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    .line 66
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 41
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    if-ne p0, p1, :cond_4

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_25

    .line 77
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/Shape;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 78
    return v0

    .line 80
    :cond_19
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/shapes/RectShape;

    .line 81
    .local v0, "rectShape":Landroid/graphics/drawable/shapes/RectShape;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 75
    .end local v0    # "rectShape":Landroid/graphics/drawable/shapes/RectShape;
    :cond_25
    :goto_25
    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 8
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 46
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 46
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 48
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 86
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 52
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    return-void
.end method

.method protected final whitelist rect()Landroid/graphics/RectF;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RectShape;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method
