.class public abstract Landroid/graphics/drawable/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist-max-o mHeight:F

.field private greylist-max-o mWidth:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 124
    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 129
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/shapes/Shape;

    .line 130
    .local v2, "shape":Landroid/graphics/drawable/shapes/Shape;
    iget v3, v2, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    iget v4, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2a

    iget v3, v2, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    iget v4, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 130
    :goto_2b
    return v0

    .line 127
    .end local v2    # "shape":Landroid/graphics/drawable/shapes/Shape;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public final whitelist getHeight()F
    .registers 2

    .line 51
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 114
    return-void
.end method

.method public final whitelist getWidth()F
    .registers 2

    .line 44
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    return v0
.end method

.method public whitelist hasAlpha()Z
    .registers 2

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 136
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 104
    return-void
.end method

.method public final whitelist resize(FF)V
    .registers 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 73
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 74
    const/4 p1, 0x0

    .line 76
    :cond_6
    cmpg-float v0, p2, v0

    if-gez v0, :cond_b

    .line 77
    const/4 p2, 0x0

    .line 79
    :cond_b
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1e

    .line 80
    :cond_17
    iput p1, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    .line 81
    iput p2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    .line 84
    :cond_1e
    return-void
.end method
