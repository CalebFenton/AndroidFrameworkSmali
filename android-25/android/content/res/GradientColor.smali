.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;
    }
.end annotation


# static fields
.field private static final DBG_GRADIENT:Z = false

.field private static final TAG:Ljava/lang/String; = "GradientColor"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private mCenterColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mChangingConfigurations:I

.field private mDefaultColor:I

.field private mEndColor:I

.field private mEndX:F

.field private mEndY:F

.field private mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private mGradientRadius:F

.field private mGradientType:I

.field private mHasCenterColor:Z

.field private mItemColors:[I

.field private mItemOffsets:[F

.field private mItemsThemeAttrs:[[I

.field private mShader:Landroid/graphics/Shader;

.field private mStartColor:I

.field private mStartX:F

.field private mStartY:F

.field private mThemeAttrs:[I

.field private mTileMode:I


# direct methods
.method static synthetic -get0(Landroid/content/res/GradientColor;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 124
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    #@5
    .line 93
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@8
    .line 97
    iput v2, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@a
    .line 99
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@c
    .line 100
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@e
    .line 102
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    #@10
    .line 103
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    #@12
    .line 104
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    #@14
    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    #@16
    .line 107
    iput v2, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@18
    .line 108
    iput v2, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    #@1a
    .line 109
    iput v2, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@1c
    .line 110
    iput-boolean v2, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@1e
    .line 112
    iput v2, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@20
    .line 114
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@22
    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/content/res/GradientColor;)V
    .locals 3
    .param p1, "copy"    # Landroid/content/res/GradientColor;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 127
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    #@6
    .line 93
    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@8
    .line 97
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@a
    .line 99
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@c
    .line 100
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@e
    .line 102
    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    #@10
    .line 103
    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    #@12
    .line 104
    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    #@14
    .line 105
    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    #@16
    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@18
    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    #@1a
    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@1c
    .line 110
    iput-boolean v1, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@1e
    .line 112
    iput v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@20
    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@22
    .line 128
    if-eqz p1, :cond_3

    #@24
    .line 129
    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@26
    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@28
    .line 130
    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    #@2a
    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    #@2c
    .line 131
    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@2e
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@30
    .line 132
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    #@32
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@34
    .line 133
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    #@36
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@38
    .line 134
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    #@3a
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@3c
    .line 135
    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    #@3e
    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    #@40
    .line 136
    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    #@42
    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    #@44
    .line 137
    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    #@46
    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    #@48
    .line 138
    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    #@4a
    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    #@4c
    .line 139
    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    #@4e
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@50
    .line 140
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    #@52
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    #@54
    .line 141
    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    #@56
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@58
    .line 142
    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@5a
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@5c
    .line 143
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@5e
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@60
    .line 144
    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    #@62
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@64
    .line 146
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    #@66
    if-eqz v0, :cond_0

    #@68
    .line 147
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    #@6a
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, [I

    #@70
    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@72
    .line 149
    :cond_0
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@74
    if-eqz v0, :cond_1

    #@76
    .line 150
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@78
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, [F

    #@7e
    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@80
    .line 153
    :cond_1
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@82
    if-eqz v0, :cond_2

    #@84
    .line 154
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@86
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, [I

    #@8c
    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@8e
    .line 156
    :cond_2
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@90
    if-eqz v0, :cond_3

    #@92
    .line 157
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@94
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@97
    move-result-object v0

    #@98
    check-cast v0, [[I

    #@9a
    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@9c
    .line 127
    :cond_3
    return-void
.end method

.method private applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 390
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@3
    if-nez v5, :cond_0

    #@5
    .line 391
    return-void

    #@6
    .line 394
    :cond_0
    const/4 v2, 0x0

    #@7
    .line 396
    .local v2, "hasUnresolvedAttrs":Z
    iget-object v4, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@9
    .line 397
    .local v4, "themeAttrsList":[[I
    array-length v0, v4

    #@a
    .line 398
    .local v0, "N":I
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@d
    .line 399
    aget-object v5, v4, v3

    #@f
    if-eqz v5, :cond_2

    #@11
    .line 400
    aget-object v5, v4, v3

    #@13
    .line 401
    sget-object v6, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    #@15
    .line 400
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@18
    move-result-object v1

    #@19
    .line 406
    .local v1, "a":Landroid/content/res/TypedArray;
    aget-object v5, v4, v3

    #@1b
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    #@1e
    move-result-object v5

    #@1f
    aput-object v5, v4, v3

    #@21
    .line 407
    aget-object v5, v4, v3

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 408
    const/4 v2, 0x1

    #@26
    .line 411
    :cond_1
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@28
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@2a
    aget v6, v6, v3

    #@2c
    const/4 v7, 0x0

    #@2d
    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@30
    move-result v6

    #@31
    aput v6, v5, v3

    #@33
    .line 412
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@35
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@37
    aget v6, v6, v3

    #@39
    const/4 v7, 0x1

    #@3a
    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3d
    move-result v6

    #@3e
    aput v6, v5, v3

    #@40
    .line 420
    iget v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@45
    move-result v6

    #@46
    or-int/2addr v5, v6

    #@47
    iput v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@49
    .line 422
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@4c
    .line 398
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 426
    :cond_3
    if-nez v2, :cond_4

    #@51
    .line 427
    iput-object v8, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@53
    .line 389
    :cond_4
    return-void
.end method

.method private applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 570
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@2
    sget-object v2, Lcom/android/internal/R$styleable;->GradientColor:[I

    #@4
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    .line 573
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@10
    .line 575
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    #@13
    .line 578
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@15
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@18
    move-result v2

    #@19
    or-int/2addr v1, v2

    #@1a
    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@1c
    .line 579
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1f
    .line 569
    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 561
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    #@7
    .line 563
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 564
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    #@e
    .line 566
    :cond_1
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    #@11
    .line 559
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 253
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4
    move-result-object v0

    #@5
    .line 256
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@8
    move-result v1

    #@9
    .local v1, "type":I
    if-eq v1, v3, :cond_1

    #@b
    .line 257
    const/4 v2, 0x1

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 261
    :cond_1
    if-eq v1, v3, :cond_2

    #@10
    .line 262
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@12
    const-string/jumbo v3, "No start tag found"

    #@15
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 265
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 280
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "gradient"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 281
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@f
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, ": invalid gradient color tag "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 281
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 285
    :cond_0
    new-instance v0, Landroid/content/res/GradientColor;

    #@31
    invoke-direct {v0}, Landroid/content/res/GradientColor;-><init>()V

    #@34
    .line 286
    .local v0, "gradientColor":Landroid/content/res/GradientColor;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@37
    .line 287
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 297
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    #@9
    .line 298
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@e
    move-result v2

    #@f
    or-int/2addr v1, v2

    #@10
    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@12
    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    .line 302
    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    #@18
    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@1b
    .line 306
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    #@1e
    .line 295
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v18

    #@4
    add-int/lit8 v11, v18, 0x1

    #@6
    .line 324
    .local v11, "innerDepth":I
    const/16 v18, 0x14

    #@8
    move/from16 v0, v18

    #@a
    new-array v14, v0, [F

    #@c
    .line 325
    .local v14, "offsetList":[F
    array-length v0, v14

    #@d
    move/from16 v18, v0

    #@f
    move/from16 v0, v18

    #@11
    new-array v6, v0, [I

    #@13
    .line 326
    .local v6, "colorList":[I
    array-length v0, v14

    #@14
    move/from16 v18, v0

    #@16
    move/from16 v0, v18

    #@18
    new-array v0, v0, [[I

    #@1a
    move-object/from16 v16, v0

    #@1c
    .line 328
    .local v16, "themeAttrsList":[[I
    const/4 v12, 0x0

    #@1d
    .line 329
    .local v12, "listSize":I
    const/4 v10, 0x0

    #@1e
    .line 330
    .local v10, "hasUnresolvedAttrs":Z
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@21
    move-result v17

    #@22
    .local v17, "type":I
    const/16 v18, 0x1

    #@24
    move/from16 v0, v17

    #@26
    move/from16 v1, v18

    #@28
    if-eq v0, v1, :cond_4

    #@2a
    .line 331
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2d
    move-result v7

    #@2e
    .local v7, "depth":I
    if-ge v7, v11, :cond_1

    #@30
    .line 332
    const/16 v18, 0x3

    #@32
    move/from16 v0, v17

    #@34
    move/from16 v1, v18

    #@36
    if-eq v0, v1, :cond_4

    #@38
    .line 333
    :cond_1
    const/16 v18, 0x2

    #@3a
    move/from16 v0, v17

    #@3c
    move/from16 v1, v18

    #@3e
    if-ne v0, v1, :cond_0

    #@40
    .line 336
    if-gt v7, v11, :cond_0

    #@42
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@45
    move-result-object v18

    #@46
    const-string/jumbo v19, "item"

    #@49
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v18

    #@4d
    if-eqz v18, :cond_0

    #@4f
    .line 341
    sget-object v18, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    #@51
    .line 340
    move-object/from16 v0, p1

    #@53
    move-object/from16 v1, p4

    #@55
    move-object/from16 v2, p3

    #@57
    move-object/from16 v3, v18

    #@59
    invoke-static {v0, v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5c
    move-result-object v4

    #@5d
    .line 342
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    #@5f
    move/from16 v0, v18

    #@61
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@64
    move-result v8

    #@65
    .line 343
    .local v8, "hasColor":Z
    const/16 v18, 0x1

    #@67
    move/from16 v0, v18

    #@69
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6c
    move-result v9

    #@6d
    .line 344
    .local v9, "hasOffset":Z
    if-eqz v8, :cond_3

    #@6f
    if-eqz v9, :cond_3

    #@71
    .line 351
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@74
    move-result-object v15

    #@75
    .line 352
    .local v15, "themeAttrs":[I
    const/16 v18, 0x0

    #@77
    const/16 v19, 0x0

    #@79
    move/from16 v0, v18

    #@7b
    move/from16 v1, v19

    #@7d
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@80
    move-result v5

    #@81
    .line 353
    .local v5, "color":I
    const/16 v18, 0x0

    #@83
    const/16 v19, 0x1

    #@85
    move/from16 v0, v19

    #@87
    move/from16 v1, v18

    #@89
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@8c
    move-result v13

    #@8d
    .line 359
    .local v13, "offset":F
    move-object/from16 v0, p0

    #@8f
    iget v0, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@91
    move/from16 v18, v0

    #@93
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@96
    move-result v19

    #@97
    or-int v18, v18, v19

    #@99
    move/from16 v0, v18

    #@9b
    move-object/from16 v1, p0

    #@9d
    iput v0, v1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@9f
    .line 360
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@a2
    .line 362
    if-eqz v15, :cond_2

    #@a4
    .line 363
    const/4 v10, 0x1

    #@a5
    .line 366
    :cond_2
    invoke-static {v6, v12, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@a8
    move-result-object v6

    #@a9
    .line 367
    invoke-static {v14, v12, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    #@ac
    move-result-object v14

    #@ad
    .line 368
    move-object/from16 v0, v16

    #@af
    invoke-static {v0, v12, v15}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@b2
    move-result-object v16

    #@b3
    .end local v16    # "themeAttrsList":[[I
    check-cast v16, [[I

    #@b5
    .line 369
    .restart local v16    # "themeAttrsList":[[I
    add-int/lit8 v12, v12, 0x1

    #@b7
    goto/16 :goto_0

    #@b9
    .line 345
    .end local v5    # "color":I
    .end local v13    # "offset":F
    .end local v15    # "themeAttrs":[I
    :cond_3
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@bb
    .line 346
    new-instance v19, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@c3
    move-result-object v20

    #@c4
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v19

    #@c8
    .line 347
    const-string/jumbo v20, ": <item> tag requires a \'color\' attribute and a \'offset\' "

    #@cb
    .line 346
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v19

    #@cf
    .line 348
    const-string/jumbo v20, "attribute!"

    #@d2
    .line 346
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v19

    #@d6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v19

    #@da
    .line 345
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v18

    #@de
    .line 371
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "depth":I
    .end local v8    # "hasColor":Z
    .end local v9    # "hasOffset":Z
    :cond_4
    if-lez v12, :cond_5

    #@e0
    .line 372
    if-eqz v10, :cond_6

    #@e2
    .line 373
    new-array v0, v12, [[I

    #@e4
    move-object/from16 v18, v0

    #@e6
    move-object/from16 v0, v18

    #@e8
    move-object/from16 v1, p0

    #@ea
    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@ec
    .line 374
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@f0
    move-object/from16 v18, v0

    #@f2
    const/16 v19, 0x0

    #@f4
    const/16 v20, 0x0

    #@f6
    move-object/from16 v0, v16

    #@f8
    move/from16 v1, v19

    #@fa
    move-object/from16 v2, v18

    #@fc
    move/from16 v3, v20

    #@fe
    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@101
    .line 379
    :goto_1
    new-array v0, v12, [I

    #@103
    move-object/from16 v18, v0

    #@105
    move-object/from16 v0, v18

    #@107
    move-object/from16 v1, p0

    #@109
    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemColors:[I

    #@10b
    .line 380
    new-array v0, v12, [F

    #@10d
    move-object/from16 v18, v0

    #@10f
    move-object/from16 v0, v18

    #@111
    move-object/from16 v1, p0

    #@113
    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@115
    .line 381
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@119
    move-object/from16 v18, v0

    #@11b
    const/16 v19, 0x0

    #@11d
    const/16 v20, 0x0

    #@11f
    move/from16 v0, v19

    #@121
    move-object/from16 v1, v18

    #@123
    move/from16 v2, v20

    #@125
    invoke-static {v6, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy([II[III)V

    #@128
    .line 382
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@12c
    move-object/from16 v18, v0

    #@12e
    const/16 v19, 0x0

    #@130
    const/16 v20, 0x0

    #@132
    move/from16 v0, v19

    #@134
    move-object/from16 v1, v18

    #@136
    move/from16 v2, v20

    #@138
    invoke-static {v14, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@13b
    .line 318
    :cond_5
    return-void

    #@13c
    .line 376
    :cond_6
    const/16 v18, 0x0

    #@13e
    move-object/from16 v0, v18

    #@140
    move-object/from16 v1, p0

    #@142
    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@144
    goto :goto_1
.end method

.method private onColorsChange()V
    .locals 11

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 432
    const/4 v5, 0x0

    #@5
    .line 433
    .local v5, "tempColors":[I
    const/4 v6, 0x0

    #@6
    .line 435
    .local v6, "tempOffsets":[F
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 436
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@c
    array-length v9, v0

    #@d
    .line 437
    .local v9, "length":I
    new-array v5, v9, [I

    #@f
    .line 438
    .local v5, "tempColors":[I
    new-array v6, v9, [F

    #@11
    .line 440
    .local v6, "tempOffsets":[F
    const/4 v8, 0x0

    #@12
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    #@14
    .line 441
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    #@16
    aget v0, v0, v8

    #@18
    aput v0, v5, v8

    #@1a
    .line 442
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    #@1c
    aget v0, v0, v8

    #@1e
    aput v0, v6, v8

    #@20
    .line 440
    add-int/lit8 v8, v8, 0x1

    #@22
    goto :goto_0

    #@23
    .line 445
    .end local v8    # "i":I
    .end local v9    # "length":I
    .local v5, "tempColors":[I
    .local v6, "tempOffsets":[F
    :cond_0
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 446
    new-array v5, v2, [I

    #@29
    .line 447
    .local v5, "tempColors":[I
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@2b
    aput v0, v5, v10

    #@2d
    .line 448
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    #@2f
    aput v0, v5, v3

    #@31
    .line 449
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@33
    aput v0, v5, v1

    #@35
    .line 451
    new-array v6, v2, [F

    #@37
    .line 452
    .local v6, "tempOffsets":[F
    const/4 v0, 0x0

    #@38
    aput v0, v6, v10

    #@3a
    .line 454
    const/high16 v0, 0x3f000000    # 0.5f

    #@3c
    aput v0, v6, v3

    #@3e
    .line 455
    const/high16 v0, 0x3f800000    # 1.0f

    #@40
    aput v0, v6, v1

    #@42
    .line 462
    .end local v6    # "tempOffsets":[F
    :cond_1
    :goto_1
    array-length v0, v5

    #@43
    if-ge v0, v1, :cond_2

    #@45
    .line 463
    const-string/jumbo v0, "GradientColor"

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "<gradient> tag requires 2 color values specified!"

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    array-length v2, v5

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 464
    const-string/jumbo v2, " "

    #@5c
    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 467
    :cond_2
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@6d
    if-nez v0, :cond_4

    #@6f
    .line 468
    new-instance v0, Landroid/graphics/LinearGradient;

    #@71
    iget v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    #@73
    iget v2, p0, Landroid/content/res/GradientColor;->mStartY:F

    #@75
    iget v3, p0, Landroid/content/res/GradientColor;->mEndX:F

    #@77
    iget v4, p0, Landroid/content/res/GradientColor;->mEndY:F

    #@79
    .line 469
    iget v7, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@7b
    invoke-static {v7}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@7e
    move-result-object v7

    #@7f
    .line 468
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@82
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@84
    .line 478
    :goto_2
    aget v0, v5, v10

    #@86
    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    #@88
    .line 431
    return-void

    #@89
    .line 457
    .local v5, "tempColors":[I
    .local v6, "tempOffsets":[F
    :cond_3
    new-array v5, v1, [I

    #@8b
    .line 458
    .local v5, "tempColors":[I
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@8d
    aput v0, v5, v10

    #@8f
    .line 459
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@91
    aput v0, v5, v3

    #@93
    goto :goto_1

    #@94
    .line 471
    .end local v6    # "tempOffsets":[F
    :cond_4
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@96
    if-ne v0, v3, :cond_5

    #@98
    .line 472
    new-instance v1, Landroid/graphics/RadialGradient;

    #@9a
    iget v2, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@9c
    iget v3, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@9e
    iget v4, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@a0
    .line 473
    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@a2
    invoke-static {v0}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@a5
    move-result-object v7

    #@a6
    .line 472
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@a9
    iput-object v1, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@ab
    goto :goto_2

    #@ac
    .line 475
    :cond_5
    new-instance v0, Landroid/graphics/SweepGradient;

    #@ae
    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@b0
    iget v2, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@b2
    invoke-direct {v0, v1, v2, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    #@b5
    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@b7
    goto :goto_2
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    #@0
    .prologue
    .line 164
    packed-switch p0, :pswitch_data_0

    #@3
    .line 172
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@5
    return-object v0

    #@6
    .line 166
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8
    return-object v0

    #@9
    .line 168
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@b
    return-object v0

    #@c
    .line 170
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    #@e
    return-object v0

    #@f
    .line 164
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRootElementState(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v2, 0x7

    #@1
    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@7
    .line 184
    iget v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    #@9
    const/16 v1, 0x8

    #@b
    .line 183
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    #@11
    .line 186
    iget v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    #@13
    const/16 v1, 0x9

    #@15
    .line 185
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    #@1b
    .line 188
    iget v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    #@1d
    const/16 v1, 0xa

    #@1f
    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    #@25
    .line 190
    iget v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    #@27
    const/16 v1, 0xb

    #@29
    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    #@2f
    .line 193
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@31
    const/4 v1, 0x3

    #@32
    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    #@38
    .line 195
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@3a
    const/4 v1, 0x4

    #@3b
    .line 194
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    #@41
    .line 198
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@43
    const/4 v1, 0x2

    #@44
    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@47
    move-result v0

    #@48
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@4a
    .line 201
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@4c
    const/4 v1, 0x0

    #@4d
    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    #@53
    .line 202
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@55
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@58
    move-result v1

    #@59
    or-int/2addr v0, v1

    #@5a
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    #@5c
    .line 205
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    #@5e
    .line 204
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@61
    move-result v0

    #@62
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    #@64
    .line 207
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@66
    const/4 v1, 0x1

    #@67
    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@6a
    move-result v0

    #@6b
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    #@6d
    .line 210
    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@6f
    const/4 v1, 0x6

    #@70
    .line 209
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@73
    move-result v0

    #@74
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    #@76
    .line 223
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@78
    .line 222
    const/4 v1, 0x5

    #@79
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@7c
    move-result v0

    #@7d
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@7f
    .line 179
    return-void
.end method

.method private validateXmlContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpg-float v0, v0, v1

    #@5
    if-gtz v0, :cond_0

    #@7
    .line 233
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 234
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@e
    .line 235
    const-string/jumbo v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    #@11
    .line 234
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 593
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 556
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    #@6
    or-int/2addr v0, v1

    #@7
    return v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 498
    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    #@6
    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    #@9
    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    #@b
    .line 500
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    #@d
    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    #@0
    .prologue
    .line 488
    iget v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    #@2
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    #@2
    return-object v0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 536
    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 537
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 541
    new-instance v0, Landroid/content/res/GradientColor;

    #@a
    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    #@d
    .line 542
    .local v0, "clone":Landroid/content/res/GradientColor;
    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@10
    .line 543
    return-object v0

    #@11
    .line 538
    .end local v0    # "clone":Landroid/content/res/GradientColor;
    :cond_0
    return-object p0
.end method
