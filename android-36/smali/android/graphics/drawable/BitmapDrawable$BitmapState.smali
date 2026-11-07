.class final Landroid/graphics/drawable/BitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapState"
.end annotation


# instance fields
.field greylist-max-o mAutoMirrored:Z

.field greylist-max-o mBaseAlpha:F

.field greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mChangingConfigurations:I

.field greylist-max-o mGravity:I

.field final greylist-max-o mPaint:Landroid/graphics/Paint;

.field greylist-max-o mRebuildShader:Z

.field greylist-max-o mSrcDensityOverride:I

.field greylist-max-o mTargetDensity:I

.field greylist-max-o mThemeAttrs:[I

.field greylist-max-o mTileModeX:Landroid/graphics/Shader$TileMode;

.field greylist-max-o mTileModeY:Landroid/graphics/Shader$TileMode;

.field greylist-max-o mTint:Landroid/content/res/ColorStateList;


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1011
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 990
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 991
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    .line 992
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 994
    const/16 v1, 0x77

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 995
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    .line 996
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 997
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 1001
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mSrcDensityOverride:I

    .line 1004
    const/16 v1, 0xa0

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 1006
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    .line 1012
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 1013
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 1014
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V
    .registers 4
    .param p1, "bitmapState"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 1016
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 990
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 991
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    .line 992
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 994
    const/16 v1, 0x77

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 995
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    .line 996
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 997
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 1001
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mSrcDensityOverride:I

    .line 1004
    const/16 v1, 0xa0

    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 1006
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    .line 1017
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 1018
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    .line 1019
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1020
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 1021
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 1022
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 1023
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 1024
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 1025
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mSrcDensityOverride:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mSrcDensityOverride:I

    .line 1026
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 1027
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    .line 1028
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 1029
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    .line 1030
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    .line 1031
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 2

    .line 1035
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1050
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 1051
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v0, v1

    .line 1050
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1040
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1045
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable-IA;)V

    return-object v0
.end method
