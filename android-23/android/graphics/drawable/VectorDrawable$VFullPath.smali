.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    const/4 v0, 0x0

    #@4
    .line 1527
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    #@7
    .line 1512
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@9
    .line 1513
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@b
    .line 1515
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@d
    .line 1516
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@f
    .line 1518
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@11
    .line 1519
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@13
    .line 1520
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@15
    .line 1521
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@17
    .line 1523
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@19
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@1b
    .line 1524
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@1d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@1f
    .line 1525
    const/high16 v0, 0x40800000    # 4.0f

    #@21
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@23
    .line 1527
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    const/4 v0, 0x0

    #@4
    .line 1532
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    #@7
    .line 1512
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@9
    .line 1513
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@b
    .line 1515
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@d
    .line 1516
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@f
    .line 1518
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@11
    .line 1519
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@13
    .line 1520
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@15
    .line 1521
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@17
    .line 1523
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@19
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@1b
    .line 1524
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@1d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@1f
    .line 1525
    const/high16 v0, 0x40800000    # 4.0f

    #@21
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@23
    .line 1533
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@25
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@27
    .line 1535
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@29
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@2b
    .line 1536
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@2d
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@2f
    .line 1537
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@31
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@33
    .line 1538
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@35
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@37
    .line 1539
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    #@39
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillRule:I

    #@3b
    .line 1540
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@3d
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@3f
    .line 1541
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@41
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@43
    .line 1542
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@45
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@47
    .line 1543
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@49
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@4b
    .line 1545
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@4d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@4f
    .line 1546
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@51
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@53
    .line 1547
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@55
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@57
    .line 1531
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    #@0
    .prologue
    .line 1551
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1559
    return-object p2

    #@4
    .line 1553
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@6
    return-object v0

    #@7
    .line 1555
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@9
    return-object v0

    #@a
    .line 1557
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    #@c
    return-object v0

    #@d
    .line 1551
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    #@0
    .prologue
    .line 1564
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1572
    return-object p2

    #@4
    .line 1566
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@6
    return-object v0

    #@7
    .line 1568
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@9
    return-object v0

    #@a
    .line 1570
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    #@c
    return-object v0

    #@d
    .line 1564
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1590
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@6
    move-result v3

    #@7
    or-int/2addr v2, v3

    #@8
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@a
    .line 1593
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@10
    .line 1595
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1596
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@17
    .line 1597
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    #@19
    .line 1600
    :cond_0
    const/4 v2, 0x2

    #@1a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 1601
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@20
    .line 1602
    invoke-static {v0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNodes:[Landroid/util/PathParser$PathDataNode;

    #@26
    .line 1606
    :cond_1
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@28
    .line 1605
    const/4 v3, 0x1

    #@29
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@2c
    move-result v2

    #@2d
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@2f
    .line 1608
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@31
    .line 1607
    const/16 v3, 0xc

    #@33
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@36
    move-result v2

    #@37
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@39
    .line 1610
    const/16 v2, 0x8

    #@3b
    .line 1609
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3e
    move-result v2

    #@3f
    .line 1610
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@41
    .line 1609
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@47
    .line 1612
    const/16 v2, 0x9

    #@49
    .line 1611
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4c
    move-result v2

    #@4d
    .line 1612
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@4f
    .line 1611
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    #@52
    move-result-object v2

    #@53
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@55
    .line 1614
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@57
    const/16 v3, 0xa

    #@59
    .line 1613
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5c
    move-result v2

    #@5d
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@5f
    .line 1616
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@61
    .line 1615
    const/4 v3, 0x3

    #@62
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@65
    move-result v2

    #@66
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@68
    .line 1618
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@6a
    .line 1617
    const/16 v3, 0xb

    #@6c
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@6f
    move-result v2

    #@70
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@72
    .line 1620
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@74
    .line 1619
    const/4 v3, 0x4

    #@75
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@78
    move-result v2

    #@79
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@7b
    .line 1622
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@7d
    .line 1621
    const/4 v3, 0x6

    #@7e
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@81
    move-result v2

    #@82
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@84
    .line 1624
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@86
    const/4 v3, 0x7

    #@87
    .line 1623
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@8a
    move-result v2

    #@8b
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@8d
    .line 1626
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@8f
    const/4 v3, 0x5

    #@90
    .line 1625
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@93
    move-result v2

    #@94
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@96
    .line 1588
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1631
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1632
    return-void

    #@5
    .line 1635
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@7
    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    #@9
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 1636
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@10
    .line 1637
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 1630
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1578
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    #@0
    .prologue
    .line 1683
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@2
    return v0
.end method

.method getFillColor()I
    .locals 1

    #@0
    .prologue
    .line 1673
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@2
    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    #@0
    .prologue
    .line 1663
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@2
    return v0
.end method

.method getStrokeColor()I
    .locals 1

    #@0
    .prologue
    .line 1643
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@2
    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    #@0
    .prologue
    .line 1653
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@2
    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    #@0
    .prologue
    .line 1703
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@2
    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    #@0
    .prologue
    .line 1713
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@2
    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    #@0
    .prologue
    .line 1693
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@2
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1583
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    #@2
    .line 1582
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1584
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 1585
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 1581
    return-void
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    #@0
    .prologue
    .line 1688
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@2
    .line 1687
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    #@0
    .prologue
    .line 1678
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@2
    .line 1677
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    #@0
    .prologue
    .line 1668
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@2
    .line 1667
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    #@0
    .prologue
    .line 1648
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@2
    .line 1647
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    #@0
    .prologue
    .line 1658
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@2
    .line 1657
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    #@0
    .prologue
    .line 1708
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@2
    .line 1707
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    #@0
    .prologue
    .line 1718
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@2
    .line 1717
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    #@0
    .prologue
    .line 1698
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@2
    .line 1697
    return-void
.end method
