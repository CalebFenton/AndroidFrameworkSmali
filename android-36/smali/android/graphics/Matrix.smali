.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$ExtraNatives;,
        Landroid/graphics/Matrix$NoImagePreloadHolder;,
        Landroid/graphics/Matrix$ScaleToFit;
    }
.end annotation


# static fields
.field public static final whitelist IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field public static final whitelist MPERSP_0:I = 0x6

.field public static final whitelist MPERSP_1:I = 0x7

.field public static final whitelist MPERSP_2:I = 0x8

.field public static final whitelist MSCALE_X:I = 0x0

.field public static final whitelist MSCALE_Y:I = 0x4

.field public static final whitelist MSKEW_X:I = 0x1

.field public static final whitelist MSKEW_Y:I = 0x3

.field public static final whitelist MTRANS_X:I = 0x2

.field public static final whitelist MTRANS_Y:I = 0x5


# instance fields
.field private final blacklist native_instance:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/graphics/Matrix$1;

    invoke-direct {v0}, Landroid/graphics/Matrix$1;-><init>()V

    sput-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Matrix$ExtraNatives;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    .line 245
    sget-object v0, Landroid/graphics/Matrix$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 246
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-eqz p1, :cond_8

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    invoke-static {v0, v1}, Landroid/graphics/Matrix$ExtraNatives;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    .line 255
    sget-object v0, Landroid/graphics/Matrix$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 256
    return-void
.end method

.method private static greylist-max-o checkPointArrays([FI[FII)V
    .registers 8
    .param p0, "src"    # [F
    .param p1, "srcIndex"    # I
    .param p2, "dst"    # [F
    .param p3, "dstIndex"    # I
    .param p4, "pointCount"    # I

    .line 584
    shl-int/lit8 v0, p4, 0x1

    add-int/2addr v0, p1

    .line 585
    .local v0, "srcStop":I
    shl-int/lit8 v1, p4, 0x1

    add-int/2addr v1, p3

    .line 586
    .local v1, "dstStop":I
    or-int v2, p4, p1

    or-int/2addr v2, p3

    or-int/2addr v2, v0

    or-int/2addr v2, v1

    if-ltz v2, :cond_14

    array-length v2, p0

    if-gt v0, v2, :cond_14

    array-length v2, p2

    if-gt v1, v2, :cond_14

    .line 590
    return-void

    .line 588
    :cond_14
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private static native greylist-max-o nEquals(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetValues(J[F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nInvert(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsAffine(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsIdentity(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nMapPoints(J[FI[FIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nMapRadius(JF)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nMapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostRotate(JFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostScale(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostSkew(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPostTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreRotate(JFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreScale(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreSkew(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nPreTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRectStaysRect(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetConcat(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPolyToPoly(J[FI[FII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRotate(JFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetScale(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSinCos(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSinCos(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSkew(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetValues(J[F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o toShortString(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 789
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 790
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 791
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 797
    const-string v2, "]["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 809
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    return-void
.end method


# virtual methods
.method public final whitelist dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 820
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 821
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 822
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 823
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 824
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 826
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 828
    const-string v2, "]["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 830
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 832
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 834
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 836
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 838
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 840
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 842
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 301
    instance-of v0, p1, Landroid/graphics/Matrix;

    if-nez v0, :cond_6

    .line 302
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move-object v2, p1

    check-cast v2, Landroid/graphics/Matrix;

    iget-wide v2, v2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nEquals(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getValues([F)V
    .registers 4
    .param p1, "values"    # [F

    .line 754
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 757
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nGetValues(J[F)V

    .line 758
    return-void

    .line 755
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 313
    const/16 v0, 0x2c

    return v0
.end method

.method public whitelist invert(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "inverse"    # Landroid/graphics/Matrix;

    .line 620
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nInvert(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist isAffine()Z
    .registers 3

    .line 272
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nIsAffine(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isIdentity()Z
    .registers 3

    .line 262
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nIsIdentity(J)Z

    move-result v0

    return v0
.end method

.method public whitelist mapPoints([F)V
    .registers 9
    .param p1, "pts"    # [F

    .line 700
    array-length v0, p1

    shr-int/lit8 v6, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "pts":[F
    .local v2, "pts":[F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 701
    return-void
.end method

.method public whitelist mapPoints([FI[FII)V
    .registers 14
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .line 636
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 637
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "dst":[F
    .end local p2    # "dstIndex":I
    .end local p3    # "src":[F
    .end local p4    # "srcIndex":I
    .end local p5    # "pointCount":I
    .local v2, "dst":[F
    .local v3, "dstIndex":I
    .local v4, "src":[F
    .local v5, "srcIndex":I
    .local v6, "pointCount":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->nMapPoints(J[FI[FIIZ)V

    .line 639
    return-void
.end method

.method public whitelist mapPoints([F[F)V
    .registers 10
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .line 670
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_10

    .line 673
    array-length v0, p1

    shr-int/lit8 v6, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "dst":[F
    .end local p2    # "src":[F
    .local v2, "dst":[F
    .local v4, "src":[F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 674
    return-void

    .line 671
    .end local v2    # "dst":[F
    .end local v4    # "src":[F
    .restart local p1    # "dst":[F
    .restart local p2    # "src":[F
    :cond_10
    move-object v2, p1

    .end local p1    # "dst":[F
    .restart local v2    # "dst":[F
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist mapRadius(F)F
    .registers 4
    .param p1, "radius"    # F

    .line 747
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nMapRadius(JF)F

    move-result v0

    return v0
.end method

.method public whitelist mapRect(Landroid/graphics/RectF;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 739
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public whitelist mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "dst"    # Landroid/graphics/RectF;
    .param p2, "src"    # Landroid/graphics/RectF;

    .line 724
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 727
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nMapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0

    .line 725
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist mapVectors([F)V
    .registers 9
    .param p1, "vecs"    # [F

    .line 711
    array-length v0, p1

    shr-int/lit8 v6, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "vecs":[F
    .local v2, "vecs":[F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 712
    return-void
.end method

.method public whitelist mapVectors([FI[FII)V
    .registers 14
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "vectorCount"    # I

    .line 656
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 657
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "dst":[F
    .end local p2    # "dstIndex":I
    .end local p3    # "src":[F
    .end local p4    # "srcIndex":I
    .end local p5    # "vectorCount":I
    .local v2, "dst":[F
    .local v3, "dstIndex":I
    .local v4, "src":[F
    .local v5, "srcIndex":I
    .local v6, "vectorCount":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->nMapPoints(J[FI[FIIZ)V

    .line 659
    return-void
.end method

.method public whitelist mapVectors([F[F)V
    .registers 10
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .line 687
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_10

    .line 690
    array-length v0, p1

    shr-int/lit8 v6, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "dst":[F
    .end local p2    # "src":[F
    .local v2, "dst":[F
    .local v4, "src":[F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 691
    return-void

    .line 688
    .end local v2    # "dst":[F
    .end local v4    # "src":[F
    .restart local p1    # "dst":[F
    .restart local p2    # "src":[F
    :cond_10
    move-object v2, p1

    .end local p1    # "dst":[F
    .restart local v2    # "dst":[F
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final greylist-max-o ni()J
    .registers 3

    .line 849
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    return-wide v0
.end method

.method public whitelist postConcat(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 523
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nPostConcat(JJ)V

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist postRotate(F)Z
    .registers 4
    .param p1, "degrees"    # F

    .line 499
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nPostRotate(JF)V

    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist postRotate(FFF)Z
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 491
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->nPostRotate(JFFF)V

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist postScale(FF)Z
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 483
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPostScale(JFF)V

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist postScale(FFFF)Z
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 475
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "sx":F
    .end local p2    # "sy":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "sx":F
    .local v3, "sy":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPostScale(JFFFF)V

    .line 476
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist postSkew(FF)Z
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 515
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPostSkew(JFF)V

    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist postSkew(FFFF)Z
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 507
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "kx":F
    .end local p2    # "ky":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "kx":F
    .local v3, "ky":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPostSkew(JFFFF)V

    .line 508
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist postTranslate(FF)Z
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 467
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPostTranslate(JFF)V

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist preConcat(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 459
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nPreConcat(JJ)V

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist preRotate(F)Z
    .registers 4
    .param p1, "degrees"    # F

    .line 435
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nPreRotate(JF)V

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist preRotate(FFF)Z
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 427
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->nPreRotate(JFFF)V

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist preScale(FF)Z
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 419
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPreScale(JFF)V

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist preScale(FFFF)Z
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 411
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "sx":F
    .end local p2    # "sy":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "sx":F
    .local v3, "sy":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPreScale(JFFFF)V

    .line 412
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist preSkew(FF)Z
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 451
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPreSkew(JFF)V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist preSkew(FFFF)Z
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 443
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "kx":F
    .end local p2    # "ky":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "kx":F
    .local v3, "ky":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPreSkew(JFFFF)V

    .line 444
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist preTranslate(FF)Z
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 403
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPreTranslate(JFF)V

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist rectStaysRect()Z
    .registers 3

    .line 280
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nRectStaysRect(J)Z

    move-result v0

    return v0
.end method

.method public whitelist reset()V
    .registers 3

    .line 318
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nReset(J)V

    .line 319
    return-void
.end method

.method public whitelist set(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 288
    if-nez p1, :cond_6

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_d

    .line 291
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nSet(JJ)V

    .line 293
    :goto_d
    return-void
.end method

.method public whitelist setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 9
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .line 395
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetConcat(JJJ)V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setPolyToPoly([FI[FII)Z
    .registers 14
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .line 607
    const/4 v0, 0x4

    if-gt p5, v0, :cond_12

    .line 610
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 611
    iget-wide v1, p0, Landroid/graphics/Matrix;->native_instance:J

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "src":[F
    .end local p2    # "srcIndex":I
    .end local p3    # "dst":[F
    .end local p4    # "dstIndex":I
    .end local p5    # "pointCount":I
    .local v3, "src":[F
    .local v4, "srcIndex":I
    .local v5, "dst":[F
    .local v6, "dstIndex":I
    .local v7, "pointCount":I
    invoke-static/range {v1 .. v7}, Landroid/graphics/Matrix;->nSetPolyToPoly(J[FI[FII)Z

    move-result p1

    return p1

    .line 608
    .end local v3    # "src":[F
    .end local v4    # "srcIndex":I
    .end local v5    # "dst":[F
    .end local v6    # "dstIndex":I
    .end local v7    # "pointCount":I
    .restart local p1    # "src":[F
    .restart local p2    # "srcIndex":I
    .restart local p3    # "dst":[F
    .restart local p4    # "dstIndex":I
    .restart local p5    # "pointCount":I
    :cond_12
    move-object v3, p1

    .end local p1    # "src":[F
    .restart local v3    # "src":[F
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 7
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 573
    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 576
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget v2, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    invoke-static {v0, v1, p1, p2, v2}, Landroid/graphics/Matrix;->nSetRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    return v0

    .line 574
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist setRotate(F)V
    .registers 4
    .param p1, "degrees"    # F

    .line 352
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nSetRotate(JF)V

    .line 353
    return-void
.end method

.method public whitelist setRotate(FFF)V
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 345
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->nSetRotate(JFFF)V

    .line 346
    return-void
.end method

.method public whitelist setScale(FF)V
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 336
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetScale(JFF)V

    .line 337
    return-void
.end method

.method public whitelist setScale(FFFF)V
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 331
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "sx":F
    .end local p2    # "sy":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "sx":F
    .local v3, "sy":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetScale(JFFFF)V

    .line 332
    return-void
.end method

.method public whitelist setSinCos(FF)V
    .registers 5
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .line 366
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetSinCos(JFF)V

    .line 367
    return-void
.end method

.method public whitelist setSinCos(FFFF)V
    .registers 11
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 361
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "sinValue":F
    .end local p2    # "cosValue":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "sinValue":F
    .local v3, "cosValue":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetSinCos(JFFFF)V

    .line 362
    return-void
.end method

.method public whitelist setSkew(FF)V
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 379
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetSkew(JFF)V

    .line 380
    return-void
.end method

.method public whitelist setSkew(FFFF)V
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 374
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "kx":F
    .end local p2    # "ky":F
    .end local p3    # "px":F
    .end local p4    # "py":F
    .local v2, "kx":F
    .local v3, "ky":F
    .local v4, "px":F
    .local v5, "py":F
    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetSkew(JFFFF)V

    .line 375
    return-void
.end method

.method public whitelist setTranslate(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 323
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetTranslate(JFF)V

    .line 324
    return-void
.end method

.method public whitelist setValues([F)V
    .registers 4
    .param p1, "values"    # [F

    .line 766
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 769
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nSetValues(J[F)V

    .line 770
    return-void

    .line 767
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist toShortString()Ljava/lang/String;
    .registers 3

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 784
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 775
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Matrix{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-direct {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 777
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
