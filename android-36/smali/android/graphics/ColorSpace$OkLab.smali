.class final Landroid/graphics/ColorSpace$OkLab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OkLab"
.end annotation


# static fields
.field private static final blacklist INVERSE_M1:[F

.field private static final blacklist INVERSE_M2:[F

.field private static final blacklist M1:[F

.field private static final blacklist M1TMP:[F

.field private static final blacklist M2:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 2296
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_34

    sput-object v1, Landroid/graphics/ColorSpace$OkLab;->M1TMP:[F

    .line 2307
    sget-object v1, Landroid/graphics/ColorSpace$OkLab;->M1TMP:[F

    sget-object v2, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    sget-object v3, Landroid/graphics/ColorSpace$OkLab;->ILLUMINANT_D50:[F

    sget-object v4, Landroid/graphics/ColorSpace$OkLab;->ILLUMINANT_D65:[F

    .line 2309
    invoke-static {v2, v3, v4}, Landroid/graphics/ColorSpace$OkLab;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    move-result-object v2

    .line 2307
    invoke-static {v1, v2}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3([F[F)[F

    move-result-object v1

    sput-object v1, Landroid/graphics/ColorSpace$OkLab;->M1:[F

    .line 2315
    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    sput-object v0, Landroid/graphics/ColorSpace$OkLab;->M2:[F

    .line 2324
    sget-object v0, Landroid/graphics/ColorSpace$OkLab;->M1:[F

    invoke-static {v0}, Landroid/graphics/ColorSpace;->-$$Nest$sminverse3x3([F)[F

    move-result-object v0

    sput-object v0, Landroid/graphics/ColorSpace$OkLab;->INVERSE_M1:[F

    .line 2330
    sget-object v0, Landroid/graphics/ColorSpace$OkLab;->M2:[F

    invoke-static {v0}, Landroid/graphics/ColorSpace;->-$$Nest$sminverse3x3([F)[F

    move-result-object v0

    sput-object v0, Landroid/graphics/ColorSpace$OkLab;->INVERSE_M2:[F

    return-void

    nop

    :array_34
    .array-data 4
        0x3f51a598
        0x3d071acd
        0x3d456dae
        0x3eb94699
        0x3f6de762
        0x3e875b04
        -0x41fc0c33
        0x3d140d73
        0x3f22441b
    .end array-data

    :array_4a
    .array-data 4
        0x3e578152
        0x3ffd2f0e
        0x3cd434b4
        0x3f4b2a89
        -0x3fe491f2
        0x3f4863bb
        -0x447a9132
        0x3ee6b438
        -0x40b0faa0
    .end array-data
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 2247
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 2248
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$OkLab;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .registers 5
    .param p1, "v"    # [F

    .line 2283
    sget-object v0, Landroid/graphics/ColorSpace$OkLab;->M1:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 2285
    const/4 v0, 0x0

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    .line 2286
    const/4 v0, 0x1

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    .line 2287
    const/4 v0, 0x2

    aget v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    .line 2289
    sget-object v0, Landroid/graphics/ColorSpace$OkLab;->M2:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 2290
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 2262
    if-nez p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_7
    return v0
.end method

.method public whitelist getMinValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 2257
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/high16 v0, -0x41000000    # -0.5f

    :goto_6
    return v0
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 2252
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist toXyz([F)[F
    .registers 8
    .param p1, "v"    # [F

    .line 2267
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 2268
    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 2269
    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 2271
    sget-object v3, Landroid/graphics/ColorSpace$OkLab;->INVERSE_M2:[F

    invoke-static {v3, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 2272
    aget v3, p1, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    aget v4, p1, v0

    mul-float/2addr v3, v4

    aput v3, p1, v0

    .line 2273
    aget v0, p1, v1

    aget v3, p1, v1

    mul-float/2addr v0, v3

    aget v3, p1, v1

    mul-float/2addr v0, v3

    aput v0, p1, v1

    .line 2274
    aget v0, p1, v2

    aget v1, p1, v2

    mul-float/2addr v0, v1

    aget v1, p1, v2

    mul-float/2addr v0, v1

    aput v0, p1, v2

    .line 2276
    sget-object v0, Landroid/graphics/ColorSpace$OkLab;->INVERSE_M1:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 2278
    return-object p1
.end method
