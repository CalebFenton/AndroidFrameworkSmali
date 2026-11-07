.class Landroid/media/Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLayout"
.end annotation


# static fields
.field private static final greylist-max-o MAX_ROWS:I = 0xf

.field private static final greylist-max-o SAFE_AREA_RATIO:F = 0.9f


# instance fields
.field private final greylist-max-o mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1423
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1420
    const/16 v0, 0xf

    new-array v1, v0, [Landroid/media/Cea608CCWidget$CCLineBox;

    iput-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 1424
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLayout;->setGravity(I)V

    .line 1425
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLayout;->setOrientation(I)V

    .line 1426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_2e

    .line 1427
    iget-object v2, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    new-instance v3, Landroid/media/Cea608CCWidget$CCLineBox;

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/Cea608CCWidget$CCLineBox;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 1428
    iget-object v2, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3, v3}, Landroid/media/Cea608CCWidget$CCLayout;->addView(Landroid/view/View;II)V

    .line 1426
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1430
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .registers 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1485
    sub-int v0, p4, p2

    .line 1486
    .local v0, "viewPortWidth":I
    sub-int v1, p5, p3

    .line 1489
    .local v1, "viewPortHeight":I
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x4

    if-lt v2, v3, :cond_10

    .line 1490
    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v2, v2, 0x3

    .line 1491
    .local v2, "safeWidth":I
    move v3, v1

    .local v3, "safeHeight":I
    goto :goto_15

    .line 1493
    .end local v2    # "safeWidth":I
    .end local v3    # "safeHeight":I
    :cond_10
    move v2, v0

    .line 1494
    .restart local v2    # "safeWidth":I
    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 1496
    .restart local v3    # "safeHeight":I
    :goto_15
    int-to-float v4, v2

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 1497
    int-to-float v4, v3

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1498
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    .line 1499
    .local v4, "left":I
    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    .line 1501
    .local v5, "top":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    const/16 v7, 0xf

    if-ge v6, v7, :cond_40

    .line 1502
    iget-object v8, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v8, v8, v6

    mul-int v9, v3, v6

    div-int/2addr v9, v7

    add-int/2addr v9, v5

    add-int v10, v4, v2

    add-int/lit8 v11, v6, 0x1

    mul-int/2addr v11, v3

    div-int/2addr v11, v7

    add-int/2addr v11, v5

    invoke-virtual {v8, v4, v9, v10, v11}, Landroid/media/Cea608CCWidget$CCLineBox;->layout(IIII)V

    .line 1501
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 1508
    .end local v6    # "i":I
    :cond_40
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1457
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1459
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLayout;->getMeasuredWidth()I

    move-result v0

    .line 1460
    .local v0, "safeWidth":I
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLayout;->getMeasuredHeight()I

    move-result v1

    .line 1463
    .local v1, "safeHeight":I
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x4

    if-lt v2, v3, :cond_16

    .line 1464
    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v0, v2, 0x3

    goto :goto_1a

    .line 1466
    :cond_16
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v2, 0x4

    .line 1468
    :goto_1a
    int-to-float v2, v0

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1469
    int-to-float v2, v1

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1471
    div-int/lit8 v2, v1, 0xf

    .line 1472
    .local v2, "lineHeight":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1474
    .local v4, "lineHeightMeasureSpec":I
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1477
    .local v3, "lineWidthMeasureSpec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    const/16 v6, 0xf

    if-ge v5, v6, :cond_3e

    .line 1478
    iget-object v6, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->measure(II)V

    .line 1477
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1480
    .end local v5    # "i":I
    :cond_3e
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_f

    .line 1435
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1437
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public greylist-max-o setFontScale(F)V
    .registers 2
    .param p1, "fontScale"    # F

    .line 1442
    return-void
.end method

.method greylist-max-o update([Landroid/text/SpannableStringBuilder;)V
    .registers 6
    .param p1, "textBuffer"    # [Landroid/text/SpannableStringBuilder;

    .line 1445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_28

    .line 1446
    aget-object v1, p1, v0

    if-eqz v1, :cond_1d

    .line 1447
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1448
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    goto :goto_25

    .line 1450
    :cond_1d
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    .line 1445
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1453
    .end local v0    # "i":I
    :cond_28
    return-void
.end method
