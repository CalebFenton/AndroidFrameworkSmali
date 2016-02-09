.class public Landroid/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;,
        Landroid/graphics/drawable/VectorDrawable$VPathRenderer;,
        Landroid/graphics/drawable/VectorDrawable$VGroup;,
        Landroid/graphics/drawable/VectorDrawable$VPath;,
        Landroid/graphics/drawable/VectorDrawable$VClipPath;,
        Landroid/graphics/drawable/VectorDrawable$VFullPath;
    }
.end annotation


# static fields
.field private static final DBG_VECTOR_DRAWABLE:Z = false

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field private static final LOGTAG:Ljava/lang/String;

.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mAllowCaching:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDpiScaleInsets:Landroid/graphics/Insets;

.field private mDpiScaledHeight:I

.field private mDpiScaledWidth:I

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;


# direct methods
.method static synthetic -wrap0(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyAlpha(IF)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 188
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@8
    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 233
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    #@4
    .line 232
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 236
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 219
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mAllowCaching:Z

    #@7
    .line 223
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@9
    .line 224
    iput v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@b
    .line 225
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    #@f
    .line 228
    const/16 v0, 0x9

    #@11
    new-array v0, v0, [F

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpFloats:[F

    #@15
    .line 229
    new-instance v0, Landroid/graphics/Matrix;

    #@17
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    #@1c
    .line 230
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@23
    .line 237
    if-nez p1, :cond_0

    #@25
    .line 238
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@27
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>()V

    #@2a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2c
    .line 243
    :goto_0
    invoke-virtual {p0, p2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateDimensionInfo(Landroid/content/res/Resources;Z)V

    #@2f
    .line 236
    return-void

    #@30
    .line 240
    :cond_0
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@32
    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@34
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@36
    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@38
    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@3e
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private static applyAlpha(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 553
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    .line 554
    .local v0, "alphaBytes":I
    const v1, 0xffffff

    #@7
    and-int/2addr p0, v1

    #@8
    .line 555
    int-to-float v1, v0

    #@9
    mul-float/2addr v1, p1

    #@a
    float-to-int v1, v1

    #@b
    shl-int/lit8 v1, v1, 0x18

    #@d
    or-int/2addr p0, v1

    #@e
    .line 556
    return p0
.end method

.method public static create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    .line 529
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@4
    move-result-object v4

    #@5
    .line 530
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@8
    move-result-object v0

    #@9
    .line 532
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c
    move-result v5

    #@d
    .local v5, "type":I
    if-eq v5, v7, :cond_1

    #@f
    .line 533
    const/4 v6, 0x1

    #@10
    if-ne v5, v6, :cond_0

    #@12
    .line 536
    :cond_1
    if-eq v5, v7, :cond_2

    #@14
    .line 537
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@16
    const-string/jumbo v7, "No start tag found"

    #@19
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1d
    .line 544
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v3

    #@1e
    .line 545
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@20
    const-string/jumbo v7, "parser error"

    #@23
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 549
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    const/4 v6, 0x0

    #@27
    return-object v6

    #@28
    .line 540
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    #@2a
    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    #@2d
    .line 541
    .local v1, "drawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v1, p0, v4, v0}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    .line 543
    return-object v1

    #@31
    .line 546
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_1
    move-exception v2

    #@32
    .line 547
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@34
    const-string/jumbo v7, "parser error"

    #@37
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
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
    .line 649
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    .line 650
    .local v11, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v10, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@6
    .line 651
    .local v10, "pathRenderer":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    const/4 v7, 0x1

    #@7
    .line 655
    .local v7, "noPathTag":Z
    new-instance v5, Ljava/util/Stack;

    #@9
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    #@c
    .line 656
    .local v5, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    invoke-static {v10}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-get1(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@f
    move-result-object v14

    #@10
    invoke-virtual {v5, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 658
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@16
    move-result v4

    #@17
    .line 659
    .local v4, "eventType":I
    :goto_0
    const/4 v14, 0x1

    #@18
    if-eq v4, v14, :cond_7

    #@1a
    .line 660
    const/4 v14, 0x2

    #@1b
    if-ne v4, v14, :cond_6

    #@1d
    .line 661
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v13

    #@21
    .line 662
    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@27
    .line 664
    .local v3, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    const-string/jumbo v14, "path"

    #@2a
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v14

    #@2e
    if-eqz v14, :cond_2

    #@30
    .line 665
    new-instance v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@32
    invoke-direct {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    #@35
    .line 666
    .local v9, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    move-object/from16 v0, p1

    #@37
    move-object/from16 v1, p3

    #@39
    move-object/from16 v2, p4

    #@3b
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3e
    .line 667
    iget-object v14, v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 668
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    #@46
    move-result-object v14

    #@47
    if-eqz v14, :cond_0

    #@49
    .line 669
    iget-object v14, v10, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@4b
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    #@4e
    move-result-object v15

    #@4f
    invoke-virtual {v14, v15, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 671
    :cond_0
    const/4 v7, 0x0

    #@53
    .line 672
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@55
    iget v15, v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@57
    or-int/2addr v14, v15

    #@58
    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@5a
    .line 698
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v9    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5d
    move-result v4

    #@5e
    goto :goto_0

    #@5f
    .line 673
    .restart local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v14, "clip-path"

    #@62
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v14

    #@66
    if-eqz v14, :cond_4

    #@68
    .line 674
    new-instance v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@6a
    invoke-direct {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    #@6d
    .line 675
    .local v8, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, p3

    #@71
    move-object/from16 v2, p4

    #@73
    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@76
    .line 676
    iget-object v14, v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7b
    .line 677
    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    #@7e
    move-result-object v14

    #@7f
    if-eqz v14, :cond_3

    #@81
    .line 678
    iget-object v14, v10, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@83
    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    #@86
    move-result-object v15

    #@87
    invoke-virtual {v14, v15, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 680
    :cond_3
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@8c
    iget v15, v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    #@8e
    or-int/2addr v14, v15

    #@8f
    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@91
    goto :goto_1

    #@92
    .line 681
    .end local v8    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    :cond_4
    const-string/jumbo v14, "group"

    #@95
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v14

    #@99
    if-eqz v14, :cond_1

    #@9b
    .line 682
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@9d
    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@a0
    .line 683
    .local v6, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    move-object/from16 v0, p1

    #@a2
    move-object/from16 v1, p3

    #@a4
    move-object/from16 v2, p4

    #@a6
    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@a9
    .line 684
    iget-object v14, v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae
    .line 685
    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    .line 686
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@b4
    move-result-object v14

    #@b5
    if-eqz v14, :cond_5

    #@b7
    .line 687
    iget-object v14, v10, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@b9
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@bc
    move-result-object v15

    #@bd
    invoke-virtual {v14, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 690
    :cond_5
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@c2
    invoke-static {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get0(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    #@c5
    move-result v15

    #@c6
    or-int/2addr v14, v15

    #@c7
    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@c9
    goto :goto_1

    #@ca
    .line 692
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v6    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x3

    #@cb
    if-ne v4, v14, :cond_1

    #@cd
    .line 693
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d0
    move-result-object v13

    #@d1
    .line 694
    .restart local v13    # "tagName":Ljava/lang/String;
    const-string/jumbo v14, "group"

    #@d4
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v14

    #@d8
    if-eqz v14, :cond_1

    #@da
    .line 695
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@dd
    goto/16 :goto_1

    #@df
    .line 706
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_9

    #@e1
    .line 707
    new-instance v12, Ljava/lang/StringBuffer;

    #@e3
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    #@e6
    .line 709
    .local v12, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    #@e9
    move-result v14

    #@ea
    if-lez v14, :cond_8

    #@ec
    .line 710
    const-string/jumbo v14, " or "

    #@ef
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f2
    .line 712
    :cond_8
    const-string/jumbo v14, "path"

    #@f5
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f8
    .line 714
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@fa
    new-instance v15, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v16, "no "

    #@102
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v15

    #@106
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v15

    #@10a
    const-string/jumbo v16, " defined"

    #@10d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v15

    #@111
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v15

    #@115
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@118
    throw v14

    #@119
    .line 648
    .end local v12    # "tag":Ljava/lang/StringBuffer;
    :cond_9
    return-void
.end method

.method private needMirroring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 746
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isAutoMirrored()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    #@b
    move-result v2

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private printGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;I)V
    .locals 6
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "level"    # I

    #@0
    .prologue
    .line 719
    const-string/jumbo v2, ""

    #@3
    .line 720
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@6
    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    const-string/jumbo v4, "    "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 720
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 724
    :cond_0
    sget-object v3, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, "current group is :"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 725
    const-string/jumbo v5, " rotation is "

    #@3a
    .line 724
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 725
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get2(Landroid/graphics/drawable/VectorDrawable$VGroup;)F

    #@41
    move-result v5

    #@42
    .line 724
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 726
    sget-object v3, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    const-string/jumbo v5, "matrix is :"

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getLocalMatrix()Landroid/graphics/Matrix;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 728
    const/4 v1, 0x0

    #@73
    :goto_1
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@78
    move-result v3

    #@79
    if-ge v1, v3, :cond_2

    #@7b
    .line 729
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@80
    move-result-object v0

    #@81
    .line 730
    .local v0, "child":Ljava/lang/Object;
    instance-of v3, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@83
    if-eqz v3, :cond_1

    #@85
    .line 731
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@87
    .end local v0    # "child":Ljava/lang/Object;
    add-int/lit8 v3, p2, 0x1

    #@89
    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/VectorDrawable;->printGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;I)V

    #@8c
    .line 728
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@8e
    goto :goto_1

    #@8f
    .line 718
    :cond_2
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 578
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    .line 579
    .local v7, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v6, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@6
    .line 582
    .local v6, "pathRenderer":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    iget v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@b
    move-result v11

    #@c
    or-int/2addr v10, v11

    #@d
    iput v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@f
    .line 585
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@12
    move-result-object v10

    #@13
    iput-object v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@15
    .line 587
    const/4 v10, 0x6

    #@16
    invoke-virtual {p1, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v9

    #@1a
    .line 588
    .local v9, "tintMode":I
    if-eq v9, v13, :cond_0

    #@1c
    .line 589
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@1e
    invoke-static {v9, v10}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@21
    move-result-object v10

    #@22
    iput-object v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@24
    .line 592
    :cond_0
    const/4 v10, 0x1

    #@25
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@28
    move-result-object v8

    #@29
    .line 593
    .local v8, "tint":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_1

    #@2b
    .line 594
    iput-object v8, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@2d
    .line 598
    :cond_1
    iget-boolean v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@2f
    const/4 v11, 0x5

    #@30
    .line 597
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@33
    move-result v10

    #@34
    iput-boolean v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@36
    .line 601
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@38
    const/4 v11, 0x7

    #@39
    .line 600
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3c
    move-result v10

    #@3d
    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@3f
    .line 603
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@41
    const/16 v11, 0x8

    #@43
    .line 602
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@46
    move-result v10

    #@47
    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@49
    .line 605
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@4b
    cmpg-float v10, v10, v12

    #@4d
    if-gtz v10, :cond_2

    #@4f
    .line 606
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@51
    new-instance v11, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@59
    move-result-object v12

    #@5a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v11

    #@5e
    .line 607
    const-string/jumbo v12, "<vector> tag requires viewportWidth > 0"

    #@61
    .line 606
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v10

    #@6d
    .line 608
    :cond_2
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@6f
    cmpg-float v10, v10, v12

    #@71
    if-gtz v10, :cond_3

    #@73
    .line 609
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@75
    new-instance v11, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@7d
    move-result-object v12

    #@7e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v11

    #@82
    .line 610
    const-string/jumbo v12, "<vector> tag requires viewportHeight > 0"

    #@85
    .line 609
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v11

    #@89
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v11

    #@8d
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@90
    throw v10

    #@91
    .line 614
    :cond_3
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@93
    const/4 v11, 0x3

    #@94
    .line 613
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@97
    move-result v10

    #@98
    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@9a
    .line 616
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@9c
    const/4 v11, 0x2

    #@9d
    .line 615
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@a0
    move-result v10

    #@a1
    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@a3
    .line 618
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@a5
    cmpg-float v10, v10, v12

    #@a7
    if-gtz v10, :cond_4

    #@a9
    .line 619
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@ab
    new-instance v11, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@b3
    move-result-object v12

    #@b4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v11

    #@b8
    .line 620
    const-string/jumbo v12, "<vector> tag requires width > 0"

    #@bb
    .line 619
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v11

    #@bf
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v11

    #@c3
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v10

    #@c7
    .line 621
    :cond_4
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@c9
    cmpg-float v10, v10, v12

    #@cb
    if-gtz v10, :cond_5

    #@cd
    .line 622
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@cf
    new-instance v11, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@d7
    move-result-object v12

    #@d8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v11

    #@dc
    .line 623
    const-string/jumbo v12, "<vector> tag requires height > 0"

    #@df
    .line 622
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v11

    #@e3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v11

    #@e7
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@ea
    throw v10

    #@eb
    .line 627
    :cond_5
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@ed
    iget v10, v10, Landroid/graphics/Insets;->left:I

    #@ef
    const/16 v11, 0x9

    #@f1
    .line 626
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@f4
    move-result v2

    #@f5
    .line 629
    .local v2, "insetLeft":I
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@f7
    iget v10, v10, Landroid/graphics/Insets;->top:I

    #@f9
    const/16 v11, 0xa

    #@fb
    .line 628
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@fe
    move-result v4

    #@ff
    .line 631
    .local v4, "insetTop":I
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@101
    iget v10, v10, Landroid/graphics/Insets;->right:I

    #@103
    const/16 v11, 0xb

    #@105
    .line 630
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@108
    move-result v3

    #@109
    .line 633
    .local v3, "insetRight":I
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@10b
    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    #@10d
    const/16 v11, 0xc

    #@10f
    .line 632
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@112
    move-result v1

    #@113
    .line 634
    .local v1, "insetBottom":I
    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@116
    move-result-object v10

    #@117
    iput-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@119
    .line 637
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getAlpha()F

    #@11c
    move-result v10

    #@11d
    .line 636
    const/4 v11, 0x4

    #@11e
    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@121
    move-result v0

    #@122
    .line 638
    .local v0, "alphaInFloat":F
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setAlpha(F)V

    #@125
    .line 640
    const/4 v10, 0x0

    #@126
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@129
    move-result-object v5

    #@12a
    .line 641
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@12c
    .line 642
    iput-object v5, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@12e
    .line 643
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@130
    invoke-virtual {v10, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@133
    .line 577
    :cond_6
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 468
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 470
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@5
    .line 471
    .local v3, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v3, :cond_0

    #@7
    .line 472
    return-void

    #@8
    .line 475
    :cond_0
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 477
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@e
    sget-object v5, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    #@10
    .line 476
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 479
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@15
    :try_start_0
    iput-boolean v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@17
    .line 480
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@1a
    .line 481
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v4

    #@1e
    const/4 v5, 0x1

    #@1f
    invoke-virtual {p0, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->updateDimensionInfo(Landroid/content/res/Resources;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 485
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@25
    .line 490
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@27
    if-eqz v4, :cond_2

    #@29
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@2b
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 491
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@33
    invoke-virtual {v4, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@36
    move-result-object v4

    #@37
    iput-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@39
    .line 494
    :cond_2
    iget-object v2, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@3b
    .line 495
    .local v2, "path":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    if-eqz v2, :cond_3

    #@3d
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->canApplyTheme()Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_3

    #@43
    .line 496
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@46
    .line 500
    :cond_3
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@48
    iget-object v5, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4a
    iget-object v6, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4c
    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@4f
    move-result-object v4

    #@50
    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@52
    .line 467
    return-void

    #@53
    .line 482
    .end local v2    # "path":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@54
    .line 483
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    #@56
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@59
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 484
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    #@5b
    .line 485
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@5e
    .line 484
    throw v4
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 259
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 260
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@6
    .line 258
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/16 v10, 0x800

    #@2
    const/4 v9, 0x0

    #@3
    .line 277
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {p0, v7}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@8
    .line 278
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v7

    #@e
    if-lez v7, :cond_0

    #@10
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@15
    move-result v7

    #@16
    if-gtz v7, :cond_1

    #@18
    .line 280
    :cond_0
    return-void

    #@19
    .line 284
    :cond_1
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@1b
    if-nez v7, :cond_3

    #@1d
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1f
    .line 290
    .local v2, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    #@21
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    #@24
    .line 291
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    #@26
    iget-object v8, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpFloats:[F

    #@28
    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    #@2b
    .line 292
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpFloats:[F

    #@2d
    aget v7, v7, v9

    #@2f
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@32
    move-result v0

    #@33
    .line 293
    .local v0, "canvasScaleX":F
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpFloats:[F

    #@35
    const/4 v8, 0x4

    #@36
    aget v7, v7, v8

    #@38
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@3b
    move-result v1

    #@3c
    .line 294
    .local v1, "canvasScaleY":F
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@41
    move-result v7

    #@42
    int-to-float v7, v7

    #@43
    mul-float/2addr v7, v0

    #@44
    float-to-int v6, v7

    #@45
    .line 295
    .local v6, "scaledWidth":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@47
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@4a
    move-result v7

    #@4b
    int-to-float v7, v7

    #@4c
    mul-float/2addr v7, v1

    #@4d
    float-to-int v5, v7

    #@4e
    .line 296
    .local v5, "scaledHeight":I
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    #@51
    move-result v6

    #@52
    .line 297
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    #@55
    move-result v5

    #@56
    .line 299
    if-lez v6, :cond_2

    #@58
    if-gtz v5, :cond_4

    #@5a
    .line 300
    :cond_2
    return-void

    #@5b
    .line 284
    .end local v0    # "canvasScaleX":F
    .end local v1    # "canvasScaleY":F
    .end local v2    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v5    # "scaledHeight":I
    .end local v6    # "scaledWidth":I
    :cond_3
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@5d
    .restart local v2    # "colorFilter":Landroid/graphics/ColorFilter;
    goto :goto_0

    #@5e
    .line 303
    .restart local v0    # "canvasScaleX":F
    .restart local v1    # "canvasScaleY":F
    .restart local v5    # "scaledHeight":I
    .restart local v6    # "scaledWidth":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@61
    move-result v4

    #@62
    .line 304
    .local v4, "saveCount":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@64
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@66
    int-to-float v7, v7

    #@67
    iget-object v8, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@69
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@6b
    int-to-float v8, v8

    #@6c
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@6f
    .line 307
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    #@72
    move-result v3

    #@73
    .line 308
    .local v3, "needMirroring":Z
    if-eqz v3, :cond_5

    #@75
    .line 309
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@77
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@7a
    move-result v7

    #@7b
    int-to-float v7, v7

    #@7c
    const/4 v8, 0x0

    #@7d
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@80
    .line 310
    const/high16 v7, -0x40800000    # -1.0f

    #@82
    const/high16 v8, 0x3f800000    # 1.0f

    #@84
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    #@87
    .line 316
    :cond_5
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@89
    invoke-virtual {v7, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    #@8c
    .line 318
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8e
    invoke-virtual {v7, v6, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createCachedBitmapIfNeeded(II)V

    #@91
    .line 319
    iget-boolean v7, p0, Landroid/graphics/drawable/VectorDrawable;->mAllowCaching:Z

    #@93
    if-nez v7, :cond_7

    #@95
    .line 320
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@97
    invoke-virtual {v7, v6, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCachedBitmap(II)V

    #@9a
    .line 327
    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@9c
    iget-object v8, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@9e
    invoke-virtual {v7, p1, v2, v8}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    #@a1
    .line 328
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@a4
    .line 274
    return-void

    #@a5
    .line 322
    :cond_7
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@a7
    invoke-virtual {v7}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    #@aa
    move-result v7

    #@ab
    if-nez v7, :cond_6

    #@ad
    .line 323
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@af
    invoke-virtual {v7, v6, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCachedBitmap(II)V

    #@b2
    .line 324
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@b4
    invoke-virtual {v7}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    #@b7
    goto :goto_1
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 738
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@8
    .line 270
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 404
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 399
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 394
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    #@2
    return-object v0
.end method

.method public getPixelSize()F
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 510
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3
    if-eqz v6, :cond_0

    #@5
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@7
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@9
    if-nez v6, :cond_1

    #@b
    .line 515
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    #@d
    return v6

    #@e
    .line 511
    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@10
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@12
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@14
    cmpl-float v6, v6, v7

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 512
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1a
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@1c
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@1e
    cmpl-float v6, v6, v7

    #@20
    if-eqz v6, :cond_0

    #@22
    .line 513
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@24
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@26
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@28
    cmpl-float v6, v6, v7

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 514
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2e
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@30
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@32
    cmpl-float v6, v6, v7

    #@34
    if-eqz v6, :cond_0

    #@36
    .line 517
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@38
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@3a
    iget v1, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@3c
    .line 518
    .local v1, "intrinsicWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3e
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@40
    iget v0, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@42
    .line 519
    .local v0, "intrinsicHeight":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@44
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@46
    iget v5, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@48
    .line 520
    .local v5, "viewportWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4a
    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@4c
    iget v4, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@4e
    .line 521
    .local v4, "viewportHeight":F
    div-float v2, v5, v1

    #@50
    .line 522
    .local v2, "scaleX":F
    div-float v3, v4, v0

    #@52
    .line 523
    .local v3, "scaleY":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@55
    move-result v6

    #@56
    return v6
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@4
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
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
    const/4 v6, 0x1

    #@1
    .line 562
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3
    .line 563
    .local v2, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    new-instance v1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@5
    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;-><init>()V

    #@8
    .line 564
    .local v1, "pathRenderer":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    iput-object v1, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@a
    .line 566
    sget-object v3, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    #@c
    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 567
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@13
    .line 568
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 570
    iput-boolean v6, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@18
    .line 571
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@1b
    .line 573
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1d
    iget-object v4, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@1f
    iget-object v5, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@21
    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@27
    .line 574
    invoke-virtual {p0, p1, v6}, Landroid/graphics/drawable/VectorDrawable;->updateDimensionInfo(Landroid/content/res/Resources;Z)V

    #@2a
    .line 561
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@4
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 377
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@12
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@14
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@17
    move-result v0

    #@18
    .line 377
    :goto_0
    return v0

    #@19
    :cond_0
    const/4 v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    :cond_1
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 249
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@13
    .line 250
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@16
    .line 252
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 384
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 385
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    .line 386
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@19
    .line 387
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 389
    :cond_0
    const/4 v1, 0x0

    #@1c
    return v1
.end method

.method setAllowCaching(Z)V
    .locals 0
    .param p1, "allowCaching"    # Z

    #@0
    .prologue
    .line 742
    iput-boolean p1, p0, Landroid/graphics/drawable/VectorDrawable;->mAllowCaching:Z

    #@2
    .line 741
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@7
    move-result v0

    #@8
    if-eq v0, p1, :cond_0

    #@a
    .line 339
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@e
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setRootAlpha(I)V

    #@11
    .line 340
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@14
    .line 337
    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 752
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@a
    .line 753
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@d
    .line 750
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    .line 347
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@5
    .line 345
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 358
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 359
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    .line 360
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@12
    .line 361
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@15
    .line 356
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 368
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 369
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    .line 370
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@c
    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@12
    .line 371
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@15
    .line 366
    :cond_0
    return-void
.end method

.method updateDimensionInfo(Landroid/content/res/Resources;Z)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "updateConstantStateDensity"    # Z

    #@0
    .prologue
    .line 421
    if-eqz p1, :cond_0

    #@2
    .line 422
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@5
    move-result-object v7

    #@6
    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    #@8
    .line 423
    .local v2, "densityDpi":I
    if-nez v2, :cond_1

    #@a
    const/16 v5, 0xa0

    #@c
    .line 425
    .local v5, "targetDensity":I
    :goto_0
    if-eqz p2, :cond_2

    #@e
    .line 426
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@10
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@12
    iput v5, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    #@14
    .line 456
    .end local v2    # "densityDpi":I
    .end local v5    # "targetDensity":I
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@16
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@18
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@1a
    float-to-int v7, v7

    #@1b
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@1d
    .line 457
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1f
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@21
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@23
    float-to-int v7, v7

    #@24
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@26
    .line 458
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@28
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@2a
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@2c
    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    #@2e
    .line 420
    return-void

    #@2f
    .line 423
    .restart local v2    # "densityDpi":I
    :cond_1
    move v5, v2

    #@30
    .restart local v5    # "targetDensity":I
    goto :goto_0

    #@31
    .line 428
    :cond_2
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@33
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@35
    iget v1, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    #@37
    .line 429
    .local v1, "constantStateDensity":I
    if-eq v5, v1, :cond_0

    #@39
    if-eqz v1, :cond_0

    #@3b
    .line 431
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3d
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@3f
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@41
    float-to-int v7, v7

    #@42
    .line 430
    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@45
    move-result v7

    #@46
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@48
    .line 434
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4a
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@4c
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@4e
    float-to-int v7, v7

    #@4f
    .line 433
    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@52
    move-result v7

    #@53
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@55
    .line 437
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@57
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@59
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@5b
    iget v7, v7, Landroid/graphics/Insets;->left:I

    #@5d
    .line 436
    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@60
    move-result v3

    #@61
    .line 440
    .local v3, "left":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@63
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@65
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@67
    iget v7, v7, Landroid/graphics/Insets;->right:I

    #@69
    .line 439
    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@6c
    move-result v4

    #@6d
    .line 443
    .local v4, "right":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6f
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@71
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@73
    iget v7, v7, Landroid/graphics/Insets;->top:I

    #@75
    .line 442
    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@78
    move-result v6

    #@79
    .line 446
    .local v6, "top":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@7b
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@7d
    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@7f
    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    #@81
    .line 445
    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@84
    move-result v0

    #@85
    .line 448
    .local v0, "bottom":I
    invoke-static {v3, v6, v4, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@88
    move-result-object v7

    #@89
    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    #@8b
    .line 449
    return-void
.end method
