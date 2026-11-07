.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$NoImagePreloadHolder;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;,
        Landroid/graphics/Path$Direction;
    }
.end annotation


# static fields
.field static final greylist-max-o sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public final greylist-max-o mNativePath:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Path;->nGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/graphics/Path;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    .line 60
    sget-object v0, Landroid/graphics/Path$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;)V
    .registers 5
    .param p1, "src"    # Landroid/graphics/Path;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_8

    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    invoke-static {v0, v1}, Landroid/graphics/Path;->nInit(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    .line 70
    sget-object v0, Landroid/graphics/Path$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 71
    return-void
.end method

.method private static native greylist-max-o nAddArc(JFFFFFF)V
.end method

.method private static native greylist-max-o nAddCircle(JFFFI)V
.end method

.method private static native greylist-max-o nAddOval(JFFFFI)V
.end method

.method private static native greylist-max-o nAddPath(JJ)V
.end method

.method private static native greylist-max-o nAddPath(JJFF)V
.end method

.method private static native greylist-max-o nAddPath(JJJ)V
.end method

.method private static native greylist-max-o nAddRect(JFFFFI)V
.end method

.method private static native greylist-max-o nAddRoundRect(JFFFFFFI)V
.end method

.method private static native greylist-max-o nAddRoundRect(JFFFF[FI)V
.end method

.method private static native greylist-max-o nApproximate(JF)[F
.end method

.method private static native greylist-max-o nArcTo(JFFFFFFZ)V
.end method

.method private static native greylist-max-o nClose(J)V
.end method

.method private static native greylist-max-o nComputeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native blacklist nConicTo(JFFFFF)V
.end method

.method private static native greylist-max-o nCubicTo(JFFFFFF)V
.end method

.method private static native greylist-max-o nGetFillType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFinalizer()J
.end method

.method private static native blacklist nGetGenerationID(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIncReserve(JI)V
.end method

.method private static native greylist-max-o nInit()J
.end method

.method private static native greylist-max-o nInit(J)J
.end method

.method private static native blacklist nInterpolate(JJFJ)Z
.end method

.method private static native greylist-max-o nIsConvex(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nIsInterpolatable(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsRect(JLandroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nLineTo(JFF)V
.end method

.method private static native greylist-max-o nMoveTo(JFF)V
.end method

.method private static native greylist-max-o nOffset(JFF)V
.end method

.method private static native greylist-max-o nOp(JJIJ)Z
.end method

.method private static native greylist-max-o nQuadTo(JFFFF)V
.end method

.method private static native blacklist nRConicTo(JFFFFF)V
.end method

.method private static native greylist-max-o nRCubicTo(JFFFFFF)V
.end method

.method private static native greylist-max-o nRLineTo(JFF)V
.end method

.method private static native greylist-max-o nRMoveTo(JFF)V
.end method

.method private static native greylist-max-o nRQuadTo(JFFFF)V
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRewind(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
.end method

.method private static native greylist-max-o nSetFillType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLastPoint(JFF)V
.end method

.method private static native greylist-max-o nTransform(JJ)V
.end method

.method private static native greylist-max-o nTransform(JJJ)V
.end method


# virtual methods
.method public whitelist addArc(FFFFFF)V
    .registers 15
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 632
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v2, "left":F
    .local v3, "top":F
    .local v4, "right":F
    .local v5, "bottom":F
    .local v6, "startAngle":F
    .local v7, "sweepAngle":F
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nAddArc(JFFFFFF)V

    .line 633
    return-void
.end method

.method public whitelist addArc(Landroid/graphics/RectF;FF)V
    .registers 11
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 621
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    .end local p2    # "startAngle":F
    .end local p3    # "sweepAngle":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 622
    return-void
.end method

.method public whitelist addCircle(FFFLandroid/graphics/Path$Direction;)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 610
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v5, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "x":F
    .end local p2    # "y":F
    .end local p3    # "radius":F
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "radius":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nAddCircle(JFFFI)V

    .line 611
    return-void
.end method

.method public whitelist addOval(FFFFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 598
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v2, "left":F
    .local v3, "top":F
    .local v4, "right":F
    .local v5, "bottom":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nAddOval(JFFFFI)V

    .line 599
    return-void
.end method

.method public whitelist addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .registers 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 589
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    .end local p2    # "dir":Landroid/graphics/Path$Direction;
    .local v5, "dir":Landroid/graphics/Path$Direction;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 590
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .line 707
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nAddPath(JJ)V

    .line 708
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;FF)V
    .registers 10
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 698
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    move v4, p2

    move v5, p3

    .end local p2    # "dx":F
    .end local p3    # "dy":F
    .local v4, "dx":F
    .local v5, "dy":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nAddPath(JJFF)V

    .line 699
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 9
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 716
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nAddPath(JJJ)V

    .line 717
    return-void
.end method

.method public whitelist addRect(FFFFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 579
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v2, "left":F
    .local v3, "top":F
    .local v4, "right":F
    .local v5, "bottom":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nAddRect(JFFFFI)V

    .line 580
    return-void
.end method

.method public whitelist addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .registers 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 566
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    .end local p2    # "dir":Landroid/graphics/Path$Direction;
    .local v5, "dir":Landroid/graphics/Path$Direction;
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 567
    return-void
.end method

.method public whitelist addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .registers 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    .line 656
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v9, p7

    iget v8, v9, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Path;->nAddRoundRect(JFFFFFFI)V

    .line 657
    return-void
.end method

.method public whitelist addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .registers 16
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .line 685
    array-length v0, p5

    const/16 v1, 0x8

    if-lt v0, v1, :cond_13

    .line 688
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move-object v8, p6

    iget v7, v8, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nAddRoundRect(JFFFF[FI)V

    .line 689
    return-void

    .line 686
    :cond_13
    move-object v8, p6

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 644
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p2    # "rx":F
    .end local p3    # "ry":F
    .end local p4    # "dir":Landroid/graphics/Path$Direction;
    .local v5, "rx":F
    .local v6, "ry":F
    .local v7, "dir":Landroid/graphics/Path$Direction;
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 645
    return-void
.end method

.method public whitelist addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    .line 669
    if-eqz p1, :cond_11

    .line 672
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    .end local p2    # "radii":[F
    .end local p3    # "dir":Landroid/graphics/Path$Direction;
    .local v5, "radii":[F
    .local v6, "dir":Landroid/graphics/Path$Direction;
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 673
    return-void

    .line 670
    .end local v5    # "radii":[F
    .end local v6    # "dir":Landroid/graphics/Path$Direction;
    .restart local p2    # "radii":[F
    .restart local p3    # "dir":Landroid/graphics/Path$Direction;
    :cond_11
    move-object v5, p2

    move-object v6, p3

    .end local p2    # "radii":[F
    .end local p3    # "dir":Landroid/graphics/Path$Direction;
    .restart local v5    # "radii":[F
    .restart local v6    # "dir":Landroid/graphics/Path$Direction;
    new-instance p2, Ljava/lang/NullPointerException;

    const-string/jumbo p3, "need rect parameter"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist approximate(F)[F
    .registers 4
    .param p1, "acceptableError"    # F

    .line 806
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 809
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nApproximate(JF)[F

    move-result-object v0

    return-object v0

    .line 807
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AcceptableError must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arcTo(FFFFFFZ)V
    .registers 17
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "forceMoveTo"    # Z

    .line 532
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Path;->nArcTo(JFFFFFFZ)V

    .line 533
    return-void
.end method

.method public whitelist arcTo(Landroid/graphics/RectF;FF)V
    .registers 12
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 515
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    .end local p2    # "startAngle":F
    .end local p3    # "sweepAngle":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 516
    return-void
.end method

.method public whitelist arcTo(Landroid/graphics/RectF;FFZ)V
    .registers 13
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    .line 500
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "startAngle":F
    .end local p3    # "sweepAngle":F
    .end local p4    # "forceMoveTo":Z
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    .local v7, "forceMoveTo":Z
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 501
    return-void
.end method

.method public whitelist close()V
    .registers 3

    .line 540
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nClose(J)V

    .line 541
    return-void
.end method

.method public whitelist computeBounds(Landroid/graphics/RectF;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 319
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nComputeBounds(JLandroid/graphics/RectF;)V

    .line 320
    return-void
.end method

.method public whitelist computeBounds(Landroid/graphics/RectF;Z)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    .line 307
    invoke-virtual {p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;)V

    .line 308
    return-void
.end method

.method public whitelist conicTo(FFFFF)V
    .registers 13
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "weight"    # F

    .line 434
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .end local p5    # "weight":F
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    .local v6, "weight":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nConicTo(JFFFFF)V

    .line 435
    return-void
.end method

.method public whitelist cubicTo(FFFFFF)V
    .registers 15
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 472
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .end local p5    # "x3":F
    .end local p6    # "y3":F
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    .local v6, "x3":F
    .local v7, "y3":F
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nCubicTo(JFFFFFF)V

    .line 473
    return-void
.end method

.method public whitelist getFillType()Landroid/graphics/Path$FillType;
    .registers 4

    .line 244
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getGenerationId()I
    .registers 3

    .line 820
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetGenerationID(J)I

    move-result v0

    return v0
.end method

.method public whitelist getPathIterator()Landroid/graphics/PathIterator;
    .registers 2

    .line 109
    new-instance v0, Landroid/graphics/PathIterator;

    invoke-direct {v0, p0}, Landroid/graphics/PathIterator;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public whitelist incReserve(I)V
    .registers 4
    .param p1, "extraPtCount"    # I

    .line 330
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIncReserve(JI)V

    .line 331
    return-void
.end method

.method public whitelist interpolate(Landroid/graphics/Path;FLandroid/graphics/Path;)Z
    .registers 11
    .param p1, "otherPath"    # Landroid/graphics/Path;
    .param p2, "t"    # F
    .param p3, "interpolatedPath"    # Landroid/graphics/Path;

    .line 849
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v5, p3, Landroid/graphics/Path;->mNativePath:J

    move v4, p2

    .end local p2    # "t":F
    .local v4, "t":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nInterpolate(JJFJ)Z

    move-result p2

    return p2
.end method

.method public whitelist isConvex()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsConvex(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 3

    .line 281
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isInterpolatable(Landroid/graphics/Path;)Z
    .registers 6
    .param p1, "otherPath"    # Landroid/graphics/Path;

    .line 833
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nIsInterpolatable(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist isInverseFillType()Z
    .registers 3

    .line 262
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 263
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public whitelist isRect(Landroid/graphics/RectF;)Z
    .registers 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 294
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIsRect(JLandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public whitelist lineTo(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 366
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nLineTo(JFF)V

    .line 367
    return-void
.end method

.method public whitelist moveTo(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 340
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nMoveTo(JFF)V

    .line 341
    return-void
.end method

.method final greylist-max-o mutateNI()J
    .registers 3

    .line 783
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public whitelist offset(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 743
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nOffset(JFF)V

    .line 744
    return-void
.end method

.method public whitelist offset(FFLandroid/graphics/Path;)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    .line 728
    if-eqz p3, :cond_6

    .line 729
    invoke-virtual {p3, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_7

    .line 731
    :cond_6
    move-object p3, p0

    .line 733
    :goto_7
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    .line 734
    return-void
.end method

.method public whitelist op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .registers 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    .line 155
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .registers 11
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    .line 173
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p2, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v4

    iget-wide v5, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nOp(JJIJ)Z

    move-result v0

    return v0
.end method

.method public whitelist quadTo(FFFF)V
    .registers 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 394
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nQuadTo(JFFFF)V

    .line 395
    return-void
.end method

.method public whitelist rConicTo(FFFFF)V
    .registers 13
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F
    .param p5, "weight"    # F

    .line 455
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "dx1":F
    .end local p2    # "dy1":F
    .end local p3    # "dx2":F
    .end local p4    # "dy2":F
    .end local p5    # "weight":F
    .local v2, "dx1":F
    .local v3, "dy1":F
    .local v4, "dx2":F
    .local v5, "dy2":F
    .local v6, "weight":F
    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nRConicTo(JFFFFF)V

    .line 456
    return-void
.end method

.method public whitelist rCubicTo(FFFFFF)V
    .registers 15
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 482
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .end local p5    # "x3":F
    .end local p6    # "y3":F
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    .local v6, "x3":F
    .local v7, "y3":F
    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nRCubicTo(JFFFFFF)V

    .line 483
    return-void
.end method

.method public whitelist rLineTo(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 380
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRLineTo(JFF)V

    .line 381
    return-void
.end method

.method public whitelist rMoveTo(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 354
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRMoveTo(JFF)V

    .line 355
    return-void
.end method

.method public whitelist rQuadTo(FFFF)V
    .registers 11
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    .line 412
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "dx1":F
    .end local p2    # "dy1":F
    .end local p3    # "dx2":F
    .end local p4    # "dy2":F
    .local v2, "dx1":F
    .local v3, "dy1":F
    .local v4, "dx2":F
    .local v5, "dy2":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nRQuadTo(JFFFF)V

    .line 413
    return-void
.end method

.method public final greylist-max-o readOnlyNI()J
    .registers 3

    .line 779
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public whitelist reset()V
    .registers 4

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 81
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nReset(J)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 83
    return-void
.end method

.method public whitelist rewind()V
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nRewind(J)V

    .line 91
    return-void
.end method

.method public whitelist set(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .line 96
    if-ne p0, p1, :cond_3

    .line 97
    return-void

    .line 99
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nSet(JJ)V

    .line 100
    return-void
.end method

.method public whitelist setFillType(Landroid/graphics/Path$FillType;)V
    .registers 5
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    .line 253
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 254
    return-void
.end method

.method public whitelist setLastPoint(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 753
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nSetLastPoint(JFF)V

    .line 754
    return-void
.end method

.method public whitelist toggleInverseFillType()V
    .registers 4

    .line 270
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 271
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    xor-int/2addr v0, v1

    .line 272
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 273
    return-void
.end method

.method public whitelist transform(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 774
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nTransform(JJ)V

    .line 775
    return-void
.end method

.method public whitelist transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 9
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 765
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    if-eqz p2, :cond_b

    iget-wide v4, p2, Landroid/graphics/Path;->mNativePath:J

    goto :goto_d

    :cond_b
    const-wide/16 v4, 0x0

    :goto_d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nTransform(JJJ)V

    .line 766
    return-void
.end method
