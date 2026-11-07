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
.field private static final greylist-max-o DO_NOT_SCALE:F = -1.0f


# instance fields
.field greylist-max-o mGravity:I

.field greylist-max-o mInitialLevel:I

.field greylist-max-o mScaleHeight:F

.field greylist-max-o mScaleWidth:F

.field private greylist-max-o mThemeAttrs:[I

.field greylist-max-o mUseIntrinsicSizeAsMin:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "orig"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 262
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 263
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 264
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 266
    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 271
    if-eqz p1, :cond_27

    .line 272
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 273
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 274
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 275
    iget-boolean v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 276
    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 278
    :cond_27
    return-void
.end method


# virtual methods
.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 282
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable-IA;)V

    return-object v0
.end method
