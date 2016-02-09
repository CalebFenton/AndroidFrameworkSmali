.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveIsStateful:Z

.field private mHaveOpacity:Z

.field private mIsStateful:Z

.field mNum:I

.field private mOpacity:I

.field mOpacityOverride:I

.field mPaddingBottom:I

.field mPaddingEnd:I

.field mPaddingLeft:I

.field private mPaddingMode:I

.field mPaddingRight:I

.field mPaddingStart:I

.field mPaddingTop:I

.field mThemeAttrs:[I


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@2
    return p1
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, -0x1

    #@3
    .line 1779
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@6
    .line 1758
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@8
    .line 1759
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@a
    .line 1760
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@c
    .line 1761
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@e
    .line 1762
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@10
    .line 1763
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@12
    .line 1764
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@14
    .line 1775
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@16
    .line 1777
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@18
    .line 1780
    if-eqz p1, :cond_1

    #@1a
    .line 1781
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@1c
    .line 1782
    .local v3, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@1e
    .line 1784
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@20
    .line 1785
    new-array v4, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@22
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@24
    .line 1787
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@26
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@28
    .line 1788
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@2a
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@2c
    .line 1790
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@2f
    .line 1791
    aget-object v2, v3, v1

    #@31
    .line 1792
    .local v2, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@33
    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@35
    invoke-direct {v5, v2, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    #@38
    aput-object v5, v4, v1

    #@3a
    .line 1790
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1795
    .end local v2    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@3f
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@41
    .line 1796
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@43
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@45
    .line 1797
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@47
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@49
    .line 1798
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@4b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@4d
    .line 1799
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@4f
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@51
    .line 1800
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@53
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@55
    .line 1801
    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@57
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@59
    .line 1802
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@5b
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@5d
    .line 1803
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@5f
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@61
    .line 1804
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@63
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@65
    .line 1805
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@67
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@69
    .line 1806
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@6b
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@6d
    .line 1807
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@6f
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@71
    .line 1808
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@73
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@75
    .line 1779
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :goto_1
    return-void

    #@76
    .line 1810
    :cond_1
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@78
    .line 1811
    iput-object v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@7a
    goto :goto_1
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 7
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
    .line 1928
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2
    .line 1929
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 1930
    .local v0, "N":I
    const/4 v4, 0x0

    #@5
    .line 1931
    .local v4, "pixelCount":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@8
    .line 1932
    aget-object v6, v1, v3

    #@a
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 1933
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@e
    .line 1934
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@11
    move-result-object v5

    #@12
    .line 1935
    .local v5, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v5, :cond_0

    #@14
    .line 1936
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    #@17
    move-result v6

    #@18
    add-int/2addr v4, v6

    #@19
    .line 1931
    .end local v5    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1940
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v4
.end method

.method public canApplyTheme()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1817
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@3
    if-nez v4, :cond_0

    #@5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 1818
    :cond_0
    return v5

    #@c
    .line 1821
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@e
    .line 1822
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@10
    .line 1823
    .local v0, "N":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@13
    .line 1824
    aget-object v3, v1, v2

    #@15
    .line 1825
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 1826
    return v5

    #@1c
    .line 1823
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1830
    .end local v3    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    const/4 v4, 0x0

    #@20
    return v4
.end method

.method public final canConstantState()Z
    .locals 5

    #@0
    .prologue
    .line 1908
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2
    .line 1909
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 1910
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@7
    .line 1911
    aget-object v4, v1, v3

    #@9
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    .line 1912
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@10
    move-result-object v4

    #@11
    if-nez v4, :cond_0

    #@13
    .line 1913
    const/4 v4, 0x0

    #@14
    return v4

    #@15
    .line 1910
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1918
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x1

    #@19
    return v4
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 1845
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@2
    .line 1846
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@4
    .line 1845
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getOpacity()I
    .locals 7

    #@0
    .prologue
    .line 1850
    iget-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 1851
    iget v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@6
    return v6

    #@7
    .line 1854
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    .line 1855
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@b
    .line 1858
    .local v0, "N":I
    const/4 v3, -0x1

    #@c
    .line 1859
    .local v3, "firstIndex":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@f
    .line 1860
    aget-object v6, v1, v4

    #@11
    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v6, :cond_3

    #@15
    .line 1861
    move v3, v4

    #@16
    .line 1867
    :cond_1
    if-ltz v3, :cond_4

    #@18
    .line 1868
    aget-object v6, v1, v3

    #@1a
    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@1f
    move-result v5

    #@20
    .line 1874
    .local v5, "op":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    #@22
    :goto_2
    if-ge v4, v0, :cond_5

    #@24
    .line 1875
    aget-object v6, v1, v4

    #@26
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@28
    .line 1876
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    #@2a
    .line 1877
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@2d
    move-result v6

    #@2e
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@31
    move-result v5

    #@32
    .line 1874
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_2

    #@35
    .line 1859
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "op":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1870
    :cond_4
    const/4 v5, -0x2

    #@39
    .restart local v5    # "op":I
    goto :goto_1

    #@3a
    .line 1881
    :cond_5
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@3c
    .line 1882
    const/4 v6, 0x1

    #@3d
    iput-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@3f
    .line 1883
    return v5
.end method

.method public invalidateCache()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1922
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@3
    .line 1923
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@5
    .line 1921
    return-void
.end method

.method public final isStateful()Z
    .locals 6

    #@0
    .prologue
    .line 1887
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 1888
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@6
    return v5

    #@7
    .line 1891
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    .line 1892
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@b
    .line 1893
    .local v0, "N":I
    const/4 v4, 0x0

    #@c
    .line 1894
    .local v4, "isStateful":Z
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@f
    .line 1895
    aget-object v5, v1, v3

    #@11
    iget-object v2, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    .line 1896
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    #@15
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 1897
    const/4 v4, 0x1

    #@1c
    .line 1902
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@1e
    .line 1903
    const/4 v5, 0x1

    #@1f
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@21
    .line 1904
    return v4

    #@22
    .line 1894
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 1835
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1840
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method
