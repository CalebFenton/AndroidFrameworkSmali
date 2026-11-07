.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;,
        Landroid/content/res/GradientColor$GradientTileMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG_GRADIENT:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GradientColor"

.field private static final greylist-max-o TILE_MODE_CLAMP:I = 0x0

.field private static final greylist-max-o TILE_MODE_MIRROR:I = 0x2

.field private static final greylist-max-o TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private greylist-max-o mCenterColor:I

.field private greylist-max-o mCenterX:F

.field private greylist-max-o mCenterY:F

.field private greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mDefaultColor:I

.field private greylist-max-o mEndColor:I

.field private greylist-max-o mEndX:F

.field private greylist-max-o mEndY:F

.field private greylist-max-o mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private greylist-max-o mGradientRadius:F

.field private greylist-max-o mGradientType:I

.field private greylist-max-o mHasCenterColor:Z

.field private greylist-max-o mItemColors:[I

.field private greylist-max-o mItemOffsets:[F

.field private greylist-max-o mItemsThemeAttrs:[[I

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private greylist-max-o mStartColor:I

.field private greylist-max-o mStartX:F

.field private greylist-max-o mStartY:F

.field private greylist-max-o mThemeAttrs:[I

.field private greylist-max-o mTileMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/content/res/GradientColor;)I
    .registers 1

    iget p0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 129
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 110
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 112
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 113
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 115
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 119
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/GradientColor;)V
    .registers 4
    .param p1, "copy"    # Landroid/content/res/GradientColor;

    .line 132
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 110
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 112
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 113
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 115
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 119
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 133
    if-eqz p1, :cond_9c

    .line 134
    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 135
    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 136
    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 137
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 138
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 139
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 140
    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 141
    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 142
    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 143
    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 144
    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 145
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 146
    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 147
    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 148
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 149
    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 151
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_72

    .line 152
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 154
    :cond_72
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    if-eqz v0, :cond_80

    .line 155
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 158
    :cond_80
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_8e

    .line 159
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 161
    :cond_8e
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_9c

    .line 162
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 165
    :cond_9c
    return-void
.end method

.method private greylist-max-o applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .registers 10
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 395
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-nez v0, :cond_5

    .line 396
    return-void

    .line 399
    :cond_5
    const/4 v0, 0x0

    .line 401
    .local v0, "hasUnresolvedAttrs":Z
    iget-object v1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 402
    .local v1, "themeAttrsList":[[I
    array-length v2, v1

    .line 403
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_4e

    .line 404
    aget-object v4, v1, v3

    if-eqz v4, :cond_4b

    .line 405
    aget-object v4, v1, v3

    sget-object v5, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 411
    .local v4, "a":Landroid/content/res/TypedArray;
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v5

    aput-object v5, v1, v3

    .line 412
    aget-object v5, v1, v3

    if-eqz v5, :cond_25

    .line 413
    const/4 v0, 0x1

    .line 416
    :cond_25
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v6, v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v5, v3

    .line 417
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    aput v6, v5, v3

    .line 425
    iget v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 427
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 431
    .end local v3    # "i":I
    :cond_4e
    if-nez v0, :cond_53

    .line 432
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 434
    :cond_53
    return-void
.end method

.method private greylist-max-o applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 575
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 578
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 580
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 583
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 584
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 585
    return-void
.end method

.method private greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 565
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_7

    .line 566
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 568
    :cond_7
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_e

    .line 569
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 571
    :cond_e
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 572
    return-void
.end method

.method public static greylist-max-o createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 261
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    goto :goto_4

    .line 266
    :cond_10
    if-ne v2, v3, :cond_17

    .line 270
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v1

    return-object v1

    .line 267
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .registers 8
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

    .line 284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "gradient"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 290
    new-instance v1, Landroid/content/res/GradientColor;

    invoke-direct {v1}, Landroid/content/res/GradientColor;-><init>()V

    .line 291
    .local v1, "gradientColor":Landroid/content/res/GradientColor;
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 292
    return-object v1

    .line 286
    .end local v1    # "gradientColor":Landroid/content/res/GradientColor;
    :cond_16
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid gradient color tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 8
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

    .line 301
    sget-object v0, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-static {p1, p4, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 303
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 304
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 311
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 312
    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 25
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

    .line 324
    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 329
    .local v1, "innerDepth":I
    const/16 v3, 0x14

    new-array v3, v3, [F

    .line 330
    .local v3, "offsetList":[F
    array-length v4, v3

    new-array v4, v4, [I

    .line 331
    .local v4, "colorList":[I
    array-length v5, v3

    new-array v5, v5, [[I

    .line 333
    .local v5, "themeAttrsList":[[I
    const/4 v6, 0x0

    .line 334
    .local v6, "listSize":I
    const/4 v7, 0x0

    .line 335
    .local v7, "hasUnresolvedAttrs":Z
    :goto_14
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    const/4 v10, 0x0

    if-eq v8, v2, :cond_e4

    .line 336
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v11, v8

    .local v11, "depth":I
    if-ge v8, v1, :cond_33

    const/4 v8, 0x3

    if-eq v9, v8, :cond_27

    goto :goto_33

    :cond_27
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v7

    goto/16 :goto_ee

    .line 338
    :cond_33
    :goto_33
    const/4 v8, 0x2

    if-eq v9, v8, :cond_42

    .line 339
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v7

    goto/16 :goto_dd

    .line 341
    :cond_42
    if-gt v11, v1, :cond_d3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v12, "item"

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 342
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v7

    goto/16 :goto_dd

    .line 345
    :cond_5d
    sget-object v8, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static {v12, v14, v13, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 347
    .local v8, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 348
    .local v15, "hasColor":Z
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    .line 349
    .local v16, "hasOffset":Z
    if-eqz v15, :cond_b2

    if-eqz v16, :cond_b2

    .line 356
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    .line 357
    .local v2, "themeAttrs":[I
    invoke-virtual {v8, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 358
    .local v10, "color":I
    move/from16 v17, v1

    .end local v1    # "innerDepth":I
    .local v17, "innerDepth":I
    const/4 v1, 0x0

    move/from16 v18, v7

    const/4 v7, 0x1

    .end local v7    # "hasUnresolvedAttrs":Z
    .local v18, "hasUnresolvedAttrs":Z
    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 364
    .local v1, "offset":F
    iget v7, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v19

    or-int v7, v7, v19

    iput v7, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 365
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    if-eqz v2, :cond_98

    .line 368
    const/4 v7, 0x1

    .end local v18    # "hasUnresolvedAttrs":Z
    .restart local v7    # "hasUnresolvedAttrs":Z
    goto :goto_9a

    .line 367
    .end local v7    # "hasUnresolvedAttrs":Z
    .restart local v18    # "hasUnresolvedAttrs":Z
    :cond_98
    move/from16 v7, v18

    .line 371
    .end local v18    # "hasUnresolvedAttrs":Z
    .restart local v7    # "hasUnresolvedAttrs":Z
    :goto_9a
    invoke-static {v4, v6, v10}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v4

    .line 372
    invoke-static {v3, v6, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    move-result-object v3

    .line 373
    invoke-static {v5, v6, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, [[I

    .line 374
    nop

    .end local v1    # "offset":F
    .end local v2    # "themeAttrs":[I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "color":I
    .end local v15    # "hasColor":Z
    .end local v16    # "hasOffset":Z
    add-int/lit8 v6, v6, 0x1

    .line 375
    move/from16 v1, v17

    const/4 v2, 0x1

    goto/16 :goto_14

    .line 349
    .end local v17    # "innerDepth":I
    .local v1, "innerDepth":I
    .restart local v8    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "hasColor":Z
    .restart local v16    # "hasOffset":Z
    :cond_b2
    move/from16 v17, v1

    move/from16 v18, v7

    .line 350
    .end local v1    # "innerDepth":I
    .end local v7    # "hasUnresolvedAttrs":Z
    .restart local v17    # "innerDepth":I
    .restart local v18    # "hasUnresolvedAttrs":Z
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "hasColor":Z
    .end local v16    # "hasOffset":Z
    .end local v17    # "innerDepth":I
    .end local v18    # "hasUnresolvedAttrs":Z
    .restart local v1    # "innerDepth":I
    .restart local v7    # "hasUnresolvedAttrs":Z
    :cond_d3
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v7

    .line 335
    .end local v1    # "innerDepth":I
    .end local v7    # "hasUnresolvedAttrs":Z
    .end local v9    # "type":I
    .end local v11    # "depth":I
    .restart local v17    # "innerDepth":I
    .restart local v18    # "hasUnresolvedAttrs":Z
    :goto_dd
    move/from16 v1, v17

    move/from16 v7, v18

    const/4 v2, 0x1

    goto/16 :goto_14

    .end local v17    # "innerDepth":I
    .end local v18    # "hasUnresolvedAttrs":Z
    .restart local v1    # "innerDepth":I
    .restart local v7    # "hasUnresolvedAttrs":Z
    .restart local v9    # "type":I
    :cond_e4
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v7

    .line 376
    .end local v1    # "innerDepth":I
    .end local v7    # "hasUnresolvedAttrs":Z
    .restart local v17    # "innerDepth":I
    .restart local v18    # "hasUnresolvedAttrs":Z
    :goto_ee
    if-lez v6, :cond_111

    .line 377
    if-eqz v18, :cond_fc

    .line 378
    new-array v1, v6, [[I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 379
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    invoke-static {v5, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ff

    .line 381
    :cond_fc
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 384
    :goto_ff
    new-array v1, v6, [I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 385
    new-array v1, v6, [F

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 386
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    invoke-static {v4, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-static {v3, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_111
    return-void
.end method

.method private greylist-max-o onColorsChange()V
    .registers 15

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "tempColors":[I
    const/4 v1, 0x0

    .line 440
    .local v1, "tempOffsets":[F
    iget-object v2, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_25

    .line 441
    iget-object v2, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    array-length v2, v2

    .line 442
    .local v2, "length":I
    new-array v0, v2, [I

    .line 443
    new-array v1, v2, [F

    .line 445
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v2, :cond_22

    .line 446
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v7, v7, v6

    aput v7, v0, v6

    .line 447
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v7, v7, v6

    aput v7, v1, v6

    .line 445
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 449
    .end local v2    # "length":I
    .end local v6    # "i":I
    :cond_22
    move-object v10, v0

    move-object v11, v1

    goto :goto_54

    .line 450
    :cond_25
    iget-boolean v2, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    if-eqz v2, :cond_48

    .line 451
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 452
    iget v6, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v6, v0, v3

    .line 453
    iget v6, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    aput v6, v0, v5

    .line 454
    iget v6, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v6, v0, v4

    .line 456
    new-array v1, v2, [F

    .line 457
    const/4 v2, 0x0

    aput v2, v1, v3

    .line 459
    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v5

    .line 460
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    move-object v10, v0

    move-object v11, v1

    goto :goto_54

    .line 462
    :cond_48
    new-array v0, v4, [I

    .line 463
    iget v2, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v2, v0, v3

    .line 464
    iget v2, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v2, v0, v5

    move-object v10, v0

    move-object v11, v1

    .line 467
    .end local v0    # "tempColors":[I
    .end local v1    # "tempOffsets":[F
    .local v10, "tempColors":[I
    .local v11, "tempOffsets":[F
    :goto_54
    array-length v0, v10

    if-ge v0, v4, :cond_7e

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<gradient> tag requires 2 color values specified!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    const-string v1, "GradientColor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_7e
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-nez v0, :cond_9a

    .line 473
    new-instance v6, Landroid/graphics/LinearGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mStartX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mStartY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mEndX:F

    move-object v12, v11

    move-object v11, v10

    .end local v10    # "tempColors":[I
    .local v11, "tempColors":[I
    .local v12, "tempOffsets":[F
    iget v10, p0, Landroid/content/res/GradientColor;->mEndY:F

    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 474
    invoke-static {v0}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_c4

    .line 476
    .end local v12    # "tempOffsets":[F
    .restart local v10    # "tempColors":[I
    .local v11, "tempOffsets":[F
    :cond_9a
    move-object v12, v11

    move-object v11, v10

    .end local v10    # "tempColors":[I
    .local v11, "tempColors":[I
    .restart local v12    # "tempOffsets":[F
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-ne v0, v5, :cond_b9

    .line 477
    new-instance v6, Landroid/graphics/RadialGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 478
    invoke-static {v0}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    .end local v12    # "tempOffsets":[F
    .restart local v10    # "tempColors":[I
    .local v11, "tempOffsets":[F
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v12, v11

    move-object v11, v10

    .end local v10    # "tempColors":[I
    .local v11, "tempColors":[I
    .restart local v12    # "tempOffsets":[F
    iput-object v6, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_c4

    .line 480
    :cond_b9
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v2, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-direct {v0, v1, v2, v11, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 483
    :goto_c4
    aget v0, v11, v3

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 484
    return-void
.end method

.method private static greylist-max-o parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2
    .param p0, "tileMode"    # I

    .line 169
    packed-switch p0, :pswitch_data_10

    .line 177
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 175
    :pswitch_6
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 173
    :pswitch_9
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 171
    :pswitch_c
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o updateRootElementState(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 188
    const/16 v0, 0x8

    iget v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 190
    const/16 v0, 0x9

    iget v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 192
    const/16 v0, 0xa

    iget v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 194
    const/16 v0, 0xb

    iget v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 197
    const/4 v0, 0x3

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 199
    const/4 v0, 0x4

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 202
    const/4 v0, 0x2

    iget v1, p0, Landroid/content/res/GradientColor;->mGradientType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 205
    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/GradientColor;->mStartColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 207
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 209
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 211
    const/4 v0, 0x1

    iget v1, p0, Landroid/content/res/GradientColor;->mEndColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 214
    const/4 v0, 0x6

    iget v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 227
    const/4 v0, 0x5

    iget v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 229
    return-void
.end method

.method private greylist-max-o validateXmlContent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 237
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_15

    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    goto :goto_15

    .line 239
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .registers 2

    .line 598
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .registers 3

    .line 561
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    if-nez v0, :cond_b

    .line 503
    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 505
    :cond_b
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    return-object v0
.end method

.method public greylist-max-o getDefaultColor()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return v0
.end method

.method public greylist-max-o getShader()Landroid/graphics/Shader;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public bridge synthetic blacklist obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .registers 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 542
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 546
    :cond_9
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    .line 547
    .local v0, "clone":Landroid/content/res/GradientColor;
    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 548
    return-object v0

    .line 543
    .end local v0    # "clone":Landroid/content/res/GradientColor;
    :cond_12
    :goto_12
    return-object p0
.end method
