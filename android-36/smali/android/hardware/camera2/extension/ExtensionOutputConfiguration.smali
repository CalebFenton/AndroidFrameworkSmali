.class public Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;
.super Ljava/lang/Object;
.source "ExtensionOutputConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mOutputConfigId:I

.field private final blacklist mPhysicalCameraId:Ljava/lang/String;

.field private final blacklist mSurfaceGroupId:I

.field private final blacklist mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CameraOutputSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;ILjava/lang/String;I)V
    .registers 5
    .param p2, "outputConfigId"    # I
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .param p4, "surfaceGroupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CameraOutputSurface;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 60
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CameraOutputSurface;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    .line 62
    iput-object p3, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 63
    iput p2, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mOutputConfigId:I

    .line 64
    iput p4, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaceGroupId:I

    .line 65
    return-void
.end method

.method private blacklist initializeOutputConfig(Landroid/hardware/camera2/extension/CameraOutputConfig;Landroid/hardware/camera2/extension/CameraOutputSurface;)V
    .registers 5
    .param p1, "config"    # Landroid/hardware/camera2/extension/CameraOutputConfig;
    .param p2, "surface"    # Landroid/hardware/camera2/extension/CameraOutputSurface;

    .line 69
    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    .line 70
    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 71
    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    .line 72
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    .line 73
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    .line 75
    :cond_2b
    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getImageFormat()I

    move-result v0

    iput v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    .line 76
    const/4 v0, 0x0

    iput v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    .line 77
    iget-object v0, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    .line 79
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mOutputConfigId:I

    iput v1, v0, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 80
    iget v0, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaceGroupId:I

    iput v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    .line 81
    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getDynamicRangeProfile()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    .line 82
    return-void
.end method


# virtual methods
.method blacklist getOutputConfig()Landroid/hardware/camera2/extension/CameraOutputConfig;
    .registers 5

    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_a
    new-instance v0, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraOutputConfig;-><init>()V

    .line 90
    .local v0, "ret":Landroid/hardware/camera2/extension/CameraOutputConfig;
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->initializeOutputConfig(Landroid/hardware/camera2/extension/CameraOutputConfig;Landroid/hardware/camera2/extension/CameraOutputSurface;)V

    .line 91
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_53

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    .line 93
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_33
    iget-object v2, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 94
    new-instance v2, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/CameraOutputConfig;-><init>()V

    .line 95
    .local v2, "sharedConfig":Landroid/hardware/camera2/extension/CameraOutputConfig;
    iget-object v3, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->initializeOutputConfig(Landroid/hardware/camera2/extension/CameraOutputConfig;Landroid/hardware/camera2/extension/CameraOutputSurface;)V

    .line 96
    iget-object v3, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "sharedConfig":Landroid/hardware/camera2/extension/CameraOutputConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 100
    .end local v1    # "i":I
    :cond_53
    return-object v0
.end method
