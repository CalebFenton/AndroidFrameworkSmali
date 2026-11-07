.class public Landroid/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final whitelist BLACK:I = -0x1000000

.field public static final whitelist BLUE:I = -0xffff01

.field public static final whitelist CYAN:I = -0xff0001

.field public static final whitelist DKGRAY:I = -0xbbbbbc

.field public static final whitelist GRAY:I = -0x777778

.field public static final whitelist GREEN:I = -0xff0100

.field public static final whitelist LTGRAY:I = -0x333334

.field public static final whitelist MAGENTA:I = -0xff01

.field public static final whitelist RED:I = -0x10000

.field public static final whitelist TRANSPARENT:I = 0x0

.field public static final whitelist WHITE:I = -0x1

.field public static final whitelist YELLOW:I = -0x100

.field private static final greylist-max-o sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mColorSpace:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mComponents:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 1483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    .line 1484
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "black"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v1, -0xbbbbbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v2, -0x777778

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "gray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v3, -0x333334

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "lightgray"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "white"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const/high16 v4, -0x10000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "red"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v4, -0xff0100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "green"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v5, -0xffff01

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "blue"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const/16 v5, -0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "yellow"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v5, -0xff0001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cyan"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v6, -0xff01

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "magenta"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v7, "aqua"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v5, "fuchsia"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v5, "darkgrey"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "grey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgrey"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lime"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "maroon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v1, -0xffff80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "navy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v1, -0x7f8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "olive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v1, -0x7fff80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "purple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v1, -0x3f3f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "silver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const v1, -0xff7f80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "teal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    iput-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 330
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 331
    return-void

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor greylist-max-o <init>(FFFF)V
    .registers 12
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 343
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "r":F
    .end local p2    # "g":F
    .end local p3    # "b":F
    .end local p4    # "a":F
    .local v2, "r":F
    .local v3, "g":F
    .local v4, "b":F
    .local v5, "a":F
    invoke-direct/range {v1 .. v6}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    .line 344
    return-void
.end method

.method private constructor greylist-max-o <init>(FFFFLandroid/graphics/ColorSpace;)V
    .registers 8
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 358
    iput-object p5, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 359
    return-void
.end method

.method private constructor greylist-max-o <init>([FLandroid/graphics/ColorSpace;)V
    .registers 3
    .param p1, "components"    # [F
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Landroid/graphics/Color;->mComponents:[F

    .line 369
    iput-object p2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 370
    return-void
.end method

.method public static whitelist HSVToColor(I[F)I
    .registers 4
    .param p0, "alpha"    # I
    .param p1, "hsv"    # [F

    .line 1472
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    .line 1475
    invoke-static {p0, p1}, Landroid/graphics/Color;->nativeHSVToColor(I[F)I

    move-result v0

    return v0

    .line 1473
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist HSVToColor([F)I
    .registers 2
    .param p0, "hsv"    # [F

    .line 1454
    const/16 v0, 0xff

    invoke-static {v0, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static whitelist RGBToHSV(III[F)V
    .registers 6
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    .line 1421
    array-length v0, p3

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    .line 1424
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    .line 1425
    return-void

    .line 1422
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist alpha(J)F
    .registers 6
    .param p0, "color"    # J

    .line 782
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/16 v0, 0x38

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 783
    :cond_15
    const/4 v0, 0x6

    shr-long v0, p0, v0

    const-wide/16 v2, 0x3ff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x447fc000    # 1023.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static whitelist alpha(I)I
    .registers 2
    .param p0, "color"    # I

    .line 1243
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static whitelist argb(FFFF)I
    .registers 8
    .param p0, "alpha"    # F
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .line 1341
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v3, p1, v0

    add-float/2addr v3, v2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    mul-float v3, p2, v0

    add-float/2addr v3, v2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    mul-float/2addr v0, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist argb(IIII)I
    .registers 6
    .param p0, "alpha"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 1326
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method public static whitelist blue(J)F
    .registers 6
    .param p0, "color"    # J

    .line 765
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 766
    :cond_15
    const/16 v0, 0x10

    shr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static whitelist blue(I)I
    .registers 2
    .param p0, "color"    # I

    .line 1270
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static whitelist colorSpace(J)Landroid/graphics/ColorSpace;
    .registers 4
    .param p0, "color"    # J

    .line 706
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(I)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist colorToHSV(I[F)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .line 1438
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 1439
    return-void
.end method

.method public static whitelist convert(FFFFLandroid/graphics/ColorSpace$Connector;)J
    .registers 10
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F
    .param p4, "connector"    # Landroid/graphics/ColorSpace$Connector;

    .line 1203
    invoke-virtual {p4, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v0

    .line 1204
    .local v0, "c":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {p4}, Landroid/graphics/ColorSpace$Connector;->getDestination()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {v1, v2, v3, p3, v4}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static whitelist convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J
    .registers 10
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F
    .param p4, "source"    # Landroid/graphics/ColorSpace;
    .param p5, "destination"    # Landroid/graphics/ColorSpace;

    .line 1147
    invoke-static {p4, p5}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v0

    .line 1148
    .local v0, "c":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v1, v2, v3, p3, p5}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static whitelist convert(ILandroid/graphics/ColorSpace;)J
    .registers 10
    .param p0, "color"    # I
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1089
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, v0, v1

    .line 1090
    .local v2, "r":F
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 1091
    .local v3, "g":F
    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 1092
    .local v4, "b":F
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v5, v0, v1

    .line 1093
    .local v5, "a":F
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 1094
    .local v6, "source":Landroid/graphics/ColorSpace;
    move-object v7, p1

    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    .local v7, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-static/range {v2 .. v7}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist convert(JLandroid/graphics/ColorSpace$Connector;)J
    .registers 9
    .param p0, "color"    # J
    .param p2, "connector"    # Landroid/graphics/ColorSpace$Connector;

    .line 1170
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 1171
    .local v0, "r":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 1172
    .local v1, "g":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 1173
    .local v2, "b":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v3

    .line 1174
    .local v3, "a":F
    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace$Connector;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static whitelist convert(JLandroid/graphics/ColorSpace;)J
    .registers 11
    .param p0, "color"    # J
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1113
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 1114
    .local v0, "r":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 1115
    .local v1, "g":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 1116
    .local v2, "b":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v3

    .line 1117
    .local v3, "a":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 1118
    .local v4, "source":Landroid/graphics/ColorSpace;
    move-object v5, p2

    .end local p2    # "colorSpace":Landroid/graphics/ColorSpace;
    .local v5, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-static/range {v0 .. v5}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J

    move-result-wide v6

    return-wide v6
.end method

.method public static whitelist green(J)F
    .registers 6
    .param p0, "color"    # J

    .line 745
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/16 v0, 0x28

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 746
    :cond_15
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static whitelist green(I)I
    .registers 2
    .param p0, "color"    # I

    .line 1261
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static whitelist isInColorSpace(JLandroid/graphics/ColorSpace;)Z
    .registers 5
    .param p0, "color"    # J
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 829
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist isSrgb(J)Z
    .registers 3
    .param p0, "color"    # J

    .line 798
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    return v0
.end method

.method public static whitelist isWideGamut(J)Z
    .registers 3
    .param p0, "color"    # J

    .line 815
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    return v0
.end method

.method public static whitelist luminance(I)F
    .registers 13
    .param p0, "color"    # I

    .line 1356
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1357
    .local v0, "cs":Landroid/graphics/ColorSpace$Rgb;
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    .line 1359
    .local v1, "eotf":Ljava/util/function/DoubleUnaryOperator;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    invoke-interface {v1, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    .line 1360
    .local v2, "r":D
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v4

    invoke-interface {v1, v6, v7}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v6

    .line 1361
    .local v6, "g":D
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v4

    invoke-interface {v1, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    .line 1363
    .local v4, "b":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v2

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    double-to-float v8, v8

    return v8
.end method

.method public static whitelist luminance(J)F
    .registers 14
    .param p0, "color"    # J

    .line 1219
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1220
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v1

    sget-object v2, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v1, v2, :cond_48

    .line 1225
    move-object v1, v0

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    .line 1226
    .local v1, "eotf":Ljava/util/function/DoubleUnaryOperator;
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v2

    float-to-double v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    .line 1227
    .local v2, "r":D
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v1, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    .line 1228
    .local v4, "g":D
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v1, v6, v7}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v6

    .line 1230
    .local v6, "b":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v2

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Landroid/graphics/Color;->saturate(F)F

    move-result v8

    return v8

    .line 1221
    .end local v1    # "eotf":Ljava/util/function/DoubleUnaryOperator;
    .end local v2    # "r":D
    .end local v4    # "g":D
    .end local v6    # "b":D
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1222
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native greylist-max-o nativeHSVToColor(I[F)I
.end method

.method private static native greylist-max-o nativeRGBToHSV(III[F)V
.end method

.method public static whitelist pack(FFF)J
    .registers 5
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F

    .line 1002
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v1, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist pack(FFFF)J
    .registers 6
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F
    .param p3, "alpha"    # F

    .line 1019
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist pack(FFFFLandroid/graphics/ColorSpace;)J
    .registers 19
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F
    .param p3, "alpha"    # F
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1044
    move/from16 v0, p3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_33

    .line 1045
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v5, v0, v1

    add-float/2addr v5, v4

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    mul-float v6, p0, v1

    add-float/2addr v6, v4

    float-to-int v6, v6

    shl-int/lit8 v3, v6, 0x10

    or-int/2addr v3, v5

    mul-float v5, p1, v1

    add-float/2addr v5, v4

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    mul-float v1, v1, p2

    add-float/2addr v1, v4

    float-to-int v1, v1

    or-int/2addr v1, v3

    .line 1050
    .local v1, "argb":I
    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    return-wide v2

    .line 1053
    .end local v1    # "argb":I
    :cond_33
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    .line 1054
    .local v1, "id":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_84

    .line 1058
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_7c

    .line 1063
    invoke-static {p0}, Landroid/util/Half;->toHalf(F)S

    move-result v5

    .line 1064
    .local v5, "r":S
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result v6

    .line 1065
    .local v6, "g":S
    invoke-static/range {p2 .. p2}, Landroid/util/Half;->toHalf(F)S

    move-result v7

    .line 1067
    .local v7, "b":S
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v9, 0x447fc000    # 1023.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    float-to-int v4, v8

    .line 1070
    .local v4, "a":I
    int-to-long v8, v5

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v12, 0x30

    shl-long/2addr v8, v12

    int-to-long v12, v6

    and-long/2addr v12, v10

    shl-long/2addr v12, v2

    or-long/2addr v8, v12

    int-to-long v12, v7

    and-long/2addr v10, v12

    shl-long v2, v10, v3

    or-long/2addr v2, v8

    int-to-long v8, v4

    const-wide/16 v10, 0x3ff

    and-long/2addr v8, v10

    const/4 v10, 0x6

    shl-long/2addr v8, v10

    or-long/2addr v2, v8

    int-to-long v8, v1

    const-wide/16 v10, 0x3f

    and-long/2addr v8, v10

    or-long/2addr v2, v8

    return-wide v2

    .line 1059
    .end local v4    # "a":I
    .end local v5    # "r":S
    .end local v6    # "g":S
    .end local v7    # "b":S
    :cond_7c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The color space must use a color model with at most 3 components"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1055
    :cond_84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown color space, please use a color space returned by ColorSpace.get()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist pack(I)J
    .registers 5
    .param p0, "color"    # I

    .line 985
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist parseColor(Ljava/lang/String;)I
    .registers 6
    .param p0, "colorString"    # Ljava/lang/String;

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    const-string v2, "Unknown color"

    if-ne v0, v1, :cond_32

    .line 1388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 1389
    .local v0, "color":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_22

    .line 1391
    const-wide/32 v2, -0x1000000

    or-long/2addr v0, v2

    goto :goto_2a

    .line 1392
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2c

    .line 1395
    :goto_2a
    long-to-int v2, v0

    return v2

    .line 1393
    :cond_2c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1397
    .end local v0    # "color":J
    :cond_32
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1398
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_47

    .line 1399
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1402
    .end local v0    # "color":Ljava/lang/Integer;
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist red(J)F
    .registers 6
    .param p0, "color"    # J

    .line 725
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x30

    if-nez v0, :cond_15

    shr-long v0, p0, v1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 726
    :cond_15
    shr-long v0, p0, v1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static whitelist red(I)I
    .registers 2
    .param p0, "color"    # I

    .line 1252
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static whitelist rgb(FFF)I
    .registers 7
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F

    .line 1304
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v1, v3

    mul-float v3, p1, v0

    add-float/2addr v3, v2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public static whitelist rgb(III)I
    .registers 5
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .line 1289
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method private static greylist-max-o saturate(F)F
    .registers 3
    .param p0, "v"    # F

    .line 1234
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_6

    :goto_5
    goto :goto_e

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_d

    goto :goto_5

    :cond_d
    move v0, p0

    :goto_e
    return v0
.end method

.method public static whitelist toArgb(J)I
    .registers 11
    .param p0, "color"    # J

    .line 842
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0

    .line 844
    :cond_f
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 845
    .local v0, "r":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 846
    .local v1, "g":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 847
    .local v2, "b":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v3

    .line 850
    .local v3, "a":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v4

    .line 852
    .local v4, "c":[F
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v6, v3, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    const/4 v8, 0x0

    aget v8, v4, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    float-to-int v8, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    const/4 v8, 0x1

    aget v8, v4, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    float-to-int v8, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    const/4 v8, 0x2

    aget v8, v4, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    float-to-int v5, v8

    or-int/2addr v5, v6

    return v5
.end method

.method public static whitelist valueOf(FFF)Landroid/graphics/Color;
    .registers 5
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .line 900
    new-instance v0, Landroid/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static whitelist valueOf(FFFF)Landroid/graphics/Color;
    .registers 9
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .line 916
    new-instance v0, Landroid/graphics/Color;

    invoke-static {p0}, Landroid/graphics/Color;->saturate(F)F

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->saturate(F)F

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->saturate(F)F

    move-result v3

    invoke-static {p3}, Landroid/graphics/Color;->saturate(F)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static whitelist valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .registers 13
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 938
    invoke-virtual {p4}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_12

    .line 942
    new-instance v2, Landroid/graphics/Color;

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p0    # "r":F
    .end local p1    # "g":F
    .end local p2    # "b":F
    .end local p3    # "a":F
    .end local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    .local v3, "r":F
    .local v4, "g":F
    .local v5, "b":F
    .local v6, "a":F
    .local v7, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-direct/range {v2 .. v7}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v2

    .line 939
    .end local v3    # "r":F
    .end local v4    # "g":F
    .end local v5    # "b":F
    .end local v6    # "a":F
    .end local v7    # "colorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "r":F
    .restart local p1    # "g":F
    .restart local p2    # "b":F
    .restart local p3    # "a":F
    .restart local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_12
    move v3, p0

    move v4, p1

    .end local p0    # "r":F
    .end local p1    # "g":F
    .restart local v3    # "r":F
    .restart local v4    # "g":F
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The specified color space must use a color model with at most 3 color components"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist valueOf(I)Landroid/graphics/Color;
    .registers 9
    .param p0, "color"    # I

    .line 868
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v3, v0, v1

    .line 869
    .local v3, "r":F
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 870
    .local v4, "g":F
    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    div-float v5, v0, v1

    .line 871
    .local v5, "b":F
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v6, v0, v1

    .line 872
    .local v6, "a":F
    new-instance v2, Landroid/graphics/Color;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v2
.end method

.method public static whitelist valueOf(J)Landroid/graphics/Color;
    .registers 8
    .param p0, "color"    # J

    .line 885
    new-instance v0, Landroid/graphics/Color;

    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v1

    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v2

    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v4

    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v0
.end method

.method public static whitelist valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .registers 5
    .param p0, "components"    # [F
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 966
    array-length v0, p0

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_19

    .line 971
    new-instance v0, Landroid/graphics/Color;

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Color;-><init>([FLandroid/graphics/ColorSpace;)V

    return-object v0

    .line 967
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a component array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but the color model requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 969
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (including alpha)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist alpha()F
    .registers 3

    .line 553
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist blue()F
    .registers 3

    .line 538
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .registers 12
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 454
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    .line 455
    .local v0, "connector":Landroid/graphics/ColorSpace$Connector;
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v7, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    const/4 v9, 0x4

    new-array v9, v9, [F

    aput v1, v9, v2

    aput v3, v9, v4

    aput v5, v9, v6

    aput v7, v9, v8

    .line 458
    .local v9, "color":[F
    invoke-virtual {v0, v9}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    .line 459
    new-instance v1, Landroid/graphics/Color;

    invoke-direct {v1, v9, p1}, Landroid/graphics/Color;-><init>([FLandroid/graphics/ColorSpace;)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 645
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 646
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_29

    .line 648
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/graphics/Color;

    .line 651
    .local v1, "color":Landroid/graphics/Color;
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v3, v1, Landroid/graphics/Color;->mComponents:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_20

    return v0

    .line 652
    :cond_20
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    iget-object v2, v1, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 646
    .end local v1    # "color":Landroid/graphics/Color;
    :cond_29
    :goto_29
    return v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getComponent(I)F
    .registers 3
    .param p1, "component"    # I

    .line 615
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getComponentCount()I
    .registers 2

    .line 426
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getComponents()[F
    .registers 3

    .line 567
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getComponents([F)[F
    .registers 5
    .param p1, "components"    # [F

    .line 587
    if-nez p1, :cond_c

    .line 588
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0

    .line 591
    :cond_c
    array-length v0, p1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    .line 596
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    return-object p1

    .line 592
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified array\'s length must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModel()Landroid/graphics/ColorSpace$Model;
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    return-object v0
.end method

.method public whitelist green()F
    .registers 3

    .line 521
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 657
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    .line 658
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 659
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist isSrgb()Z
    .registers 2

    .line 414
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    return v0
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    return v0
.end method

.method public whitelist luminance()F
    .registers 12

    .line 630
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_4a

    .line 635
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    .line 636
    .local v0, "eotf":Ljava/util/function/DoubleUnaryOperator;
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v1

    .line 637
    .local v1, "r":D
    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    .line 638
    .local v3, "g":D
    iget-object v5, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    float-to-double v5, v5

    invoke-interface {v0, v5, v6}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v5

    .line 640
    .local v5, "b":D
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v7, v1

    const-wide v9, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    const-wide v9, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    double-to-float v7, v7

    invoke-static {v7}, Landroid/graphics/Color;->saturate(F)F

    move-result v7

    return v7

    .line 631
    .end local v0    # "eotf":Ljava/util/function/DoubleUnaryOperator;
    .end local v1    # "r":D
    .end local v3    # "g":D
    .end local v5    # "b":D
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 632
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist pack()J
    .registers 6

    .line 440
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist red()F
    .registers 3

    .line 504
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public whitelist toArgb()I
    .registers 12

    .line 471
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v0, :cond_36

    .line 472
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    aget v0, v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v1, v4

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v1, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0

    .line 478
    :cond_36
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    aget v0, v0, v4

    iget-object v7, p0, Landroid/graphics/Color;->mComponents:[F

    aget v7, v7, v3

    iget-object v8, p0, Landroid/graphics/Color;->mComponents:[F

    aget v8, v8, v2

    iget-object v9, p0, Landroid/graphics/Color;->mComponents:[F

    aget v9, v9, v1

    const/4 v10, 0x4

    new-array v10, v10, [F

    aput v0, v10, v4

    aput v7, v10, v3

    aput v8, v10, v2

    aput v9, v10, v1

    .line 482
    .local v10, "color":[F
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    .line 484
    aget v0, v10, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    aget v1, v10, v4

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget v1, v10, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget v1, v10, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Color("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1b

    aget v4, v1, v3

    .line 685
    .local v4, "c":F
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .end local v4    # "c":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 687
    :cond_1b
    iget-object v1, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
