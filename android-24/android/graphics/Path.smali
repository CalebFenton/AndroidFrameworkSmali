.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public mNativePath:J

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 232
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Landroid/graphics/Path$FillType;

    #@3
    .line 233
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 234
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    .line 235
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    .line 236
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    .line 232
    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    #@19
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@9
    .line 49
    invoke-static {}, Landroid/graphics/Path;->init1()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@f
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    const/4 v2, 0x1

    #@5
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 43
    iput-object v3, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@9
    .line 58
    const-wide/16 v0, 0x0

    #@b
    .line 59
    .local v0, "valNative":J
    if-eqz p1, :cond_0

    #@d
    .line 60
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    #@f
    .line 61
    iget-boolean v2, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@11
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@13
    .line 62
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 63
    new-instance v2, Landroid/graphics/Region;

    #@19
    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@1b
    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    #@1e
    iput-object v2, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@20
    .line 66
    :cond_0
    invoke-static {v0, v1}, Landroid/graphics/Path;->init2(J)J

    #@23
    move-result-wide v2

    #@24
    iput-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@26
    .line 57
    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 516
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@6
    .line 518
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@8
    if-eq v0, p5, :cond_1

    #@a
    .line 519
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@d
    .line 514
    :goto_0
    return-void

    #@e
    .line 521
    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@10
    if-nez v0, :cond_2

    #@12
    new-instance v0, Landroid/graphics/Region;

    #@14
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@17
    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@19
    .line 522
    :cond_2
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@1b
    float-to-int v1, p1

    #@1c
    float-to-int v2, p2

    #@1d
    float-to-int v3, p3

    #@1e
    float-to-int v4, p4

    #@1f
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@24
    goto :goto_0
.end method

.method private static native finalizer(J)V
.end method

.method private static native init1()J
.end method

.method private static native init2(J)J
.end method

.method private static native native_addArc(JFFFFFF)V
.end method

.method private static native native_addCircle(JFFFI)V
.end method

.method private static native native_addOval(JFFFFI)V
.end method

.method private static native native_addPath(JJ)V
.end method

.method private static native native_addPath(JJFF)V
.end method

.method private static native native_addPath(JJJ)V
.end method

.method private static native native_addRect(JFFFFI)V
.end method

.method private static native native_addRoundRect(JFFFFFFI)V
.end method

.method private static native native_addRoundRect(JFFFF[FI)V
.end method

.method private static native native_approximate(JF)[F
.end method

.method private static native native_arcTo(JFFFFFFZ)V
.end method

.method private static native native_close(J)V
.end method

.method private static native native_computeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native native_cubicTo(JFFFFFF)V
.end method

.method private static native native_getFillType(J)I
.end method

.method private static native native_incReserve(JI)V
.end method

.method private static native native_isConvex(J)Z
.end method

.method private static native native_isEmpty(J)Z
.end method

.method private static native native_isRect(JLandroid/graphics/RectF;)Z
.end method

.method private static native native_lineTo(JFF)V
.end method

.method private static native native_moveTo(JFF)V
.end method

.method private static native native_offset(JFF)V
.end method

.method private static native native_op(JJIJ)Z
.end method

.method private static native native_quadTo(JFFFF)V
.end method

.method private static native native_rCubicTo(JFFFFFF)V
.end method

.method private static native native_rLineTo(JFF)V
.end method

.method private static native native_rMoveTo(JFF)V
.end method

.method private static native native_rQuadTo(JFFFF)V
.end method

.method private static native native_reset(J)V
.end method

.method private static native native_rewind(J)V
.end method

.method private static native native_set(JJ)V
.end method

.method private static native native_setFillType(JI)V
.end method

.method private static native native_setLastPoint(JFF)V
.end method

.method private static native native_transform(JJ)V
.end method

.method private static native native_transform(JJJ)V
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    #@0
    .prologue
    .line 602
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 603
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    move v6, p5

    #@a
    move v7, p6

    #@b
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_addArc(JFFFFFF)V

    #@e
    .line 601
    return-void
.end method

.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 7
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    #@0
    .prologue
    .line 591
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move v5, p2

    #@a
    move v6, p3

    #@b
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    #@e
    .line 590
    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 580
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget v5, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addCircle(JFFFI)V

    #@d
    .line 578
    return-void
.end method

.method public addOval(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 566
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 567
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_addOval(JFFFFI)V

    #@e
    .line 565
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 557
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move-object v5, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    #@d
    .line 556
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 681
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 682
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@7
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_addPath(JJ)V

    #@a
    .line 680
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    #@0
    .prologue
    .line 671
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 672
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@7
    move v4, p2

    #@8
    move v5, p3

    #@9
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addPath(JJFF)V

    #@c
    .line 670
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 691
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 692
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@9
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@b
    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    #@d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addPath(JJJ)V

    #@10
    .line 690
    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 546
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    #@3
    .line 547
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_addRect(JFFFFI)V

    #@e
    .line 545
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 533
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move-object v5, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@d
    .line 532
    return-void
.end method

.method public addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 627
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 628
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move-object/from16 v0, p7

    #@7
    iget v10, v0, Landroid/graphics/Path$Direction;->nativeInt:I

    #@9
    move v4, p1

    #@a
    move v5, p2

    #@b
    move v6, p3

    #@c
    move v7, p4

    #@d
    move/from16 v8, p5

    #@f
    move/from16 v9, p6

    #@11
    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->native_addRoundRect(JFFFFFFI)V

    #@14
    .line 626
    return-void
.end method

.method public addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 657
    array-length v0, p5

    #@1
    const/16 v1, 0x8

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 658
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    const-string/jumbo v1, "radii[] needs 8 values"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 660
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@11
    .line 661
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@13
    iget v7, p6, Landroid/graphics/Path$Direction;->nativeInt:I

    #@15
    move v2, p1

    #@16
    move v3, p2

    #@17
    move v4, p3

    #@18
    move v5, p4

    #@19
    move-object v6, p5

    #@1a
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_addRoundRect(JFFFF[FI)V

    #@1d
    .line 656
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 615
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move v5, p2

    #@a
    move v6, p3

    #@b
    move-object v7, p4

    #@c
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    #@f
    .line 614
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 641
    if-nez p1, :cond_0

    #@2
    .line 642
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "need rect parameter"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 644
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@d
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@f
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@11
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@13
    move-object v0, p0

    #@14
    move-object v5, p2

    #@15
    move-object v6, p3

    #@16
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    #@19
    .line 640
    return-void
.end method

.method public approximate(F)[F
    .locals 2
    .param p1, "acceptableError"    # F

    #@0
    .prologue
    .line 801
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_approximate(JF)[F

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public arcTo(FFFFFFZ)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "forceMoveTo"    # Z

    #@0
    .prologue
    .line 485
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 486
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    move v6, p5

    #@a
    move v7, p6

    #@b
    move/from16 v8, p7

    #@d
    invoke-static/range {v0 .. v8}, Landroid/graphics/Path;->native_arcTo(JFFFFFFZ)V

    #@10
    .line 484
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    #@0
    .prologue
    .line 468
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    const/4 v7, 0x0

    #@9
    move-object v0, p0

    #@a
    move v5, p2

    #@b
    move v6, p3

    #@c
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    #@f
    .line 467
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    #@0
    .prologue
    .line 453
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v3, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    move-object v0, p0

    #@9
    move v5, p2

    #@a
    move v6, p3

    #@b
    move v7, p4

    #@c
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    #@f
    .line 452
    return-void
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 494
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 495
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1}, Landroid/graphics/Path;->native_close(J)V

    #@8
    .line 493
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    #@0
    .prologue
    .line 309
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_computeBounds(JLandroid/graphics/RectF;)V

    #@5
    .line 308
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    #@0
    .prologue
    .line 423
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 424
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    move v6, p5

    #@a
    move v7, p6

    #@b
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_cubicTo(JFFFFFF)V

    #@e
    .line 422
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 771
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Path;->finalizer(J)V

    #@5
    .line 772
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 774
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 769
    return-void

    #@d
    .line 773
    :catchall_0
    move-exception v0

    #@e
    .line 774
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@11
    .line 773
    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 4

    #@0
    .prologue
    .line 246
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    #@2
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public incReserve(I)V
    .locals 2
    .param p1, "extraPtCount"    # I

    #@0
    .prologue
    .line 320
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_incReserve(JI)V

    #@5
    .line 319
    return-void
.end method

.method public isConvex()Z
    .locals 2

    #@0
    .prologue
    .line 197
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Path;->native_isConvex(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 283
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Path;->native_isEmpty(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInverseFillType()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 264
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@3
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    #@6
    move-result v0

    #@7
    .line 265
    .local v0, "ft":I
    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@9
    iget v2, v2, Landroid/graphics/Path$FillType;->nativeInt:I

    #@b
    and-int/2addr v2, v0

    #@c
    if-eqz v2, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    return v1
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 296
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_isRect(JLandroid/graphics/RectF;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 356
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 357
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_lineTo(JFF)V

    #@8
    .line 355
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 330
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_moveTo(JFF)V

    #@5
    .line 329
    return-void
.end method

.method final ni()J
    .locals 2

    #@0
    .prologue
    .line 779
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    return-wide v0
.end method

.method public offset(FF)V
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 719
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 721
    return-void

    #@9
    .line 723
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    float-to-double v0, p1

    #@e
    float-to-double v2, p1

    #@f
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    #@12
    move-result-wide v2

    #@13
    cmpl-double v0, v0, v2

    #@15
    if-nez v0, :cond_1

    #@17
    float-to-double v0, p2

    #@18
    float-to-double v2, p2

    #@19
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    #@1c
    move-result-wide v2

    #@1d
    cmpl-double v0, v0, v2

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 724
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@23
    float-to-int v1, p1

    #@24
    float-to-int v2, p2

    #@25
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    #@28
    .line 728
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2a
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_offset(JFF)V

    #@2d
    .line 718
    return-void

    #@2e
    .line 726
    :cond_1
    const/4 v0, 0x0

    #@2f
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@31
    goto :goto_0
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 704
    if-eqz p3, :cond_0

    #@2
    .line 705
    invoke-virtual {p3, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    #@5
    .line 709
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    #@8
    .line 703
    return-void

    #@9
    .line 707
    :cond_0
    move-object p3, p0

    #@a
    goto :goto_0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    #@0
    .prologue
    .line 159
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 8
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 177
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    #@3
    iget-wide v2, p2, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    #@8
    move-result v4

    #@9
    iget-wide v5, p0, Landroid/graphics/Path;->mNativePath:J

    #@b
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_op(JJIJ)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 178
    iput-boolean v7, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@13
    .line 179
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@16
    .line 180
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 182
    :cond_0
    return v7
.end method

.method public quadTo(FFFF)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    #@0
    .prologue
    .line 386
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 387
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_quadTo(JFFFF)V

    #@c
    .line 385
    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    #@0
    .prologue
    .line 434
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 435
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    move v6, p5

    #@a
    move v7, p6

    #@b
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_rCubicTo(JFFFFFF)V

    #@e
    .line 433
    return-void
.end method

.method public rLineTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 372
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_rLineTo(JFF)V

    #@8
    .line 370
    return-void
.end method

.method public rMoveTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 344
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(JFF)V

    #@5
    .line 343
    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 6
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    #@0
    .prologue
    .line 405
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 406
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_rQuadTo(JFFFF)V

    #@c
    .line 404
    return-void
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 74
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@4
    .line 75
    iput-object v2, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@6
    .line 76
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@c
    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    #@f
    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    #@12
    move-result-object v0

    #@13
    .line 80
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@15
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_reset(J)V

    #@18
    .line 81
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@1b
    .line 73
    return-void
.end method

.method public rewind()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 89
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@4
    .line 90
    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@6
    .line 91
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@c
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@f
    .line 92
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@11
    invoke-static {v0, v1}, Landroid/graphics/Path;->native_rewind(J)V

    #@14
    .line 88
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 98
    if-ne p0, p1, :cond_0

    #@2
    .line 99
    return-void

    #@3
    .line 101
    :cond_0
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@5
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 102
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@9
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_set(JJ)V

    #@e
    .line 103
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@10
    if-nez v0, :cond_1

    #@12
    .line 104
    return-void

    #@13
    .line 107
    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@15
    if-eqz v0, :cond_3

    #@17
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 108
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@1d
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@22
    .line 97
    :cond_2
    :goto_0
    return-void

    #@23
    .line 109
    :cond_3
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@25
    if-eqz v0, :cond_4

    #@27
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@29
    if-nez v0, :cond_4

    #@2b
    .line 110
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@2d
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@30
    goto :goto_0

    #@31
    .line 111
    :cond_4
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 112
    new-instance v0, Landroid/graphics/Region;

    #@37
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@39
    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    #@3c
    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@3e
    goto :goto_0
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 3
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    #@0
    .prologue
    .line 255
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->native_setFillType(JI)V

    #@7
    .line 254
    return-void
.end method

.method public setLastPoint(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 738
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 739
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(JFF)V

    #@8
    .line 737
    return-void
.end method

.method public toggleInverseFillType()V
    .locals 4

    #@0
    .prologue
    .line 272
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    #@5
    move-result v0

    #@6
    .line 273
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@8
    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    #@a
    xor-int/2addr v0, v1

    #@b
    .line 274
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@d
    invoke-static {v2, v3, v0}, Landroid/graphics/Path;->native_setFillType(JI)V

    #@10
    .line 271
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 765
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 766
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@7
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_transform(JJ)V

    #@a
    .line 764
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 751
    const-wide/16 v4, 0x0

    #@2
    .line 752
    .local v4, "dstNative":J
    if-eqz p2, :cond_0

    #@4
    .line 753
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p2, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 754
    iget-wide v4, p2, Landroid/graphics/Path;->mNativePath:J

    #@9
    .line 756
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@b
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_transform(JJJ)V

    #@10
    .line 750
    return-void
.end method
