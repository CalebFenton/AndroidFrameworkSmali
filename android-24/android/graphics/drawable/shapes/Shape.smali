.class public abstract Landroid/graphics/drawable/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/graphics/drawable/shapes/Shape;

    #@6
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public final getHeight()F
    .locals 1

    #@0
    .prologue
    .line 45
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    #@2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 102
    return-void
.end method

.method public final getWidth()F
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    #@2
    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected onResize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public final resize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    cmpg-float v0, p1, v1

    #@3
    if-gez v0, :cond_0

    #@5
    .line 66
    const/4 p1, 0x0

    #@6
    .line 68
    :cond_0
    cmpg-float v0, p2, v1

    #@8
    if-gez v0, :cond_1

    #@a
    .line 69
    const/4 p2, 0x0

    #@b
    .line 71
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    #@d
    cmpl-float v0, v0, p1

    #@f
    if-nez v0, :cond_2

    #@11
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    #@13
    cmpl-float v0, v0, p2

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 72
    :cond_2
    iput p1, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    #@19
    .line 73
    iput p2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    #@1b
    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    #@1e
    .line 64
    :cond_3
    return-void
.end method
