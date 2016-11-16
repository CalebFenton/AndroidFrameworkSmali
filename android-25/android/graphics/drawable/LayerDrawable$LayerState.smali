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

.field mDensity:I

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

.field private mThemeAttrs:[I


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

.method static synthetic -get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@2
    return-object v0
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

.method static synthetic -set2(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I
    .locals 0

    #@0
    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@2
    return-object p1
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
    .line 1937
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@6
    .line 1916
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@8
    .line 1917
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@a
    .line 1918
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@c
    .line 1919
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@e
    .line 1920
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@10
    .line 1921
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@12
    .line 1922
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@14
    .line 1933
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@16
    .line 1935
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@18
    .line 1939
    if-eqz p1, :cond_0

    #@1a
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@1c
    :goto_0
    invoke-static {p3, v4}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@1f
    move-result v4

    #@20
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@22
    .line 1941
    if-eqz p1, :cond_3

    #@24
    .line 1942
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@26
    .line 1943
    .local v3, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@28
    .line 1945
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@2a
    .line 1946
    new-array v4, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2c
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2e
    .line 1948
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@30
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@32
    .line 1949
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@34
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@36
    .line 1951
    const/4 v1, 0x0

    #@37
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@39
    .line 1952
    aget-object v2, v3, v1

    #@3b
    .line 1953
    .local v2, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3d
    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@3f
    invoke-direct {v5, v2, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    #@42
    aput-object v5, v4, v1

    #@44
    .line 1951
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_1

    #@47
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    move v4, v5

    #@48
    .line 1939
    goto :goto_0

    #@49
    .line 1956
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@4b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@4d
    .line 1957
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@4f
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@51
    .line 1958
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@53
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@55
    .line 1959
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@57
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@59
    .line 1960
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@5b
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    #@5d
    .line 1961
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@5f
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    #@61
    .line 1962
    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@63
    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    #@65
    .line 1963
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@67
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@69
    .line 1964
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@6b
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@6d
    .line 1965
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@6f
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@71
    .line 1966
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@73
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@75
    .line 1967
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@77
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@79
    .line 1968
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@7b
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@7d
    .line 1969
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@7f
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    #@81
    .line 1971
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@83
    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@85
    if-eq v4, v5, :cond_2

    #@87
    .line 1972
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@89
    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@8b
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    #@8e
    .line 1938
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    :goto_2
    return-void

    #@8f
    .line 1975
    :cond_3
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@91
    .line 1976
    iput-object v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@93
    goto :goto_2
.end method

.method private applyDensityScaling(II)V
    .locals 2
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1994
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 1996
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@7
    .line 1995
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    #@d
    .line 1998
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@f
    if-lez v0, :cond_1

    #@11
    .line 2000
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@13
    .line 1999
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    #@19
    .line 2002
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@1b
    if-lez v0, :cond_2

    #@1d
    .line 2004
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@1f
    .line 2003
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    #@25
    .line 2006
    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@27
    if-lez v0, :cond_3

    #@29
    .line 2008
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@2b
    .line 2007
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    #@31
    .line 2010
    :cond_3
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@33
    if-lez v0, :cond_4

    #@35
    .line 2012
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@37
    .line 2011
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    #@3d
    .line 2014
    :cond_4
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@3f
    if-lez v0, :cond_5

    #@41
    .line 2016
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@43
    .line 2015
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    #@49
    .line 1993
    :cond_5
    return-void
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
    .line 2133
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2
    .line 2134
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 2135
    .local v0, "N":I
    const/4 v4, 0x0

    #@5
    .line 2136
    .local v4, "pixelCount":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@8
    .line 2137
    aget-object v6, v1, v3

    #@a
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 2138
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@e
    .line 2139
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@11
    move-result-object v5

    #@12
    .line 2140
    .local v5, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v5, :cond_0

    #@14
    .line 2141
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    #@17
    move-result v6

    #@18
    add-int/2addr v4, v6

    #@19
    .line 2136
    .end local v5    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2145
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
    .line 2022
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
    .line 2023
    :cond_0
    return v5

    #@c
    .line 2026
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@e
    .line 2027
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@10
    .line 2028
    .local v0, "N":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@13
    .line 2029
    aget-object v3, v1, v2

    #@15
    .line 2030
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 2031
    return v5

    #@1c
    .line 2028
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2035
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
    .line 2113
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2
    .line 2114
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@4
    .line 2115
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@7
    .line 2116
    aget-object v4, v1, v3

    #@9
    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    .line 2117
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@10
    move-result-object v4

    #@11
    if-nez v4, :cond_0

    #@13
    .line 2118
    const/4 v4, 0x0

    #@14
    return v4

    #@15
    .line 2115
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 2123
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
    .line 2050
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    #@2
    .line 2051
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    #@4
    .line 2050
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getOpacity()I
    .locals 7

    #@0
    .prologue
    .line 2055
    iget-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 2056
    iget v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@6
    return v6

    #@7
    .line 2059
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    .line 2060
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@b
    .line 2063
    .local v0, "N":I
    const/4 v3, -0x1

    #@c
    .line 2064
    .local v3, "firstIndex":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@f
    .line 2065
    aget-object v6, v1, v4

    #@11
    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v6, :cond_3

    #@15
    .line 2066
    move v3, v4

    #@16
    .line 2072
    :cond_1
    if-ltz v3, :cond_4

    #@18
    .line 2073
    aget-object v6, v1, v3

    #@1a
    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@1f
    move-result v5

    #@20
    .line 2079
    .local v5, "op":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    #@22
    :goto_2
    if-ge v4, v0, :cond_5

    #@24
    .line 2080
    aget-object v6, v1, v4

    #@26
    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@28
    .line 2081
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    #@2a
    .line 2082
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@2d
    move-result v6

    #@2e
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@31
    move-result v5

    #@32
    .line 2079
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_2

    #@35
    .line 2064
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "op":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2075
    :cond_4
    const/4 v5, -0x2

    #@39
    .restart local v5    # "op":I
    goto :goto_1

    #@3a
    .line 2086
    :cond_5
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    #@3c
    .line 2087
    const/4 v6, 0x1

    #@3d
    iput-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@3f
    .line 2088
    return v5
.end method

.method public invalidateCache()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2127
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    #@3
    .line 2128
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@5
    .line 2126
    return-void
.end method

.method public final isStateful()Z
    .locals 6

    #@0
    .prologue
    .line 2092
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 2093
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@6
    return v5

    #@7
    .line 2096
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@9
    .line 2097
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@b
    .line 2098
    .local v0, "N":I
    const/4 v4, 0x0

    #@c
    .line 2099
    .local v4, "isStateful":Z
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@f
    .line 2100
    aget-object v5, v1, v3

    #@11
    iget-object v2, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    .line 2101
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    #@15
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 2102
    const/4 v4, 0x1

    #@1c
    .line 2107
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    #@1e
    .line 2108
    const/4 v5, 0x1

    #@1f
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    #@21
    .line 2109
    return v4

    #@22
    .line 2099
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
    .line 2040
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
    .line 2045
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method

.method protected onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    .line 1990
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    #@3
    .line 1989
    return-void
.end method

.method public final setDensity(I)V
    .locals 2
    .param p1, "targetDensity"    # I

    #@0
    .prologue
    .line 1981
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@2
    if-eq v1, p1, :cond_0

    #@4
    .line 1982
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@6
    .line 1983
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    #@8
    .line 1985
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    #@b
    .line 1980
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method
