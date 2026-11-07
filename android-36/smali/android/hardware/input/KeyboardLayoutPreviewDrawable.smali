.class final Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    }
.end annotation


# static fields
.field private static final blacklist GRAVITY_BOTTOM:I = 0x8

.field private static final blacklist GRAVITY_LEFT:I = 0x1

.field private static final blacklist GRAVITY_RIGHT:I = 0x2

.field private static final blacklist GRAVITY_TOP:I = 0x4

.field private static final blacklist KEYBOARD_PADDING_IN_DP:I = 0xa

.field private static final blacklist KEYBOARD_RADIUS_IN_DP:I = 0xa

.field private static final blacklist KEY_PADDING_IN_DP:I = 0x3

.field private static final blacklist KEY_RADIUS_IN_DP:I = 0x5

.field private static final blacklist MAX_GLYPH_TEXT_SIZE_IN_SP:I = 0x14

.field private static final blacklist MIN_GLYPH_TEXT_SIZE_IN_SP:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboardLayoutPreview"

.field private static final blacklist TEXT_PADDING_IN_DP:I = 0x1


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mKeyDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

.field private final blacklist mKeyboardBackground:Landroid/graphics/RectF;

.field private final blacklist mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

.field private final blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFillPaint(I)Landroid/graphics/Paint;
    .registers 1

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createFillPaint(I)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 1

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/input/PhysicalKeyLayout;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyLayout"    # Landroid/hardware/input/PhysicalKeyLayout;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    .line 69
    iput p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mWidth:I

    .line 70
    iput p4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mHeight:I

    .line 71
    new-instance v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;-><init>(Landroid/content/Context;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 72
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    .line 73
    return-void
.end method

.method private static blacklist createFillPaint(I)Landroid/graphics/Paint;
    .registers 3
    .param p0, "color"    # I

    .line 529
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 530
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 532
    return-object v0
.end method

.method private static blacklist createGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .line 536
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 537
    .local v0, "result":Landroid/graphics/Paint;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 538
    return-object v0
.end method

.method private static blacklist createTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;
    .registers 5
    .param p0, "textColor"    # I
    .param p1, "textSize"    # F
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .line 520
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 521
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 524
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 525
    return-object v0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 172
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetBackgroundRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v0

    .line 173
    .local v0, "keyboardRadius":F
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 174
    invoke-static {v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetBackgroundPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v2

    .line 173
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;

    .line 176
    .local v2, "key":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;
    invoke-interface {v2, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    .end local v2    # "key":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;
    goto :goto_17

    .line 178
    :cond_27
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 192
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 34
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 87
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    invoke-virtual {v1}, Landroid/hardware/input/PhysicalKeyLayout;->getKeys()[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v1

    .line 90
    .local v1, "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    if-nez v1, :cond_13

    .line 91
    return-void

    .line 93
    :cond_13
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout;->getEnterKey()Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    move-result-object v2

    .line 94
    .local v2, "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 95
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 96
    .local v4, "height":I
    iget-object v5, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v5}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyboardPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I

    move-result v5

    .line 97
    .local v5, "keyboardPadding":I
    iget-object v6, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I

    move-result v6

    .line 98
    .local v6, "keyPadding":I
    iget-object v7, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v7}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v11

    .line 99
    .local v11, "keyRadius":F
    iget-object v7, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v3, v7

    .line 101
    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v4, v7

    .line 102
    if-lez v3, :cond_22f

    if-gtz v4, :cond_4d

    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move/from16 v25, v5

    goto/16 :goto_235

    .line 107
    :cond_4d
    array-length v7, v1

    .line 108
    .local v7, "rowCount":I
    mul-int/lit8 v8, v7, 0x2

    mul-int/2addr v8, v6

    sub-int v8, v4, v8

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 110
    .local v8, "keyHeight":F
    iget-object v9, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v9, v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mcalculateBestTextSizeForKey(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;F)V

    .line 111
    const/4 v9, 0x0

    .line 112
    .local v9, "isoEnterKeyLeft":F
    const/4 v10, 0x0

    .line 113
    .local v10, "isoEnterKeyTop":F
    const/4 v12, 0x0

    .line 114
    .local v12, "isoEnterWidthUnit":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5f
    if-ge v13, v7, :cond_1ea

    .line 115
    aget-object v14, v1, v13

    .line 116
    .local v14, "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    const/4 v15, 0x0

    .line 117
    .local v15, "totalRowWeight":F
    move/from16 v16, v9

    .end local v9    # "isoEnterKeyLeft":F
    .local v16, "isoEnterKeyLeft":F
    array-length v9, v14

    .line 118
    .local v9, "keysInRow":I
    move-object/from16 v17, v1

    .end local v1    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .local v17, "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    array-length v1, v14

    const/16 v18, 0x0

    move/from16 v31, v18

    move/from16 v18, v15

    move/from16 v15, v31

    .end local v15    # "totalRowWeight":F
    .local v18, "totalRowWeight":F
    :goto_72
    if-ge v15, v1, :cond_7f

    aget-object v19, v14, v15

    .line 119
    .local v19, "layoutKey":Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v20

    add-float v18, v18, v20

    .line 118
    .end local v19    # "layoutKey":Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    add-int/lit8 v15, v15, 0x1

    goto :goto_72

    .line 121
    :cond_7f
    mul-int/lit8 v1, v9, 0x2

    mul-int/2addr v1, v6

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float v1, v1, v18

    .line 122
    .local v1, "keyWidthInPx":F
    const/4 v15, 0x0

    .line 123
    .local v15, "rowWeightOnLeft":F
    mul-int/lit8 v19, v13, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v6

    move/from16 v20, v1

    .end local v1    # "keyWidthInPx":F
    .local v20, "keyWidthInPx":F
    add-int v1, v5, v19

    int-to-float v1, v1

    move/from16 v19, v1

    int-to-float v1, v13

    mul-float/2addr v1, v8

    add-float v1, v19, v1

    .line 124
    .local v1, "top":F
    const/16 v19, 0x0

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v10, v19

    move/from16 v19, v16

    .end local v12    # "isoEnterWidthUnit":F
    .end local v16    # "isoEnterKeyLeft":F
    .local v10, "j":I
    .local v19, "isoEnterKeyLeft":F
    .local v21, "isoEnterKeyTop":F
    .local v22, "isoEnterWidthUnit":F
    :goto_a3
    if-ge v10, v9, :cond_1ce

    .line 125
    mul-int/lit8 v12, v10, 0x2

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v6

    add-int/2addr v12, v5

    int-to-float v12, v12

    mul-float v16, v15, v20

    add-float v12, v12, v16

    .line 127
    .local v12, "left":F
    aget-object v16, v14, v10

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v16

    add-float v23, v15, v16

    .line 128
    .end local v15    # "rowWeightOnLeft":F
    .local v23, "rowWeightOnLeft":F
    new-instance v15, Landroid/graphics/RectF;

    aget-object v16, v14, v10

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v16

    mul-float v16, v16, v20

    move-object/from16 v24, v2

    .end local v2    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .local v24, "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    add-float v2, v12, v16

    move/from16 v25, v5

    .end local v5    # "keyboardPadding":I
    .local v25, "keyboardPadding":I
    add-float v5, v1, v8

    invoke-direct {v15, v12, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    .local v15, "keyRect":Landroid/graphics/RectF;
    if-eqz v24, :cond_107

    aget-object v2, v14, v10

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode()I

    move-result v2

    const/16 v5, 0x42

    if-ne v2, v5, :cond_107

    .line 131
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row()I

    move-result v2

    if-ne v2, v13, :cond_fb

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column()I

    move-result v2

    if-ne v2, v10, :cond_fb

    .line 132
    iget v2, v15, Landroid/graphics/RectF;->left:F

    .line 133
    .end local v19    # "isoEnterKeyLeft":F
    .local v2, "isoEnterKeyLeft":F
    iget v5, v15, Landroid/graphics/RectF;->top:F

    .line 134
    .end local v21    # "isoEnterKeyTop":F
    .local v5, "isoEnterKeyTop":F
    move/from16 v22, v20

    move/from16 v26, v1

    move/from16 v19, v2

    move/from16 v21, v5

    move v5, v8

    move/from16 v30, v9

    move/from16 v28, v10

    move v1, v13

    move-object/from16 v27, v14

    goto/16 :goto_1bc

    .line 131
    .end local v2    # "isoEnterKeyLeft":F
    .end local v5    # "isoEnterKeyTop":F
    .restart local v19    # "isoEnterKeyLeft":F
    .restart local v21    # "isoEnterKeyTop":F
    :cond_fb
    move/from16 v26, v1

    move v5, v8

    move/from16 v30, v9

    move/from16 v28, v10

    move v1, v13

    move-object/from16 v27, v14

    goto/16 :goto_1bc

    .line 138
    :cond_107
    aget-object v2, v14, v10

    invoke-static {v2}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 139
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    move v5, v8

    .end local v8    # "keyHeight":F
    .local v5, "keyHeight":F
    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;

    move/from16 v26, v1

    .end local v1    # "top":F
    .local v26, "top":F
    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 140
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v1

    move/from16 v16, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 141
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v27, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 142
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v28, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 143
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v29, v12

    move/from16 v12, v16

    .end local v12    # "left":F
    .local v29, "left":F
    const/16 v16, 0x0

    move/from16 v30, v9

    .end local v9    # "keysInRow":I
    .local v30, "keysInRow":I
    const/4 v9, 0x0

    move-object/from16 v31, v15

    move-object v15, v1

    move v1, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v14

    move-object/from16 v14, v28

    move/from16 v28, v10

    move-object/from16 v10, v31

    .end local v13    # "i":I
    .end local v14    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v15    # "keyRect":Landroid/graphics/RectF;
    .local v1, "i":I
    .local v10, "keyRect":Landroid/graphics/RectF;
    .local v27, "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .local v28, "j":I
    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 139
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bc

    .line 144
    .end local v5    # "keyHeight":F
    .end local v26    # "top":F
    .end local v27    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v28    # "j":I
    .end local v29    # "left":F
    .end local v30    # "keysInRow":I
    .local v1, "top":F
    .restart local v8    # "keyHeight":F
    .restart local v9    # "keysInRow":I
    .local v10, "j":I
    .restart local v12    # "left":F
    .restart local v13    # "i":I
    .restart local v14    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .restart local v15    # "keyRect":Landroid/graphics/RectF;
    :cond_152
    move/from16 v26, v1

    move v5, v8

    move/from16 v30, v9

    move/from16 v28, v10

    move/from16 v29, v12

    move v1, v13

    move-object/from16 v27, v14

    move-object v10, v15

    .end local v8    # "keyHeight":F
    .end local v9    # "keysInRow":I
    .end local v12    # "left":F
    .end local v13    # "i":I
    .end local v14    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v15    # "keyRect":Landroid/graphics/RectF;
    .local v1, "i":I
    .restart local v5    # "keyHeight":F
    .local v10, "keyRect":Landroid/graphics/RectF;
    .restart local v26    # "top":F
    .restart local v27    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .restart local v28    # "j":I
    .restart local v29    # "left":F
    .restart local v30    # "keysInRow":I
    aget-object v2, v27, v28

    invoke-static {v2}, Landroid/hardware/input/PhysicalKeyLayout;->isKeyPositionUnsure(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 145
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;

    aget-object v9, v27, v28

    invoke-virtual {v9}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    move-result-object v9

    iget-object v12, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 146
    invoke-static {v12}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v12

    iget-object v13, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 147
    invoke-static {v13}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v14, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 148
    invoke-static {v14}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v15, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 149
    invoke-static {v15}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 145
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bc

    .line 151
    :cond_192
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;

    aget-object v9, v27, v28

    invoke-virtual {v9}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    move-result-object v9

    iget-object v12, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 152
    invoke-static {v12}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v12

    iget-object v13, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 153
    invoke-static {v13}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v14, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 154
    invoke-static {v14}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v15, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 155
    invoke-static {v15}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 151
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v10    # "keyRect":Landroid/graphics/RectF;
    .end local v29    # "left":F
    :goto_1bc
    add-int/lit8 v10, v28, 0x1

    move v13, v1

    move v8, v5

    move/from16 v15, v23

    move-object/from16 v2, v24

    move/from16 v5, v25

    move/from16 v1, v26

    move-object/from16 v14, v27

    move/from16 v9, v30

    .end local v28    # "j":I
    .local v10, "j":I
    goto/16 :goto_a3

    .end local v23    # "rowWeightOnLeft":F
    .end local v24    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .end local v25    # "keyboardPadding":I
    .end local v26    # "top":F
    .end local v27    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v30    # "keysInRow":I
    .local v1, "top":F
    .local v2, "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .local v5, "keyboardPadding":I
    .restart local v8    # "keyHeight":F
    .restart local v9    # "keysInRow":I
    .restart local v13    # "i":I
    .restart local v14    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .local v15, "rowWeightOnLeft":F
    :cond_1ce
    move/from16 v26, v1

    move-object/from16 v24, v2

    move/from16 v25, v5

    move v5, v8

    move/from16 v30, v9

    move/from16 v28, v10

    move v1, v13

    move-object/from16 v27, v14

    .line 114
    .end local v2    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .end local v8    # "keyHeight":F
    .end local v9    # "keysInRow":I
    .end local v10    # "j":I
    .end local v13    # "i":I
    .end local v14    # "row":[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v15    # "rowWeightOnLeft":F
    .end local v18    # "totalRowWeight":F
    .end local v20    # "keyWidthInPx":F
    .local v1, "i":I
    .local v5, "keyHeight":F
    .restart local v24    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .restart local v25    # "keyboardPadding":I
    add-int/lit8 v13, v1, 0x1

    move-object/from16 v1, v17

    move/from16 v9, v19

    move/from16 v10, v21

    move/from16 v12, v22

    move/from16 v5, v25

    .end local v1    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_5f

    .end local v17    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v19    # "isoEnterKeyLeft":F
    .end local v21    # "isoEnterKeyTop":F
    .end local v22    # "isoEnterWidthUnit":F
    .end local v24    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .end local v25    # "keyboardPadding":I
    .local v1, "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .restart local v2    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .local v5, "keyboardPadding":I
    .restart local v8    # "keyHeight":F
    .local v9, "isoEnterKeyLeft":F
    .local v10, "isoEnterKeyTop":F
    .local v12, "isoEnterWidthUnit":F
    :cond_1ea
    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move/from16 v25, v5

    move v5, v8

    move/from16 v16, v9

    move v1, v13

    .line 159
    .end local v1    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v2    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .end local v8    # "keyHeight":F
    .end local v9    # "isoEnterKeyLeft":F
    .end local v13    # "i":I
    .local v5, "keyHeight":F
    .restart local v16    # "isoEnterKeyLeft":F
    .restart local v17    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .restart local v24    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .restart local v25    # "keyboardPadding":I
    if-eqz v24, :cond_22c

    .line 160
    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    .line 161
    invoke-static {v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v1, v11, v2, v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;-><init>(FLandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    .line 162
    .local v1, "isoEnterKeyBuilder":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight()F

    move-result v2

    mul-float/2addr v2, v12

    invoke-static {v1, v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetTopWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v2

    .line 163
    move/from16 v9, v16

    .end local v16    # "isoEnterKeyLeft":F
    .restart local v9    # "isoEnterKeyLeft":F
    invoke-static {v2, v9, v10}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetStartPoint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v2

    int-to-float v8, v6

    add-float/2addr v8, v5

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v8, v13

    .line 164
    invoke-static {v2, v5, v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetVerticalEdges(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v2

    .line 165
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight()F

    move-result v8

    mul-float/2addr v8, v12

    invoke-static {v2, v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetBottomWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    .line 166
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$mbuild(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22e

    .line 159
    .end local v1    # "isoEnterKeyBuilder":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .end local v9    # "isoEnterKeyLeft":F
    .restart local v16    # "isoEnterKeyLeft":F
    :cond_22c
    move/from16 v9, v16

    .line 168
    .end local v16    # "isoEnterKeyLeft":F
    .restart local v9    # "isoEnterKeyLeft":F
    :goto_22e
    return-void

    .line 102
    .end local v7    # "rowCount":I
    .end local v9    # "isoEnterKeyLeft":F
    .end local v10    # "isoEnterKeyTop":F
    .end local v12    # "isoEnterWidthUnit":F
    .end local v17    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v24    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .end local v25    # "keyboardPadding":I
    .local v1, "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .restart local v2    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .local v5, "keyboardPadding":I
    :cond_22f
    move-object/from16 v17, v1

    move-object/from16 v24, v2

    move/from16 v25, v5

    .line 103
    .end local v1    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .end local v2    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .end local v5    # "keyboardPadding":I
    .restart local v17    # "keys":[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .restart local v24    # "enterKey":Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .restart local v25    # "keyboardPadding":I
    :goto_235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width and height to draw layout preview, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardLayoutPreview"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 183
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 188
    return-void
.end method
