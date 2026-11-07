.class public Landroid/window/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$ScreenCaptureListener;,
        Landroid/window/ScreenCapture$DisplayCaptureArgs;,
        Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;,
        Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;,
        Landroid/window/ScreenCapture$LayerCaptureArgs;,
        Landroid/window/ScreenCapture$CaptureArgs;
    }
.end annotation


# static fields
.field private static final blacklist SCREENSHOT_WAIT_TIME_S:I

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenCapture"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSCREENSHOT_WAIT_TIME_S()I
    .registers 1

    sget v0, Landroid/window/ScreenCapture;->SCREENSHOT_WAIT_TIME_S:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeListenerFinalizer()J
    .registers 2

    invoke-static {}, Landroid/window/ScreenCapture;->getNativeListenerFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J
    .registers 3

    invoke-static {p0}, Landroid/window/ScreenCapture;->nativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadListenerFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/window/ScreenCapture;->nativeReadListenerFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteListenerToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/window/ScreenCapture;->nativeWriteListenerToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit8 v0, v0, 0x4

    sput v0, Landroid/window/ScreenCapture;->SCREENSHOT_WAIT_TIME_S:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I
    .registers 4
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$DisplayCaptureArgs;
    .param p1, "captureListener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 68
    iget-wide v0, p1, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->nativeCaptureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;J)I

    move-result v0

    return v0
.end method

.method public static blacklist captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 5
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$DisplayCaptureArgs;

    .line 79
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 80
    .local v0, "syncScreenCapture":Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    invoke-static {p0, v0}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v1

    .line 81
    .local v1, "status":I
    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 82
    return-object v2

    .line 86
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object v2

    .line 87
    :catch_11
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public static blacklist captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I
    .registers 5
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$LayerCaptureArgs;
    .param p1, "captureListener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 178
    iget-wide v0, p1, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/window/ScreenCapture;->nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;JZ)I

    move-result v0

    return v0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 4
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F

    .line 107
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 6
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F
    .param p3, "format"    # I

    .line 126
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 128
    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 129
    invoke-virtual {v0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    .line 132
    .local v0, "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 5
    .param p0, "captureArgs"    # Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 139
    invoke-static {}, Landroid/window/ScreenCapture;->createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 140
    .local v0, "syncScreenCapture":Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    iget-wide v1, v0, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->mNativeObject:J

    .line 141
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->syncScreenCapture()Z

    move-result v3

    .line 140
    invoke-static {p0, v1, v2, v3}, Landroid/window/ScreenCapture;->nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;JZ)I

    move-result v1

    .line 142
    .local v1, "status":I
    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 143
    return-object v2

    .line 147
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    return-object v2

    .line 148
    :catch_17
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method public static blacklist captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 7
    .param p0, "layer"    # Landroid/view/SurfaceControl;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "frameScale"    # F
    .param p3, "format"    # I
    .param p4, "exclude"    # [Landroid/view/SurfaceControl;

    .line 161
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 163
    invoke-virtual {v0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 164
    invoke-virtual {v0, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 165
    invoke-virtual {v0, p4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    .line 168
    .local v0, "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    invoke-static {v0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createSyncCaptureListener()Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;
    .registers 4

    .line 766
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 767
    .local v1, "bufferRef":[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 768
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Landroid/window/ScreenCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Landroid/window/ScreenCapture$$ExternalSyntheticLambda0;-><init>([Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;)V

    .line 778
    .local v0, "consumer":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;>;"
    new-instance v3, Landroid/window/ScreenCapture$1;

    invoke-direct {v3, v0, v0, v2, v1}, Landroid/window/ScreenCapture$1;-><init>(Ljava/util/function/ObjIntConsumer;Ljava/util/function/ObjIntConsumer;Ljava/util/concurrent/CountDownLatch;[Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-object v3
.end method

.method private static native blacklist getNativeListenerFinalizer()J
.end method

.method static synthetic blacklist lambda$createSyncCaptureListener$0([Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Ljava/util/concurrent/CountDownLatch;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .registers 6
    .param p0, "bufferRef"    # [Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "buffer"    # Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .param p3, "status"    # I

    .line 769
    const/4 v0, 0x0

    if-eqz p3, :cond_1f

    .line 770
    const/4 v1, 0x0

    aput-object v1, p0, v0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to generate screen capture. Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 773
    :cond_1f
    aput-object p2, p0, v0

    .line 775
    :goto_21
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 776
    return-void
.end method

.method private static native blacklist nativeCaptureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;J)I
.end method

.method private static native blacklist nativeCaptureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;JZ)I
.end method

.method private static native blacklist nativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist nativeReadListenerFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeWriteListenerToParcel(JLandroid/os/Parcel;)V
.end method
