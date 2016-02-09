.class Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 468
    new-instance v0, Landroid/graphics/RectF;

    #@7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    #@c
    .line 469
    new-instance v0, Landroid/graphics/Paint;

    #@e
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@11
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@13
    .line 470
    new-instance v0, Landroid/graphics/Paint;

    #@15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@18
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    #@1a
    .line 474
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    #@1c
    .line 475
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    #@1e
    .line 476
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    #@20
    .line 477
    const/high16 v0, 0x40a00000    # 5.0f

    #@22
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    #@24
    .line 478
    const/high16 v0, 0x40200000    # 2.5f

    #@26
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    #@28
    .line 495
    new-instance v0, Landroid/graphics/Paint;

    #@2a
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    #@2d
    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    #@2f
    .line 500
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@31
    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@33
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    #@35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@38
    .line 503
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@3a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@3d
    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@3f
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@44
    .line 506
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    #@46
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@4b
    .line 507
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    #@4d
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@50
    .line 499
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 551
    iget-boolean v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 552
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@6
    if-nez v3, :cond_1

    #@8
    .line 553
    new-instance v3, Landroid/graphics/Path;

    #@a
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@d
    iput-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@f
    .line 554
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@11
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@13
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@16
    .line 561
    :goto_0
    iget v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    #@18
    float-to-int v3, v3

    #@19
    div-int/lit8 v3, v3, 0x2

    #@1b
    int-to-float v3, v3

    #@1c
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    #@1e
    mul-float v0, v3, v4

    #@20
    .line 562
    .local v0, "inset":F
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    #@22
    const-wide/16 v6, 0x0

    #@24
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    #@27
    move-result-wide v6

    #@28
    mul-double/2addr v4, v6

    #@29
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    #@2c
    move-result v3

    #@2d
    float-to-double v6, v3

    #@2e
    add-double/2addr v4, v6

    #@2f
    double-to-float v1, v4

    #@30
    .line 563
    .local v1, "x":F
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    #@32
    const-wide/16 v6, 0x0

    #@34
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    #@37
    move-result-wide v6

    #@38
    mul-double/2addr v4, v6

    #@39
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    #@3c
    move-result v3

    #@3d
    float-to-double v6, v3

    #@3e
    add-double/2addr v4, v6

    #@3f
    double-to-float v2, v4

    #@40
    .line 569
    .local v2, "y":F
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@42
    const/4 v4, 0x0

    #@43
    const/4 v5, 0x0

    #@44
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@47
    .line 570
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@49
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    #@4b
    int-to-float v4, v4

    #@4c
    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    #@4e
    mul-float/2addr v4, v5

    #@4f
    const/4 v5, 0x0

    #@50
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    #@53
    .line 571
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@55
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    #@57
    int-to-float v4, v4

    #@58
    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    #@5a
    mul-float/2addr v4, v5

    #@5b
    const/high16 v5, 0x40000000    # 2.0f

    #@5d
    div-float/2addr v4, v5

    #@5e
    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    #@60
    int-to-float v5, v5

    #@61
    .line 572
    iget v6, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    #@63
    .line 571
    mul-float/2addr v5, v6

    #@64
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    #@67
    .line 573
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@69
    sub-float v4, v1, v0

    #@6b
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    #@6e
    .line 574
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@70
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    #@73
    .line 576
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    #@75
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    #@77
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@7a
    .line 577
    add-float v3, p2, p3

    #@7c
    const/high16 v4, 0x40a00000    # 5.0f

    #@7e
    sub-float/2addr v3, v4

    #@7f
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    #@82
    move-result v4

    #@83
    .line 578
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    #@86
    move-result v5

    #@87
    .line 577
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@8a
    .line 579
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@8c
    iget-object v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    #@8e
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@91
    .line 550
    .end local v0    # "inset":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    return-void

    #@92
    .line 556
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    #@94
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    #@97
    goto/16 :goto_0
.end method

.method private getNextColorIndex()I
    .locals 2

    #@0
    .prologue
    .line 622
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    #@6
    array-length v1, v1

    #@7
    rem-int/2addr v0, v1

    #@8
    return v0
.end method

.method private invalidateSelf()V
    .locals 2

    #@0
    .prologue
    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 788
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    #@2
    .line 529
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    #@4
    .line 530
    .local v1, "arcBounds":Landroid/graphics/RectF;
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@7
    .line 531
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    #@9
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    #@b
    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    #@e
    .line 533
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    #@10
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    #@12
    add-float/2addr v0, v4

    #@13
    mul-float v2, v0, v5

    #@15
    .line 534
    .local v2, "startAngle":F
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    #@17
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    #@19
    add-float/2addr v0, v4

    #@1a
    mul-float v6, v0, v5

    #@1c
    .line 535
    .local v6, "endAngle":F
    sub-float v3, v6, v2

    #@1e
    .line 537
    .local v3, "sweepAngle":F
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@20
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    #@22
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@25
    .line 538
    iget-object v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@27
    const/4 v4, 0x0

    #@28
    move-object v0, p1

    #@29
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@2c
    .line 540
    invoke-direct {p0, p1, v2, v3, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    #@2f
    .line 542
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    #@31
    const/16 v4, 0xff

    #@33
    if-ge v0, v4, :cond_0

    #@35
    .line 543
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    #@37
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    #@39
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@3c
    .line 544
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    #@3e
    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    #@40
    rsub-int v4, v4, 0xff

    #@42
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    #@45
    .line 545
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    #@48
    move-result v0

    #@49
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    #@4c
    move-result v4

    #@4d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@50
    move-result v5

    #@51
    div-int/lit8 v5, v5, 0x2

    #@53
    int-to-float v5, v5

    #@54
    .line 546
    iget-object v7, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    #@56
    .line 545
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@59
    .line 528
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 649
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    #@2
    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    #@0
    .prologue
    .line 736
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    #@2
    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    #@0
    .prologue
    .line 697
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    #@2
    return v0
.end method

.method public getInsets()F
    .locals 1

    #@0
    .prologue
    .line 724
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    #@2
    return v0
.end method

.method public getNextColor()I
    .locals 2

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    #@2
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getRotation()F
    .locals 1

    #@0
    .prologue
    .line 708
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    #@2
    return v0
.end method

.method public getStartTrim()F
    .locals 1

    #@0
    .prologue
    .line 674
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    #@2
    return v0
.end method

.method public getStartingColor()I
    .locals 2

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    #@2
    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    #@0
    .prologue
    .line 682
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    #@2
    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    #@0
    .prologue
    .line 763
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    #@2
    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    #@0
    .prologue
    .line 678
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    #@2
    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    #@0
    .prologue
    .line 663
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    #@2
    return v0
.end method

.method public goToNextColor()V
    .locals 1

    #@0
    .prologue
    .line 630
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    #@7
    .line 629
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 780
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    #@3
    .line 781
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    #@5
    .line 782
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    #@7
    .line 783
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    #@a
    .line 784
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    #@d
    .line 785
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    #@10
    .line 779
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 642
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    #@2
    .line 641
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    #@0
    .prologue
    .line 521
    float-to-int v0, p1

    #@1
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    #@3
    .line 522
    float-to-int v0, p2

    #@4
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    #@6
    .line 520
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 753
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 754
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    #@8
    .line 755
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@b
    .line 752
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 511
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    #@2
    .line 510
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 1
    .param p1, "centerRadius"    # D

    #@0
    .prologue
    .line 732
    iput-wide p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    #@2
    .line 731
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 602
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    #@2
    .line 601
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 635
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@8
    .line 633
    return-void
.end method

.method public setColorIndex(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 610
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    #@2
    .line 611
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    #@4
    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    #@6
    aget v0, v0, v1

    #@8
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    #@a
    .line 609
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 589
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    #@2
    .line 591
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    #@6
    .line 588
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .param p1, "endTrim"    # F

    #@0
    .prologue
    .line 691
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    #@2
    .line 692
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@5
    .line 690
    return-void
.end method

.method public setInsets(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    #@2
    .line 712
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v2

    #@6
    int-to-float v1, v2

    #@7
    .line 714
    .local v1, "minEdge":F
    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    #@9
    const-wide/16 v4, 0x0

    #@b
    cmpg-double v2, v2, v4

    #@d
    if-lez v2, :cond_0

    #@f
    const/4 v2, 0x0

    #@10
    cmpg-float v2, v1, v2

    #@12
    if-gez v2, :cond_1

    #@14
    .line 715
    :cond_0
    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    #@16
    div-float/2addr v2, v6

    #@17
    float-to-double v2, v2

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@1b
    move-result-wide v2

    #@1c
    double-to-float v0, v2

    #@1d
    .line 719
    .local v0, "insets":F
    :goto_0
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    #@1f
    .line 711
    return-void

    #@20
    .line 717
    .end local v0    # "insets":F
    :cond_1
    div-float v2, v1, v6

    #@22
    float-to-double v2, v2

    #@23
    iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    #@25
    sub-double/2addr v2, v4

    #@26
    double-to-float v0, v2

    #@27
    .restart local v0    # "insets":F
    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    #@0
    .prologue
    .line 702
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    #@2
    .line 703
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@5
    .line 701
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 743
    iget-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 744
    iput-boolean p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    #@6
    .line 745
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@9
    .line 742
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .param p1, "startTrim"    # F

    #@0
    .prologue
    .line 668
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    #@2
    .line 669
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@5
    .line 667
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    #@0
    .prologue
    .line 656
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    #@2
    .line 657
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@7
    .line 658
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    #@a
    .line 655
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    #@0
    .prologue
    .line 771
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    #@2
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    #@4
    .line 772
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    #@6
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    #@8
    .line 773
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    #@a
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    #@c
    .line 770
    return-void
.end method
