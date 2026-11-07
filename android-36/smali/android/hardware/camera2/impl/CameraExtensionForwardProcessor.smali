.class public Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
.super Ljava/lang/Object;
.source "CameraExtensionForwardProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;
    }
.end annotation


# static fields
.field private static final blacklist FORWARD_QUEUE_SIZE:I = 0x3

.field public static final blacklist TAG:Ljava/lang/String; = "CameraExtensionForward"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIntermediateReader:Landroid/media/ImageReader;

.field private blacklist mIntermediateSurface:Landroid/view/Surface;

.field private blacklist mOutputAbandoned:Z

.field private blacklist mOutputSurface:Landroid/view/Surface;

.field private final blacklist mOutputSurfaceFormat:I

.field private final blacklist mOutputSurfaceUsage:J

.field private blacklist mOutputWriter:Landroid/media/ImageWriter;

.field private final blacklist mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

.field private blacklist mResolution:Landroid/util/Size;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/media/ImageWriter;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;IJLandroid/os/Handler;)V
    .registers 7
    .param p1, "processor"    # Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    .param p2, "format"    # I
    .param p3, "surfaceUsage"    # J
    .param p5, "handler"    # Landroid/os/Handler;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    .line 47
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    .line 48
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    .line 49
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurface:Landroid/view/Surface;

    .line 50
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    .line 55
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    .line 56
    iput-wide p3, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceUsage:J

    .line 57
    iput p2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceFormat:I

    .line 58
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private blacklist initializePipeline()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 96
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 97
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 100
    :cond_c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    if-nez v0, :cond_65

    .line 101
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    .line 102
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceUsage:J

    .line 101
    const/16 v4, 0x23

    const/4 v5, 0x3

    invoke-static/range {v2 .. v7}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    .line 104
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    .line 105
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;

    invoke-direct {v2, p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor-IA;)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 107
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurfaceFormat:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->onImageFormatUpdate(I)V

    .line 110
    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 112
    .local v0, "sz":Landroid/hardware/camera2/extension/Size;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    .line 113
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    .line 114
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    invoke-interface {v1, v0}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    .line 116
    .end local v0    # "sz":Landroid/hardware/camera2/extension/Size;
    :cond_65
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 64
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 67
    :cond_c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_17

    .line 68
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 69
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateReader:Landroid/media/ImageReader;

    .line 71
    :cond_17
    return-void
.end method

.method public blacklist onImageFormatUpdate(I)V
    .registers 4
    .param p1, "format"    # I

    .line 88
    const/16 v0, 0x23

    if-eq p1, v0, :cond_1c

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported input format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraExtensionForward"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1c
    return-void
.end method

.method public blacklist onOutputSurface(Landroid/view/Surface;I)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "format"    # I

    .line 74
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputSurface:Landroid/view/Surface;

    .line 76
    :try_start_2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->initializePipeline()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 80
    goto :goto_e

    .line 77
    :catch_6
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraExtensionForward"

    const-string v2, "Failed to initialize forward processor, extension service does not respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist onResolutionUpdate(Landroid/util/Size;)V
    .registers 2
    .param p1, "size"    # Landroid/util/Size;

    .line 84
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mResolution:Landroid/util/Size;

    .line 85
    return-void
.end method

.method public blacklist process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    .registers 7
    .param p1, "image"    # Landroid/hardware/camera2/extension/ParcelImage;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "resultCallback"    # Landroid/hardware/camera2/extension/IProcessResultImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mIntermediateSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mOutputAbandoned:Z

    if-nez v0, :cond_1d

    .line 122
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->mProcessor:Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    .line 123
    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v2

    .line 122
    invoke-interface {v0, p1, v1, v2, p3}, Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/impl/CameraMetadataNative;ILandroid/hardware/camera2/extension/IProcessResultImpl;)V

    .line 125
    :cond_1d
    return-void
.end method
