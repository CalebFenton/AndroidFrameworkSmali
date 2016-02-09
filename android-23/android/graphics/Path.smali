.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Op;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Direction;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public final mNativePath:J

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 217
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Landroid/graphics/Path$FillType;

    #@3
    .line 218
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 219
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    .line 220
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    .line 221
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    .line 217
    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    #@19
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@6
    .line 40
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@9
    .line 46
    invoke-static {}, Landroid/graphics/Path;->init1()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@f
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    const/4 v2, 0x1

    #@5
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 40
    iput-object v3, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@9
    .line 55
    const-wide/16 v0, 0x0

    #@b
    .line 56
    .local v0, "valNative":J
    if-eqz p1, :cond_0

    #@d
    .line 57
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    #@f
    .line 58
    iget-boolean v2, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@11
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@13
    .line 59
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 60
    new-instance v2, Landroid/graphics/Region;

    #@19
    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@1b
    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    #@1e
    iput-object v2, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@20
    .line 63
    :cond_0
    invoke-static {v0, v1}, Landroid/graphics/Path;->init2(J)J

    #@23
    move-result-wide v2

    #@24
    iput-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@26
    .line 54
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
    .line 500
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 501
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@6
    .line 503
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@8
    if-eq v0, p5, :cond_1

    #@a
    .line 504
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@d
    .line 499
    :goto_0
    return-void

    #@e
    .line 506
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
    .line 507
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

.method private static native native_offset(JFFJ)V
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
    .line 587
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 588
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
    .line 586
    return-void
.end method

.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 7
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    #@0
    .prologue
    .line 576
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
    .line 575
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
    .line 564
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 565
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
    .line 563
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
    .line 551
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 552
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
    .line 550
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 542
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
    .line 541
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 666
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 667
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@7
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_addPath(JJ)V

    #@a
    .line 665
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    #@0
    .prologue
    .line 656
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 657
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
    .line 655
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 676
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 677
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@9
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@b
    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    #@d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addPath(JJJ)V

    #@10
    .line 675
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
    .line 531
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    #@3
    .line 532
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
    .line 530
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 518
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
    .line 517
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
    .line 612
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 613
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
    .line 611
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
    .line 642
    array-length v0, p5

    #@1
    const/16 v1, 0x8

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 643
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    const-string/jumbo v1, "radii[] needs 8 values"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 645
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@11
    .line 646
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
    .line 641
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
    .line 600
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
    .line 599
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    #@0
    .prologue
    .line 626
    if-nez p1, :cond_0

    #@2
    .line 627
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "need rect parameter"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 629
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
    .line 625
    return-void
.end method

.method public approximate(F)[F
    .locals 2
    .param p1, "acceptableError"    # F

    #@0
    .prologue
    .line 777
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
    .line 470
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 471
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
    .line 469
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

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
    .line 452
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
    .line 438
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
    .line 437
    return-void
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 479
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 480
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1}, Landroid/graphics/Path;->native_close(J)V

    #@8
    .line 478
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    #@0
    .prologue
    .line 294
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_computeBounds(JLandroid/graphics/RectF;)V

    #@5
    .line 293
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
    .line 408
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 409
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
    .line 407
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
    .line 748
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Path;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 750
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 746
    return-void

    #@9
    .line 749
    :catchall_0
    move-exception v0

    #@a
    .line 750
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 749
    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 4

    #@0
    .prologue
    .line 231
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
    .line 305
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_incReserve(JI)V

    #@5
    .line 304
    return-void
.end method

.method public isConvex()Z
    .locals 2

    #@0
    .prologue
    .line 182
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
    .line 268
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
    .line 249
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@3
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    #@6
    move-result v0

    #@7
    .line 250
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
    .line 281
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
    .line 341
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 342
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_lineTo(JFF)V

    #@8
    .line 340
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 315
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_moveTo(JFF)V

    #@5
    .line 314
    return-void
.end method

.method final ni()J
    .locals 2

    #@0
    .prologue
    .line 755
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    return-wide v0
.end method

.method public offset(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 704
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 705
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_offset(JFF)V

    #@8
    .line 703
    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 6
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 689
    const-wide/16 v4, 0x0

    #@2
    .line 690
    .local v4, "dstNative":J
    if-eqz p3, :cond_0

    #@4
    .line 691
    iget-wide v4, p3, Landroid/graphics/Path;->mNativePath:J

    #@6
    .line 692
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p3, Landroid/graphics/Path;->isSimplePath:Z

    #@9
    .line 694
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@b
    move v2, p1

    #@c
    move v3, p2

    #@d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_offset(JFFJ)V

    #@10
    .line 688
    return-void
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    #@0
    .prologue
    .line 144
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
    .line 162
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
    .line 163
    iput-boolean v7, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@13
    .line 164
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@16
    .line 165
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 167
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
    .line 371
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 372
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
    .line 370
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
    .line 419
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 420
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
    .line 418
    return-void
.end method

.method public rLineTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

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
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_rLineTo(JFF)V

    #@8
    .line 355
    return-void
.end method

.method public rMoveTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 329
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(JFF)V

    #@5
    .line 328
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
    .line 390
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 391
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
    .line 389
    return-void
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 71
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@4
    .line 72
    iput-object v2, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@6
    .line 73
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@c
    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    #@f
    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    #@12
    move-result-object v0

    #@13
    .line 77
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@15
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_reset(J)V

    #@18
    .line 78
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@1b
    .line 70
    return-void
.end method

.method public rewind()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@4
    .line 87
    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    #@6
    .line 88
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    #@c
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@f
    .line 89
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@11
    invoke-static {v0, v1}, Landroid/graphics/Path;->native_rewind(J)V

    #@14
    .line 85
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 95
    if-eq p0, p1, :cond_0

    #@2
    .line 96
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    #@4
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@6
    .line 97
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@8
    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    #@a
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_set(JJ)V

    #@d
    .line 94
    :cond_0
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 3
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    #@0
    .prologue
    .line 240
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->native_setFillType(JI)V

    #@7
    .line 239
    return-void
.end method

.method public setLastPoint(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 715
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 716
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(JFF)V

    #@8
    .line 714
    return-void
.end method

.method public toggleInverseFillType()V
    .locals 4

    #@0
    .prologue
    .line 257
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    #@5
    move-result v0

    #@6
    .line 258
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@8
    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    #@a
    xor-int/2addr v0, v1

    #@b
    .line 259
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    #@d
    invoke-static {v2, v3, v0}, Landroid/graphics/Path;->native_setFillType(JI)V

    #@10
    .line 256
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 742
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 743
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@5
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@7
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_transform(JJ)V

    #@a
    .line 741
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 728
    const-wide/16 v4, 0x0

    #@2
    .line 729
    .local v4, "dstNative":J
    if-eqz p2, :cond_0

    #@4
    .line 730
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p2, Landroid/graphics/Path;->isSimplePath:Z

    #@7
    .line 731
    iget-wide v4, p2, Landroid/graphics/Path;->mNativePath:J

    #@9
    .line 733
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@b
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_transform(JJJ)V

    #@10
    .line 727
    return-void
.end method
