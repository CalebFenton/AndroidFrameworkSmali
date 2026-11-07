.class Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;
.super Ljava/lang/Object;
.source "KeyboardLayoutPreviewDrawable.java"

# interfaces
.implements Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypingKey"
.end annotation


# instance fields
.field private final blacklist mBaseTextPaint:Landroid/graphics/Paint;

.field private final blacklist mGlyphDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyPaint:Landroid/graphics/Paint;

.field private final blacklist mKeyRadius:F

.field private final blacklist mKeyRect:Landroid/graphics/RectF;

.field private final blacklist mModifierTextPaint:Landroid/graphics/Paint;

.field private final blacklist mTextPadding:F


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "glyphData"    # Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    .param p2, "keyRect"    # Landroid/graphics/RectF;
    .param p3, "keyRadius"    # F
    .param p4, "textPadding"    # F
    .param p5, "keyPaint"    # Landroid/graphics/Paint;
    .param p6, "baseTextPaint"    # Landroid/graphics/Paint;
    .param p7, "modifierTextPaint"    # Landroid/graphics/Paint;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    .line 208
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    .line 209
    iput p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRadius:F

    .line 210
    iput p4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mTextPadding:F

    .line 211
    iput-object p5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyPaint:Landroid/graphics/Paint;

    .line 212
    iput-object p6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mBaseTextPaint:Landroid/graphics/Paint;

    .line 213
    iput-object p7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mModifierTextPaint:Landroid/graphics/Paint;

    .line 214
    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->initGlyphs(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V

    .line 215
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist createGlyphs(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V
    .registers 9
    .param p1, "glyphData"    # Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    .line 223
    if-nez p1, :cond_3

    .line 224
    return-void

    .line 226
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->hasBaseText()Z

    move-result v0

    if-nez v0, :cond_a

    .line 227
    return-void

    .line 229
    :cond_a
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->getBaseText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mBaseTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/16 v4, 0x9

    invoke-direct/range {v1 .. v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;-><init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->hasValidShiftText()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 232
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->getShiftText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mModifierTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v4, 0x5

    invoke-direct/range {v1 .. v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;-><init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_3f
    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->hasValidAltGrText()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 236
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->getAltGrText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mModifierTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/16 v4, 0xa

    invoke-direct/range {v1 .. v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;-><init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5d
    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->hasValidAltGrShiftText()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 240
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    invoke-virtual {p1}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;->getAltGrShiftText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mModifierTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v4, 0x6

    invoke-direct/range {v1 .. v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;-><init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_7a
    return-void
.end method

.method private blacklist initGlyphs(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V
    .registers 2
    .param p1, "glyphData"    # Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    .line 218
    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->createGlyphs(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V

    .line 219
    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->measureGlyphs()V

    .line 220
    return-void
.end method

.method private blacklist measureGlyphs()V
    .registers 16

    .line 246
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 247
    .local v0, "keyWidth":F
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 248
    .local v1, "keyHeight":F
    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    .line 249
    .local v3, "glyph":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    .line 250
    .local v5, "centerX":F
    div-float v6, v1, v4

    .line 251
    .local v6, "centerY":F
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetgravity(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    if-eqz v7, :cond_35

    .line 252
    div-float v7, v0, v8

    sub-float/2addr v5, v7

    .line 253
    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mTextPadding:F

    div-float/2addr v7, v4

    add-float/2addr v5, v7

    .line 255
    :cond_35
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetgravity(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_44

    .line 256
    div-float v7, v0, v8

    add-float/2addr v5, v7

    .line 257
    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mTextPadding:F

    div-float/2addr v7, v4

    sub-float/2addr v5, v7

    .line 259
    :cond_44
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetgravity(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_53

    .line 260
    div-float v7, v1, v8

    sub-float/2addr v6, v7

    .line 261
    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mTextPadding:F

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    .line 263
    :cond_53
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetgravity(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_62

    .line 264
    div-float v7, v1, v8

    add-float/2addr v6, v7

    .line 265
    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mTextPadding:F

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    .line 267
    :cond_62
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 268
    .local v7, "textBounds":Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetpaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgettext(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgettext(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 269
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 270
    .local v8, "textWidth":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    .line 271
    .local v9, "textHeight":F
    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;

    move-result-object v10

    div-float v11, v8, v4

    sub-float v11, v5, v11

    div-float v12, v9, v4

    sub-float v12, v6, v12

    iget v13, v7, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    div-float v13, v8, v4

    add-float/2addr v13, v5

    div-float v4, v9, v4

    add-float/2addr v4, v6

    iget v14, v7, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v4, v14

    invoke-virtual {v10, v11, v12, v13, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 273
    .end local v3    # "glyph":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    .end local v7    # "textBounds":Landroid/graphics/Rect;
    .end local v8    # "textWidth":F
    .end local v9    # "textHeight":F
    goto/16 :goto_12

    .line 274
    :cond_a4
    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 278
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRadius:F

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRadius:F

    iget-object v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mGlyphDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    .line 280
    .local v1, "glyph":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 281
    .local v2, "textWidth":F
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 282
    .local v3, "textHeight":F
    iget-object v4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 283
    .local v4, "keyWidth":F
    iget-object v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 284
    .local v5, "keyHeight":F
    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_7a

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_7a

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_7a

    cmpl-float v6, v5, v6

    if-nez v6, :cond_4c

    move-object v7, p1

    goto :goto_7b

    .line 287
    :cond_4c
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgettext(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgettext(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v11, v6, v7

    iget-object v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;->mKeyRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v12, v6, v7

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->-$$Nest$fgetpaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/Paint;

    move-result-object v13

    const/4 v9, 0x0

    move-object v7, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 289
    .end local v1    # "glyph":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    .end local v2    # "textWidth":F
    .end local v3    # "textHeight":F
    .end local v4    # "keyWidth":F
    .end local v5    # "keyHeight":F
    goto :goto_11

    .line 284
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "glyph":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    .restart local v2    # "textWidth":F
    .restart local v3    # "textHeight":F
    .restart local v4    # "keyWidth":F
    .restart local v5    # "keyHeight":F
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_7a
    move-object v7, p1

    .line 285
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    :goto_7b
    return-void

    .line 290
    .end local v1    # "glyph":Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    .end local v2    # "textWidth":F
    .end local v3    # "textHeight":F
    .end local v4    # "keyWidth":F
    .end local v5    # "keyHeight":F
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_7c
    return-void
.end method
