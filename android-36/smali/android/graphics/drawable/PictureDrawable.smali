.class public Landroid/graphics/drawable/PictureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PictureDrawable.java"


# instance fields
.field private greylist-max-o mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Picture;)V
    .registers 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 64
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_1f

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/PictureDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 66
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 68
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1f
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 87
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getPicture()Landroid/graphics/Picture;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method public whitelist setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 94
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 91
    return-void
.end method

.method public whitelist setPicture(Landroid/graphics/Picture;)V
    .registers 2
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 59
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    .line 60
    return-void
.end method
