.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1275
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@5
    .line 1269
    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    #@7
    .line 1270
    const/high16 v1, -0x1000000

    #@9
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    #@b
    .line 1271
    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@d
    .line 1272
    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    #@f
    .line 1276
    const/16 v1, 0x11

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    #@14
    .line 1277
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    #@17
    .line 1278
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    #@1a
    .line 1279
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@1c
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@1f
    .line 1280
    const/4 v1, 0x4

    #@20
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    #@23
    .line 1282
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v0

    #@2b
    .line 1286
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105009f

    #@2e
    .line 1285
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@31
    move-result v1

    #@32
    int-to-float v1, v1

    #@33
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    #@35
    .line 1288
    const v1, 0x105009d

    #@38
    .line 1287
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3b
    move-result v1

    #@3c
    int-to-float v1, v1

    #@3d
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@3f
    .line 1290
    const v1, 0x105009e

    #@42
    .line 1289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@45
    move-result v1

    #@46
    int-to-float v1, v1

    #@47
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    #@49
    .line 1274
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@3
    move-result-object v3

    #@4
    .line 1348
    .local v3, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    #@7
    move-result-object v1

    #@8
    .line 1349
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    #@b
    move-result-object v0

    #@c
    .line 1350
    .local v0, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@f
    move-result v2

    #@10
    .line 1352
    .local v2, "previousWidth":F
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    #@12
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    #@15
    .line 1353
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@17
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1a
    .line 1354
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@1c
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@1f
    .line 1355
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    #@21
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@24
    .line 1358
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@27
    .line 1361
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    #@29
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    #@2c
    .line 1362
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2f
    .line 1363
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@32
    .line 1364
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@35
    .line 1367
    const/4 v4, 0x0

    #@36
    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    #@39
    .line 1369
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@3c
    .line 1371
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    #@3e
    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    #@41
    .line 1345
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1375
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@4
    move-result-object v5

    #@5
    .line 1377
    .local v5, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    #@8
    move-result-object v3

    #@9
    .line 1378
    .local v3, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@b
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@e
    .line 1380
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@10
    const/4 v8, 0x3

    #@11
    if-ne v7, v8, :cond_0

    #@13
    const/4 v4, 0x1

    #@14
    .line 1381
    .local v4, "raised":Z
    :goto_0
    if-eqz v4, :cond_1

    #@16
    const/4 v1, -0x1

    #@17
    .line 1382
    .local v1, "colorUp":I
    :goto_1
    if-eqz v4, :cond_2

    #@19
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    #@1b
    .line 1383
    .local v0, "colorDown":I
    :goto_2
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@1d
    const/high16 v8, 0x40000000    # 2.0f

    #@1f
    div-float v2, v7, v8

    #@21
    .line 1386
    .local v2, "offset":F
    iget v7, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@23
    neg-float v8, v2

    #@24
    neg-float v9, v2

    #@25
    invoke-virtual {p0, v7, v8, v9, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@28
    .line 1387
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@2b
    .line 1390
    invoke-direct {p0, v6}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    #@2e
    .line 1393
    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@30
    invoke-virtual {p0, v6, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@33
    .line 1394
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@36
    .line 1397
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@39
    .line 1400
    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    #@3b
    invoke-direct {p0, v6}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    #@3e
    .line 1374
    return-void

    #@3f
    .end local v0    # "colorDown":I
    .end local v1    # "colorUp":I
    .end local v2    # "offset":F
    .end local v4    # "raised":Z
    :cond_0
    move v4, v6

    #@40
    .line 1380
    goto :goto_0

    #@41
    .line 1381
    .restart local v4    # "raised":Z
    :cond_1
    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    #@43
    .restart local v1    # "colorUp":I
    goto :goto_1

    #@44
    .line 1382
    :cond_2
    const/4 v0, -0x1

    #@45
    .restart local v0    # "colorDown":I
    goto :goto_2
.end method

.method private setBackgroundSpans(I)V
    .locals 7
    .param p1, "color"    # I

    #@0
    .prologue
    .line 1404
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v3

    #@4
    .line 1405
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spannable;

    #@6
    if-eqz v4, :cond_0

    #@8
    move-object v2, v3

    #@9
    .line 1406
    check-cast v2, Landroid/text/Spannable;

    #@b
    .line 1408
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    #@e
    move-result v4

    #@f
    const-class v5, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    #@11
    const/4 v6, 0x0

    #@12
    .line 1407
    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    #@18
    .line 1409
    .local v0, "bgSpans":[Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@1a
    if-ge v1, v4, :cond_0

    #@1c
    .line 1410
    aget-object v4, v0, v1

    #@1e
    invoke-virtual {v4, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    #@21
    .line 1409
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1403
    .end local v0    # "bgSpans":[Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1329
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1330
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1333
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@c
    .line 1334
    return-void

    #@d
    .line 1331
    :cond_1
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@f
    const/4 v1, 0x2

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1337
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@14
    const/4 v1, 0x1

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 1338
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    #@1a
    .line 1328
    :goto_0
    return-void

    #@1b
    .line 1341
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    #@1e
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/high16 v5, 0x3f800000    # 1.0f

    #@3
    .line 1310
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@6
    move-result v3

    #@7
    int-to-float v3, v3

    #@8
    const/high16 v4, 0x3f400000    # 0.75f

    #@a
    mul-float v1, v3, v4

    #@c
    .line 1311
    .local v1, "fontSize":F
    invoke-virtual {p0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    #@f
    .line 1313
    const v3, 0x3dcccccd    # 0.1f

    #@12
    mul-float/2addr v3, v1

    #@13
    add-float/2addr v3, v5

    #@14
    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    #@16
    .line 1314
    const v3, 0x3d4ccccd    # 0.05f

    #@19
    mul-float/2addr v3, v1

    #@1a
    add-float/2addr v3, v5

    #@1b
    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@1d
    .line 1315
    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@1f
    iput v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    #@21
    .line 1318
    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleX(F)V

    #@24
    .line 1319
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, "1234567890123456789012345678901234"

    #@2b
    const-string/jumbo v5, "1234567890123456789012345678901234"

    #@2e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@31
    move-result v5

    #@32
    invoke-static {}, Landroid/media/Cea608CCWidget;->-get0()Landroid/graphics/Rect;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@39
    .line 1320
    invoke-static {}, Landroid/media/Cea608CCWidget;->-get0()Landroid/graphics/Rect;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@40
    move-result v3

    #@41
    int-to-float v0, v3

    #@42
    .line 1321
    .local v0, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@45
    move-result v3

    #@46
    int-to-float v2, v3

    #@47
    .line 1322
    .local v2, "requiredTextWidth":F
    div-float v3, v2, v0

    #@49
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    #@4c
    .line 1324
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    #@4f
    .line 1309
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1294
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@3
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    #@5
    .line 1295
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@7
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    #@9
    .line 1296
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@b
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@d
    .line 1297
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@f
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    #@11
    .line 1299
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    #@13
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@16
    .line 1300
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    #@18
    const/4 v1, 0x2

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    .line 1301
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    #@1d
    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    #@1f
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    #@21
    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    #@23
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@26
    .line 1305
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@29
    .line 1293
    return-void

    #@2a
    .line 1303
    :cond_0
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@2e
    goto :goto_0
.end method
