.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;,
        Landroid/content/res/ColorStateList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static synthetic -get0(Landroid/content/res/ColorStateList;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [[I

    #@4
    new-array v1, v2, [I

    #@6
    aput-object v1, v0, v2

    #@8
    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    #@a
    .line 79
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@11
    .line 654
    new-instance v0, Landroid/content/res/ColorStateList$1;

    #@13
    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    #@16
    .line 653
    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 148
    if-eqz p1, :cond_0

    #@5
    .line 149
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@7
    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@9
    .line 150
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@b
    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@d
    .line 151
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    #@f
    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    #@11
    .line 152
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    #@13
    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    #@15
    .line 155
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@17
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [[I

    #@1d
    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@1f
    .line 156
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    #@21
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, [I

    #@27
    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@29
    .line 147
    :cond_0
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@5
    .line 102
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@7
    .line 104
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    #@a
    .line 100
    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 12
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 358
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@4
    if-nez v8, :cond_0

    #@6
    .line 359
    return-void

    #@7
    .line 362
    :cond_0
    const/4 v5, 0x0

    #@8
    .line 364
    .local v5, "hasUnresolvedAttrs":Z
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@a
    .line 365
    .local v7, "themeAttrsList":[[I
    array-length v0, v7

    #@b
    .line 366
    .local v0, "N":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_4

    #@e
    .line 367
    aget-object v8, v7, v6

    #@10
    if-eqz v8, :cond_2

    #@12
    .line 368
    aget-object v8, v7, v6

    #@14
    .line 369
    sget-object v9, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    #@16
    .line 368
    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object v1

    #@1a
    .line 372
    .local v1, "a":Landroid/content/res/TypedArray;
    aget-object v8, v7, v6

    #@1c
    aget v8, v8, v11

    #@1e
    if-eqz v8, :cond_3

    #@20
    .line 377
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@22
    aget v8, v8, v6

    #@24
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    #@27
    move-result v8

    #@28
    int-to-float v8, v8

    #@29
    const/high16 v9, 0x437f0000    # 255.0f

    #@2b
    div-float v4, v8, v9

    #@2d
    .line 388
    .local v4, "defaultAlphaMod":F
    :goto_1
    aget-object v8, v7, v6

    #@2f
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    #@32
    move-result-object v8

    #@33
    aput-object v8, v7, v6

    #@35
    .line 389
    aget-object v8, v7, v6

    #@37
    if-eqz v8, :cond_1

    #@39
    .line 390
    const/4 v5, 0x1

    #@3a
    .line 394
    :cond_1
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@3c
    aget v8, v8, v6

    #@3e
    .line 393
    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    #@41
    move-result v3

    #@42
    .line 396
    .local v3, "baseColor":I
    const/4 v8, 0x1

    #@43
    .line 395
    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@46
    move-result v2

    #@47
    .line 397
    .local v2, "alphaMod":F
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@49
    invoke-direct {p0, v3, v2}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    #@4c
    move-result v9

    #@4d
    aput v9, v8, v6

    #@4f
    .line 400
    iget v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@51
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@54
    move-result v9

    #@55
    or-int/2addr v8, v9

    #@56
    iput v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@58
    .line 402
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@5b
    .line 366
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "alphaMod":F
    .end local v3    # "baseColor":I
    .end local v4    # "defaultAlphaMod":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 382
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    #@60
    .restart local v4    # "defaultAlphaMod":F
    goto :goto_1

    #@61
    .line 406
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "defaultAlphaMod":F
    :cond_4
    if-nez v5, :cond_5

    #@63
    .line 407
    iput-object v10, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@65
    .line 410
    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    #@68
    .line 357
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
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
    .line 189
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4
    move-result-object v0

    #@5
    .line 192
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v1

    #@9
    .local v1, "type":I
    if-eq v1, v3, :cond_1

    #@b
    .line 193
    const/4 v2, 0x1

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 197
    :cond_1
    if-eq v1, v3, :cond_2

    #@10
    .line 198
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@12
    const-string/jumbo v3, "No start tag found"

    #@15
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 201
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
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
    .line 215
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 216
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 217
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@f
    .line 218
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
    const-string/jumbo v4, ": invalid color state list tag "

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
    .line 217
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 221
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    #@31
    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    #@34
    .line 222
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@37
    .line 223
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 29
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
    .line 250
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v26

    #@4
    add-int/lit8 v15, v26, 0x1

    #@6
    .line 254
    .local v15, "innerDepth":I
    const/4 v8, 0x0

    #@7
    .line 255
    .local v8, "changingConfigurations":I
    const/high16 v11, -0x10000

    #@9
    .line 257
    .local v11, "defaultColor":I
    const/4 v13, 0x0

    #@a
    .line 259
    .local v13, "hasUnresolvedAttrs":Z
    const-class v26, [I

    #@c
    const/16 v27, 0x14

    #@e
    invoke-static/range {v26 .. v27}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    #@11
    move-result-object v22

    #@12
    check-cast v22, [[I

    #@14
    .line 260
    .local v22, "stateSpecList":[[I
    move-object/from16 v0, v22

    #@16
    array-length v0, v0

    #@17
    move/from16 v26, v0

    #@19
    move/from16 v0, v26

    #@1b
    new-array v0, v0, [[I

    #@1d
    move-object/from16 v24, v0

    #@1f
    .line 261
    .local v24, "themeAttrsList":[[I
    move-object/from16 v0, v22

    #@21
    array-length v0, v0

    #@22
    move/from16 v26, v0

    #@24
    move/from16 v0, v26

    #@26
    new-array v10, v0, [I

    #@28
    .line 262
    .local v10, "colorList":[I
    const/16 v18, 0x0

    #@2a
    .line 264
    .local v18, "listSize":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2d
    move-result v25

    #@2e
    .local v25, "type":I
    const/16 v26, 0x1

    #@30
    move/from16 v0, v25

    #@32
    move/from16 v1, v26

    #@34
    if-eq v0, v1, :cond_7

    #@36
    .line 265
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@39
    move-result v12

    #@3a
    .local v12, "depth":I
    if-ge v12, v15, :cond_1

    #@3c
    const/16 v26, 0x3

    #@3e
    move/from16 v0, v25

    #@40
    move/from16 v1, v26

    #@42
    if-eq v0, v1, :cond_7

    #@44
    .line 266
    :cond_1
    const/16 v26, 0x2

    #@46
    move/from16 v0, v25

    #@48
    move/from16 v1, v26

    #@4a
    if-ne v0, v1, :cond_0

    #@4c
    if-gt v12, v15, :cond_0

    #@4e
    .line 267
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v26

    #@52
    const-string/jumbo v27, "item"

    #@55
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v26

    #@59
    if-eqz v26, :cond_0

    #@5b
    .line 272
    sget-object v26, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    #@5d
    .line 271
    move-object/from16 v0, p1

    #@5f
    move-object/from16 v1, p4

    #@61
    move-object/from16 v2, p3

    #@63
    move-object/from16 v3, v26

    #@65
    invoke-static {v0, v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@68
    move-result-object v5

    #@69
    .line 273
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@6c
    move-result-object v23

    #@6d
    .line 274
    .local v23, "themeAttrs":[I
    const/16 v26, 0x0

    #@6f
    const v27, -0xff01

    #@72
    move/from16 v0, v26

    #@74
    move/from16 v1, v27

    #@76
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@79
    move-result v7

    #@7a
    .line 275
    .local v7, "baseColor":I
    const/16 v26, 0x1

    #@7c
    const/high16 v27, 0x3f800000    # 1.0f

    #@7e
    move/from16 v0, v26

    #@80
    move/from16 v1, v27

    #@82
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@85
    move-result v6

    #@86
    .line 277
    .local v6, "alphaMod":F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@89
    move-result v26

    #@8a
    or-int v8, v8, v26

    #@8c
    .line 279
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@8f
    .line 282
    const/16 v16, 0x0

    #@91
    .line 283
    .local v16, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@94
    move-result v19

    #@95
    .line 284
    .local v19, "numAttrs":I
    move/from16 v0, v19

    #@97
    new-array v0, v0, [I

    #@99
    move-object/from16 v21, v0

    #@9b
    .line 285
    .local v21, "stateSpec":[I
    const/4 v14, 0x0

    #@9c
    .local v14, "i":I
    move/from16 v17, v16

    #@9e
    .end local v16    # "j":I
    .local v17, "j":I
    :goto_1
    move/from16 v0, v19

    #@a0
    if-ge v14, v0, :cond_3

    #@a2
    .line 286
    move-object/from16 v0, p3

    #@a4
    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    #@a7
    move-result v20

    #@a8
    .line 287
    .local v20, "stateResId":I
    sparse-switch v20, :sswitch_data_0

    #@ab
    .line 293
    add-int/lit8 v16, v17, 0x1

    #@ad
    .end local v17    # "j":I
    .restart local v16    # "j":I
    const/16 v26, 0x0

    #@af
    move-object/from16 v0, p3

    #@b1
    move/from16 v1, v26

    #@b3
    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@b6
    move-result v26

    #@b7
    if-eqz v26, :cond_2

    #@b9
    .end local v20    # "stateResId":I
    :goto_2
    aput v20, v21, v17

    #@bb
    .line 285
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@bd
    move/from16 v17, v16

    #@bf
    .end local v16    # "j":I
    .restart local v17    # "j":I
    goto :goto_1

    #@c0
    .restart local v20    # "stateResId":I
    :sswitch_0
    move/from16 v16, v17

    #@c2
    .line 291
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_3

    #@c3
    .line 294
    :cond_2
    move/from16 v0, v20

    #@c5
    neg-int v0, v0

    #@c6
    move/from16 v20, v0

    #@c8
    goto :goto_2

    #@c9
    .line 297
    .end local v16    # "j":I
    .end local v20    # "stateResId":I
    .restart local v17    # "j":I
    :cond_3
    move-object/from16 v0, v21

    #@cb
    move/from16 v1, v17

    #@cd
    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    #@d0
    move-result-object v21

    #@d1
    .line 302
    move-object/from16 v0, p0

    #@d3
    invoke-direct {v0, v7, v6}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    #@d6
    move-result v9

    #@d7
    .line 303
    .local v9, "color":I
    if-eqz v18, :cond_4

    #@d9
    move-object/from16 v0, v21

    #@db
    array-length v0, v0

    #@dc
    move/from16 v26, v0

    #@de
    if-nez v26, :cond_5

    #@e0
    .line 304
    :cond_4
    move v11, v9

    #@e1
    .line 307
    :cond_5
    if-eqz v23, :cond_6

    #@e3
    .line 308
    const/4 v13, 0x1

    #@e4
    .line 311
    :cond_6
    move/from16 v0, v18

    #@e6
    invoke-static {v10, v0, v9}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@e9
    move-result-object v10

    #@ea
    .line 312
    move-object/from16 v0, v24

    #@ec
    move/from16 v1, v18

    #@ee
    move-object/from16 v2, v23

    #@f0
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@f3
    move-result-object v24

    #@f4
    .end local v24    # "themeAttrsList":[[I
    check-cast v24, [[I

    #@f6
    .line 313
    .restart local v24    # "themeAttrsList":[[I
    move-object/from16 v0, v22

    #@f8
    move/from16 v1, v18

    #@fa
    move-object/from16 v2, v21

    #@fc
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@ff
    move-result-object v22

    #@100
    .end local v22    # "stateSpecList":[[I
    check-cast v22, [[I

    #@102
    .line 314
    .restart local v22    # "stateSpecList":[[I
    add-int/lit8 v18, v18, 0x1

    #@104
    goto/16 :goto_0

    #@106
    .line 317
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "alphaMod":F
    .end local v7    # "baseColor":I
    .end local v9    # "color":I
    .end local v12    # "depth":I
    .end local v14    # "i":I
    .end local v17    # "j":I
    .end local v19    # "numAttrs":I
    .end local v21    # "stateSpec":[I
    .end local v23    # "themeAttrs":[I
    :cond_7
    move-object/from16 v0, p0

    #@108
    iput v8, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@10a
    .line 318
    move-object/from16 v0, p0

    #@10c
    iput v11, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    #@10e
    .line 320
    if-eqz v13, :cond_8

    #@110
    .line 321
    move/from16 v0, v18

    #@112
    new-array v0, v0, [[I

    #@114
    move-object/from16 v26, v0

    #@116
    move-object/from16 v0, v26

    #@118
    move-object/from16 v1, p0

    #@11a
    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@11c
    .line 322
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@120
    move-object/from16 v26, v0

    #@122
    const/16 v27, 0x0

    #@124
    const/16 v28, 0x0

    #@126
    move-object/from16 v0, v24

    #@128
    move/from16 v1, v27

    #@12a
    move-object/from16 v2, v26

    #@12c
    move/from16 v3, v28

    #@12e
    move/from16 v4, v18

    #@130
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@133
    .line 327
    :goto_4
    move/from16 v0, v18

    #@135
    new-array v0, v0, [I

    #@137
    move-object/from16 v26, v0

    #@139
    move-object/from16 v0, v26

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    #@13f
    .line 328
    move/from16 v0, v18

    #@141
    new-array v0, v0, [[I

    #@143
    move-object/from16 v26, v0

    #@145
    move-object/from16 v0, v26

    #@147
    move-object/from16 v1, p0

    #@149
    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@14b
    .line 329
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    #@14f
    move-object/from16 v26, v0

    #@151
    const/16 v27, 0x0

    #@153
    const/16 v28, 0x0

    #@155
    move/from16 v0, v27

    #@157
    move-object/from16 v1, v26

    #@159
    move/from16 v2, v28

    #@15b
    move/from16 v3, v18

    #@15d
    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@160
    .line 330
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@164
    move-object/from16 v26, v0

    #@166
    const/16 v27, 0x0

    #@168
    const/16 v28, 0x0

    #@16a
    move-object/from16 v0, v22

    #@16c
    move/from16 v1, v27

    #@16e
    move-object/from16 v2, v26

    #@170
    move/from16 v3, v28

    #@172
    move/from16 v4, v18

    #@174
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@177
    .line 332
    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    #@17a
    .line 249
    return-void

    #@17b
    .line 324
    :cond_8
    const/16 v26, 0x0

    #@17d
    move-object/from16 v0, v26

    #@17f
    move-object/from16 v1, p0

    #@181
    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@183
    goto :goto_4

    #@184
    .line 287
    :sswitch_data_0
    .sparse-switch
        0x10101a5 -> :sswitch_0
        0x101031f -> :sswitch_0
    .end sparse-switch
.end method

.method private modulateColorAlpha(IF)I
    .locals 5
    .param p1, "baseColor"    # I
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 446
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    cmpl-float v2, p2, v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 447
    return p1

    #@7
    .line 450
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@a
    move-result v1

    #@b
    .line 451
    .local v1, "baseAlpha":I
    int-to-float v2, v1

    #@c
    mul-float/2addr v2, p2

    #@d
    const/high16 v3, 0x3f000000    # 0.5f

    #@f
    add-float/2addr v2, v3

    #@10
    float-to-int v2, v2

    #@11
    const/4 v3, 0x0

    #@12
    const/16 v4, 0xff

    #@14
    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    #@17
    move-result v0

    #@18
    .line 452
    .local v0, "alpha":I
    const v2, 0xffffff

    #@1b
    and-int/2addr v2, p1

    #@1c
    shl-int/lit8 v3, v0, 0x18

    #@1e
    or-int/2addr v2, v3

    #@1f
    return v2
.end method

.method private onColorsChanged()V
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 573
    const/high16 v2, -0x10000

    #@3
    .line 574
    .local v2, "defaultColor":I
    const/4 v4, 0x1

    #@4
    .line 576
    .local v4, "isOpaque":Z
    iget-object v5, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@6
    .line 577
    .local v5, "states":[[I
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@8
    .line 578
    .local v1, "colors":[I
    array-length v0, v5

    #@9
    .line 579
    .local v0, "N":I
    if-lez v0, :cond_1

    #@b
    .line 580
    aget v2, v1, v6

    #@d
    .line 582
    add-int/lit8 v3, v0, -0x1

    #@f
    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    #@11
    .line 583
    aget-object v6, v5, v3

    #@13
    array-length v6, v6

    #@14
    if-nez v6, :cond_2

    #@16
    .line 584
    aget v2, v1, v3

    #@18
    .line 589
    :cond_0
    const/4 v3, 0x0

    #@19
    :goto_1
    if-ge v3, v0, :cond_1

    #@1b
    .line 590
    aget v6, v1, v3

    #@1d
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    #@20
    move-result v6

    #@21
    const/16 v7, 0xff

    #@23
    if-eq v6, v7, :cond_3

    #@25
    .line 591
    const/4 v4, 0x0

    #@26
    .line 597
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    #@28
    .line 598
    iput-boolean v4, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    #@2a
    .line 572
    return-void

    #@2b
    .line 582
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 589
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_1
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "color"    # I

    #@0
    .prologue
    .line 112
    sget-object v6, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@2
    monitor-enter v6

    #@3
    .line 113
    :try_start_0
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@8
    move-result v4

    #@9
    .line 114
    .local v4, "index":I
    if-ltz v4, :cond_1

    #@b
    .line 115
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Ljava/lang/ref/WeakReference;

    #@13
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 116
    .local v1, "cached":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    #@1b
    monitor-exit v6

    #@1c
    .line 117
    return-object v1

    #@1d
    .line 121
    :cond_0
    :try_start_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    #@22
    .line 125
    .end local v1    # "cached":Landroid/content/res/ColorStateList;
    :cond_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v0

    #@28
    .line 126
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    #@2a
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    #@2c
    .line 127
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Ljava/lang/ref/WeakReference;

    #@34
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    if-nez v5, :cond_2

    #@3a
    .line 128
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    #@3f
    .line 126
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@41
    goto :goto_0

    #@42
    .line 132
    :cond_3
    new-instance v2, Landroid/content/res/ColorStateList;

    #@44
    sget-object v5, Landroid/content/res/ColorStateList;->EMPTY:[[I

    #@46
    const/4 v7, 0x1

    #@47
    new-array v7, v7, [I

    #@49
    const/4 v8, 0x0

    #@4a
    aput p0, v7, v8

    #@4c
    invoke-direct {v2, v5, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@4f
    .line 133
    .local v2, "csl":Landroid/content/res/ColorStateList;
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    #@51
    new-instance v7, Ljava/lang/ref/WeakReference;

    #@53
    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@56
    invoke-virtual {v5, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    monitor-exit v6

    #@5a
    .line 134
    return-object v2

    #@5b
    .line 112
    .end local v0    # "N":I
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "i":I
    .end local v4    # "index":I
    :catchall_0
    move-exception v5

    #@5c
    monitor-exit v6

    #@5d
    throw v5
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 637
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 442
    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    #@0
    .prologue
    .line 490
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@2
    array-length v1, v3

    #@3
    .line 491
    .local v1, "setLength":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@6
    .line 492
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@8
    aget-object v2, v3, v0

    #@a
    .line 493
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 494
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@12
    aget v3, v3, v0

    #@14
    return v3

    #@15
    .line 491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 497
    .end local v2    # "stateSpec":[I
    :cond_1
    return p2
.end method

.method public getColors()[I
    .locals 1

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@2
    return-object v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 607
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    #@6
    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    #@9
    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    #@b
    .line 609
    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    #@d
    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    #@0
    .prologue
    .line 507
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    #@2
    return v0
.end method

.method public getStates()[[I
    .locals 1

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@2
    return-object v0
.end method

.method public hasState(I)Z
    .locals 8
    .param p1, "state"    # I

    #@0
    .prologue
    .line 545
    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@2
    .line 546
    .local v4, "stateSpecs":[[I
    array-length v0, v4

    #@3
    .line 547
    .local v0, "specCount":I
    const/4 v1, 0x0

    #@4
    .local v1, "specIndex":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@6
    .line 548
    aget-object v5, v4, v1

    #@8
    .line 549
    .local v5, "states":[I
    array-length v2, v5

    #@9
    .line 550
    .local v2, "stateCount":I
    const/4 v3, 0x0

    #@a
    .local v3, "stateIndex":I
    :goto_1
    if-ge v3, v2, :cond_2

    #@c
    .line 551
    aget v6, v5, v3

    #@e
    if-eq v6, p1, :cond_0

    #@10
    aget v6, v5, v3

    #@12
    not-int v7, p1

    #@13
    if-ne v6, v7, :cond_1

    #@15
    .line 552
    :cond_0
    const/4 v6, 0x1

    #@16
    return v6

    #@17
    .line 550
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 547
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 556
    .end local v2    # "stateCount":I
    .end local v3    # "stateIndex":I
    .end local v5    # "states":[I
    :cond_3
    const/4 v6, 0x0

    #@1e
    return v6
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 475
    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    #@2
    return v0
.end method

.method public isStateful()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 464
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@3
    array-length v1, v1

    #@4
    if-le v1, v0, :cond_0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 423
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 427
    new-instance v0, Landroid/content/res/ColorStateList;

    #@a
    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    #@d
    .line 428
    .local v0, "clone":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@10
    .line 429
    return-object v0

    #@11
    .line 424
    .end local v0    # "clone":Landroid/content/res/ColorStateList;
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ColorStateList{mThemeAttrs="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 562
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 563
    const-string/jumbo v1, "mChangingConfigurations="

    #@19
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 563
    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    #@1f
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 564
    const-string/jumbo v1, "mStateSpecs="

    #@26
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 564
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@2c
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 565
    const-string/jumbo v1, "mColors="

    #@37
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 565
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@3d
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 566
    const-string/jumbo v1, "mDefaultColor="

    #@48
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 566
    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    #@4e
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 566
    const/16 v1, 0x7d

    #@54
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 235
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@2
    array-length v3, v3

    #@3
    new-array v0, v3, [I

    #@5
    .line 236
    .local v0, "colors":[I
    array-length v2, v0

    #@6
    .line 237
    .local v2, "len":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 238
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@b
    aget v3, v3, v1

    #@d
    const v4, 0xffffff

    #@10
    and-int/2addr v3, v4

    #@11
    shl-int/lit8 v4, p1, 0x18

    #@13
    or-int/2addr v3, v4

    #@14
    aput v3, v0, v1

    #@16
    .line 237
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 241
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    #@1b
    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@1d
    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@20
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 643
    const-string/jumbo v2, "ColorStateList"

    #@9
    const-string/jumbo v3, "Wrote partially-resolved ColorStateList to parcel!"

    #@c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 645
    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@11
    array-length v0, v2

    #@12
    .line 646
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 647
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@18
    .line 648
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    #@1a
    aget-object v2, v2, v1

    #@1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1f
    .line 647
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 650
    :cond_1
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    #@24
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@27
    .line 641
    return-void
.end method
