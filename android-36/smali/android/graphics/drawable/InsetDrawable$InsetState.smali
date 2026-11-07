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
.field greylist-max-o mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 326
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 328
    if-eqz p1, :cond_33

    .line 329
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 330
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 331
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 332
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 334
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v0, v1, :cond_4f

    .line 335
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    goto :goto_4f

    .line 338
    :cond_33
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 339
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 340
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 341
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 343
    :cond_4f
    :goto_4f
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 4
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 360
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 363
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 364
    return-void
.end method


# virtual methods
.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 371
    if-eqz p1, :cond_1a

    .line 372
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 373
    .local v0, "densityDpi":I
    if-nez v0, :cond_d

    const/16 v1, 0xa0

    goto :goto_e

    :cond_d
    move v1, v0

    .line 374
    .local v1, "density":I
    :goto_e
    iget v2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v1, v2, :cond_18

    .line 375
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_19

    .line 377
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :cond_18
    move-object v2, p0

    .line 379
    .end local v0    # "densityDpi":I
    .end local v1    # "density":I
    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :goto_19
    goto :goto_1b

    .line 380
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :cond_1a
    move-object v2, p0

    .line 383
    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :goto_1b
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable-IA;)V

    return-object v0
.end method

.method greylist-max-o onDensityChanged(II)V
    .registers 3
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 347
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    .line 349
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    .line 350
    return-void
.end method
