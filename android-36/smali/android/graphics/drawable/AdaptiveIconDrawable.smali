.class public Landroid/graphics/drawable/AdaptiveIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdaptiveIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;,
        Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field private static final greylist-max-o BACKGROUND_ID:I = 0x0

.field private static final greylist-max-o DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final greylist-max-o EXTRA_INSET_PERCENTAGE:F = 0.25f

.field private static final greylist-max-o FOREGROUND_ID:I = 0x1

.field public static final blacklist MASK_SIZE:F = 100.0f

.field private static final blacklist MONOCHROME_ID:I = 0x2

.field private static final greylist-max-o SAFEZONE_SCALE:F = 0.9166667f

.field private static greylist-max-o sMask:Landroid/graphics/Path;


# instance fields
.field private final greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mChildRequestedInvalidation:Z

.field private greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field greylist-max-o mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

.field private greylist-max-o mLayersBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mLayersShader:Landroid/graphics/Shader;

.field private final greylist-max-o mMask:Landroid/graphics/Path;

.field private final greylist-max-o mMaskMatrix:Landroid/graphics/Matrix;

.field private final blacklist mMaskScaleOnly:Landroid/graphics/Path;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSuspendChildInvalidation:Z

.field private final greylist-max-o mTmpOutRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTransparentRegion:Landroid/graphics/Region;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 151
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 152
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "state"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 158
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 162
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_23

    .line 163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_2f

    .line 164
    :cond_23
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_2f
    nop

    .line 167
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x104028b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    sput-object v1, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    .line 168
    new-instance v1, Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    .line 169
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    .line 170
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 171
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 172
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    .line 173
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "monochromeDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 208
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 209
    if-eqz p1, :cond_11

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 212
    :cond_11
    if-eqz p2, :cond_1b

    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 215
    :cond_1b
    if-eqz p3, :cond_25

    .line 216
    const/4 v0, 0x2

    invoke-direct {p0, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 218
    :cond_25
    return-void
.end method

.method private greylist-max-o addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "layer"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 227
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aput-object p2, v0, p1

    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->invalidateCache()V

    .line 229
    return-void
.end method

.method private greylist-max-o createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 176
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    .line 177
    .local v0, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 181
    return-object v0
.end method

.method public static whitelist getExtraInsetFraction()F
    .registers 1

    .line 265
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static greylist-max-o getExtraInsetPercentage()F
    .registers 1

    .line 272
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private greylist-max-o getMaxIntrinsicHeight()I
    .registers 5

    .line 871
    const/4 v0, -0x1

    .line 872
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1c

    .line 873
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    .line 874
    .local v2, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_10

    .line 875
    goto :goto_19

    .line 877
    :cond_10
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 878
    .local v3, "h":I
    if-le v3, v0, :cond_19

    .line 879
    move v0, v3

    .line 872
    .end local v2    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v3    # "h":I
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 882
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method private greylist-max-o getMaxIntrinsicWidth()I
    .registers 5

    .line 851
    const/4 v0, -0x1

    .line 852
    .local v0, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1c

    .line 853
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    .line 854
    .local v2, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_10

    .line 855
    goto :goto_19

    .line 857
    :cond_10
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 858
    .local v3, "w":I
    if-le v3, v0, :cond_19

    .line 859
    move v0, v3

    .line 852
    .end local v2    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v3    # "w":I
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 862
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method private greylist-max-o inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 21
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

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 494
    .local v4, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 497
    .local v5, "innerDepth":I
    const/4 v7, 0x0

    .line 498
    .local v7, "childIndex":I
    :goto_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    if-eq v8, v6, :cond_d3

    .line 499
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v10, v8

    .local v10, "depth":I
    if-ge v8, v5, :cond_27

    const/4 v8, 0x3

    if-eq v9, v8, :cond_23

    goto :goto_27

    :cond_23
    move-object/from16 v14, p2

    goto/16 :goto_d5

    .line 500
    :cond_27
    :goto_27
    const/4 v8, 0x2

    if-eq v9, v8, :cond_2d

    .line 501
    move-object/from16 v14, p2

    goto :goto_11

    .line 504
    :cond_2d
    if-le v10, v5, :cond_32

    .line 505
    move-object/from16 v14, p2

    goto :goto_11

    .line 507
    :cond_32
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 508
    .local v11, "tagName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_d6

    :cond_3d
    goto :goto_5d

    :sswitch_3e
    const-string v12, "foreground"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    move v12, v6

    goto :goto_5e

    :sswitch_48
    const-string v12, "background"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    const/4 v12, 0x0

    goto :goto_5e

    :sswitch_52
    const-string/jumbo v12, "monochrome"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    move v12, v8

    goto :goto_5e

    :goto_5d
    const/4 v12, -0x1

    :goto_5e
    packed-switch v12, :pswitch_data_e4

    .line 519
    move-object/from16 v14, p2

    goto :goto_11

    .line 516
    :pswitch_64
    const/4 v7, 0x2

    .line 517
    goto :goto_6a

    .line 513
    :pswitch_66
    const/4 v7, 0x1

    .line 514
    goto :goto_6a

    .line 510
    :pswitch_68
    const/4 v7, 0x0

    .line 511
    nop

    .line 522
    :goto_6a
    new-instance v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v13, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    .line 523
    .local v12, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    sget-object v13, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-static {v1, v3, v2, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 525
    .local v13, "a":Landroid/content/res/TypedArray;
    invoke-direct {v0, v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 526
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    iget-object v14, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_cc

    iget-object v14, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v14, :cond_cc

    .line 533
    :goto_85
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v9, v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_8e

    goto :goto_85

    .line 535
    :cond_8e
    if-ne v9, v8, :cond_ad

    .line 542
    iget-object v8, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v8, v8, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    move-object/from16 v14, p2

    invoke-static {v1, v14, v2, v8, v3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 544
    iget-object v8, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 545
    iget v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v15, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 546
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v15

    or-int/2addr v8, v15

    iput v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_ce

    .line 536
    :cond_ad
    move-object/from16 v14, p2

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ": <foreground> or <background> tag requires a \'drawable\'attribute or child tag defining a drawable"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 532
    :cond_cc
    move-object/from16 v14, p2

    .line 548
    :goto_ce
    invoke-direct {v0, v7, v12}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 549
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_11

    .line 498
    .end local v10    # "depth":I
    :cond_d3
    move-object/from16 v14, p2

    .line 550
    :goto_d5
    return-void

    :sswitch_data_d6
    .sparse-switch
        -0x719ae8e3 -> :sswitch_52
        -0x4f67aad2 -> :sswitch_48
        0x76486943 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_68
        :pswitch_66
        :pswitch_64
    .end packed-switch
.end method

.method private greylist-max-o resumeChildInvalidation()V
    .registers 3

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    .line 621
    iget-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_c

    .line 622
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    .line 623
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    .line 625
    :cond_c
    return-void
.end method

.method private greylist-max-o suspendChildInvalidation()V
    .registers 2

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    .line 610
    return-void
.end method

.method private greylist-max-o updateLayerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    return-void

    .line 333
    :cond_7
    :try_start_7
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->suspendChildInvalidation()V

    .line 334
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V

    .line 335
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 337
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    .line 338
    nop

    .line 339
    return-void

    .line 337
    :catchall_15
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    .line 338
    throw v0
.end method

.method private greylist-max-o updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 346
    .local v0, "cX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 348
    .local v1, "cY":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x3

    .local v3, "count":I
    :goto_e
    if-ge v2, v3, :cond_3f

    .line 349
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v4, v4, v2

    .line 350
    .local v4, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 351
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1b

    .line 352
    goto :goto_3c

    .line 355
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3faaaaab

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 356
    .local v6, "insetWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v7, v8

    .line 357
    .local v7, "insetHeight":I
    iget-object v8, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 358
    .local v8, "outRect":Landroid/graphics/Rect;
    sub-int v9, v0, v6

    sub-int v10, v1, v7

    add-int v11, v0, v6

    add-int v12, v1, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 360
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 348
    .end local v4    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "insetWidth":I
    .end local v7    # "insetHeight":I
    .end local v8    # "outRect":Landroid/graphics/Rect;
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 362
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .registers 7
    .param p1, "layer"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 553
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 556
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 559
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 561
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_36

    .line 564
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    .line 569
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 573
    :cond_24
    iput-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 575
    iget v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 576
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 578
    :cond_36
    return-void
.end method

.method private greylist-max-o updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 366
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 367
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 369
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 370
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    .line 373
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_5c

    .line 374
    :cond_4c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    .line 377
    :cond_5c
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 379
    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 380
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 10
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 443
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 445
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 446
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_8

    .line 447
    return-void

    .line 450
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 451
    .local v1, "density":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    .line 453
    iget-object v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 454
    .local v2, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4a

    .line 455
    aget-object v4, v2, v3

    .line 456
    .local v4, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    .line 458
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v5, :cond_31

    .line 459
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v6, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 461
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 462
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_31
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 466
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_47

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 467
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 470
    iget v6, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 454
    .end local v4    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 473
    .end local v3    # "i":I
    :cond_4a
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 582
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 4

    .line 913
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 914
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 915
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    const/4 v2, 0x3

    if-ge v1, v2, :cond_17

    .line 916
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 917
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    .line 918
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 915
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 921
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    .line 922
    return-void
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 185
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 384
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 385
    return-void

    .line 387
    :cond_5
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    if-nez v0, :cond_5b

    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 389
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 390
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 391
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    :cond_2f
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_47

    .line 394
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    :cond_47
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 399
    :cond_5b
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    if-eqz v0, :cond_7e

    .line 400
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 401
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 402
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 403
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 405
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_7e
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 721
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 648
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 887
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 888
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    .line 889
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    return-object v0

    .line 891
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getForeground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 681
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 682
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 684
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 686
    :goto_d
    return-void
.end method

.method public whitelist getIconMask()Landroid/graphics/Path;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 3

    .line 867
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 3

    .line 847
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getMonochrome()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 317
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 765
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 415
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 416
    return-void
.end method

.method public blacklist getSafeZone()Landroid/graphics/Region;
    .registers 6

    .line 421
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    .line 422
    .local v0, "mask":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f6aaaab

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 423
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 424
    .local v1, "p":Landroid/graphics/Path;
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 425
    new-instance v2, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 426
    .local v2, "safezoneRegion":Landroid/graphics/Region;
    invoke-virtual {v2, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 427
    return-object v2
.end method

.method public blacklist getSourceDrawableResId()I
    .registers 3

    .line 482
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 483
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    :goto_8
    return v1
.end method

.method public whitelist getTransparentRegion()Landroid/graphics/Region;
    .registers 4

    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 433
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 434
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 435
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 436
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 438
    :cond_24
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
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

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 238
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_8

    .line 239
    return-void

    .line 244
    :cond_8
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 245
    .local v1, "deviceDensity":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    .line 246
    iget v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSrcDensityOverride:I

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 247
    invoke-static {p3}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v2

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 249
    iget-object v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 250
    .local v2, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v2

    if-ge v3, v4, :cond_28

    .line 251
    aget-object v4, v2, v3

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 254
    .end local v3    # "i":I
    :cond_28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 255
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 629
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_8

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    goto :goto_b

    .line 632
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    .line 634
    :goto_b
    return-void
.end method

.method public whitelist invalidateSelf()V
    .registers 2

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 410
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 411
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 783
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProjected()Z
    .registers 5

    .line 590
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 591
    return v1

    .line 594
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 595
    .local v0, "layers":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/4 v3, 0x3

    if-ge v2, v3, :cond_24

    .line 596
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_21

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 597
    return v1

    .line 595
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 600
    .end local v2    # "i":I
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 799
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 4

    .line 788
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 789
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    .line 790
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 791
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_11

    .line 792
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 789
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 795
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 896
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    if-nez v0, :cond_2a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2a

    .line 897
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 898
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    const/4 v1, 0x3

    if-ge v0, v1, :cond_27

    .line 899
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 900
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_24

    .line 901
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 898
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 904
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    .line 906
    :cond_2a
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    return-void

    .line 325
    :cond_7
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 326
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 7
    .param p1, "level"    # I

    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 831
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    .line 832
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 833
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_16

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 834
    const/4 v0, 0x1

    .line 831
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 838
    .end local v2    # "i":I
    :cond_19
    if-eqz v0, :cond_22

    .line 839
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 842
    :cond_22
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 7
    .param p1, "state"    # [I

    .line 809
    const/4 v0, 0x0

    .line 811
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 812
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1f

    .line 813
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 814
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 815
    const/4 v0, 0x1

    .line 812
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 819
    .end local v2    # "i":I
    :cond_1f
    if-eqz v0, :cond_28

    .line 820
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 823
    :cond_28
    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 638
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 639
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 716
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 717
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 5
    .param p1, "mirrored"    # Z

    .line 770
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)V

    .line 772
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 773
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    const/4 v2, 0x3

    if-ge v1, v2, :cond_19

    .line 774
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 775
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_16

    .line 776
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 773
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 779
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 5
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 726
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 727
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    .line 728
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 729
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_11

    .line 730
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 727
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 733
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 5
    .param p1, "dither"    # Z

    .line 705
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 706
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    .line 707
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 708
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_11

    .line 709
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 706
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 712
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 653
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 654
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    .line 655
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 656
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_11

    .line 657
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 654
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 660
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 664
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 665
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    .line 666
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 667
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_11

    .line 668
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 665
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 672
    .end local v1    # "i":I
    :cond_14
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_20

    .line 673
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_25

    .line 675
    :cond_20
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 677
    :goto_25
    return-void
.end method

.method public whitelist setOpacity(I)V
    .registers 3
    .param p1, "opacity"    # I

    .line 760
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 761
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 6
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 749
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 750
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x3

    .line 751
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_14

    .line 752
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11

    .line 754
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 751
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 757
    .end local v2    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 737
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 738
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x3

    .line 739
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_14

    .line 740
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 741
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11

    .line 742
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 739
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 745
    .end local v2    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 7
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 690
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 691
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 693
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    const/4 v3, 0x3

    if-ge v2, v3, :cond_18

    .line 694
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 695
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_15

    .line 696
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 693
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 700
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 643
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 644
    return-void
.end method
