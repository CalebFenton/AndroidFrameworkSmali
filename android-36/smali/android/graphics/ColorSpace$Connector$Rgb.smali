.class Landroid/graphics/ColorSpace$Connector$Rgb;
.super Landroid/graphics/ColorSpace$Connector;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rgb"
.end annotation


# instance fields
.field private final greylist-max-o mDestination:Landroid/graphics/ColorSpace$Rgb;

.field private final greylist-max-o mSource:Landroid/graphics/ColorSpace$Rgb;

.field private final greylist-max-o mTransform:[F


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V
    .registers 12
    .param p1, "source"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "destination"    # Landroid/graphics/ColorSpace$Rgb;
    .param p3, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 4166
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "source":Landroid/graphics/ColorSpace$Rgb;
    .end local p2    # "destination":Landroid/graphics/ColorSpace$Rgb;
    .end local p3    # "intent":Landroid/graphics/ColorSpace$RenderIntent;
    .local v1, "source":Landroid/graphics/ColorSpace$Rgb;
    .local v2, "destination":Landroid/graphics/ColorSpace$Rgb;
    .local v5, "intent":Landroid/graphics/ColorSpace$RenderIntent;
    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace-IA;)V

    .line 4167
    iput-object v1, v0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    .line 4168
    iput-object v2, v0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    .line 4169
    invoke-static {v1, v2, v5}, Landroid/graphics/ColorSpace$Connector$Rgb;->computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object p1

    iput-object p1, v0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    .line 4170
    return-void
.end method

.method private static greylist-max-o computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .registers 15
    .param p0, "source"    # Landroid/graphics/ColorSpace$Rgb;
    .param p1, "destination"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 4206
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4208
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmInverseTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3([F[F)[F

    move-result-object v0

    return-object v0

    .line 4211
    :cond_1b
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v0

    .line 4212
    .local v0, "transform":[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmInverseTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    .line 4214
    .local v1, "inverseTransform":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/ColorSpace;->-$$Nest$smxyYToXyz([F)[F

    move-result-object v2

    .line 4215
    .local v2, "srcXYZ":[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ColorSpace;->-$$Nest$smxyYToXyz([F)[F

    move-result-object v3

    .line 4217
    .local v3, "dstXYZ":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    sget-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v4, v5}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_58

    .line 4218
    sget-object v4, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v4, v4, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v6

    .line 4220
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    .line 4218
    invoke-static {v4, v2, v6}, Landroid/graphics/ColorSpace;->-$$Nest$smchromaticAdaptation([F[F[F)[F

    move-result-object v4

    .line 4221
    .local v4, "srcAdaptation":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v4, v6}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3([F[F)[F

    move-result-object v0

    .line 4224
    .end local v4    # "srcAdaptation":[F
    :cond_58
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v4, v6}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v4

    if-nez v4, :cond_80

    .line 4225
    sget-object v4, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v4, v4, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v6

    .line 4227
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    .line 4225
    invoke-static {v4, v3, v6}, Landroid/graphics/ColorSpace;->-$$Nest$smchromaticAdaptation([F[F[F)[F

    move-result-object v4

    .line 4228
    .local v4, "dstAdaptation":[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v4, v6}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3([F[F)[F

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/ColorSpace;->-$$Nest$sminverse3x3([F)[F

    move-result-object v1

    .line 4231
    .end local v4    # "dstAdaptation":[F
    :cond_80
    sget-object v4, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    if-ne p2, v4, :cond_a2

    .line 4232
    const/4 v4, 0x0

    aget v6, v2, v4

    aget v7, v3, v4

    div-float/2addr v6, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    aget v9, v3, v7

    div-float/2addr v8, v9

    const/4 v9, 0x2

    aget v10, v2, v9

    aget v11, v3, v9

    div-float/2addr v10, v11

    new-array v5, v5, [F

    aput v6, v5, v4

    aput v8, v5, v7

    aput v10, v5, v9

    invoke-static {v5, v0}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Diag([F[F)[F

    move-result-object v0

    .line 4240
    :cond_a2
    invoke-static {v1, v0}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3([F[F)[F

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public whitelist transform([F)[F
    .registers 8
    .param p1, "rgb"    # [F

    .line 4174
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmClampedEotf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 4175
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmClampedEotf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    const/4 v2, 0x1

    aget v3, p1, v2

    float-to-double v3, v3

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v2

    .line 4176
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmClampedEotf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    const/4 v3, 0x2

    aget v4, p1, v3

    float-to-double v4, v4

    invoke-interface {v0, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, p1, v3

    .line 4177
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 4178
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmClampedOetf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v4, p1, v1

    float-to-double v4, v4

    invoke-interface {v0, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, p1, v1

    .line 4179
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmClampedOetf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v2

    float-to-double v4, v1

    invoke-interface {v0, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 4180
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmClampedOetf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v3

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v3

    .line 4181
    return-object p1
.end method
