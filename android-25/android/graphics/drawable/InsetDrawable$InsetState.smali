.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field mInsetBottom:I

.field mInsetLeft:I

.field mInsetRight:I

.field mInsetTop:I

.field private mThemeAttrs:[I


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)[I
    .locals 0

    #@0
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 261
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@4
    .line 255
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@6
    .line 256
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@8
    .line 257
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@a
    .line 258
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@c
    .line 263
    if-eqz p1, :cond_0

    #@e
    .line 264
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@10
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@12
    .line 265
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@14
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@16
    .line 266
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@18
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@1a
    .line 267
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1c
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1e
    .line 269
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    #@20
    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    #@22
    if-eq v0, v1, :cond_0

    #@24
    .line 270
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    #@26
    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    #@28
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    #@2b
    .line 260
    :cond_0
    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 1
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@2
    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@8
    .line 291
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@a
    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@10
    .line 292
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@12
    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@18
    .line 293
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1a
    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@20
    .line 289
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 301
    if-eqz p1, :cond_2

    #@3
    .line 302
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@6
    move-result-object v3

    #@7
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    #@9
    .line 303
    .local v1, "densityDpi":I
    if-nez v1, :cond_0

    #@b
    const/16 v0, 0xa0

    #@d
    .line 304
    .local v0, "density":I
    :goto_0
    iget v3, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    #@f
    if-eq v0, v3, :cond_1

    #@11
    .line 305
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@13
    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@16
    .line 313
    .end local v0    # "density":I
    .end local v1    # "densityDpi":I
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :goto_1
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    #@18
    invoke-direct {v3, v2, p1, v4}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable;)V

    #@1b
    return-object v3

    #@1c
    .line 303
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    .restart local v1    # "densityDpi":I
    :cond_0
    move v0, v1

    #@1d
    .restart local v0    # "density":I
    goto :goto_0

    #@1e
    .line 307
    :cond_1
    move-object v2, p0

    #@1f
    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_1

    #@20
    .line 310
    .end local v0    # "density":I
    .end local v1    # "densityDpi":I
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :cond_2
    move-object v2, p0

    #@21
    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_1
.end method

.method onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    #@3
    .line 279
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    #@6
    .line 276
    return-void
.end method
