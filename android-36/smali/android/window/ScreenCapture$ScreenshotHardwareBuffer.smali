.class public Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 0.015625f


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContainsHdrLayers:Z

.field private final blacklist mContainsSecureLayers:Z

.field private final blacklist mGainmap:Landroid/hardware/HardwareBuffer;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mHdrSdrRatio:F


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .registers 12
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "containsSecureLayers"    # Z
    .param p4, "containsHdrLayers"    # Z

    .line 199
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local p2    # "colorSpace":Landroid/graphics/ColorSpace;
    .end local p3    # "containsSecureLayers":Z
    .end local p4    # "containsHdrLayers":Z
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .local v2, "colorSpace":Landroid/graphics/ColorSpace;
    .local v3, "containsSecureLayers":Z
    .local v4, "containsHdrLayers":Z
    invoke-direct/range {v0 .. v6}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V

    .line 200
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V
    .registers 7
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "containsSecureLayers"    # Z
    .param p4, "containsHdrLayers"    # Z
    .param p5, "gainmap"    # Landroid/hardware/HardwareBuffer;
    .param p6, "hdrSdrRatio"    # F

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 206
    iput-object p2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 207
    iput-boolean p3, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 208
    iput-boolean p4, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    .line 209
    iput-object p5, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    .line 210
    iput p6, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    .line 211
    return-void
.end method

.method private static blacklist createFromNative(Landroid/hardware/HardwareBuffer;IZZLandroid/hardware/HardwareBuffer;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 14
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "dataspace"    # I
    .param p2, "containsSecureLayers"    # Z
    .param p3, "containsHdrLayers"    # Z
    .param p4, "gainmap"    # Landroid/hardware/HardwareBuffer;
    .param p5, "hdrSdrRatio"    # F

    .line 227
    invoke-static {p1}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 228
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    new-instance v1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 229
    if-eqz v0, :cond_a

    move-object v3, v0

    goto :goto_11

    :cond_a
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    move-object v3, v2

    :goto_11
    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p0    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local p2    # "containsSecureLayers":Z
    .end local p3    # "containsHdrLayers":Z
    .end local p4    # "gainmap":Landroid/hardware/HardwareBuffer;
    .end local p5    # "hdrSdrRatio":F
    .local v2, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .local v4, "containsSecureLayers":Z
    .local v5, "containsHdrLayers":Z
    .local v6, "gainmap":Landroid/hardware/HardwareBuffer;
    .local v7, "hdrSdrRatio":F
    invoke-direct/range {v1 .. v7}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZLandroid/hardware/HardwareBuffer;F)V

    .line 228
    return-object v1
.end method


# virtual methods
.method public blacklist asBitmap()Landroid/graphics/Bitmap;
    .registers 8

    .line 270
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 271
    const-string v0, "ScreenCapture"

    const-string v2, "Failed to take screenshot. Null screenshot object"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v1

    .line 275
    :cond_d
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iget-object v2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_48

    .line 277
    iget-object v2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mGainmap:Landroid/hardware/HardwareBuffer;

    invoke-static {v2, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 278
    .local v1, "gainmapBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Gainmap;

    invoke-direct {v2, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    .local v2, "gainmap":Landroid/graphics/Gainmap;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setRatioMin(FFF)V

    .line 280
    iget v4, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    iget v5, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    iget v6, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    .line 281
    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Gainmap;->setGamma(FFF)V

    .line 282
    const/high16 v4, 0x3c800000    # 0.015625f

    invoke-virtual {v2, v4, v4, v4}, Landroid/graphics/Gainmap;->setEpsilonSdr(FFF)V

    .line 283
    invoke-virtual {v2, v4, v4, v4}, Landroid/graphics/Gainmap;->setEpsilonHdr(FFF)V

    .line 284
    invoke-virtual {v2, v3}, Landroid/graphics/Gainmap;->setMinDisplayRatioForHdrTransition(F)V

    .line 285
    iget v3, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHdrSdrRatio:F

    invoke-virtual {v2, v3}, Landroid/graphics/Gainmap;->setDisplayRatioForFullHdr(F)V

    .line 286
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 289
    .end local v1    # "gainmapBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "gainmap":Landroid/graphics/Gainmap;
    :cond_48
    return-object v0
.end method

.method public blacklist containsHdrLayers()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return v0
.end method

.method public blacklist containsSecureLayers()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method
