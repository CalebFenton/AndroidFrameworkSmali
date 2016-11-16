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

.field private mDensity:I

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

.field private mExitingRipplesCount:I

.field private mForceSoftware:Z

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
    .line 178
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@3
    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    #@9
    .line 177
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
    .line 191
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@4
    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@7
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    #@a
    .line 193
    if-nez p1, :cond_0

    #@c
    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "RippleDrawable requires a non-null color"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 197
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
    .line 198
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@20
    .line 201
    :cond_1
    if-eqz p3, :cond_2

    #@22
    .line 202
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
    .line 205
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@32
    .line 206
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    #@35
    .line 207
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    #@38
    .line 208
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@3b
    .line 190
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
    .line 1043
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
    .line 1044
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@24
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    #@27
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@29
    .line 1045
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2b
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2d
    .line 1046
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2f
    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    #@31
    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    #@37
    .line 1048
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@39
    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNum:I

    #@3b
    if-lez v0, :cond_0

    #@3d
    .line 1049
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    #@40
    .line 1050
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    #@43
    .line 1053
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@46
    .line 1043
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
    .line 227
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@4
    .line 228
    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@6
    .line 229
    .local v2, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 230
    aget-object v3, v2, v1

    #@b
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    #@e
    .line 229
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 233
    :cond_0
    if-eqz v2, :cond_1

    #@13
    .line 234
    invoke-static {v2, v4, v0, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@16
    .line 236
    :cond_1
    iput v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@18
    .line 239
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@1b
    .line 226
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
    .line 613
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 614
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@8
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    #@b
    .line 615
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@d
    .line 616
    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@f
    .line 619
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 620
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    #@18
    .line 621
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1a
    .line 622
    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@1c
    .line 625
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    #@1f
    .line 612
    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 841
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@4
    .line 842
    .local v1, "active":Landroid/graphics/drawable/RippleForeground;
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@8
    .line 843
    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    move-object/from16 v0, p0

    #@a
    iget v5, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@c
    .line 844
    .local v5, "count":I
    if-nez v1, :cond_0

    #@e
    if-gtz v5, :cond_0

    #@10
    if-eqz v2, :cond_3

    #@12
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    #@15
    move-result v14

    #@16
    if-eqz v14, :cond_3

    #@18
    .line 849
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterX()F

    #@1f
    move-result v12

    #@20
    .line 850
    .local v12, "x":F
    move-object/from16 v0, p0

    #@22
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterY()F

    #@27
    move-result v13

    #@28
    .line 851
    .local v13, "y":F
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    #@2d
    .line 853
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    #@30
    .line 856
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@34
    if-eqz v14, :cond_1

    #@36
    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    #@39
    move-result-object v3

    #@3a
    .line 858
    .local v3, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@3c
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@3e
    iget v15, v3, Landroid/graphics/Rect;->left:I

    #@40
    int-to-float v15, v15

    #@41
    sub-float/2addr v15, v12

    #@42
    iget v0, v3, Landroid/graphics/Rect;->top:I

    #@44
    move/from16 v16, v0

    #@46
    move/from16 v0, v16

    #@48
    int-to-float v0, v0

    #@49
    move/from16 v16, v0

    #@4b
    sub-float v16, v16, v13

    #@4d
    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@50
    .line 859
    move-object/from16 v0, p0

    #@52
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v15, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@58
    invoke-virtual {v14, v15}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@5b
    .line 864
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    #@5d
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@5f
    iget-object v14, v14, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    #@64
    move-result-object v15

    #@65
    const/high16 v16, -0x1000000

    #@67
    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@6a
    move-result v4

    #@6b
    .line 865
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    #@6e
    move-result v14

    #@6f
    div-int/lit8 v14, v14, 0x2

    #@71
    shl-int/lit8 v7, v14, 0x18

    #@73
    .line 866
    .local v7, "halfAlpha":I
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    #@76
    move-result-object v10

    #@77
    .line 868
    .local v10, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@79
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@7b
    if-eqz v14, :cond_4

    #@7d
    .line 872
    const/high16 v14, -0x1000000

    #@7f
    or-int v6, v4, v14

    #@81
    .line 873
    .local v6, "fullAlphaColor":I
    move-object/from16 v0, p0

    #@83
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@85
    invoke-virtual {v14, v6}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    #@88
    .line 875
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@8b
    .line 876
    move-object/from16 v0, p0

    #@8d
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@8f
    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@92
    .line 877
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@96
    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@99
    .line 885
    .end local v6    # "fullAlphaColor":I
    :goto_0
    if-eqz v2, :cond_2

    #@9b
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    #@9e
    move-result v14

    #@9f
    if-eqz v14, :cond_2

    #@a1
    .line 886
    move-object/from16 v0, p1

    #@a3
    invoke-virtual {v2, v0, v10}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@a6
    .line 889
    :cond_2
    if-lez v5, :cond_5

    #@a8
    .line 890
    move-object/from16 v0, p0

    #@aa
    iget-object v11, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@ac
    .line 891
    .local v11, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v9, 0x0

    #@ad
    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_5

    #@af
    .line 892
    aget-object v14, v11, v9

    #@b1
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v14, v0, v10}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@b6
    .line 891
    add-int/lit8 v9, v9, 0x1

    #@b8
    goto :goto_1

    #@b9
    .line 846
    .end local v4    # "color":I
    .end local v7    # "halfAlpha":I
    .end local v9    # "i":I
    .end local v10    # "p":Landroid/graphics/Paint;
    .end local v11    # "ripples":[Landroid/graphics/drawable/RippleForeground;
    .end local v12    # "x":F
    .end local v13    # "y":F
    :cond_3
    return-void

    #@ba
    .line 879
    .restart local v4    # "color":I
    .restart local v7    # "halfAlpha":I
    .restart local v10    # "p":Landroid/graphics/Paint;
    .restart local v12    # "x":F
    .restart local v13    # "y":F
    :cond_4
    const v14, 0xffffff

    #@bd
    and-int/2addr v14, v4

    #@be
    or-int v8, v14, v7

    #@c0
    .line 880
    .local v8, "halfAlphaColor":I
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    #@c3
    .line 881
    const/4 v14, 0x0

    #@c4
    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@c7
    .line 882
    const/4 v14, 0x0

    #@c8
    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@cb
    goto :goto_0

    #@cc
    .line 896
    .end local v8    # "halfAlphaColor":I
    :cond_5
    if-eqz v1, :cond_6

    #@ce
    .line 897
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v1, v0, v10}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    #@d3
    .line 900
    :cond_6
    neg-float v14, v12

    #@d4
    neg-float v15, v13

    #@d5
    move-object/from16 v0, p1

    #@d7
    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    #@da
    .line 840
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 831
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 832
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@6
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@8
    .line 833
    .local v1, "count":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@b
    .line 834
    aget-object v3, v0, v2

    #@d
    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@f
    const v4, 0x102002e

    #@12
    if-eq v3, v4, :cond_0

    #@14
    .line 835
    aget-object v3, v0, v2

    #@16
    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@18
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1b
    .line 833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 829
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
    .line 801
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@4
    if-nez v3, :cond_0

    #@6
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@8
    if-gtz v3, :cond_0

    #@a
    .line 802
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
    .line 807
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 808
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@1f
    move-result v3

    #@20
    if-ne v3, v4, :cond_2

    #@22
    .line 810
    return v5

    #@23
    .line 804
    :cond_1
    return v4

    #@24
    .line 812
    :cond_2
    const/4 v3, 0x2

    #@25
    return v3

    #@26
    .line 817
    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@28
    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@2a
    .line 818
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2c
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@2e
    .line 819
    .local v1, "count":I
    const/4 v2, 0x0

    #@2f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    #@31
    .line 820
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
    .line 821
    const/4 v3, 0x1

    #@3c
    return v3

    #@3d
    .line 819
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 826
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
    .line 372
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
    .line 645
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@2
    .line 646
    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@4
    .line 647
    .local v2, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 648
    aget-object v3, v2, v1

    #@9
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    #@c
    .line 647
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 651
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 652
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@15
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    #@18
    .line 655
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 656
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@1e
    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    #@21
    .line 644
    :cond_2
    return-void
.end method

.method private pruneRipples()V
    .locals 6

    #@0
    .prologue
    .line 714
    const/4 v2, 0x0

    #@1
    .line 717
    .local v2, "remaining":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@3
    .line 718
    .local v4, "ripples":[Landroid/graphics/drawable/RippleForeground;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@5
    .line 719
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
    .line 720
    aget-object v5, v4, v1

    #@b
    invoke-virtual {v5}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_2

    #@11
    .line 721
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "remaining":I
    .restart local v2    # "remaining":I
    aget-object v5, v4, v1

    #@15
    aput-object v5, v4, v3

    #@17
    .line 719
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    move v3, v2

    #@1a
    .end local v2    # "remaining":I
    .restart local v3    # "remaining":I
    goto :goto_0

    #@1b
    .line 726
    :cond_0
    move v1, v3

    #@1c
    :goto_2
    if-ge v1, v0, :cond_1

    #@1e
    .line 727
    const/4 v5, 0x0

    #@1f
    aput-object v5, v4, v1

    #@21
    .line 726
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_2

    #@24
    .line 730
    :cond_1
    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@26
    .line 713
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
    .line 287
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 288
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@6
    .line 289
    if-eqz p1, :cond_1

    #@8
    .line 290
    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    #@b
    .line 286
    :cond_0
    :goto_0
    return-void

    #@c
    .line 292
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
    .line 276
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 277
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@6
    .line 278
    if-eqz p1, :cond_1

    #@8
    .line 279
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    #@b
    .line 275
    :cond_0
    :goto_0
    return-void

    #@c
    .line 281
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    #@f
    goto :goto_0
.end method

.method private tryBackgroundEnter(Z)V
    .locals 4
    .param p1, "focused"    # Z

    #@0
    .prologue
    .line 546
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 547
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    #@7
    move-result v0

    #@8
    .line 548
    .local v0, "isBounded":Z
    new-instance v1, Landroid/graphics/drawable/RippleBackground;

    #@a
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@c
    iget-boolean v3, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    #@e
    invoke-direct {v1, p0, v2, v0, v3}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZ)V

    #@11
    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@13
    .line 551
    .end local v0    # "isBounded":Z
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@15
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@17
    iget v2, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@19
    int-to-float v2, v2

    #@1a
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleBackground;->setup(FI)V

    #@1f
    .line 552
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@21
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleBackground;->enter(Z)V

    #@24
    .line 545
    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 558
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    #@9
    .line 555
    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 567
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    #@3
    const/16 v1, 0xa

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 570
    return-void

    #@8
    .line 573
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 576
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 577
    iput-boolean v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    #@12
    .line 578
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    #@14
    .line 579
    .local v3, "x":F
    iget v4, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    #@16
    .line 585
    .local v4, "y":F
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    #@19
    move-result v5

    #@1a
    .line 586
    .local v5, "isBounded":Z
    new-instance v0, Landroid/graphics/drawable/RippleForeground;

    #@1c
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@1e
    iget-boolean v6, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    #@20
    move-object v1, p0

    #@21
    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/RippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZZ)V

    #@24
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@26
    .line 589
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "isBounded":Z
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@28
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2a
    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@2c
    int-to-float v1, v1

    #@2d
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FI)V

    #@32
    .line 590
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@34
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/RippleForeground;->enter(Z)V

    #@37
    .line 566
    return-void

    #@38
    .line 581
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@3a
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    #@3d
    move-result v3

    #@3e
    .line 582
    .restart local v3    # "x":F
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@40
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    #@43
    move-result v4

    #@44
    .restart local v4    # "y":F
    goto :goto_0
.end method

.method private tryRippleExit()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 598
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 599
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 600
    const/16 v0, 0xa

    #@b
    new-array v0, v0, [Landroid/graphics/drawable/RippleForeground;

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    #@f
    .line 602
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
    .line 603
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@1d
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    #@20
    .line 604
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@22
    .line 597
    :cond_1
    return-void
.end method

.method private updateLocalState()V
    .locals 1

    #@0
    .prologue
    .line 1058
    const v0, 0x102002e

    #@3
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@9
    .line 1056
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
    .line 737
    iget-boolean v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 738
    return-void

    #@8
    .line 741
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    #@b
    move-result v2

    #@c
    .line 742
    .local v2, "maskType":I
    const/4 v4, -0x1

    #@d
    if-ne v2, v4, :cond_1

    #@f
    .line 743
    return-void

    #@10
    .line 746
    :cond_1
    iput-boolean v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@12
    .line 748
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    #@15
    move-result-object v0

    #@16
    .line 749
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    #@18
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_4

    #@1e
    .line 750
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@20
    if-eqz v4, :cond_3

    #@22
    .line 751
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #@27
    .line 752
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@29
    .line 753
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@2b
    .line 754
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@2d
    .line 756
    :cond_3
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@2f
    .line 757
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@31
    .line 758
    return-void

    #@32
    .line 762
    :cond_4
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@34
    if-eqz v4, :cond_5

    #@36
    .line 763
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
    .line 765
    :cond_5
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@44
    if-eqz v4, :cond_6

    #@46
    .line 766
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@48
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #@4b
    .line 770
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
    .line 769
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@58
    move-result-object v4

    #@59
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@5b
    .line 771
    new-instance v4, Landroid/graphics/BitmapShader;

    #@5d
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@5f
    .line 772
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@61
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@63
    .line 771
    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@66
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    #@68
    .line 773
    new-instance v4, Landroid/graphics/Canvas;

    #@6a
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@6c
    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@6f
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@71
    .line 778
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@73
    if-nez v4, :cond_a

    #@75
    .line 779
    new-instance v4, Landroid/graphics/Matrix;

    #@77
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@7a
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@7c
    .line 784
    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@7e
    if-nez v4, :cond_7

    #@80
    .line 785
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    #@82
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@84
    invoke-direct {v4, v8, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@87
    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    #@89
    .line 789
    :cond_7
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@8b
    .line 790
    .local v1, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@8d
    .line 791
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
    .line 792
    const/4 v4, 0x2

    #@97
    if-ne v2, v4, :cond_b

    #@99
    .line 793
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    #@9b
    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    #@9e
    .line 797
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
    .line 736
    return-void

    #@a6
    .line 764
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
    .line 775
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    #@b4
    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    #@b7
    goto :goto_0

    #@b8
    .line 781
    :cond_a
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    #@ba
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    #@bd
    goto :goto_1

    #@be
    .line 794
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    :cond_b
    if-ne v2, v9, :cond_8

    #@c0
    .line 795
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
    .line 470
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    .line 473
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
    .line 476
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v2

    #@f
    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@11
    .line 478
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@15
    move-result-object v0

    #@16
    .line 479
    .local v0, "color":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@18
    .line 480
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@1a
    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@1c
    .line 483
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@1e
    .line 484
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@20
    iget v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@22
    const/4 v4, 0x1

    #@23
    .line 483
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@26
    move-result v3

    #@27
    iput v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@29
    .line 469
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
    .line 488
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
    .line 489
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 490
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
    .line 491
    const-string/jumbo v2, ": <ripple> requires a valid color attribute"

    #@27
    .line 490
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
    .line 487
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 499
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@5
    .line 500
    .local v2, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-nez v2, :cond_0

    #@7
    .line 501
    return-void

    #@8
    .line 504
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 505
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    #@e
    .line 506
    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    #@10
    .line 505
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 508
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@17
    .line 509
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 513
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 517
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@1f
    if-eqz v3, :cond_2

    #@21
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@23
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 518
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@2b
    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@31
    .line 521
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@34
    .line 496
    return-void

    #@35
    .line 510
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@36
    .line 511
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/RippleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 513
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3c
    goto :goto_0

    #@3d
    .line 512
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@3e
    .line 513
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@41
    .line 512
    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 526
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
    .line 981
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
    .line 982
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
    .line 684
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    #@3
    .line 688
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    .line 689
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x2

    #@8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    #@b
    move-result v1

    #@c
    .line 690
    .local v1, "saveCount":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@f
    .line 692
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    #@12
    .line 693
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    #@15
    .line 695
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@18
    .line 683
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    #@0
    .prologue
    .line 963
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
    .line 638
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 637
    return-void
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 245
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 668
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@2
    .line 669
    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    #@4
    .line 670
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    #@6
    .line 671
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 672
    aget-object v4, v1, v2

    #@b
    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    #@d
    const v5, 0x102002e

    #@10
    if-eq v4, v5, :cond_0

    #@12
    .line 673
    aget-object v4, v1, v2

    #@14
    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@19
    .line 674
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    return-void

    #@20
    .line 671
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 667
    :cond_1
    return-void
.end method

.method public getRadius()I
    .locals 1

    #@0
    .prologue
    .line 411
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
    .line 418
    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 421
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@7
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    #@a
    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@d
    .line 426
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@10
    .line 427
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@13
    .line 428
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 430
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    #@19
    .line 417
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    #@0
    .prologue
    .line 700
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@4
    .line 699
    return-void
.end method

.method invalidateSelf(Z)V
    .locals 1
    .param p1, "invalidateMask"    # Z

    #@0
    .prologue
    .line 704
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    #@3
    .line 706
    if-eqz p1, :cond_0

    #@5
    .line 708
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@8
    .line 703
    :cond_0
    return-void
.end method

.method public isProjected()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 347
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 348
    return v4

    #@8
    .line 357
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@a
    iget v2, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@c
    .line 358
    .local v2, "radius":I
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v0

    #@10
    .line 359
    .local v0, "drawableBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@12
    .line 360
    .local v1, "hotspotBounds":Landroid/graphics/Rect;
    const/4 v3, -0x1

    #@13
    if-eq v2, v3, :cond_2

    #@15
    .line 361
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@18
    move-result v3

    #@19
    div-int/lit8 v3, v3, 0x2

    #@1b
    if-gt v2, v3, :cond_2

    #@1d
    .line 362
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@20
    move-result v3

    #@21
    div-int/lit8 v3, v3, 0x2

    #@23
    if-gt v2, v3, :cond_2

    #@25
    .line 363
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_1

    #@2b
    .line 364
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@2e
    move-result v3

    #@2f
    .line 360
    if-eqz v3, :cond_2

    #@31
    .line 365
    :cond_1
    return v4

    #@32
    .line 368
    :cond_2
    const/4 v3, 0x1

    #@33
    return v3
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 377
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 213
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    #@3
    .line 215
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    #@c
    .line 219
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 220
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    #@15
    .line 223
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    #@18
    .line 212
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 968
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@3
    .line 972
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    #@5
    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@9
    .line 975
    const v0, 0x102002e

    #@c
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@12
    .line 977
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 301
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@c
    .line 303
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    #@f
    .line 306
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    #@18
    .line 310
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    #@21
    .line 314
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    #@24
    .line 298
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 250
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    #@5
    move-result v0

    #@6
    .line 252
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@7
    .line 253
    .local v1, "enabled":Z
    const/4 v4, 0x0

    #@8
    .line 254
    .local v4, "pressed":Z
    const/4 v2, 0x0

    #@9
    .line 255
    .local v2, "focused":Z
    const/4 v3, 0x0

    #@a
    .line 257
    .local v3, "hovered":Z
    array-length v9, p1

    #@b
    move v6, v7

    #@c
    :goto_0
    if-ge v6, v9, :cond_4

    #@e
    aget v5, p1, v6

    #@10
    .line 258
    .local v5, "state":I
    const v10, 0x101009e

    #@13
    if-ne v5, v10, :cond_1

    #@15
    .line 259
    const/4 v1, 0x1

    #@16
    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@18
    goto :goto_0

    #@19
    .line 260
    :cond_1
    const v10, 0x101009c

    #@1c
    if-ne v5, v10, :cond_2

    #@1e
    .line 261
    const/4 v2, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 262
    :cond_2
    const v10, 0x10100a7

    #@23
    if-ne v5, v10, :cond_3

    #@25
    .line 263
    const/4 v4, 0x1

    #@26
    goto :goto_1

    #@27
    .line 264
    :cond_3
    const v10, 0x1010367

    #@2a
    if-ne v5, v10, :cond_0

    #@2c
    .line 265
    const/4 v3, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 269
    .end local v5    # "state":I
    :cond_4
    if-eqz v1, :cond_5

    #@30
    move v6, v4

    #@31
    :goto_2
    invoke-direct {p0, v6}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    #@34
    .line 270
    if-nez v3, :cond_6

    #@36
    if-nez v2, :cond_6

    #@38
    if-eqz v1, :cond_7

    #@3a
    .end local v4    # "pressed":Z
    :goto_3
    if-nez v2, :cond_8

    #@3c
    .end local v3    # "hovered":Z
    :goto_4
    invoke-direct {p0, v4, v3}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZ)V

    #@3f
    .line 272
    return v0

    #@40
    .restart local v3    # "hovered":Z
    .restart local v4    # "pressed":Z
    :cond_5
    move v6, v7

    #@41
    .line 269
    goto :goto_2

    #@42
    :cond_6
    move v4, v8

    #@43
    .line 270
    goto :goto_3

    #@44
    :cond_7
    move v4, v7

    #@45
    goto :goto_3

    #@46
    .end local v4    # "pressed":Z
    :cond_8
    move v3, v8

    #@47
    goto :goto_4
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    #@4
    .line 389
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@8
    .line 387
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
    .line 435
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 436
    const v0, 0x102002e

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 437
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    #@e
    .line 438
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    #@10
    .line 441
    :cond_0
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 444
    :cond_1
    return v1
.end method

.method public setForceSoftware(Z)V
    .locals 0
    .param p1, "forceSoftware"    # Z

    #@0
    .prologue
    .line 958
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    #@2
    .line 957
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 532
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    #@a
    .line 533
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    #@c
    .line 534
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    #@f
    .line 537
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 538
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    #@15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    #@18
    .line 530
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
    .line 630
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    #@3
    .line 631
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@8
    .line 633
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    #@b
    .line 629
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    #@3
    .line 462
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    #@4
    .line 401
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    #@8
    .line 399
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 321
    .local v0, "changed":Z
    if-nez p1, :cond_1

    #@6
    .line 322
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    #@9
    .line 338
    :cond_0
    :goto_0
    return v0

    #@a
    .line 323
    :cond_1
    if-eqz v0, :cond_0

    #@c
    .line 326
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 327
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    #@13
    .line 330
    :cond_2
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 331
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    #@1b
    .line 335
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    #@1e
    goto :goto_0
.end method
