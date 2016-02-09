.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$ScaleToFit;,
        Landroid/graphics/Matrix$1;
    }
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Matrix$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix$1;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    const-wide/16 v0, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_create(J)J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@b
    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 236
    if-eqz p1, :cond_0

    #@5
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    #@7
    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_create(J)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@d
    .line 235
    return-void

    #@e
    .line 236
    :cond_0
    const-wide/16 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private static checkPointArrays([FI[FII)V
    .locals 3
    .param p0, "src"    # [F
    .param p1, "srcIndex"    # I
    .param p2, "dst"    # [F
    .param p3, "dstIndex"    # I
    .param p4, "pointCount"    # I

    #@0
    .prologue
    .line 583
    shl-int/lit8 v2, p4, 0x1

    #@2
    add-int v1, p1, v2

    #@4
    .line 584
    .local v1, "srcStop":I
    shl-int/lit8 v2, p4, 0x1

    #@6
    add-int v0, p3, v2

    #@8
    .line 585
    .local v0, "dstStop":I
    or-int v2, p4, p1

    #@a
    or-int/2addr v2, p3

    #@b
    or-int/2addr v2, v1

    #@c
    or-int/2addr v2, v0

    #@d
    if-ltz v2, :cond_0

    #@f
    .line 586
    array-length v2, p0

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 587
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@17
    throw v2

    #@18
    .line 586
    :cond_1
    array-length v2, p2

    #@19
    if-gt v0, v2, :cond_0

    #@1b
    .line 581
    return-void
.end method

.method private static native finalizer(J)V
.end method

.method private static native native_create(J)J
.end method

.method private static native native_equals(JJ)Z
.end method

.method private static native native_getValues(J[F)V
.end method

.method private static native native_invert(JJ)Z
.end method

.method private static native native_isAffine(J)Z
.end method

.method private static native native_isIdentity(J)Z
.end method

.method private static native native_mapPoints(J[FI[FIIZ)V
.end method

.method private static native native_mapRadius(JF)F
.end method

.method private static native native_mapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
.end method

.method private static native native_postConcat(JJ)V
.end method

.method private static native native_postRotate(JF)V
.end method

.method private static native native_postRotate(JFFF)V
.end method

.method private static native native_postScale(JFF)V
.end method

.method private static native native_postScale(JFFFF)V
.end method

.method private static native native_postSkew(JFF)V
.end method

.method private static native native_postSkew(JFFFF)V
.end method

.method private static native native_postTranslate(JFF)V
.end method

.method private static native native_preConcat(JJ)V
.end method

.method private static native native_preRotate(JF)V
.end method

.method private static native native_preRotate(JFFF)V
.end method

.method private static native native_preScale(JFF)V
.end method

.method private static native native_preScale(JFFFF)V
.end method

.method private static native native_preSkew(JFF)V
.end method

.method private static native native_preSkew(JFFFF)V
.end method

.method private static native native_preTranslate(JFF)V
.end method

.method private static native native_rectStaysRect(J)Z
.end method

.method private static native native_reset(J)V
.end method

.method private static native native_set(JJ)V
.end method

.method private static native native_setConcat(JJJ)V
.end method

.method private static native native_setPolyToPoly(J[FI[FII)Z
.end method

.method private static native native_setRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_setRotate(JF)V
.end method

.method private static native native_setRotate(JFFF)V
.end method

.method private static native native_setScale(JFF)V
.end method

.method private static native native_setScale(JFFFF)V
.end method

.method private static native native_setSinCos(JFF)V
.end method

.method private static native native_setSinCos(JFFFF)V
.end method

.method private static native native_setSkew(JFF)V
.end method

.method private static native native_setSkew(JFFFF)V
.end method

.method private static native native_setTranslate(JFF)V
.end method

.method private static native native_setValues(J[F)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 283
    instance-of v0, p1, Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 284
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@8
    check-cast p1, Landroid/graphics/Matrix;

    #@a
    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@c
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_equals(JJ)Z

    #@f
    move-result v0

    #@10
    return v0
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
    .line 829
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 831
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 827
    return-void

    #@9
    .line 830
    :catchall_0
    move-exception v0

    #@a
    .line 831
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 830
    throw v0
.end method

.method public getValues([F)V
    .locals 2
    .param p1, "values"    # [F

    #@0
    .prologue
    .line 759
    array-length v0, p1

    #@1
    const/16 v1, 0x9

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 760
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@a
    throw v0

    #@b
    .line 762
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_getValues(J[F)V

    #@10
    .line 758
    return-void
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 293
    const/16 v0, 0x2c

    #@2
    return v0
.end method

.method public invert(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "inverse"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 620
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_invert(JJ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isAffine()Z
    .locals 2

    #@0
    .prologue
    .line 254
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_isAffine(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isIdentity()Z
    .locals 2

    #@0
    .prologue
    .line 244
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_isIdentity(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mapPoints([F)V
    .locals 6
    .param p1, "pts"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 703
    array-length v0, p1

    #@2
    shr-int/lit8 v5, v0, 0x1

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v3, p1

    #@7
    move v4, v2

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    #@b
    .line 702
    return-void
.end method

.method public mapPoints([FI[FII)V
    .locals 8
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    #@0
    .prologue
    .line 636
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    #@3
    .line 637
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@5
    .line 638
    const/4 v7, 0x1

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    move-object v4, p3

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    .line 637
    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->native_mapPoints(J[FI[FIIZ)V

    #@e
    .line 635
    return-void
.end method

.method public mapPoints([F[F)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 672
    array-length v0, p1

    #@2
    array-length v1, p2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 673
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@a
    throw v0

    #@b
    .line 675
    :cond_0
    array-length v0, p1

    #@c
    shr-int/lit8 v5, v0, 0x1

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v3, p2

    #@11
    move v4, v2

    #@12
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    #@15
    .line 671
    return-void
.end method

.method public mapRadius(F)F
    .locals 2
    .param p1, "radius"    # F

    #@0
    .prologue
    .line 753
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_mapRadius(JF)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 744
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "dst"    # Landroid/graphics/RectF;
    .param p2, "src"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 729
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 730
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 732
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@c
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_mapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public mapVectors([F)V
    .locals 6
    .param p1, "vecs"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 716
    array-length v0, p1

    #@2
    shr-int/lit8 v5, v0, 0x1

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v3, p1

    #@7
    move v4, v2

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    #@b
    .line 715
    return-void
.end method

.method public mapVectors([FI[FII)V
    .locals 8
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "vectorCount"    # I

    #@0
    .prologue
    .line 658
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    #@3
    .line 659
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@5
    .line 660
    const/4 v7, 0x0

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    move-object v4, p3

    #@9
    move v5, p4

    #@a
    move v6, p5

    #@b
    .line 659
    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->native_mapPoints(J[FI[FIIZ)V

    #@e
    .line 657
    return-void
.end method

.method public mapVectors([F[F)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 690
    array-length v0, p1

    #@2
    array-length v1, p2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 691
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@a
    throw v0

    #@b
    .line 693
    :cond_0
    array-length v0, p1

    #@c
    shr-int/lit8 v5, v0, 0x1

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v3, p2

    #@11
    move v4, v2

    #@12
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    #@15
    .line 689
    return-void
.end method

.method final ni()J
    .locals 2

    #@0
    .prologue
    .line 836
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    return-wide v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 520
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_postConcat(JJ)V

    #@7
    .line 521
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public postRotate(F)Z
    .locals 2
    .param p1, "degrees"    # F

    #@0
    .prologue
    .line 493
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_postRotate(JF)V

    #@5
    .line 494
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public postRotate(FFF)Z
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    #@0
    .prologue
    .line 484
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->native_postRotate(JFFF)V

    #@5
    .line 485
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public postScale(FF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 475
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_postScale(JFF)V

    #@5
    .line 476
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public postScale(FFFF)Z
    .locals 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 466
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_postScale(JFFFF)V

    #@9
    .line 467
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public postSkew(FF)Z
    .locals 2
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    #@0
    .prologue
    .line 511
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_postSkew(JFF)V

    #@5
    .line 512
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 502
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_postSkew(JFFFF)V

    #@9
    .line 503
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public postTranslate(FF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 457
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_postTranslate(JFF)V

    #@5
    .line 458
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 448
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_preConcat(JJ)V

    #@7
    .line 449
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public preRotate(F)Z
    .locals 2
    .param p1, "degrees"    # F

    #@0
    .prologue
    .line 421
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_preRotate(JF)V

    #@5
    .line 422
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public preRotate(FFF)Z
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    #@0
    .prologue
    .line 412
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->native_preRotate(JFFF)V

    #@5
    .line 413
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public preScale(FF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 403
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_preScale(JFF)V

    #@5
    .line 404
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public preScale(FFFF)Z
    .locals 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 394
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_preScale(JFFFF)V

    #@9
    .line 395
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public preSkew(FF)Z
    .locals 2
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    #@0
    .prologue
    .line 439
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_preSkew(JFF)V

    #@5
    .line 440
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 430
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_preSkew(JFFFF)V

    #@9
    .line 431
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public preTranslate(FF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 385
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_preTranslate(JFF)V

    #@5
    .line 386
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 814
    const/16 v1, 0x9

    #@2
    new-array v0, v1, [F

    #@4
    .line 815
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@7
    .line 816
    const/16 v1, 0x5b

    #@9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@c
    .line 817
    const/4 v1, 0x0

    #@d
    aget v1, v0, v1

    #@f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    const/4 v1, 0x1

    #@19
    aget v1, v0, v1

    #@1b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@1e
    const-string/jumbo v1, ", "

    #@21
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    .line 818
    const/4 v1, 0x2

    #@25
    aget v1, v0, v1

    #@27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@2a
    const-string/jumbo v1, "]["

    #@2d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 819
    const/4 v1, 0x3

    #@31
    aget v1, v0, v1

    #@33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@36
    const-string/jumbo v1, ", "

    #@39
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    const/4 v1, 0x4

    #@3d
    aget v1, v0, v1

    #@3f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@42
    const-string/jumbo v1, ", "

    #@45
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 820
    const/4 v1, 0x5

    #@49
    aget v1, v0, v1

    #@4b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@4e
    const-string/jumbo v1, "]["

    #@51
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    .line 821
    const/4 v1, 0x6

    #@55
    aget v1, v0, v1

    #@57
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@5a
    const-string/jumbo v1, ", "

    #@5d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const/4 v1, 0x7

    #@61
    aget v1, v0, v1

    #@63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@66
    const-string/jumbo v1, ", "

    #@69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 822
    const/16 v1, 0x8

    #@6e
    aget v1, v0, v1

    #@70
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    #@73
    const/16 v1, 0x5d

    #@75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@78
    .line 813
    return-void
.end method

.method public rectStaysRect()Z
    .locals 2

    #@0
    .prologue
    .line 263
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_rectStaysRect(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 298
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_reset(J)V

    #@5
    .line 297
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 271
    if-nez p1, :cond_0

    #@2
    .line 272
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    #@5
    .line 270
    :goto_0
    return-void

    #@6
    .line 274
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@8
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@a
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_set(JJ)V

    #@d
    goto :goto_0
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 6
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 376
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    #@4
    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setConcat(JJJ)V

    #@9
    .line 377
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 7
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    #@0
    .prologue
    .line 606
    const/4 v0, 0x4

    #@1
    if-le p5, v0, :cond_0

    #@3
    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v0

    #@9
    .line 609
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    #@c
    .line 610
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@e
    move-object v2, p1

    #@f
    move v3, p2

    #@10
    move-object v4, p3

    #@11
    move v5, p4

    #@12
    move v6, p5

    #@13
    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_setPolyToPoly(J[FI[FII)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 3
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    #@0
    .prologue
    .line 572
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 573
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 575
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@c
    iget v2, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    #@e
    invoke-static {v0, v1, p1, p2, v2}, Landroid/graphics/Matrix;->native_setRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public setRotate(F)V
    .locals 2
    .param p1, "degrees"    # F

    #@0
    .prologue
    .line 333
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_setRotate(JF)V

    #@5
    .line 332
    return-void
.end method

.method public setRotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    #@0
    .prologue
    .line 326
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->native_setRotate(JFFF)V

    #@5
    .line 325
    return-void
.end method

.method public setScale(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    #@0
    .prologue
    .line 317
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setScale(JFF)V

    #@5
    .line 316
    return-void
.end method

.method public setScale(FFFF)V
    .locals 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 312
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setScale(JFFFF)V

    #@9
    .line 311
    return-void
.end method

.method public setSinCos(FF)V
    .locals 2
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    #@0
    .prologue
    .line 347
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setSinCos(JFF)V

    #@5
    .line 346
    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 6
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 342
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setSinCos(JFFFF)V

    #@9
    .line 341
    return-void
.end method

.method public setSkew(FF)V
    .locals 2
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    #@0
    .prologue
    .line 361
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setSkew(JFF)V

    #@5
    .line 360
    return-void
.end method

.method public setSkew(FFFF)V
    .locals 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    #@0
    .prologue
    .line 356
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setSkew(JFFFF)V

    #@9
    .line 355
    return-void
.end method

.method public setTranslate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 303
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setTranslate(JFF)V

    #@5
    .line 302
    return-void
.end method

.method public setValues([F)V
    .locals 2
    .param p1, "values"    # [F

    #@0
    .prologue
    .line 772
    array-length v0, p1

    #@1
    const/16 v1, 0x9

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 773
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@a
    throw v0

    #@b
    .line 775
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_setValues(J[F)V

    #@10
    .line 771
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 790
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    #@a
    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 798
    const/16 v1, 0x9

    #@2
    new-array v0, v1, [F

    #@4
    .line 799
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@7
    .line 800
    const/16 v1, 0x5b

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 801
    const/4 v1, 0x0

    #@d
    aget v1, v0, v1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    const/4 v1, 0x1

    #@19
    aget v1, v0, v1

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    const-string/jumbo v1, ", "

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 802
    const/4 v1, 0x2

    #@25
    aget v1, v0, v1

    #@27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2a
    const-string/jumbo v1, "]["

    #@2d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 803
    const/4 v1, 0x3

    #@31
    aget v1, v0, v1

    #@33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@36
    const-string/jumbo v1, ", "

    #@39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    const/4 v1, 0x4

    #@3d
    aget v1, v0, v1

    #@3f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@42
    const-string/jumbo v1, ", "

    #@45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 804
    const/4 v1, 0x5

    #@49
    aget v1, v0, v1

    #@4b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4e
    const-string/jumbo v1, "]["

    #@51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 805
    const/4 v1, 0x6

    #@55
    aget v1, v0, v1

    #@57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5a
    const-string/jumbo v1, ", "

    #@5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    const/4 v1, 0x7

    #@61
    aget v1, v0, v1

    #@63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@66
    const-string/jumbo v1, ", "

    #@69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 806
    const/16 v1, 0x8

    #@6e
    aget v1, v0, v1

    #@70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@73
    const/16 v1, 0x5d

    #@75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 797
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 781
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Matrix{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 782
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 783
    const/16 v1, 0x7d

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method
