.class public final Lcom/android/internal/location/geometry/S2CellIdUtils;
.super Ljava/lang/Object;
.source "S2CellIdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;,
        Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;
    }
.end annotation


# static fields
.field private static final blacklist INVERT_MASK:I = 0x2

.field private static final blacklist I_SHIFT:I = 0x21

.field private static final blacklist J_MASK:J = 0x7fffffffL

.field private static final blacklist J_SHIFT:I = 0x2

.field public static final blacklist LAT_INDEX:I = 0x0

.field public static final blacklist LAT_LNG_MIN_LENGTH:I = 0x2

.field private static final blacklist LEAF_MASK:I = 0x1

.field public static final blacklist LNG_INDEX:I = 0x1

.field private static final blacklist LOOKUP_BITS:I = 0x4

.field private static final blacklist LOOKUP_IJ:[I

.field private static final blacklist LOOKUP_MASK:I = 0xf

.field private static final blacklist LOOKUP_POS:[I

.field public static final blacklist MAX_LEVEL:I = 0x1e

.field private static final blacklist MAX_SIZE:I = 0x40000000

.field private static final blacklist MAX_SI_TI:J = 0x80000000L

.field private static final blacklist NUM_FACES:I = 0x6

.field private static final blacklist ONE_OVER_MAX_SIZE:D = 9.313225746154785E-10

.field private static final blacklist POS_BITS:I = 0x3d

.field private static final blacklist POS_TO_IJ:[[I

.field private static final blacklist POS_TO_ORIENTATION:[I

.field private static final blacklist SI_SHIFT:I = 0x20

.field private static final blacklist SWAP_MASK:I = 0x1

.field private static final blacklist TI_MASK:J = 0xffffffffL

.field private static final blacklist UV_LIMIT:D

.field private static final blacklist UV_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;

.field private static final blacklist XYZ_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 43
    const/16 v0, 0x400

    new-array v1, v0, [I

    sput-object v1, Lcom/android/internal/location/geometry/S2CellIdUtils;->LOOKUP_POS:[I

    .line 44
    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->LOOKUP_IJ:[I

    .line 45
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    filled-new-array {v0, v1, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/android/internal/location/geometry/S2CellIdUtils;->POS_TO_ORIENTATION:[I

    .line 46
    const/4 v3, 0x2

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v4

    filled-new-array {v1, v3, v2, v0}, [I

    move-result-object v5

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v6

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    filled-new-array {v4, v5, v6, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->POS_TO_IJ:[[I

    .line 48
    invoke-static {}, Lcom/android/internal/location/geometry/S2CellIdUtils;->calculateUvLimit()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->UV_LIMIT:D

    .line 49
    invoke-static {}, Lcom/android/internal/location/geometry/S2CellIdUtils;->createUvTransforms()[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->UV_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;

    .line 50
    invoke-static {}, Lcom/android/internal/location/geometry/S2CellIdUtils;->createXyzTransforms()[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->XYZ_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;

    .line 68
    invoke-static {}, Lcom/android/internal/location/geometry/S2CellIdUtils;->initLookupCells()V

    .line 69
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static blacklist calculateUvLimit()D
    .registers 6

    .line 550
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 552
    .local v0, "machEps":D
    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 553
    div-double v2, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 554
    add-double/2addr v4, v0

    return-wide v4
.end method

.method private static blacklist checkLengthGreaterThanOrEqualTo(II)V
    .registers 5
    .param p0, "minLength"    # I
    .param p1, "actualLength"    # I

    .line 181
    if-lt p1, p0, :cond_3

    .line 186
    return-void

    .line 182
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be of minimum length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkNotNull(Ljava/lang/Object;)V
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 175
    if-eqz p0, :cond_3

    .line 178
    return-void

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given array cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist containsLatLngDegrees(JDD)Z
    .registers 11
    .param p0, "s2CellId"    # J
    .param p2, "latDegrees"    # D
    .param p4, "lngDegrees"    # D

    .line 194
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLevel(J)I

    move-result v0

    .line 195
    .local v0, "level":I
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide v1

    .line 196
    .local v1, "leafCellId":J
    invoke-static {v1, v2, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method

.method private static blacklist createUvTransforms()[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;
    .registers 3

    .line 559
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;

    .line 560
    .local v0, "uvTransforms":[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$1;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 573
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$2;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$2;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 586
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$3;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$3;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 599
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$4;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$4;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 612
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$5;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$5;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 625
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$6;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$6;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 638
    return-object v0
.end method

.method private static blacklist createXyzTransforms()[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;
    .registers 3

    .line 643
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;

    .line 644
    .local v0, "xyzTransforms":[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$7;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$7;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 662
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$8;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$8;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 680
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$9;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$9;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 698
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$10;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$10;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 716
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$11;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$11;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 734
    new-instance v1, Lcom/android/internal/location/geometry/S2CellIdUtils$12;

    invoke-direct {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils$12;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 752
    return-object v0
.end method

.method private static blacklist faceToXyzTransform(I)Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;
    .registers 3
    .param p0, "face"    # I

    .line 163
    sget-object v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->XYZ_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;

    const/4 v1, 0x5

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist fromFij(III)J
    .registers 12
    .param p0, "face"    # I
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 209
    and-int/lit8 v0, p0, 0x1

    .line 211
    .local v0, "bits":I
    int-to-long v1, p0

    const/16 v3, 0x1c

    shl-long/2addr v1, v3

    .line 212
    .local v1, "msb":J
    const/4 v3, 0x7

    .local v3, "k":I
    :goto_7
    const/4 v4, 0x4

    if-lt v3, v4, :cond_19

    .line 213
    invoke-static {p1, p2, v3, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->lookupBits(IIII)I

    move-result v0

    .line 214
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->updateBits(JII)J

    move-result-wide v1

    .line 215
    invoke-static {v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->maskBits(I)I

    move-result v0

    .line 212
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 218
    .end local v3    # "k":I
    :cond_19
    const-wide/16 v3, 0x0

    .line 219
    .local v3, "lsb":J
    const/4 v5, 0x3

    .local v5, "k":I
    :goto_1c
    if-ltz v5, :cond_2d

    .line 220
    invoke-static {p1, p2, v5, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->lookupBits(IIII)I

    move-result v0

    .line 221
    invoke-static {v3, v4, v5, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->updateBits(JII)J

    move-result-wide v3

    .line 222
    invoke-static {v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->maskBits(I)I

    move-result v0

    .line 219
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    .line 224
    .end local v5    # "k":I
    :cond_2d
    const/16 v5, 0x20

    shl-long v5, v1, v5

    add-long/2addr v5, v3

    const/4 v7, 0x1

    shl-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    return-wide v5
.end method

.method private static blacklist fromFijSame(IIIZ)J
    .registers 6
    .param p0, "face"    # I
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "isSameFace"    # Z

    .line 404
    if-eqz p3, :cond_7

    .line 405
    invoke-static {p0, p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFij(III)J

    move-result-wide v0

    return-wide v0

    .line 407
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFijWrap(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist fromFijWrap(III)J
    .registers 24
    .param p0, "face"    # I
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 385
    invoke-static/range {p1 .. p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->iToU(I)D

    move-result-wide v0

    .line 386
    .local v0, "u":D
    invoke-static/range {p2 .. p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->jToV(I)D

    move-result-wide v2

    .line 388
    .local v2, "v":D
    sget-object v4, Lcom/android/internal/location/geometry/S2CellIdUtils;->XYZ_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;

    aget-object v4, v4, p0

    .line 389
    .local v4, "xyzTransform":Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;
    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;->uvToX(DD)D

    move-result-wide v6

    .line 390
    .local v6, "x":D
    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;->uvToY(DD)D

    move-result-wide v8

    .line 391
    .local v8, "y":D
    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;->uvToZ(DD)D

    move-result-wide v10

    .line 393
    .local v10, "z":D
    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    .end local v6    # "x":D
    .end local v8    # "y":D
    .end local v10    # "z":D
    .local v5, "x":D
    .local v7, "y":D
    .local v9, "z":D
    invoke-static/range {v5 .. v10}, Lcom/android/internal/location/geometry/S2CellIdUtils;->xyzToFace(DDD)I

    move-result v12

    .line 394
    move-wide v10, v9

    move-wide v8, v7

    move-wide v6, v5

    .end local v5    # "x":D
    .end local v7    # "y":D
    .end local v9    # "z":D
    .restart local v6    # "x":D
    .restart local v8    # "y":D
    .restart local v10    # "z":D
    .local v12, "newFace":I
    sget-object v5, Lcom/android/internal/location/geometry/S2CellIdUtils;->UV_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;

    aget-object v5, v5, v12

    .line 395
    .local v5, "uvTransform":Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;
    invoke-interface/range {v5 .. v11}, Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;->xyzToU(DDD)D

    move-result-wide v13

    .line 396
    .local v13, "newU":D
    invoke-interface/range {v5 .. v11}, Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;->xyzToV(DDD)D

    move-result-wide v15

    .line 398
    .local v15, "newV":D
    move-wide/from16 v17, v0

    .end local v0    # "u":D
    .local v17, "u":D
    invoke-static {v13, v14}, Lcom/android/internal/location/geometry/S2CellIdUtils;->uShiftIntoI(D)I

    move-result v0

    .line 399
    .local v0, "newI":I
    invoke-static/range {v15 .. v16}, Lcom/android/internal/location/geometry/S2CellIdUtils;->vShiftIntoJ(D)I

    move-result v1

    .line 400
    .local v1, "newJ":I
    invoke-static {v12, v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFij(III)J

    move-result-wide v19

    return-wide v19
.end method

.method private static blacklist fromFuv(IDD)J
    .registers 9
    .param p0, "face"    # I
    .param p1, "u"    # D
    .param p3, "v"    # D

    .line 379
    invoke-static {p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->uToI(D)I

    move-result v0

    .line 380
    .local v0, "i":I
    invoke-static {p3, p4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->vToJ(D)I

    move-result v1

    .line 381
    .local v1, "j":I
    invoke-static {p0, v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFij(III)J

    move-result-wide v2

    return-wide v2
.end method

.method public static blacklist fromLatLngDegrees(DD)J
    .registers 8
    .param p0, "latDegrees"    # D
    .param p2, "lngDegrees"    # D

    .line 204
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngRadians(DD)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist fromLatLngRadians(DD)J
    .registers 14
    .param p0, "latRadians"    # D
    .param p2, "lngRadians"    # D

    .line 302
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 303
    .local v0, "cosLat":D
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v4, v2, v0

    .line 304
    .local v4, "x":D
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v2, v0

    .line 305
    .local v6, "y":D
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 306
    .local v8, "z":D
    invoke-static/range {v4 .. v9}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromXyz(DDD)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist fromXyz(DDD)J
    .registers 14
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 370
    invoke-static/range {p0 .. p5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->xyzToFace(DDD)I

    move-result v7

    .line 371
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .end local p0    # "x":D
    .end local p2    # "y":D
    .end local p4    # "z":D
    .local v1, "x":D
    .local v3, "y":D
    .local v5, "z":D
    .local v7, "face":I
    sget-object p0, Lcom/android/internal/location/geometry/S2CellIdUtils;->UV_TRANSFORMS:[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;

    aget-object v0, p0, v7

    .line 372
    .local v0, "uvTransform":Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;->xyzToU(DDD)D

    move-result-wide p0

    .line 373
    .local p0, "u":D
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;->xyzToV(DDD)D

    move-result-wide p2

    .line 374
    .local p2, "v":D
    invoke-static {v7, p0, p1, p2, p3}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFuv(IDD)J

    move-result-wide p4

    return-wide p4
.end method

.method public static blacklist getEdgeNeighbors(J[J)V
    .registers 23
    .param p0, "s2CellId"    # J
    .param p2, "neighbors"    # [J

    .line 255
    move-object/from16 v0, p2

    invoke-static/range {p0 .. p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLevel(J)I

    move-result v1

    .line 256
    .local v1, "level":I
    invoke-static {v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->levelToSizeIj(I)I

    move-result v2

    .line 257
    .local v2, "size":I
    invoke-static/range {p0 .. p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getFace(J)I

    move-result v3

    .line 258
    .local v3, "face":I
    invoke-static/range {p0 .. p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toIjo(J)J

    move-result-wide v4

    .line 259
    .local v4, "ijo":J
    invoke-static {v4, v5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->ijoToI(J)I

    move-result v6

    .line 260
    .local v6, "i":I
    invoke-static {v4, v5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->ijoToJ(J)I

    move-result v7

    .line 262
    .local v7, "j":I
    add-int v8, v6, v2

    .line 263
    .local v8, "iPlusSize":I
    sub-int v9, v6, v2

    .line 264
    .local v9, "iMinusSize":I
    add-int v10, v7, v2

    .line 265
    .local v10, "jPlusSize":I
    sub-int v11, v7, v2

    .line 266
    .local v11, "jMinusSize":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    if-ge v8, v14, :cond_2a

    move v15, v13

    goto :goto_2b

    :cond_2a
    move v15, v12

    .line 267
    .local v15, "iPlusSizeLtMax":Z
    :goto_2b
    if-ltz v9, :cond_30

    move/from16 v16, v13

    goto :goto_32

    :cond_30
    move/from16 v16, v12

    :goto_32
    move/from16 v17, v16

    .line 268
    .local v17, "iMinusSizeGteZero":Z
    if-ge v10, v14, :cond_38

    move v14, v13

    goto :goto_39

    :cond_38
    move v14, v12

    .line 269
    .local v14, "jPlusSizeLtMax":Z
    :goto_39
    if-ltz v11, :cond_3c

    move v12, v13

    .line 271
    .local v12, "jMinusSizeGteZero":Z
    :cond_3c
    const/4 v13, 0x0

    .line 273
    .local v13, "index":I
    add-int/lit8 v16, v13, 0x1

    move-wide/from16 v18, v4

    .end local v4    # "ijo":J
    .end local v13    # "index":I
    .local v16, "index":I
    .local v18, "ijo":J
    invoke-static {v3, v6, v11, v12}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFijSame(IIIZ)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v4

    aput-wide v4, v0, v13

    .line 276
    add-int/lit8 v4, v16, 0x1

    move v13, v4

    .end local v16    # "index":I
    .restart local v13    # "index":I
    invoke-static {v3, v8, v7, v15}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFijSame(IIIZ)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v4

    aput-wide v4, v0, v16

    .line 278
    add-int/lit8 v4, v13, 0x1

    move/from16 v16, v4

    .end local v13    # "index":I
    .restart local v16    # "index":I
    invoke-static {v3, v6, v10, v14}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFijSame(IIIZ)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v4

    aput-wide v4, v0, v13

    .line 280
    add-int/lit8 v4, v16, 0x1

    move v13, v10

    move/from16 v5, v17

    move/from16 v17, v11

    .end local v10    # "jPlusSize":I
    .end local v11    # "jMinusSize":I
    .end local v16    # "index":I
    .local v4, "index":I
    .local v5, "iMinusSizeGteZero":Z
    .local v13, "jPlusSize":I
    .local v17, "jMinusSize":I
    invoke-static {v3, v9, v7, v5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromFijSame(IIIZ)J

    move-result-wide v10

    invoke-static {v10, v11, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v10

    aput-wide v10, v0, v16

    .line 284
    array-length v10, v0

    move v11, v1

    move/from16 v16, v2

    .end local v1    # "level":I
    .end local v2    # "size":I
    .local v11, "level":I
    .local v16, "size":I
    const-wide/16 v1, 0x0

    invoke-static {v0, v4, v10, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 285
    return-void
.end method

.method public static blacklist getFace(J)I
    .registers 4
    .param p0, "s2CellId"    # J

    .line 232
    const/16 v0, 0x3d

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist getI(J)I
    .registers 4
    .param p0, "s2CellId"    # J

    .line 289
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toIjo(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->ijoToI(J)I

    move-result v0

    return v0
.end method

.method public static blacklist getJ(J)I
    .registers 4
    .param p0, "s2CellId"    # J

    .line 294
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toIjo(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->ijoToJ(J)I

    move-result v0

    return v0
.end method

.method public static blacklist getLevel(J)I
    .registers 4
    .param p0, "s2CellId"    # J

    .line 314
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->isLeaf(J)Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_9

    .line 315
    return v1

    .line 317
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v0

    return v1
.end method

.method static blacklist getLowestOnBit(J)J
    .registers 4
    .param p0, "s2CellId"    # J

    .line 322
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method static blacklist getLowestOnBitForLevel(I)J
    .registers 4
    .param p0, "level"    # I

    .line 327
    rsub-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x2

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method public static blacklist getParent(JI)J
    .registers 7
    .param p0, "s2CellId"    # J
    .param p2, "level"    # I

    .line 241
    invoke-static {p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLowestOnBitForLevel(I)J

    move-result-wide v0

    .line 242
    .local v0, "newLsb":J
    neg-long v2, v0

    and-long/2addr v2, p0

    or-long/2addr v2, v0

    return-wide v2
.end method

.method public static blacklist getToken(J)Ljava/lang/String;
    .registers 6
    .param p0, "s2CellId"    # J

    .line 349
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 350
    const-string v0, "X"

    return-object v0

    .line 354
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "hex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->padStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "padded":Ljava/lang/String;
    const-string v2, "0*$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getTraversalNext(J)J
    .registers 5
    .param p0, "s2CellId"    # J

    .line 340
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLowestOnBit(J)J

    move-result-wide v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist getTraversalStart(JI)J
    .registers 7
    .param p0, "s2CellId"    # J
    .param p2, "level"    # I

    .line 335
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLowestOnBit(J)J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLowestOnBitForLevel(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist iToU(I)D
    .registers 11
    .param p0, "i"    # I

    .line 464
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 465
    .local v1, "satI":I
    sget-wide v2, Lcom/android/internal/location/geometry/S2CellIdUtils;->UV_LIMIT:D

    neg-double v2, v2

    sget-wide v4, Lcom/android/internal/location/geometry/S2CellIdUtils;->UV_LIMIT:D

    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v6, v0

    int-to-double v6, v6

    const-wide/high16 v8, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v6, v8

    .line 467
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 465
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist ijoToI(J)I
    .registers 4
    .param p0, "ijo"    # J

    .line 496
    const/16 v0, 0x21

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist ijoToJ(J)I
    .registers 6
    .param p0, "ijo"    # J

    .line 500
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist initLookupCell(IIIIII)V
    .registers 16
    .param p0, "level"    # I
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "origOrientation"    # I
    .param p4, "pos"    # I
    .param p5, "orientation"    # I

    .line 526
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1c

    .line 527
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    .line 528
    .local v0, "ij":I
    sget-object v1, Lcom/android/internal/location/geometry/S2CellIdUtils;->LOOKUP_POS:[I

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v3, p4, 0x2

    add-int/2addr v3, p5

    aput v3, v1, v2

    .line 529
    sget-object v1, Lcom/android/internal/location/geometry/S2CellIdUtils;->LOOKUP_IJ:[I

    shl-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p5

    aput v3, v1, v2

    .line 530
    .end local v0    # "ij":I
    move v7, p3

    goto :goto_46

    .line 531
    :cond_1c
    add-int/lit8 v4, p0, 0x1

    .line 532
    .end local p0    # "level":I
    .local v4, "level":I
    shl-int/lit8 p1, p1, 0x1

    .line 533
    shl-int/lit8 p2, p2, 0x1

    .line 534
    shl-int/lit8 p4, p4, 0x2

    .line 535
    const/4 p0, 0x0

    .local p0, "subPos":I
    :goto_25
    if-ge p0, v0, :cond_44

    .line 536
    sget-object v1, Lcom/android/internal/location/geometry/S2CellIdUtils;->POS_TO_IJ:[[I

    aget-object v1, v1, p5

    aget v1, v1, p0

    .line 537
    .local v1, "ij":I
    sget-object v2, Lcom/android/internal/location/geometry/S2CellIdUtils;->POS_TO_ORIENTATION:[I

    aget v2, v2, p0

    .line 538
    .local v2, "orientationMask":I
    ushr-int/lit8 v3, v1, 0x1

    add-int v5, p1, v3

    and-int/lit8 v3, v1, 0x1

    add-int v6, p2, v3

    add-int v8, p4, p0

    xor-int v9, p5, v2

    move v7, p3

    .end local p3    # "origOrientation":I
    .local v7, "origOrientation":I
    invoke-static/range {v4 .. v9}, Lcom/android/internal/location/geometry/S2CellIdUtils;->initLookupCell(IIIIII)V

    .line 535
    .end local v1    # "ij":I
    .end local v2    # "orientationMask":I
    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    .end local v7    # "origOrientation":I
    .restart local p3    # "origOrientation":I
    :cond_44
    move v7, p3

    .end local p3    # "origOrientation":I
    .restart local v7    # "origOrientation":I
    move p0, v4

    .line 547
    .end local v4    # "level":I
    .local p0, "level":I
    :goto_46
    return-void
.end method

.method private static blacklist initLookupCells()V
    .registers 12

    .line 518
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->initLookupCell(IIIIII)V

    .line 519
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/location/geometry/S2CellIdUtils;->initLookupCell(IIIIII)V

    .line 520
    const/4 v5, 0x2

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->initLookupCell(IIIIII)V

    .line 521
    const/4 v11, 0x3

    const/4 v9, 0x3

    invoke-static/range {v6 .. v11}, Lcom/android/internal/location/geometry/S2CellIdUtils;->initLookupCell(IIIIII)V

    .line 522
    return-void
.end method

.method private static blacklist isLeaf(J)Z
    .registers 4
    .param p0, "s2CellId"    # J

    .line 460
    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private static blacklist jToV(I)D
    .registers 3
    .param p0, "j"    # I

    .line 472
    invoke-static {p0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->iToU(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist levelToSizeIj(I)I
    .registers 3
    .param p0, "level"    # I

    .line 514
    rsub-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private static blacklist lookupBits(IIII)I
    .registers 5
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "k"    # I
    .param p3, "bits"    # I

    .line 446
    mul-int/lit8 v0, p2, 0x4

    shr-int v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr p3, v0

    .line 447
    mul-int/lit8 v0, p2, 0x4

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 448
    sget-object v0, Lcom/android/internal/location/geometry/S2CellIdUtils;->LOOKUP_POS:[I

    aget v0, v0, p3

    return v0
.end method

.method private static blacklist maskBits(I)I
    .registers 2
    .param p0, "bits"    # I

    .line 456
    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method private static blacklist padStart(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 363
    return-object p0

    .line 365
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist siTiToSi(J)I
    .registers 4
    .param p0, "siTi"    # J

    .line 127
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist siTiToTi(J)I
    .registers 3
    .param p0, "siTi"    # J

    .line 131
    long-to-int v0, p0

    return v0
.end method

.method private static blacklist siTiToU(J)D
    .registers 5
    .param p0, "siTi"    # J

    .line 135
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->siTiToSi(J)I

    move-result v0

    .line 136
    .local v0, "si":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->siToU(J)D

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist siTiToV(J)D
    .registers 5
    .param p0, "siTi"    # J

    .line 140
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->siTiToTi(J)I

    move-result v0

    .line 141
    .local v0, "ti":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->tiToV(J)D

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist siToU(J)D
    .registers 12
    .param p0, "si"    # J

    .line 145
    const-wide/high16 v0, 0x3e00000000000000L    # 4.656612873077393E-10

    long-to-double v2, p0

    mul-double/2addr v2, v0

    .line 146
    .local v2, "s":D
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide v6, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_18

    .line 147
    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sub-double/2addr v4, v8

    mul-double/2addr v4, v6

    return-wide v4

    .line 149
    :cond_18
    sub-double v0, v8, v2

    mul-double/2addr v0, v4

    sub-double v4, v8, v2

    mul-double/2addr v0, v4

    sub-double/2addr v8, v0

    mul-double/2addr v8, v6

    return-wide v8
.end method

.method private static blacklist tiToV(J)D
    .registers 4
    .param p0, "ti"    # J

    .line 154
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->siToU(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist toIjo(J)J
    .registers 12
    .param p0, "s2CellId"    # J

    .line 476
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getFace(J)I

    move-result v0

    .line 477
    .local v0, "face":I
    and-int/lit8 v1, v0, 0x1

    .line 478
    .local v1, "bits":I
    const/4 v2, 0x0

    .line 479
    .local v2, "i":I
    const/4 v3, 0x0

    .line 480
    .local v3, "j":I
    const/4 v4, 0x7

    .local v4, "k":I
    :goto_9
    const/4 v5, 0x2

    if-ltz v4, :cond_3c

    .line 481
    const/4 v6, 0x7

    const/4 v7, 0x4

    if-ne v4, v6, :cond_12

    move v6, v5

    goto :goto_13

    :cond_12
    move v6, v7

    .line 482
    .local v6, "nbits":I
    :goto_13
    mul-int/lit8 v8, v4, 0x2

    mul-int/2addr v8, v7

    const/4 v7, 0x1

    add-int/2addr v8, v7

    ushr-long v8, p0, v8

    long-to-int v8, v8

    mul-int/lit8 v9, v6, 0x2

    shl-int v9, v7, v9

    sub-int/2addr v9, v7

    and-int v7, v8, v9

    shl-int/lit8 v5, v7, 0x2

    add-int/2addr v1, v5

    .line 484
    sget-object v5, Lcom/android/internal/location/geometry/S2CellIdUtils;->LOOKUP_IJ:[I

    aget v1, v5, v1

    .line 485
    shr-int/lit8 v5, v1, 0x6

    mul-int/lit8 v7, v4, 0x4

    shl-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 486
    shr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0xf

    mul-int/lit8 v7, v4, 0x4

    shl-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 487
    and-int/lit8 v1, v1, 0x3

    .line 480
    .end local v6    # "nbits":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 490
    .end local v4    # "k":I
    :cond_3c
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLowestOnBit(J)J

    move-result-wide v6

    const-wide v8, 0x1111111111111110L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_4f

    xor-int/lit8 v4, v1, 0x1

    goto :goto_50

    .line 491
    :cond_4f
    move v4, v1

    :goto_50
    nop

    .line 492
    .local v4, "orientation":I
    int-to-long v6, v2

    const/16 v8, 0x21

    shl-long/2addr v6, v8

    int-to-long v8, v3

    shl-long/2addr v8, v5

    or-long v5, v6, v8

    int-to-long v7, v4

    or-long/2addr v5, v7

    return-wide v5
.end method

.method public static blacklist toLatLngDegrees(J[D)[D
    .registers 7
    .param p0, "s2CellId"    # J
    .param p2, "latLngDegrees"    # [D

    .line 84
    move-object v0, p2

    .line 85
    .local v0, "latLngRadians":[D
    invoke-static {p0, p1, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toLatLngRadians(J[D)[D

    .line 86
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 87
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 88
    return-object p2
.end method

.method public static blacklist toLatLngRadians(J[D)[D
    .registers 21
    .param p0, "s2CellId"    # J
    .param p2, "latLngRadians"    # [D

    .line 100
    move-object/from16 v0, p2

    invoke-static {v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    const/4 v1, 0x2

    array-length v2, v0

    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->checkLengthGreaterThanOrEqualTo(II)V

    .line 103
    invoke-static/range {p0 .. p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toSiTi(J)J

    move-result-wide v1

    .line 104
    .local v1, "siTi":J
    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->siTiToU(J)D

    move-result-wide v3

    .line 105
    .local v3, "u":D
    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->siTiToV(J)D

    move-result-wide v5

    .line 107
    .local v5, "v":D
    invoke-static/range {p0 .. p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getFace(J)I

    move-result v7

    .line 108
    .local v7, "face":I
    invoke-static {v7}, Lcom/android/internal/location/geometry/S2CellIdUtils;->faceToXyzTransform(I)Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;

    move-result-object v8

    .line 109
    .local v8, "xyzTransform":Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;
    invoke-interface {v8, v3, v4, v5, v6}, Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;->uvToX(DD)D

    move-result-wide v9

    .line 110
    .local v9, "x":D
    invoke-interface {v8, v3, v4, v5, v6}, Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;->uvToY(DD)D

    move-result-wide v11

    .line 111
    .local v11, "y":D
    invoke-interface {v8, v3, v4, v5, v6}, Lcom/android/internal/location/geometry/S2CellIdUtils$XyzTransform;->uvToZ(DD)D

    move-result-wide v13

    .line 113
    .local v13, "z":D
    const/4 v15, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/location/geometry/S2CellIdUtils;->xyzToLatRadians(DDD)D

    move-result-wide v16

    aput-wide v16, v0, v15

    .line 114
    const/4 v15, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/location/geometry/S2CellIdUtils;->xyzToLngRadians(DD)D

    move-result-wide v16

    aput-wide v16, v0, v15

    .line 115
    return-object v0
.end method

.method private static blacklist toSiTi(J)J
    .registers 14
    .param p0, "s2CellId"    # J

    .line 119
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toIjo(J)J

    move-result-wide v0

    .line 120
    .local v0, "ijo":J
    invoke-static {v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->ijoToI(J)I

    move-result v2

    .line 121
    .local v2, "i":I
    invoke-static {v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->ijoToJ(J)I

    move-result v3

    .line 122
    .local v3, "j":I
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->isLeaf(J)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    goto :goto_1e

    :cond_14
    long-to-int v4, p0

    const/4 v6, 0x2

    ushr-int/2addr v4, v6

    xor-int/2addr v4, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1d

    move v5, v6

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    .line 123
    .local v5, "delta":I
    :goto_1e
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v5

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v5

    int-to-long v8, v4

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    return-wide v6
.end method

.method private static blacklist uShiftIntoI(D)I
    .registers 8
    .param p0, "u"    # D

    .line 504
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    .line 505
    .local v0, "s":D
    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v4, v0

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const v3, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private static blacklist uToI(D)I
    .registers 9
    .param p0, "u"    # D

    .line 432
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_14

    .line 433
    mul-double/2addr v1, p0

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    .local v0, "s":D
    goto :goto_1e

    .line 435
    .end local v0    # "s":D
    :cond_14
    mul-double/2addr v1, p0

    sub-double v0, v5, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    sub-double v0, v5, v0

    .line 437
    .restart local v0    # "s":D
    :goto_1e
    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v5, v0

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const v3, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private static blacklist updateBits(JII)J
    .registers 8
    .param p0, "sb"    # J
    .param p2, "k"    # I
    .param p3, "bits"    # I

    .line 452
    int-to-long v0, p3

    const/4 v2, 0x2

    shr-long/2addr v0, v2

    and-int/lit8 v3, p2, 0x3

    mul-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x4

    shl-long/2addr v0, v3

    or-long/2addr v0, p0

    return-wide v0
.end method

.method private static blacklist vShiftIntoJ(D)I
    .registers 3
    .param p0, "v"    # D

    .line 510
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->uShiftIntoI(D)I

    move-result v0

    return v0
.end method

.method private static blacklist vToJ(D)I
    .registers 3
    .param p0, "v"    # D

    .line 442
    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->uToI(D)I

    move-result v0

    return v0
.end method

.method private static blacklist xyzToFace(DDD)I
    .registers 17
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 415
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 416
    .local v0, "absX":D
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 417
    .local v2, "absY":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 418
    .local v4, "absZ":D
    cmpl-double v6, v0, v2

    const/4 v7, 0x5

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-lez v6, :cond_27

    .line 419
    cmpl-double v6, v0, v4

    if-lez v6, :cond_20

    .line 420
    cmpg-double v6, p0, v9

    if-gez v6, :cond_1e

    const/4 v6, 0x3

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x0

    :goto_1f
    return v6

    .line 422
    :cond_20
    cmpg-double v6, p4, v9

    if-gez v6, :cond_25

    goto :goto_26

    :cond_25
    move v7, v8

    :goto_26
    return v7

    .line 424
    :cond_27
    cmpl-double v6, v2, v4

    if-lez v6, :cond_33

    .line 425
    cmpg-double v6, p2, v9

    if-gez v6, :cond_31

    const/4 v6, 0x4

    goto :goto_32

    :cond_31
    const/4 v6, 0x1

    :goto_32
    return v6

    .line 427
    :cond_33
    cmpg-double v6, p4, v9

    if-gez v6, :cond_38

    goto :goto_39

    :cond_38
    move v7, v8

    :goto_39
    return v7
.end method

.method private static blacklist xyzToLatRadians(DDD)D
    .registers 10
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 171
    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist xyzToLngRadians(DD)D
    .registers 6
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 167
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method
