.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedBitmap:Landroid/graphics/Bitmap;

.field mCachedRootAlpha:I

.field mCachedThemeAttrs:[I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mTempPaint:Landroid/graphics/Paint;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 880
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    .line 766
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    .line 767
    sget-object v0, Landroid/graphics/drawable/VectorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    .line 881
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@c
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;-><init>()V

    #@f
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@11
    .line 880
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 781
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@4
    .line 766
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    .line 767
    sget-object v0, Landroid/graphics/drawable/VectorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    .line 782
    if-eqz p1, :cond_2

    #@c
    .line 783
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@10
    .line 784
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@12
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@14
    .line 785
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@16
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;-><init>(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)V

    #@1b
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@1d
    .line 786
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@1f
    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-get0(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 787
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@27
    new-instance v1, Landroid/graphics/Paint;

    #@29
    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@2b
    invoke-static {v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-get0(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@32
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-set0(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    #@35
    .line 789
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@37
    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-get2(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 790
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@3f
    new-instance v1, Landroid/graphics/Paint;

    #@41
    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@43
    invoke-static {v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-get2(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    #@46
    move-result-object v2

    #@47
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@4a
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-set1(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    #@4d
    .line 792
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4f
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@51
    .line 793
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@53
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@55
    .line 794
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@57
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@59
    .line 781
    :cond_2
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_2

    #@4
    .line 875
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->canApplyTheme()Z

    #@d
    move-result v0

    #@e
    .line 874
    if-nez v0, :cond_2

    #@10
    .line 876
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@12
    if-eqz v0, :cond_1

    #@14
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@16
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@19
    move-result v0

    #@1a
    .line 874
    if-nez v0, :cond_2

    #@1c
    .line 877
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@1f
    move-result v0

    #@20
    .line 874
    :goto_0
    return v0

    #@21
    :cond_2
    const/4 v0, 0x1

    #@22
    goto :goto_0
.end method

.method public canReuseBitmap(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v0

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 843
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@d
    move-result v0

    #@e
    if-ne p2, v0, :cond_0

    #@10
    .line 844
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 846
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public canReuseCache()Z
    .locals 2

    #@0
    .prologue
    .line 850
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 851
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 852
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 853
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    #@12
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 854
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    #@18
    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@1a
    if-ne v0, v1, :cond_0

    #@1c
    .line 855
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedRootAlpha:I

    #@1e
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@20
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@23
    move-result v1

    #@24
    if-ne v0, v1, :cond_0

    #@26
    .line 856
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 858
    :cond_0
    const/4 v0, 0x0

    #@29
    return v0
.end method

.method public createCachedBitmapIfNeeded(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseBitmap(II)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 832
    :goto_0
    return-void

    #@b
    .line 835
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@d
    .line 834
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@13
    .line 836
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@16
    goto :goto_0
.end method

.method public drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;
    .param p3, "originalBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 801
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    #@3
    move-result-object v0

    #@4
    .line 802
    .local v0, "p":Landroid/graphics/Paint;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@a
    .line 799
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 896
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@2
    .line 897
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    #@b
    move-result v0

    #@c
    .line 896
    :goto_0
    or-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 897
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 813
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->hasTranslucentRoot()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    if-nez p1, :cond_0

    #@9
    .line 814
    return-object v1

    #@a
    .line 817
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 818
    new-instance v0, Landroid/graphics/Paint;

    #@10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    #@15
    .line 819
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    #@17
    const/4 v1, 0x1

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@1b
    .line 821
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    #@1d
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@1f
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@22
    move-result v1

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@26
    .line 822
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    #@28
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@2b
    .line 823
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    #@2d
    return-object v0
.end method

.method public hasTranslucentRoot()Z
    .locals 2

    #@0
    .prologue
    .line 806
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xff

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 886
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 891
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    #@6
    return-object v0
.end method

.method public updateCacheStates()V
    .locals 1

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@2
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    #@4
    .line 865
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    #@8
    .line 866
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 867
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedRootAlpha:I

    #@14
    .line 868
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@16
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    #@18
    .line 869
    const/4 v0, 0x0

    #@19
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@1b
    .line 861
    return-void
.end method

.method public updateCachedBitmap(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 827
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    #@6
    .line 828
    new-instance v0, Landroid/graphics/Canvas;

    #@8
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@d
    .line 829
    .local v0, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@13
    .line 826
    return-void
.end method
