.class public Lcom/android/internal/graphics/palette/LABPointProvider;
.super Ljava/lang/Object;
.source "LABPointProvider.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/PointProvider;


# instance fields
.field final blacklist mLabToRgb:Landroid/graphics/ColorSpace$Connector;

.field final blacklist mRgbToLab:Landroid/graphics/ColorSpace$Connector;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 35
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 36
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    .line 37
    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 38
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist distance([F[F)F
    .registers 13
    .param p1, "a"    # [F
    .param p2, "b"    # [F

    .line 62
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p2, v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    .line 63
    .local v0, "dL":D
    const/4 v2, 0x1

    aget v3, p1, v2

    aget v2, p2, v2

    sub-float/2addr v3, v2

    float-to-double v2, v3

    .line 64
    .local v2, "dA":D
    const/4 v4, 0x2

    aget v5, p1, v4

    aget v4, p2, v4

    sub-float/2addr v5, v4

    float-to-double v4, v5

    .line 65
    .local v4, "dB":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    return v6
.end method

.method public blacklist fromInt(I)[F
    .registers 6
    .param p1, "color"    # I

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 44
    .local v0, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 45
    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 47
    .local v3, "b":F
    iget-object v1, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v1

    .line 48
    .local v1, "transform":[F
    return-object v1
.end method

.method public blacklist toInt([F)I
    .registers 6
    .param p1, "centroid"    # [F

    .line 53
    iget-object v0, p0, Lcom/android/internal/graphics/palette/LABPointProvider;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v0

    .line 54
    .local v0, "rgb":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v1

    .line 55
    .local v1, "color":I
    return v1
.end method
