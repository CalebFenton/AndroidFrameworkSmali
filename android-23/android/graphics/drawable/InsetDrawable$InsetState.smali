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


# direct methods
.method constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 257
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    #@4
    .line 251
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@6
    .line 252
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@8
    .line 253
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@a
    .line 254
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@c
    .line 259
    if-eqz p1, :cond_0

    #@e
    .line 260
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@10
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@12
    .line 261
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@14
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@16
    .line 262
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@18
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@1a
    .line 263
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1c
    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1e
    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 269
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable;)V

    #@6
    return-object v0
.end method
