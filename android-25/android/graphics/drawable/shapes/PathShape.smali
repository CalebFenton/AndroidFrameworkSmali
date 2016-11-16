.class public Landroid/graphics/drawable/shapes/PathShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "PathShape.java"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private mScaleX:F

.field private mScaleY:F

.field private mStdHeight:F

.field private mStdWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "stdWidth"    # F
    .param p3, "stdHeight"    # F

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    #@5
    .line 50
    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    #@7
    .line 51
    iput p3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    #@9
    .line 48
    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/PathShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/graphics/drawable/shapes/PathShape;

    #@6
    .line 71
    .local v0, "shape":Landroid/graphics/drawable/shapes/PathShape;
    new-instance v1, Landroid/graphics/Path;

    #@8
    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    #@a
    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@d
    iput-object v1, v0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    #@f
    .line 72
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
    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 57
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    #@5
    iget v1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@a
    .line 58
    iget-object v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@f
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@12
    .line 55
    return-void
.end method

.method protected onResize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    #@0
    .prologue
    .line 64
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    #@2
    div-float v0, p1, v0

    #@4
    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    #@6
    .line 65
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    #@8
    div-float v0, p2, v0

    #@a
    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    #@c
    .line 63
    return-void
.end method
