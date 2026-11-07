.class public Landroid/text/style/IconMarginSpan;
.super Ljava/lang/Object;
.source "IconMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private final greylist-max-o mPad:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/IconMarginSpan;-><init>(Landroid/graphics/Bitmap;I)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;I)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pad"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    iput p2, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "istartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 99
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ne p3, v0, :cond_2f

    .line 100
    iget-object v0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 102
    .local v0, "ht":I
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v1, p5

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p4

    sub-int v1, v0, v1

    .line 103
    .local v1, "need":I
    if-lez v1, :cond_1f

    .line 104
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 107
    :cond_1f
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, p5

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p4

    sub-int v1, v0, v2

    .line 108
    if-lez v1, :cond_2f

    .line 109
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 112
    .end local v0    # "ht":I
    .end local v1    # "need":I
    :cond_2f
    return-void
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 19
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .line 85
    move-object/from16 v0, p12

    move-object v1, p8

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 86
    .local v1, "st":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 88
    .local v2, "itop":I
    if-gez p4, :cond_1a

    .line 89
    iget-object v3, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr p3, v3

    .line 92
    :cond_1a
    iget-object v3, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v4, p3

    int-to-float v5, v2

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .registers 4
    .param p1, "first"    # Z

    .line 77
    iget-object v0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getPadding()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconMarginSpan{bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/IconMarginSpan;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/IconMarginSpan;->getPadding()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
