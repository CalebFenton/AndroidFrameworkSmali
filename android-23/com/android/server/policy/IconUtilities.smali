.class final Lcom/android/server/policy/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconUtilities"

.field private static final sColors:[I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mColorIndex:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private final mGlowColorPressedPaint:Landroid/graphics/Paint;

.field private mIconHeight:I

.field private mIconTextureHeight:I

.field private mIconTextureWidth:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 43
    const/high16 v0, -0x10000

    #@2
    const v1, -0xff0100

    #@5
    const v2, -0xffff01

    #@8
    filled-new-array {v0, v1, v2}, [I

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/android/server/policy/IconUtilities;->sColors:[I

    #@e
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v11, 0x1e

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v6, -0x1

    #@5
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 45
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    #@a
    .line 46
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    #@c
    .line 47
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    #@e
    .line 48
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    #@10
    .line 50
    new-instance v6, Landroid/graphics/Paint;

    #@12
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@15
    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mPaint:Landroid/graphics/Paint;

    #@17
    .line 51
    new-instance v6, Landroid/graphics/Paint;

    #@19
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@1c
    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    #@1e
    .line 52
    new-instance v6, Landroid/graphics/Paint;

    #@20
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@23
    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    #@25
    .line 53
    new-instance v6, Landroid/graphics/Paint;

    #@27
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@2a
    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    #@2c
    .line 54
    new-instance v6, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    #@33
    .line 55
    new-instance v6, Landroid/graphics/Canvas;

    #@35
    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    #@38
    iput-object v6, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    #@3a
    .line 58
    iput v9, p0, Lcom/android/server/policy/IconUtilities;->mColorIndex:I

    #@3c
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v4

    #@40
    .line 62
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@43
    move-result-object v3

    #@44
    iput-object v3, p0, Lcom/android/server/policy/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@46
    .line 63
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    #@48
    .line 64
    .local v2, "density":F
    const/high16 v6, 0x40a00000    # 5.0f

    #@4a
    mul-float v0, v6, v2

    #@4c
    .line 66
    .local v0, "blurPx":F
    const/high16 v6, 0x1050000

    #@4e
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    #@51
    move-result v6

    #@52
    float-to-int v6, v6

    #@53
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    #@55
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    #@57
    .line 67
    iget v6, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    #@59
    const/high16 v7, 0x40000000    # 2.0f

    #@5b
    mul-float/2addr v7, v0

    #@5c
    float-to-int v7, v7

    #@5d
    add-int/2addr v6, v7

    #@5e
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    #@60
    iput v6, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    #@62
    .line 69
    iget-object v6, p0, Lcom/android/server/policy/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    #@64
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    #@66
    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #@68
    invoke-direct {v7, v0, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #@6b
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@6e
    .line 71
    new-instance v5, Landroid/util/TypedValue;

    #@70
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    #@73
    .line 72
    .local v5, "value":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    #@75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@78
    move-result-object v6

    #@79
    .line 73
    const v8, 0x101038d

    #@7c
    .line 72
    invoke-virtual {v6, v8, v5, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_0

    #@82
    .line 73
    iget v6, v5, Landroid/util/TypedValue;->data:I

    #@84
    .line 72
    :goto_0
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@87
    .line 74
    iget-object v6, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    #@89
    invoke-static {v9, v11}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@90
    .line 75
    iget-object v7, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    #@92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@95
    move-result-object v6

    #@96
    .line 76
    const v8, 0x101038f

    #@99
    .line 75
    invoke-virtual {v6, v8, v5, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@9c
    move-result v6

    #@9d
    if-eqz v6, :cond_1

    #@9f
    .line 76
    iget v6, v5, Landroid/util/TypedValue;->data:I

    #@a1
    .line 75
    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@a4
    .line 77
    iget-object v6, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    #@a6
    invoke-static {v9, v11}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@ad
    .line 79
    new-instance v1, Landroid/graphics/ColorMatrix;

    #@af
    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    #@b2
    .line 80
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    const v6, 0x3e4ccccd    # 0.2f

    #@b5
    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    #@b8
    .line 82
    iget-object v6, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    #@ba
    new-instance v7, Landroid/graphics/PaintFlagsDrawFilter;

    #@bc
    const/4 v8, 0x4

    #@bd
    .line 83
    const/4 v9, 0x2

    #@be
    .line 82
    invoke-direct {v7, v8, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    #@c1
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    #@c4
    .line 60
    return-void

    #@c5
    .line 73
    .end local v1    # "cm":Landroid/graphics/ColorMatrix;
    :cond_0
    const/16 v6, -0x3d00

    #@c7
    goto :goto_0

    #@c8
    .line 76
    :cond_1
    const/16 v6, -0x7200

    #@ca
    goto :goto_1
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 106
    move-object/from16 v0, p0

    #@2
    iget v13, v0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    #@4
    .line 107
    .local v13, "width":I
    move-object/from16 v0, p0

    #@6
    iget v4, v0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    #@8
    .line 109
    .local v4, "height":I
    move-object/from16 v0, p1

    #@a
    instance-of v14, v0, Landroid/graphics/drawable/PaintDrawable;

    #@c
    if-eqz v14, :cond_3

    #@e
    move-object/from16 v6, p1

    #@10
    .line 110
    check-cast v6, Landroid/graphics/drawable/PaintDrawable;

    #@12
    .line 111
    .local v6, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v13}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    #@15
    .line 112
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    #@18
    .line 121
    .end local v6    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1b
    move-result v9

    #@1c
    .line 122
    .local v9, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1f
    move-result v8

    #@20
    .line 124
    .local v8, "sourceHeight":I
    if-lez v9, :cond_2

    #@22
    if-lez v8, :cond_2

    #@24
    .line 126
    if-lt v13, v9, :cond_1

    #@26
    if-ge v4, v8, :cond_5

    #@28
    .line 128
    :cond_1
    int-to-float v14, v9

    #@29
    int-to-float v15, v8

    #@2a
    div-float v7, v14, v15

    #@2c
    .line 129
    .local v7, "ratio":F
    if-le v9, v8, :cond_4

    #@2e
    .line 130
    int-to-float v14, v13

    #@2f
    div-float/2addr v14, v7

    #@30
    float-to-int v4, v14

    #@31
    .line 142
    .end local v7    # "ratio":F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@33
    iget v11, v0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    #@35
    .line 143
    .local v11, "textureWidth":I
    move-object/from16 v0, p0

    #@37
    iget v10, v0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    #@39
    .line 146
    .local v10, "textureHeight":I
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@3b
    .line 145
    invoke-static {v11, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@3e
    move-result-object v1

    #@3f
    .line 147
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    #@43
    .line 148
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@46
    .line 150
    sub-int v14, v11, v13

    #@48
    div-int/lit8 v5, v14, 0x2

    #@4a
    .line 151
    .local v5, "left":I
    sub-int v14, v10, v4

    #@4c
    div-int/lit8 v12, v14, 0x2

    #@4e
    .line 162
    .local v12, "top":I
    move-object/from16 v0, p0

    #@50
    iget-object v14, v0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    #@52
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@55
    move-result-object v15

    #@56
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@59
    .line 163
    add-int v14, v5, v13

    #@5b
    add-int v15, v12, v4

    #@5d
    move-object/from16 v0, p1

    #@5f
    invoke-virtual {v0, v5, v12, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@62
    .line 164
    move-object/from16 v0, p1

    #@64
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@67
    .line 165
    move-object/from16 v0, p0

    #@69
    iget-object v14, v0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    #@6b
    move-object/from16 v0, p1

    #@6d
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@70
    .line 167
    return-object v1

    #@71
    .line 113
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "left":I
    .end local v8    # "sourceHeight":I
    .end local v9    # "sourceWidth":I
    .end local v10    # "textureHeight":I
    .end local v11    # "textureWidth":I
    .end local v12    # "top":I
    :cond_3
    move-object/from16 v0, p1

    #@73
    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@75
    if-eqz v14, :cond_0

    #@77
    move-object/from16 v2, p1

    #@79
    .line 115
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    #@7b
    .line 116
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@7e
    move-result-object v1

    #@7f
    .line 117
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    #@82
    move-result v14

    #@83
    if-nez v14, :cond_0

    #@85
    .line 118
    move-object/from16 v0, p0

    #@87
    iget-object v14, v0, Lcom/android/server/policy/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@89
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    #@8c
    goto :goto_0

    #@8d
    .line 131
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "ratio":F
    .restart local v8    # "sourceHeight":I
    .restart local v9    # "sourceWidth":I
    :cond_4
    if-le v8, v9, :cond_2

    #@8f
    .line 132
    int-to-float v14, v4

    #@90
    mul-float/2addr v14, v7

    #@91
    float-to-int v13, v14

    #@92
    goto :goto_1

    #@93
    .line 134
    .end local v7    # "ratio":F
    :cond_5
    if-ge v9, v13, :cond_2

    #@95
    if-ge v8, v4, :cond_2

    #@97
    .line 136
    move v13, v9

    #@98
    .line 137
    move v4, v8

    #@99
    goto :goto_1
.end method

.method private createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "pressed"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 171
    iget v4, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    #@4
    iget v5, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    #@6
    .line 172
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@8
    .line 171
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@b
    move-result-object v2

    #@c
    .line 173
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@e
    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@11
    .line 175
    .local v0, "dest":Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@13
    invoke-virtual {v0, v8, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@16
    .line 177
    const/4 v4, 0x2

    #@17
    new-array v3, v4, [I

    #@19
    .line 178
    .local v3, "xy":[I
    iget-object v4, p0, Lcom/android/server/policy/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    #@1b
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    #@1e
    move-result-object v1

    #@1f
    .line 180
    .local v1, "mask":Landroid/graphics/Bitmap;
    aget v4, v3, v8

    #@21
    int-to-float v5, v4

    #@22
    const/4 v4, 0x1

    #@23
    aget v4, v3, v4

    #@25
    int-to-float v6, v4

    #@26
    .line 181
    if-eqz p2, :cond_0

    #@28
    iget-object v4, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    #@2a
    .line 180
    :goto_0
    invoke-virtual {v0, v1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@2d
    .line 183
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@30
    .line 185
    iget-object v4, p0, Lcom/android/server/policy/IconUtilities;->mPaint:Landroid/graphics/Paint;

    #@32
    invoke-virtual {v0, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@35
    .line 186
    const/4 v4, 0x0

    #@36
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@39
    .line 188
    return-object v2

    #@3a
    .line 181
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    #@3c
    goto :goto_0
.end method


# virtual methods
.method public createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v1

    #@6
    .line 89
    .local v1, "scaled":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@8
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@b
    .line 91
    .local v0, "result":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v6, [I

    #@d
    const v3, 0x101009c

    #@10
    aput v3, v2, v5

    #@12
    .line 92
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    #@14
    invoke-direct {p0, v1, v5}, Lcom/android/server/policy/IconUtilities;->createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@1b
    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@1e
    .line 93
    new-array v2, v6, [I

    #@20
    const v3, 0x10100a7

    #@23
    aput v3, v2, v5

    #@25
    .line 94
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    #@27
    invoke-direct {p0, v1, v6}, Lcom/android/server/policy/IconUtilities;->createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@2e
    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@31
    .line 95
    new-array v2, v5, [I

    #@33
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    #@35
    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@38
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@3b
    .line 97
    iget v2, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    #@3d
    iget v3, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    #@3f
    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    #@42
    .line 98
    return-object v0
.end method
