.class public Landroid/graphics/drawable/PictureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PictureDrawable.java"


# instance fields
.field private mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@5
    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 64
    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/PictureDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 66
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@b
    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@e
    .line 68
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@10
    int-to-float v1, v1

    #@11
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@13
    int-to-float v2, v2

    #@14
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@17
    .line 69
    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@19
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    #@1c
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1f
    .line 63
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getPicture()Landroid/graphics/Picture;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@2
    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 91
    return-void
.end method

.method public setPicture(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    #@2
    .line 58
    return-void
.end method
