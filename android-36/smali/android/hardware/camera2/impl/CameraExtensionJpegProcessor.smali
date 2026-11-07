.class public Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;,
        Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
    }
.end annotation


# static fields
.field private static final blacklist JPEG_APP_SEGMENT_SIZE:I = 0x10000

.field private static final blacklist JPEG_QUEUE_SIZE:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "CameraExtensionJpeg"


# instance fields
.field private blacklist mCaptureFormat:I

.field private blacklist mFormat:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputSurface:Landroid/view/Surface;

.field private blacklist mOutputWriter:Landroid/media/ImageWriter;

.field private blacklist mPostviewFormat:I

.field private blacklist mPostviewOutputSurface:Landroid/view/Surface;

.field private blacklist mPostviewOutputWriter:Landroid/media/ImageWriter;

.field private blacklist mPostviewResolution:Landroid/hardware/camera2/extension/Size;

.field private blacklist mPostviewYuvReader:Landroid/media/ImageReader;

.field private final blacklist mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

.field private blacklist mResolution:Landroid/hardware/camera2/extension/Size;

.field private blacklist mYuvReader:Landroid/media/ImageReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
    .registers 19

    invoke-static/range {p0 .. p18}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V
    .registers 4
    .param p1, "processor"    # Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    .line 58
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    .line 59
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    .line 60
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    .line 62
    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    .line 63
    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    .line 64
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    .line 65
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 66
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    .line 67
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraExtensionJpeg"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private static native blacklist compressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I
.end method

.method private static blacklist getJpegParameters(Ljava/util/List;)Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;)",
            "Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;"
        }
    .end annotation

    .line 99
    .local p0, "captureBundles":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor-IA;)V

    .line 100
    .local v0, "ret":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 103
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v2, v2, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 104
    .local v2, "jpegQuality":Ljava/lang/Byte;
    const-string v3, "CameraExtensionJpeg"

    if-eqz v2, :cond_28

    .line 105
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    goto :goto_2d

    .line 107
    :cond_28
    const-string v4, "No jpeg quality set, using default: 100"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_2d
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v1, v1, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 112
    .local v1, "orientation":Ljava/lang/Integer;
    if-eqz v1, :cond_4c

    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    rsub-int v4, v4, 0x168

    div-int/lit8 v4, v4, 0x5a

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    goto :goto_51

    .line 116
    :cond_4c
    const-string v4, "No jpeg rotation set, using default: 0"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/CaptureBundle;

    .line 120
    .local v5, "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    iget-object v6, v5, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 121
    .local v6, "timeStamp":Ljava/lang/Long;
    if-eqz v6, :cond_73

    .line 122
    iget-object v7, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 124
    :cond_73
    const-string v7, "Capture bundle without valid sensor timestamp!"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v5    # "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    .end local v6    # "timeStamp":Ljava/lang/Long;
    :goto_78
    goto :goto_55

    .line 129
    .end local v1    # "orientation":Ljava/lang/Integer;
    .end local v2    # "jpegQuality":Ljava/lang/Byte;
    :cond_79
    return-object v0
.end method

.method private blacklist initializePipeline()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_77

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-nez v0, :cond_77

    .line 242
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_21

    .line 244
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    goto :goto_69

    .line 247
    :cond_21
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v3, v3, Landroid/hardware/camera2/extension/Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-static {v0, v3, v4, v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 251
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-static {v0, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    .line 253
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-direct {v2, p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 255
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 257
    :goto_69
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 258
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    .line 260
    :cond_77
    return-void
.end method

.method private blacklist initializePostviewPipeline()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    if-nez v0, :cond_6c

    .line 265
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1f

    .line 267
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    invoke-interface {v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    goto :goto_5e

    .line 270
    :cond_1f
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v3, v3, Landroid/hardware/camera2/extension/Size;->height:I

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-static {v0, v3, v4, v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    .line 273
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    invoke-static {v0, v2, v4, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    .line 275
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputWriter:Landroid/media/ImageWriter;

    invoke-direct {v2, p0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    .line 279
    :goto_5e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    invoke-interface {v0, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 280
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    .line 282
    :cond_6c
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Binder IPC not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist close()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 88
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 89
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputWriter:Landroid/media/ImageWriter;

    .line 92
    :cond_11
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1c

    .line 93
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 94
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mYuvReader:Landroid/media/ImageReader;

    .line 96
    :cond_1c
    return-void
.end method

.method public blacklist onImageFormatUpdate(I)V
    .registers 2
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iput p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mFormat:I

    .line 236
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    .line 237
    return-void
.end method

.method public blacklist onOutputSurface(Landroid/view/Surface;I)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 212
    .local v0, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mCaptureFormat:I

    .line 213
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mOutputSurface:Landroid/view/Surface;

    .line 214
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    .line 215
    return-void
.end method

.method public blacklist onPostviewOutputSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    nop

    .line 219
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 220
    .local v0, "postviewSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewFormat:I

    .line 221
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewOutputSurface:Landroid/view/Surface;

    .line 222
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePostviewPipeline()V

    .line 223
    return-void
.end method

.method public blacklist onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V
    .registers 3
    .param p1, "size"    # Landroid/hardware/camera2/extension/Size;
    .param p2, "postviewSize"    # Landroid/hardware/camera2/extension/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mResolution:Landroid/hardware/camera2/extension/Size;

    .line 230
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mPostviewResolution:Landroid/hardware/camera2/extension/Size;

    .line 231
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->initializePipeline()V

    .line 232
    return-void
.end method

.method public blacklist process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    .registers 7
    .param p2, "captureCallback"    # Landroid/hardware/camera2/extension/IProcessResultImpl;
    .param p3, "isPostviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;",
            "Landroid/hardware/camera2/extension/IProcessResultImpl;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    .local p1, "captureBundle":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->getJpegParameters(Ljava/util/List;)Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    move-result-object v0

    .line 202
    .local v0, "jpegParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    :try_start_4
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    .line 207
    nop

    .line 208
    return-void

    .line 204
    :catch_10
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->mJpegParameters:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 206
    throw v1
.end method
