.class Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# static fields
.field static final greylist-max-o N_CHILDREN:I = 0x3


# instance fields
.field private greylist-max-o mAutoMirrored:Z

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mCheckedOpacity:Z

.field private greylist-max-o mCheckedStateful:Z

.field greylist-max-o mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mDensity:I

.field private greylist-max-o mIsStateful:Z

.field private greylist-max-o mOpacity:I

.field greylist-max-o mOpacityOverride:I

.field blacklist mSourceDrawableId:I

.field greylist-max-o mSrcDensityOverride:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "orig"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 1000
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 983
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 985
    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 990
    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 997
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    .line 1001
    if-eqz p1, :cond_10

    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    :cond_10
    invoke-static {p3, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    .line 1002
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1003
    if-eqz p1, :cond_5d

    .line 1004
    iget-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1006
    .local v1, "origChildDrawable":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    .line 1007
    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1008
    iget v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 1010
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v0, :cond_3c

    .line 1011
    aget-object v3, v1, v2

    .line 1012
    .local v3, "or":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v2

    .line 1010
    .end local v3    # "or":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1015
    .end local v2    # "i":I
    :cond_3c
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1016
    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    .line 1017
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1018
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    .line 1019
    iget-boolean v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mAutoMirrored:Z

    .line 1020
    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    .line 1021
    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 1022
    iget v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 1023
    .end local v1    # "origChildDrawable":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    goto :goto_6e

    .line 1024
    :cond_5d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    if-ge v1, v0, :cond_6e

    .line 1025
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v2, v1

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 1028
    .end local v1    # "i":I
    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 6

    .line 1038
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_20

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_20

    .line 1042
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1043
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1e

    .line 1044
    aget-object v3, v0, v2

    .line 1045
    .local v3, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1046
    return v1

    .line 1043
    .end local v3    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1049
    .end local v2    # "i":I
    :cond_1e
    const/4 v1, 0x0

    return v1

    .line 1039
    .end local v0    # "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    :cond_20
    :goto_20
    return v1
.end method

.method public final greylist-max-o canConstantState()Z
    .registers 5

    .line 1136
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1137
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x3

    if-ge v1, v2, :cond_17

    .line 1138
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1139
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_14

    .line 1140
    const/4 v3, 0x0

    return v3

    .line 1137
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1145
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1064
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final greylist-max-o getOpacity()I
    .registers 8

    .line 1069
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_7

    .line 1070
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    return v0

    .line 1073
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1076
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, -0x1

    .line 1077
    .local v1, "firstIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    .line 1078
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_16

    .line 1079
    move v1, v2

    .line 1080
    goto :goto_19

    .line 1077
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1085
    .end local v2    # "i":I
    :cond_19
    :goto_19
    if-ltz v1, :cond_24

    .line 1086
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .local v2, "op":I
    goto :goto_25

    .line 1088
    .end local v2    # "op":I
    :cond_24
    const/4 v2, -0x2

    .line 1092
    .restart local v2    # "op":I
    :goto_25
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    :goto_27
    if-ge v4, v3, :cond_3a

    .line 1093
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1094
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_37

    .line 1095
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v2, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    .line 1092
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1099
    .end local v4    # "i":I
    :cond_3a
    iput v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacity:I

    .line 1100
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1101
    return v2
.end method

.method public final greylist-max-o hasFocusStateSpecified()Z
    .registers 5

    .line 1125
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1126
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x3

    if-ge v1, v2, :cond_17

    .line 1127
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1128
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1129
    const/4 v3, 0x1

    return v3

    .line 1126
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1132
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o invalidateCache()V
    .registers 2

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedOpacity:Z

    .line 1150
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1151
    return-void
.end method

.method public final greylist-max-o isStateful()Z
    .registers 6

    .line 1105
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_7

    .line 1106
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    return v0

    .line 1109
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 1110
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .line 1111
    .local v1, "isStateful":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1f

    .line 1112
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1113
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1114
    const/4 v1, 0x1

    .line 1115
    goto :goto_1f

    .line 1111
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1119
    .end local v2    # "i":I
    :cond_1f
    :goto_1f
    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mIsStateful:Z

    .line 1120
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mCheckedStateful:Z

    .line 1121
    return v1
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1054
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1059
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 1031
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_6

    .line 1032
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    .line 1034
    :cond_6
    return-void
.end method
