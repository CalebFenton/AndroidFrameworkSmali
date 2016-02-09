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
.field mAutoMirrored:Z

.field mBaseAlpha:F

.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field mGravity:I

.field final mPaint:Landroid/graphics/Paint;

.field mRebuildShader:Z

.field mTargetDensity:I

.field mThemeAttrs:[I

.field mTileModeX:Landroid/graphics/Shader$TileMode;

.field mTileModeY:Landroid/graphics/Shader$TileMode;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 911
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@4
    .line 897
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@6
    .line 898
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@8
    .line 899
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    .line 900
    sget-object v0, Landroid/graphics/drawable/BitmapDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e
    .line 901
    const/16 v0, 0x77

    #@10
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@12
    .line 902
    const/high16 v0, 0x3f800000    # 1.0f

    #@14
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@16
    .line 903
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@18
    .line 904
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@1a
    .line 905
    const/16 v0, 0xa0

    #@1c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@1e
    .line 906
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@21
    .line 912
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@23
    .line 913
    new-instance v0, Landroid/graphics/Paint;

    #@25
    const/4 v1, 0x6

    #@26
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@29
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@2b
    .line 911
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V
    .locals 2
    .param p1, "bitmapState"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 916
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@4
    .line 897
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@6
    .line 898
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@8
    .line 899
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    .line 900
    sget-object v0, Landroid/graphics/drawable/BitmapDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e
    .line 901
    const/16 v0, 0x77

    #@10
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@12
    .line 902
    const/high16 v0, 0x3f800000    # 1.0f

    #@14
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@16
    .line 903
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@18
    .line 904
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@1a
    .line 905
    const/16 v0, 0xa0

    #@1c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@1e
    .line 906
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@21
    .line 917
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@23
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@25
    .line 918
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@27
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@29
    .line 919
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2b
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2d
    .line 920
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@31
    .line 921
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@33
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@35
    .line 922
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@37
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@39
    .line 923
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@3b
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@3d
    .line 924
    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@3f
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@41
    .line 925
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@43
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@45
    .line 926
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@47
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@49
    .line 927
    new-instance v0, Landroid/graphics/Paint;

    #@4b
    iget-object v1, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4d
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@50
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@52
    .line 928
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@54
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@56
    .line 929
    iget-boolean v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@58
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@5a
    .line 916
    return-void
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 939
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->isAtlasable(Landroid/graphics/Bitmap;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 940
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@15
    move-result v0

    #@16
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@18
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1b
    move-result v1

    #@1c
    mul-int/2addr v0, v1

    #@1d
    return v0

    #@1e
    .line 942
    :cond_0
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 934
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 957
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@2
    .line 958
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@b
    move-result v0

    #@c
    .line 957
    :goto_0
    or-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 958
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 947
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 952
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    #@6
    return-object v0
.end method
