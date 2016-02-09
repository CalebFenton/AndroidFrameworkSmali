.class Landroid/media/ClosedCaptionWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
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
    .line 1228
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@5
    .line 1222
    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    #@7
    .line 1223
    const/high16 v1, -0x1000000

    #@9
    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    #@b
    .line 1224
    iput v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@d
    .line 1225
    iput v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    #@f
    .line 1229
    const/16 v1, 0x11

    #@11
    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setGravity(I)V

    #@14
    .line 1230
    invoke-virtual {p0, v2}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundColor(I)V

    #@17
    .line 1231
    invoke-virtual {p0, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    #@1a
    .line 1232
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@1c
    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    #@1f
    .line 1233
    const/4 v1, 0x4

    #@20
    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setVisibility(I)V

    #@23
    .line 1235
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getContext()Landroid/content/Context;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v0

    #@2b
    .line 1239
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050086

    #@2e
    .line 1238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@31
    move-result v1

    #@32
    int-to-float v1, v1

    #@33
    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    #@35
    .line 1241
    const v1, 0x1050084

    #@38
    .line 1240
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3b
    move-result v1

    #@3c
    int-to-float v1, v1

    #@3d
    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@3f
    .line 1243
    const v1, 0x1050085

    #@42
    .line 1242
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@45
    move-result v1

    #@46
    int-to-float v1, v1

    #@47
    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    #@49
    .line 1227
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1300
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    #@3
    move-result-object v3

    #@4
    .line 1302
    .local v3, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    #@7
    move-result-object v1

    #@8
    .line 1303
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    #@b
    move-result-object v0

    #@c
    .line 1304
    .local v0, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    #@f
    move-result v2

    #@10
    .line 1306
    .local v2, "previousWidth":F
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    #@12
    invoke-virtual {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    #@15
    .line 1307
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@17
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1a
    .line 1308
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@1c
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@1f
    .line 1309
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    #@21
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@24
    .line 1312
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@27
    .line 1315
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    #@29
    invoke-virtual {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    #@2c
    .line 1316
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2f
    .line 1317
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@32
    .line 1318
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    #@35
    .line 1321
    const/4 v4, 0x0

    #@36
    invoke-direct {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    #@39
    .line 1323
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@3c
    .line 1325
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    #@3e
    invoke-direct {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    #@41
    .line 1299
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1329
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    #@3
    move-result-object v5

    #@4
    .line 1331
    .local v5, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    #@7
    move-result-object v3

    #@8
    .line 1332
    .local v3, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@a
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@d
    .line 1334
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@f
    const/4 v7, 0x3

    #@10
    if-ne v6, v7, :cond_0

    #@12
    const/4 v4, 0x1

    #@13
    .line 1335
    .local v4, "raised":Z
    :goto_0
    if-eqz v4, :cond_1

    #@15
    const/4 v1, -0x1

    #@16
    .line 1336
    .local v1, "colorUp":I
    :goto_1
    if-eqz v4, :cond_2

    #@18
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    #@1a
    .line 1337
    .local v0, "colorDown":I
    :goto_2
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@1c
    const/high16 v7, 0x40000000    # 2.0f

    #@1e
    div-float v2, v6, v7

    #@20
    .line 1340
    .local v2, "offset":F
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@22
    neg-float v7, v2

    #@23
    neg-float v8, v2

    #@24
    invoke-virtual {p0, v6, v7, v8, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    #@27
    .line 1341
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@2a
    .line 1344
    const/4 v6, 0x0

    #@2b
    invoke-direct {p0, v6}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    #@2e
    .line 1347
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@30
    invoke-virtual {p0, v6, v2, v2, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    #@33
    .line 1348
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@36
    .line 1351
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@39
    .line 1354
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    #@3b
    invoke-direct {p0, v6}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    #@3e
    .line 1328
    return-void

    #@3f
    .line 1334
    .end local v0    # "colorDown":I
    .end local v1    # "colorUp":I
    .end local v2    # "offset":F
    .end local v4    # "raised":Z
    :cond_0
    const/4 v4, 0x0

    #@40
    .restart local v4    # "raised":Z
    goto :goto_0

    #@41
    .line 1335
    :cond_1
    iget v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    #@43
    .restart local v1    # "colorUp":I
    goto :goto_1

    #@44
    .line 1336
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
    .line 1358
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v3

    #@4
    .line 1359
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spannable;

    #@6
    if-eqz v4, :cond_0

    #@8
    move-object v2, v3

    #@9
    .line 1360
    check-cast v2, Landroid/text/Spannable;

    #@b
    .line 1362
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    #@e
    move-result v4

    #@f
    const-class v5, Landroid/media/MutableBackgroundColorSpan;

    #@11
    const/4 v6, 0x0

    #@12
    .line 1361
    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, [Landroid/media/MutableBackgroundColorSpan;

    #@18
    .line 1363
    .local v0, "bgSpans":[Landroid/media/MutableBackgroundColorSpan;
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@1a
    if-ge v1, v4, :cond_0

    #@1c
    .line 1364
    aget-object v4, v0, v1

    #@1e
    invoke-virtual {v4, p1}, Landroid/media/MutableBackgroundColorSpan;->setBackgroundColor(I)V

    #@21
    .line 1363
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1357
    .end local v0    # "bgSpans":[Landroid/media/MutableBackgroundColorSpan;
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
    .line 1283
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1284
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1287
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    #@c
    .line 1288
    return-void

    #@d
    .line 1285
    :cond_1
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@f
    const/4 v1, 0x2

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1291
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@14
    const/4 v1, 0x1

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 1292
    invoke-direct {p0, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    #@1a
    .line 1282
    :goto_0
    return-void

    #@1b
    .line 1295
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

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
    .line 1263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@6
    move-result v3

    #@7
    int-to-float v3, v3

    #@8
    .line 1264
    const/high16 v4, 0x3f400000    # 0.75f

    #@a
    .line 1263
    mul-float v1, v3, v4

    #@c
    .line 1265
    .local v1, "fontSize":F
    invoke-virtual {p0, v7, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextSize(IF)V

    #@f
    .line 1267
    const v3, 0x3dcccccd    # 0.1f

    #@12
    mul-float/2addr v3, v1

    #@13
    add-float/2addr v3, v5

    #@14
    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    #@16
    .line 1268
    const v3, 0x3d4ccccd    # 0.05f

    #@19
    mul-float/2addr v3, v1

    #@1a
    add-float/2addr v3, v5

    #@1b
    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@1d
    .line 1269
    iget v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@1f
    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    #@21
    .line 1272
    invoke-virtual {p0, v5}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setScaleX(F)V

    #@24
    .line 1273
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

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
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-get3()Landroid/graphics/Rect;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@39
    .line 1274
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-get3()Landroid/graphics/Rect;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@40
    move-result v3

    #@41
    int-to-float v0, v3

    #@42
    .line 1275
    .local v0, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@45
    move-result v3

    #@46
    int-to-float v2, v3

    #@47
    .line 1276
    .local v2, "requiredTextWidth":F
    div-float v3, v2, v0

    #@49
    invoke-virtual {p0, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setScaleX(F)V

    #@4c
    .line 1278
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    #@4f
    .line 1262
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1247
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@3
    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    #@5
    .line 1248
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@7
    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    #@9
    .line 1249
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@b
    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@d
    .line 1250
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@f
    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    #@11
    .line 1252
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    #@13
    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    #@16
    .line 1253
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    #@18
    const/4 v1, 0x2

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    .line 1254
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    #@1d
    iget v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    #@1f
    iget v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    #@21
    iget v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    #@23
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    #@26
    .line 1258
    :goto_0
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->invalidate()V

    #@29
    .line 1246
    return-void

    #@2a
    .line 1256
    :cond_0
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    #@2e
    goto :goto_0
.end method
