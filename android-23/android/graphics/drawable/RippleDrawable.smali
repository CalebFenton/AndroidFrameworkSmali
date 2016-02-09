.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final MASK_CONTENT:I = 0x1

.field private static final MASK_EXPLICIT:I = 0x2

.field private static final MASK_NONE:I = 0x0

.field private static final MASK_UNKNOWN:I = -0x1

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private mHasValidMask:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMaskMatrix:Landroid/graphics/Matrix;

.field private mMaskShader:Landroid/graphics/BitmapShader;

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Landroid/graphics/drawable/RippleForeground;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@3
    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    #@9
    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 185
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@4
    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@7
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    #@a
    .line 187
    if-nez p1, :cond_0

    #@c
    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "RippleDrawable requires a non-null color"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 191
    :cond_0
    if-eqz p2, :cond_1

    #@17
    move-object v0, p0

    #@18
    move-object v1, p2

    #@19
    move v4, v3

    #@1a
    move v5, v3

    #@1b
    move v6, v3

    #@1c
    move v7, v3

    #@1d
    .line 192
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@20
    .line 195
    :cond_1
    if-eqz p3, :cond_2

    #@22
    .line 196
    const v7, 0x102002e

    #@25
    move-object v4, p0

    #@26
    move-object v5, p3

    #@27
    move-object v6, v2

    #@28
    move v8, v3

    #@29
    move v9, v3

    #@2a
    move v10, v3

    #@2b
    move v11, v3

    #@2c
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2f
    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@32
    .line 200
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    #@35
    .line 201
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    #@38
    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@3b
    .line 184
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1015
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    #@4
    .line 111
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    #@b
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    #@d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@12
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@17
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    #@19
    .line 120
    new-instance v0, Landroid/graphics/Rect;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    #@20
    .line 157
    iput v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@22
    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    #@24
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    #@26
    .line 1016
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@28
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@2b
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2d
    .line 1017
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2f
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@31
    .line 1019
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@33
    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNum:I

    #@35
    if-lez v0, :cond_0

    #@37
    .line 1020
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    #@3a
    .line 1021
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    #@3d
    .line 1024
    :cond_0
    if-eqz p2, :cond_1

    #@3f
    .line 1025
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@42
    move-result-object v0

    #@43
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@45
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    #@47
    .line 1028
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@4a
    .line 1015
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private cancelExitingRipples()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 221
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@4
    .line 222
    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@6
    .line 223
    .local v2, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 224
    aget-object v3, v2, v1

    #@b
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    #@e
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 227
    :cond_0
    if-eqz v2, :cond_1

    #@13
    .line 228
    invoke-static {v2, v4, v0, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@16
    .line 230
    :cond_1
    iput v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@18
    .line 233
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@1b
    .line 220
    return-void
.end method

.method private clearHotspots()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 614
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 615
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@8
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    #@b
    .line 616
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@d
    .line 617
    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@f
    .line 620
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 621
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    #@18
    .line 622
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1a
    .line 623
    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@1c
    .line 626
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    #@1f
    .line 613
    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 842
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@4
    .line 843
    .local v1, "active":Landroid/graphics/drawable/RippleForeground;
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@8
    .line 844
    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    move-object/from16 v0, p0

    #@a
    iget v4, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@c
    .line 845
    .local v4, "count":I
    if-nez v1, :cond_0

    #@e
    if-gtz v4, :cond_0

    #@10
    if-eqz v2, :cond_3

    #@12
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    #@15
    move-result v13

    #@16
    if-eqz v13, :cond_3

    #@18
    .line 850
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterX()F

    #@1f
    move-result v11

    #@20
    .line 851
    .local v11, "x":F
    move-object/from16 v0, p0

    #@22
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterY()F

    #@27
    move-result v12

    #@28
    .line 852
    .local v12, "y":F
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    #@2d
    .line 854
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    #@30
    .line 857
    move-object/from16 v0, p0

    #@32
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@34
    if-eqz v13, :cond_1

    #@36
    .line 858
    move-object/from16 v0, p0

    #@38
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@3a
    neg-float v14, v11

    #@3b
    neg-float v15, v12

    #@3c
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@3f
    .line 859
    move-object/from16 v0, p0

    #@41
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@47
    invoke-virtual {v13, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@4a
    .line 864
    :cond_1
    move-object/from16 v0, p0

    #@4c
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@4e
    iget-object v13, v13, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@50
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    #@53
    move-result-object v14

    #@54
    const/high16 v15, -0x1000000

    #@56
    invoke-virtual {v13, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@59
    move-result v3

    #@5a
    .line 865
    .local v3, "color":I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    #@5d
    move-result v13

    #@5e
    div-int/lit8 v13, v13, 0x2

    #@60
    shl-int/lit8 v6, v13, 0x18

    #@62
    .line 866
    .local v6, "halfAlpha":I
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    #@65
    move-result-object v9

    #@66
    .line 868
    .local v9, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@68
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6a
    if-eqz v13, :cond_4

    #@6c
    .line 872
    const/high16 v13, -0x1000000

    #@6e
    or-int v5, v3, v13

    #@70
    .line 873
    .local v5, "fullAlphaColor":I
    move-object/from16 v0, p0

    #@72
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@74
    invoke-virtual {v13, v5}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    #@77
    .line 875
    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@7a
    .line 876
    move-object/from16 v0, p0

    #@7c
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@7e
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@81
    .line 877
    move-object/from16 v0, p0

    #@83
    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@85
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@88
    .line 885
    .end local v5    # "fullAlphaColor":I
    :goto_0
    if-eqz v2, :cond_2

    #@8a
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    #@8d
    move-result v13

    #@8e
    if-eqz v13, :cond_2

    #@90
    .line 886
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v2, v0, v9}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@95
    .line 889
    :cond_2
    if-lez v4, :cond_5

    #@97
    .line 890
    move-object/from16 v0, p0

    #@99
    iget-object v10, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@9b
    .line 891
    .local v10, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v8, 0x0

    #@9c
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_5

    #@9e
    .line 892
    aget-object v13, v10, v8

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@a5
    .line 891
    add-int/lit8 v8, v8, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 847
    .end local v3    # "color":I
    .end local v6    # "halfAlpha":I
    .end local v8    # "i":I
    .end local v9    # "p":Landroid/graphics/Paint;
    .end local v10    # "ripples":[Landroid/graphics/drawable/RippleForeground;
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_3
    return-void

    #@a9
    .line 879
    .restart local v3    # "color":I
    .restart local v6    # "halfAlpha":I
    .restart local v9    # "p":Landroid/graphics/Paint;
    .restart local v11    # "x":F
    .restart local v12    # "y":F
    :cond_4
    const v13, 0xffffff

    #@ac
    and-int/2addr v13, v3

    #@ad
    or-int v7, v13, v6

    #@af
    .line 880
    .local v7, "halfAlphaColor":I
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@b2
    .line 881
    const/4 v13, 0x0

    #@b3
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@b6
    .line 882
    const/4 v13, 0x0

    #@b7
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@ba
    goto :goto_0

    #@bb
    .line 896
    .end local v7    # "halfAlphaColor":I
    :cond_5
    if-eqz v1, :cond_6

    #@bd
    .line 897
    move-object/from16 v0, p1

    #@bf
    invoke-virtual {v1, v0, v9}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@c2
    .line 900
    :cond_6
    neg-float v13, v11

    #@c3
    neg-float v14, v12

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    #@c9
    .line 841
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 832
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 833
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 834
    .local v1, "count":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@b
    .line 835
    aget-object v3, v0, v2

    #@d
    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@f
    const v4, 0x102002e

    #@12
    if-eq v3, v4, :cond_0

    #@14
    .line 836
    aget-object v3, v0, v2

    #@16
    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1b
    .line 834
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 830
    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5
    .line 903
    return-void
.end method

.method private getMaskType()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 802
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@4
    if-nez v3, :cond_0

    #@6
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@8
    if-gtz v3, :cond_0

    #@a
    .line 803
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@c
    if-eqz v3, :cond_1

    #@e
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@10
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 808
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 809
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@1f
    move-result v3

    #@20
    if-ne v3, v4, :cond_2

    #@22
    .line 811
    return v5

    #@23
    .line 805
    :cond_1
    return v4

    #@24
    .line 813
    :cond_2
    const/4 v3, 0x2

    #@25
    return v3

    #@26
    .line 818
    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@28
    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2a
    .line 819
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2c
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@2e
    .line 820
    .local v1, "count":I
    const/4 v2, 0x0

    #@2f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    #@31
    .line 821
    aget-object v3, v0, v2

    #@33
    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@35
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@38
    move-result v3

    #@39
    if-eq v3, v4, :cond_4

    #@3b
    .line 822
    const/4 v3, 0x1

    #@3c
    return v3

    #@3d
    .line 820
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 827
    :cond_5
    return v5
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 909
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    #@b
    .line 910
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@11
    .line 911
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    #@13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@18
    .line 913
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    #@1a
    return-object v0
.end method

.method private isBounded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 363
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    #@0
    .prologue
    .line 646
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@2
    .line 647
    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@4
    .line 648
    .local v2, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 649
    aget-object v3, v2, v1

    #@9
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    #@c
    .line 648
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 652
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 653
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@15
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    #@18
    .line 656
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 657
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1e
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    #@21
    .line 645
    :cond_2
    return-void
.end method

.method private pruneRipples()V
    .locals 6

    #@0
    .prologue
    .line 715
    const/4 v2, 0x0

    #@1
    .line 718
    .local v2, "remaining":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@3
    .line 719
    .local v4, "ripples":[Landroid/graphics/drawable/RippleForeground;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@5
    .line 720
    .local v0, "count":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    move v3, v2

    #@7
    .end local v2    # "remaining":I
    .local v3, "remaining":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 721
    aget-object v5, v4, v1

    #@b
    invoke-virtual {v5}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_2

    #@11
    .line 722
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "remaining":I
    .restart local v2    # "remaining":I
    aget-object v5, v4, v1

    #@15
    aput-object v5, v4, v3

    #@17
    .line 720
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    move v3, v2

    #@1a
    .end local v2    # "remaining":I
    .restart local v3    # "remaining":I
    goto :goto_0

    #@1b
    .line 727
    :cond_0
    move v1, v3

    #@1c
    :goto_2
    if-ge v1, v0, :cond_1

    #@1e
    .line 728
    const/4 v5, 0x0

    #@1f
    aput-object v5, v4, v1

    #@21
    .line 727
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_2

    #@24
    .line 731
    :cond_1
    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@26
    .line 714
    return-void

    #@27
    :cond_2
    move v2, v3

    #@28
    .end local v3    # "remaining":I
    .restart local v2    # "remaining":I
    goto :goto_1
.end method

.method private setBackgroundActive(ZZ)V
    .locals 1
    .param p1, "active"    # Z
    .param p2, "focused"    # Z

    #@0
    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 279
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@6
    .line 280
    if-eqz p1, :cond_1

    #@8
    .line 281
    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    #@b
    .line 277
    :cond_0
    :goto_0
    return-void

    #@c
    .line 283
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundExit()V

    #@f
    goto :goto_0
.end method

.method private setRippleActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 268
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@6
    .line 269
    if-eqz p1, :cond_1

    #@8
    .line 270
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    #@b
    .line 266
    :cond_0
    :goto_0
    return-void

    #@c
    .line 272
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    #@f
    goto :goto_0
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 492
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    #@2
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 493
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    #@a
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    #@c
    .line 494
    const/4 v0, 0x0

    #@d
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@10
    .line 491
    :cond_0
    return-void
.end method

.method private tryBackgroundEnter(Z)V
    .locals 3
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 549
    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@d
    .line 552
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@f
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@11
    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@13
    int-to-float v1, v1

    #@14
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(FF)V

    #@19
    .line 553
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleBackground;->enter(Z)V

    #@1e
    .line 547
    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 559
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    #@9
    .line 556
    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 568
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@3
    const/16 v1, 0xa

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 571
    return-void

    #@8
    .line 574
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 577
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 578
    iput-boolean v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    #@12
    .line 579
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    #@14
    .line 580
    .local v3, "x":F
    iget v4, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    #@16
    .line 586
    .local v4, "y":F
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    #@19
    move-result v5

    #@1a
    .line 587
    .local v5, "isBounded":Z
    new-instance v0, Landroid/graphics/drawable/RippleForeground;

    #@1c
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@1e
    move-object v1, p0

    #@1f
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/RippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V

    #@22
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@24
    .line 590
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "isBounded":Z
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@26
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@28
    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@2a
    int-to-float v1, v1

    #@2b
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FF)V

    #@30
    .line 591
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@32
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/RippleForeground;->enter(Z)V

    #@35
    .line 567
    return-void

    #@36
    .line 582
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    #@3b
    move-result v3

    #@3c
    .line 583
    .restart local v3    # "x":F
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    #@41
    move-result v4

    #@42
    .restart local v4    # "y":F
    goto :goto_0
.end method

.method private tryRippleExit()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 599
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 600
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 601
    const/16 v0, 0xa

    #@b
    new-array v0, v0, [Landroid/graphics/drawable/RippleForeground;

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@f
    .line 603
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@11
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@13
    add-int/lit8 v2, v1, 0x1

    #@15
    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@17
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@19
    aput-object v2, v0, v1

    #@1b
    .line 604
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@1d
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    #@20
    .line 605
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@22
    .line 598
    :cond_1
    return-void
.end method

.method private updateLocalState()V
    .locals 1

    #@0
    .prologue
    .line 1033
    const v0, 0x102002e

    #@3
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@9
    .line 1031
    return-void
.end method

.method private updateMaskShaderIfNeeded()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 738
    iget-boolean v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 739
    return-void

    #@8
    .line 742
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    #@b
    move-result v2

    #@c
    .line 743
    .local v2, "maskType":I
    const/4 v4, -0x1

    #@d
    if-ne v2, v4, :cond_1

    #@f
    .line 744
    return-void

    #@10
    .line 747
    :cond_1
    iput-boolean v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@12
    .line 749
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    #@15
    move-result-object v0

    #@16
    .line 750
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    #@18
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_4

    #@1e
    .line 751
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@20
    if-eqz v4, :cond_3

    #@22
    .line 752
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #@27
    .line 753
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@29
    .line 754
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@2b
    .line 755
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@2d
    .line 757
    :cond_3
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@2f
    .line 758
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@31
    .line 759
    return-void

    #@32
    .line 763
    :cond_4
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@34
    if-eqz v4, :cond_5

    #@36
    .line 764
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@38
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@3f
    move-result v5

    #@40
    if-eq v4, v5, :cond_9

    #@42
    .line 766
    :cond_5
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@44
    if-eqz v4, :cond_6

    #@46
    .line 767
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@48
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #@4b
    .line 771
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@4e
    move-result v4

    #@4f
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@52
    move-result v5

    #@53
    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@55
    .line 770
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@58
    move-result-object v4

    #@59
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@5b
    .line 772
    new-instance v4, Landroid/graphics/BitmapShader;

    #@5d
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@5f
    .line 773
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@61
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@63
    .line 772
    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@66
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@68
    .line 774
    new-instance v4, Landroid/graphics/Canvas;

    #@6a
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@6c
    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@6f
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@71
    .line 779
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@73
    if-nez v4, :cond_a

    #@75
    .line 780
    new-instance v4, Landroid/graphics/Matrix;

    #@77
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@7a
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@7c
    .line 785
    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@7e
    if-nez v4, :cond_7

    #@80
    .line 786
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    #@82
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@84
    invoke-direct {v4, v8, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@87
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@89
    .line 790
    :cond_7
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@8b
    .line 791
    .local v1, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@8d
    .line 792
    .local v3, "top":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@8f
    neg-int v5, v1

    #@90
    int-to-float v5, v5

    #@91
    neg-int v6, v3

    #@92
    int-to-float v6, v6

    #@93
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@96
    .line 793
    const/4 v4, 0x2

    #@97
    if-ne v2, v4, :cond_b

    #@99
    .line 794
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@9b
    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    #@9e
    .line 798
    :cond_8
    :goto_2
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@a0
    int-to-float v5, v1

    #@a1
    int-to-float v6, v3

    #@a2
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@a5
    .line 737
    return-void

    #@a6
    .line 765
    .end local v1    # "left":I
    .end local v3    # "top":I
    :cond_9
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@a8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    #@ab
    move-result v4

    #@ac
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@af
    move-result v5

    #@b0
    if-ne v4, v5, :cond_5

    #@b2
    .line 776
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@b4
    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    #@b7
    goto :goto_0

    #@b8
    .line 782
    :cond_a
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@ba
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    #@bd
    goto :goto_1

    #@be
    .line 795
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    :cond_b
    if-ne v2, v9, :cond_8

    #@c0
    .line 796
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@c2
    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    #@c5
    goto :goto_2
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    .line 462
    .local v1, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v3

    #@8
    or-int/2addr v2, v3

    #@9
    iput v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    #@b
    .line 465
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v2

    #@f
    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@11
    .line 467
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@15
    move-result-object v0

    #@16
    .line 468
    .local v0, "color":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@18
    .line 469
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@1a
    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@1c
    .line 472
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@1e
    .line 473
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@20
    iget v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@22
    const/4 v4, 0x1

    #@23
    .line 472
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@26
    move-result v3

    #@27
    iput v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@29
    .line 475
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@2c
    .line 458
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@3
    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@9
    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 480
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 481
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 482
    const-string/jumbo v2, ": <ripple> requires a valid color attribute"

    #@27
    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 478
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 502
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@5
    .line 503
    .local v2, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-nez v2, :cond_0

    #@7
    .line 504
    return-void

    #@8
    .line 507
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 508
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@e
    .line 509
    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    #@10
    .line 508
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 511
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 515
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 519
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 520
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@2e
    .line 523
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@31
    .line 499
    return-void

    #@32
    .line 512
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@33
    .line 513
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@35
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@38
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 514
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@3a
    .line 515
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    .line 514
    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

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

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 971
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 972
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 685
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    #@3
    .line 689
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    .line 690
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x2

    #@8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    #@b
    move-result v1

    #@c
    .line 691
    .local v1, "saveCount":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@f
    .line 693
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    #@12
    .line 694
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    #@15
    .line 696
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@18
    .line 684
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    #@0
    .prologue
    .line 953
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 10

    #@0
    .prologue
    .line 918
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    #@3
    move-result v9

    #@4
    if-nez v9, :cond_2

    #@6
    .line 919
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    #@8
    .line 920
    .local v6, "drawingBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    #@a
    .line 921
    .local v5, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 922
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    #@10
    .line 924
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    #@15
    move-result v9

    #@16
    float-to-int v3, v9

    #@17
    .line 925
    .local v3, "cX":I
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    #@1c
    move-result v9

    #@1d
    float-to-int v4, v9

    #@1e
    .line 926
    .local v4, "cY":I
    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    #@20
    .line 928
    .local v8, "rippleBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@22
    .line 929
    .local v1, "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@24
    .line 930
    .local v0, "N":I
    const/4 v7, 0x0

    #@25
    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    #@27
    .line 931
    aget-object v9, v1, v7

    #@29
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/RippleForeground;->getBounds(Landroid/graphics/Rect;)V

    #@2c
    .line 932
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@2f
    .line 933
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@32
    .line 930
    add-int/lit8 v7, v7, 0x1

    #@34
    goto :goto_0

    #@35
    .line 936
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@37
    .line 937
    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    if-eqz v2, :cond_1

    #@39
    .line 938
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    #@3c
    .line 939
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@3f
    .line 940
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@42
    .line 943
    :cond_1
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@45
    .line 944
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@4c
    .line 945
    return-object v5

    #@4d
    .line 947
    .end local v0    # "N":I
    .end local v1    # "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    .end local v2    # "background":Landroid/graphics/drawable/RippleBackground;
    .end local v3    # "cX":I
    .end local v4    # "cY":I
    .end local v5    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v6    # "drawingBounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "rippleBounds":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    #@50
    move-result-object v9

    #@51
    return-object v9
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 638
    return-void
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 669
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    .line 670
    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 671
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@6
    .line 672
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 673
    aget-object v4, v1, v2

    #@b
    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@d
    const v5, 0x102002e

    #@10
    if-eq v4, v5, :cond_0

    #@12
    .line 674
    aget-object v4, v1, v2

    #@14
    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@19
    .line 675
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    return-void

    #@20
    .line 672
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 668
    :cond_1
    return-void
.end method

.method public getRadius()I
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@4
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
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
    .line 408
    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 409
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 410
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 413
    const/4 v1, 0x1

    #@d
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    #@10
    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@13
    .line 417
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    #@1a
    .line 419
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@1d
    .line 407
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    #@0
    .prologue
    .line 701
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@4
    .line 700
    return-void
.end method

.method invalidateSelf(Z)V
    .locals 1
    .param p1, "invalidateMask"    # Z

    #@0
    .prologue
    .line 705
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    #@3
    .line 707
    if-eqz p1, :cond_0

    #@5
    .line 709
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@8
    .line 704
    :cond_0
    return-void
.end method

.method public isProjected()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 338
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 339
    return v4

    #@8
    .line 348
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@a
    iget v2, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@c
    .line 349
    .local v2, "radius":I
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v0

    #@10
    .line 350
    .local v0, "drawableBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@12
    .line 351
    .local v1, "hotspotBounds":Landroid/graphics/Rect;
    const/4 v3, -0x1

    #@13
    if-eq v2, v3, :cond_2

    #@15
    .line 352
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@18
    move-result v3

    #@19
    div-int/lit8 v3, v3, 0x2

    #@1b
    if-gt v2, v3, :cond_2

    #@1d
    .line 353
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@20
    move-result v3

    #@21
    div-int/lit8 v3, v3, 0x2

    #@23
    if-gt v2, v3, :cond_2

    #@25
    .line 354
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_1

    #@2b
    .line 355
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@2e
    move-result v3

    #@2f
    .line 351
    if-eqz v3, :cond_2

    #@31
    .line 356
    :cond_1
    return v4

    #@32
    .line 359
    :cond_2
    const/4 v3, 0x1

    #@33
    return v3
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 368
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 207
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    #@3
    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 210
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    #@c
    .line 213
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    #@15
    .line 217
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    #@18
    .line 206
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 958
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@3
    .line 962
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@9
    .line 965
    const v0, 0x102002e

    #@c
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@12
    .line 967
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 292
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 293
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@c
    .line 294
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    #@f
    .line 297
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    #@18
    .line 301
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    #@21
    .line 305
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    #@24
    .line 289
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 9
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 244
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    #@4
    move-result v0

    #@5
    .line 246
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@6
    .line 247
    .local v1, "enabled":Z
    const/4 v3, 0x0

    #@7
    .line 248
    .local v3, "pressed":Z
    const/4 v2, 0x0

    #@8
    .line 250
    .local v2, "focused":Z
    array-length v7, p1

    #@9
    move v5, v6

    #@a
    :goto_0
    if-ge v5, v7, :cond_3

    #@c
    aget v4, p1, v5

    #@e
    .line 251
    .local v4, "state":I
    const v8, 0x101009e

    #@11
    if-ne v4, v8, :cond_1

    #@13
    .line 252
    const/4 v1, 0x1

    #@14
    .line 250
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@16
    goto :goto_0

    #@17
    .line 253
    :cond_1
    const v8, 0x101009c

    #@1a
    if-ne v4, v8, :cond_2

    #@1c
    .line 254
    const/4 v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 255
    :cond_2
    const v8, 0x10100a7

    #@21
    if-ne v4, v8, :cond_0

    #@23
    .line 256
    const/4 v3, 0x1

    #@24
    goto :goto_1

    #@25
    .line 260
    .end local v4    # "state":I
    :cond_3
    if-eqz v1, :cond_4

    #@27
    move v5, v3

    #@28
    :goto_2
    invoke-direct {p0, v5}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    #@2b
    .line 261
    if-nez v2, :cond_5

    #@2d
    if-eqz v1, :cond_6

    #@2f
    .end local v3    # "pressed":Z
    :goto_3
    invoke-direct {p0, v3, v2}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZ)V

    #@32
    .line 263
    return v0

    #@33
    .restart local v3    # "pressed":Z
    :cond_4
    move v5, v6

    #@34
    .line 260
    goto :goto_2

    #@35
    .line 261
    :cond_5
    const/4 v3, 0x1

    #@36
    goto :goto_3

    #@37
    :cond_6
    move v3, v6

    #@38
    goto :goto_3
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@4
    .line 380
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@8
    .line 378
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 424
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 425
    const v0, 0x102002e

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 426
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@e
    .line 427
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@10
    .line 430
    :cond_0
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 433
    :cond_1
    return v1
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 534
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    #@a
    .line 535
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    #@c
    .line 536
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    #@f
    .line 539
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 540
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    #@18
    .line 532
    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 631
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    #@3
    .line 632
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@8
    .line 634
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    #@b
    .line 630
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    #@3
    .line 451
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@4
    .line 392
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@8
    .line 390
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 312
    .local v0, "changed":Z
    if-nez p1, :cond_1

    #@6
    .line 313
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    #@9
    .line 329
    :cond_0
    :goto_0
    return v0

    #@a
    .line 314
    :cond_1
    if-eqz v0, :cond_0

    #@c
    .line 317
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 318
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    #@13
    .line 321
    :cond_2
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 322
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    #@1b
    .line 326
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    #@1e
    goto :goto_0
.end method
