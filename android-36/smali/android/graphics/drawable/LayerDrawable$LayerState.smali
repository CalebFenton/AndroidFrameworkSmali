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
.field private greylist-max-o mAutoMirrored:Z

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mCheckedOpacity:Z

.field private greylist-max-o mCheckedStateful:Z

.field greylist mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mDensity:I

.field private greylist-max-o mIsStateful:Z

.field greylist-max-o mNumChildren:I

.field private greylist-max-o mOpacity:I

.field greylist-max-o mOpacityOverride:I

.field greylist-max-o mPaddingBottom:I

.field greylist-max-o mPaddingEnd:I

.field greylist-max-o mPaddingLeft:I

.field private greylist-max-o mPaddingMode:I

.field greylist-max-o mPaddingRight:I

.field greylist-max-o mPaddingStart:I

.field greylist-max-o mPaddingTop:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 1962
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1940
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1941
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1942
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1943
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1944
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1945
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1946
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1957
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1959
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1963
    if-eqz p1, :cond_1c

    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 1965
    if-eqz p1, :cond_8e

    .line 1966
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1967
    .local v0, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1969
    .local v1, "N":I
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1970
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1972
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1973
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1975
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_48

    .line 1976
    aget-object v3, v0, v2

    .line 1977
    .local v3, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v2

    .line 1975
    .end local v3    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1980
    .end local v2    # "i":I
    :cond_48
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 1981
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1982
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 1983
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1984
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1985
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1986
    iget-object v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 1987
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1988
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1989
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1990
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1991
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1992
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1993
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1995
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v2, v3, :cond_8d

    .line 1996
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 1998
    .end local v0    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "N":I
    :cond_8d
    goto :goto_93

    .line 1999
    :cond_8e
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2000
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2002
    :goto_93
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 5
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2018
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    const/4 v1, 0x0

    if-lez v0, :cond_d

    .line 2019
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 2022
    :cond_d
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    if-lez v0, :cond_19

    .line 2023
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 2026
    :cond_19
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    if-lez v0, :cond_25

    .line 2027
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2030
    :cond_25
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    if-lez v0, :cond_31

    .line 2031
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2034
    :cond_31
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    if-lez v0, :cond_3d

    .line 2035
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2038
    :cond_3d
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    if-lez v0, :cond_49

    .line 2039
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2042
    :cond_49
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 7

    .line 2046
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_21

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_21

    .line 2050
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2051
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2052
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_1f

    .line 2053
    aget-object v4, v0, v3

    .line 2054
    .local v4, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2055
    return v1

    .line 2052
    .end local v4    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2059
    .end local v3    # "i":I
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 2047
    .end local v0    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "N":I
    :cond_21
    :goto_21
    return v1
.end method

.method public final greylist-max-o canConstantState()Z
    .registers 6

    .line 2149
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2150
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2151
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_18

    .line 2152
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2153
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_15

    .line 2154
    const/4 v4, 0x0

    return v4

    .line 2151
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2159
    .end local v2    # "i":I
    :cond_18
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 2074
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final greylist-max-o getOpacity()I
    .registers 8

    .line 2079
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_7

    .line 2080
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v0

    .line 2083
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2084
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2087
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, -0x1

    .line 2088
    .local v2, "firstIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1a

    .line 2089
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_17

    .line 2090
    move v2, v3

    .line 2091
    goto :goto_1a

    .line 2088
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2096
    .end local v3    # "i":I
    :cond_1a
    :goto_1a
    if-ltz v2, :cond_25

    .line 2097
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .local v3, "op":I
    goto :goto_26

    .line 2099
    .end local v3    # "op":I
    :cond_25
    const/4 v3, -0x2

    .line 2103
    .restart local v3    # "op":I
    :goto_26
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    :goto_28
    if-ge v4, v0, :cond_3b

    .line 2104
    aget-object v5, v1, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2105
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_38

    .line 2106
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v3, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 2103
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 2110
    .end local v4    # "i":I
    :cond_3b
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 2111
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2112
    return v3
.end method

.method public final greylist-max-o hasFocusStateSpecified()Z
    .registers 6

    .line 2137
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2138
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2139
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_18

    .line 2140
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2141
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2142
    const/4 v4, 0x1

    return v4

    .line 2139
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2145
    .end local v2    # "i":I
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method greylist-max-o invalidateCache()V
    .registers 2

    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2167
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2168
    return-void
.end method

.method public final greylist-max-o isStateful()Z
    .registers 7

    .line 2116
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_7

    .line 2117
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    return v0

    .line 2120
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2121
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2122
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .line 2123
    .local v2, "isStateful":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_20

    .line 2124
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2125
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2126
    const/4 v2, 0x1

    .line 2127
    goto :goto_20

    .line 2123
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2131
    .end local v3    # "i":I
    :cond_20
    :goto_20
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 2132
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2133
    return v2
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2064
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2069
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected greylist-max-o onDensityChanged(II)V
    .registers 3
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2014
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 2015
    return-void
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 2005
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_b

    .line 2006
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2007
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2009
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 2011
    .end local v0    # "sourceDensity":I
    :cond_b
    return-void
.end method
