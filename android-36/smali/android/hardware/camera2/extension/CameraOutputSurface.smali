.class public final Landroid/hardware/camera2/extension/CameraOutputSurface;
.super Ljava/lang/Object;
.source "CameraOutputSurface.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/OutputSurface;)V
    .registers 2
    .param p1, "surface"    # Landroid/hardware/camera2/extension/OutputSurface;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;Landroid/util/Size;)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "size"    # Landroid/util/Size;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/hardware/camera2/extension/OutputSurface;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputSurface;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-object p1, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    .line 64
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    .line 65
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    .line 66
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    .line 67
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    .line 68
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    .line 69
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()I
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    return v0
.end method

.method public whitelist getDynamicRangeProfile()J
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-wide v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    return-wide v0
.end method

.method public whitelist getImageFormat()I
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    return v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .registers 4

    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_18

    .line 86
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v1, v1, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iget v1, v1, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v2, v2, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 88
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist setDynamicRangeProfile(J)V
    .registers 4
    .param p1, "dynamicRangeProfile"    # J

    .line 125
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-wide p1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    .line 126
    return-void
.end method
