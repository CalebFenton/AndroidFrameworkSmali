.class final Landroid/graphics/drawable/ScaleDrawable$ScaleState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ScaleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScaleState"
.end annotation


# static fields
.field private static final DO_NOT_SCALE:F = -1.0f


# instance fields
.field mGravity:I

.field mScaleHeight:F

.field mScaleWidth:F

.field mUseIntrinsicSizeAsMin:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@0
    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    .line 244
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    #@5
    .line 238
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@7
    .line 239
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@9
    .line 240
    const/4 v0, 0x3

    #@a
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@c
    .line 241
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@f
    .line 246
    if-eqz p1, :cond_0

    #@11
    .line 247
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@13
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@15
    .line 248
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@17
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@19
    .line 249
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@1b
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@1d
    .line 250
    iget-boolean v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@1f
    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@21
    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 256
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable;)V

    #@6
    return-object v0
.end method
