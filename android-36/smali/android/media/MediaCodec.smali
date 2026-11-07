.class public final Landroid/media/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$BufferMap;,
        Landroid/media/MediaCodec$EventHandler;,
        Landroid/media/MediaCodec$PersistentSurface;,
        Landroid/media/MediaCodec$InvalidBufferFlagsException;,
        Landroid/media/MediaCodec$IncompatibleWithBlockModelException;,
        Landroid/media/MediaCodec$CryptoException;,
        Landroid/media/MediaCodec$CryptoInfo;,
        Landroid/media/MediaCodec$QueueRequest;,
        Landroid/media/MediaCodec$BufferInfo;,
        Landroid/media/MediaCodec$OutputFrame;,
        Landroid/media/MediaCodec$Callback;,
        Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;,
        Landroid/media/MediaCodec$OnFrameRenderedListener;,
        Landroid/media/MediaCodec$ParameterDescriptor;,
        Landroid/media/MediaCodec$MetricsConstants;,
        Landroid/media/MediaCodec$MediaImage;,
        Landroid/media/MediaCodec$VideoScalingMode;,
        Landroid/media/MediaCodec$OutputBufferInfo;,
        Landroid/media/MediaCodec$LinearBlock;,
        Landroid/media/MediaCodec$CodecException;,
        Landroid/media/MediaCodec$InstanceResourceInfo;,
        Landroid/media/MediaCodec$GlobalResourceInfo;,
        Landroid/media/MediaCodec$ConfigureFlag;,
        Landroid/media/MediaCodec$BufferFlag;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_FLAG_CODEC_CONFIG:I = 0x2

.field public static final whitelist BUFFER_FLAG_DECODE_ONLY:I = 0x20

.field public static final whitelist BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final whitelist BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final greylist-max-o BUFFER_FLAG_MUXER_DATA:I = 0x10

.field public static final whitelist BUFFER_FLAG_PARTIAL_FRAME:I = 0x8

.field public static final whitelist BUFFER_FLAG_SYNC_FRAME:I = 0x1

.field private static final blacklist BUFFER_MODE_BLOCK:I = 0x1

.field private static final blacklist BUFFER_MODE_INVALID:I = -0x1

.field private static final blacklist BUFFER_MODE_LEGACY:I = 0x0

.field private static final blacklist CB_CRYPTO_ERROR:I = 0x6

.field private static final greylist-max-o CB_ERROR:I = 0x3

.field private static final greylist-max-o CB_INPUT_AVAILABLE:I = 0x1

.field private static final blacklist CB_LARGE_FRAME_OUTPUT_AVAILABLE:I = 0x7

.field private static final blacklist CB_METRICS_FLUSHED:I = 0x8

.field private static final greylist-max-o CB_OUTPUT_AVAILABLE:I = 0x2

.field private static final greylist-max-o CB_OUTPUT_FORMAT_CHANGE:I = 0x4

.field private static final blacklist CB_REQUIRED_RESOURCES_CHANGE:I = 0x9

.field public static final whitelist CONFIGURE_FLAG_DETACHED_SURFACE:I = 0x8

.field public static final whitelist CONFIGURE_FLAG_ENCODE:I = 0x1

.field public static final whitelist CONFIGURE_FLAG_USE_BLOCK_MODEL:I = 0x2

.field public static final whitelist CONFIGURE_FLAG_USE_CRYPTO_ASYNC:I = 0x4

.field public static final whitelist CRYPTO_MODE_AES_CBC:I = 0x2

.field public static final whitelist CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final whitelist CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field private static final blacklist EOS_AND_DECODE_ONLY_ERROR_MESSAGE:Ljava/lang/String; = "An input buffer cannot have both BUFFER_FLAG_END_OF_STREAM and BUFFER_FLAG_DECODE_ONLY flags"

.field private static final greylist-max-o EVENT_CALLBACK:I = 0x1

.field private static final blacklist EVENT_FIRST_TUNNEL_FRAME_READY:I = 0x4

.field private static final greylist-max-o EVENT_FRAME_RENDERED:I = 0x3

.field private static final greylist-max-o EVENT_SET_CALLBACK:I = 0x2

.field public static final whitelist INFO_OUTPUT_BUFFERS_CHANGED:I = -0x3

.field public static final whitelist INFO_OUTPUT_FORMAT_CHANGED:I = -0x2

.field public static final whitelist INFO_TRY_AGAIN_LATER:I = -0x1

.field public static final whitelist PARAMETER_KEY_HDR10_PLUS_INFO:Ljava/lang/String; = "hdr10-plus-info"

.field public static final whitelist PARAMETER_KEY_LOW_LATENCY:Ljava/lang/String; = "low-latency"

.field public static final whitelist PARAMETER_KEY_OFFSET_TIME:Ljava/lang/String; = "time-offset-us"

.field private static final blacklist PARAMETER_KEY_PICTURE_PROFILE_HANDLE:Ljava/lang/String; = "picture-profile-handle"

.field public static final whitelist PARAMETER_KEY_QP_OFFSET_MAP:Ljava/lang/String; = "qp-offset-map"

.field public static final whitelist PARAMETER_KEY_QP_OFFSET_RECTS:Ljava/lang/String; = "qp-offset-rects"

.field public static final whitelist PARAMETER_KEY_REQUEST_SYNC_FRAME:Ljava/lang/String; = "request-sync"

.field public static final whitelist PARAMETER_KEY_SUSPEND:Ljava/lang/String; = "drop-input-frames"

.field public static final whitelist PARAMETER_KEY_SUSPEND_TIME:Ljava/lang/String; = "drop-start-time-us"

.field public static final whitelist PARAMETER_KEY_TUNNEL_PEEK:Ljava/lang/String; = "tunnel-peek"

.field public static final whitelist PARAMETER_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video-bitrate"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaCodec"

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final greylist-max-o mBufferLock:Ljava/lang/Object;

.field private blacklist mBufferMode:I

.field private greylist-max-o mCachedInputBuffers:[Ljava/nio/ByteBuffer;

.field private greylist-max-o mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

.field private greylist-max-o mCallback:Landroid/media/MediaCodec$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mCodecInfo:Landroid/media/MediaCodecInfo;

.field private final greylist-max-o mCodecInfoLock:Ljava/lang/Object;

.field private blacklist mCrypto:Landroid/media/MediaCrypto;

.field private final greylist-max-o mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final greylist-max-o mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final greylist-max-o mDequeuedOutputInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEventHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mHasSurface:Z

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private blacklist mNameAtCreation:Ljava/lang/String;

.field private greylist-max-p mNativeContext:J

.field private final blacklist mNativeContextLock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

.field private blacklist mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

.field private greylist-max-o mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

.field private final blacklist mOutputFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$OutputFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueueRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$QueueRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidInputIndices:Ljava/util/BitSet;

.field private blacklist mValidOutputIndices:Ljava/util/BitSet;


# direct methods
.method public static synthetic blacklist $r8$lambda$NmGWc2g-t7Mb5HMMclT2SYaPFWg(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$8()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aWebg36Lmf8ipkB1sR8VC8o9VuM(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ehc_5VQ2FrSPNRMaG6ycYn4dAfQ(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jenittK9gOThgOR4pmt8B_RJicY(Landroid/media/MediaCodec;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->lambda$setCallback$9()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCachedInputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnFirstTunnelFrameReadyListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnFrameRenderedListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_queueHardwareBuffer(Landroid/media/MediaCodec;ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/media/MediaCodec;->native_queueHardwareBuffer(ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_queueLinearBlock(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueLinearBlock(ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateInputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->validateInputByteBufferLocked([Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateOutputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBufferLocked([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateOutputByteBuffersLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBuffersLocked([Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_closeMediaImage(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaCodec;->native_closeMediaImage(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_releasePersistentInputSurface(Landroid/view/Surface;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaCodec;->native_releasePersistentInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6099
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6100
    invoke-static {}, Landroid/media/MediaCodec;->native_init()V

    .line 6101
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;ZZ)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsType"    # Z
    .param p3, "encoder"    # Z

    .line 2170
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "nameIsType":Z
    .end local p3    # "encoder":Z
    .local v1, "name":Ljava/lang/String;
    .local v2, "nameIsType":Z
    .local v3, "encoder":Z
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZII)V

    .line 2171
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ZZII)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsType"    # Z
    .param p3, "encoder"    # Z
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1829
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    .line 1831
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mCodecInfoLock:Ljava/lang/Object;

    .line 2073
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2458
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    .line 4195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 4541
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    .line 4542
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4544
    new-instance v0, Landroid/media/MediaCodec$BufferMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec-IA;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 4545
    new-instance v0, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec-IA;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 4546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    .line 5064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    .line 6103
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec;->mNativeContext:J

    .line 6105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    .line 2176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v2, v0

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_63

    .line 2177
    new-instance v0, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_74

    .line 2178
    :cond_63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_72

    .line 2179
    new-instance v0, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_74

    .line 2181
    :cond_72
    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2183
    :goto_74
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2184
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2185
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    .line 2187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    .line 2190
    if-eqz p2, :cond_8a

    goto :goto_8b

    :cond_8a
    move-object v1, p1

    :goto_8b
    iput-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    .line 2192
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaCodec;->native_setup(Ljava/lang/String;ZZII)V

    .line 2193
    return-void
.end method

.method static blacklist GetFlag(Ljava/util/function/Supplier;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2061
    .local p0, "flagValueSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;Z)Z

    move-result v0

    return v0
.end method

.method static blacklist GetFlag(Ljava/util/function/Supplier;Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 2067
    .local p0, "flagValueSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 2068
    :catch_b
    move-exception v0

    .line 2069
    .local v0, "e":Ljava/lang/RuntimeException;
    return p1
.end method

.method private blacklist cacheBuffersLocked(Z)V
    .registers 9
    .param p1, "input"    # Z

    .line 4674
    const/4 v0, 0x0

    .line 4676
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getBuffers(Z)[Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .line 4677
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_9} :catch_a

    .line 4680
    goto :goto_b

    .line 4678
    :catch_a
    move-exception v1

    .line 4681
    :goto_b
    if-eqz v0, :cond_4b

    .line 4682
    if-eqz p1, :cond_12

    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    goto :goto_14

    :cond_12
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4683
    .local v1, "indices":Ljava/util/BitSet;
    :goto_14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_48

    .line 4684
    aget-object v3, v0, v2

    .line 4685
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_45

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_23

    .line 4686
    goto :goto_45

    .line 4688
    :cond_23
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4689
    if-nez p1, :cond_45

    .line 4690
    iget-object v4, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    .line 4691
    .local v4, "info":Landroid/media/MediaCodec$BufferInfo;
    if-eqz v4, :cond_45

    .line 4692
    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v5

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 4683
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4696
    .end local v2    # "i":I
    :cond_48
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4698
    .end local v1    # "indices":Ljava/util/BitSet;
    :cond_4b
    if-eqz p1, :cond_50

    .line 4699
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_52

    .line 4701
    :cond_50
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 4703
    :goto_52
    return-void
.end method

.method private greylist-max-o configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
    .registers 18
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "descramblerBinder"    # Landroid/os/IHwBinder;
    .param p5, "flags"    # I

    .line 2464
    if-eqz p3, :cond_d

    if-nez p4, :cond_5

    goto :goto_d

    .line 2465
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use crypto and descrambler together!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2469
    :cond_d
    :goto_d
    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    .line 2470
    .local v0, "canDetach":Z
    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/media/MediaCodec$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2473
    if-nez p2, :cond_32

    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_32

    if-eqz v0, :cond_2a

    goto :goto_32

    .line 2474
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Codec does not support detached surface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2481
    :cond_32
    :goto_32
    move v8, v0

    goto :goto_36

    .line 2478
    :cond_34
    const/4 v0, 0x0

    move v8, v0

    .line 2481
    .end local v0    # "canDetach":Z
    .local v8, "canDetach":Z
    :goto_36
    const/4 v0, 0x0

    .line 2482
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2484
    .local v1, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_15d

    .line 2485
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 2486
    .local v2, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 2487
    .end local v0    # "keys":[Ljava/lang/String;
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 2489
    const/4 v0, 0x0

    .line 2490
    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Map$Entry;

    .line 2491
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "audio-session-id"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2492
    const/4 v9, 0x0

    .line 2494
    .local v9, "sessionId":I
    :try_start_70
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7a} :catch_8b

    .line 2498
    .end local v9    # "sessionId":I
    .local v0, "sessionId":I
    nop

    .line 2499
    const-string v9, "audio-hw-sync"

    aput-object v9, v3, v6

    .line 2500
    invoke-static {v0}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v6

    .line 2501
    .end local v0    # "sessionId":I
    goto/16 :goto_155

    .line 2496
    .restart local v9    # "sessionId":I
    :catch_8b
    move-exception v0

    .line 2497
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Wrong Session ID Parameter!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2501
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "sessionId":I
    :cond_94
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 2502
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "picture-profile-instance"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 2503
    const/4 v9, 0x0

    .line 2505
    .local v9, "pictureProfile":Landroid/media/quality/PictureProfile;
    :try_start_af
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/quality/PictureProfile;
    :try_end_b5
    .catch Ljava/lang/ClassCastException; {:try_start_af .. :try_end_b5} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b5} :catch_d8

    .line 2513
    .end local v9    # "pictureProfile":Landroid/media/quality/PictureProfile;
    .local v0, "pictureProfile":Landroid/media/quality/PictureProfile;
    nop

    .line 2514
    if-eqz v0, :cond_d0

    .line 2518
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v9

    .line 2519
    .local v9, "handle":Landroid/media/quality/PictureProfileHandle;
    sget-object v10, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    if-eq v9, v10, :cond_ce

    .line 2520
    const-string v10, "picture-profile-handle"

    aput-object v10, v3, v6

    .line 2521
    invoke-virtual {v9}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v6

    .line 2523
    .end local v0    # "pictureProfile":Landroid/media/quality/PictureProfile;
    .end local v9    # "handle":Landroid/media/quality/PictureProfileHandle;
    :cond_ce
    goto/16 :goto_155

    .line 2515
    .restart local v0    # "pictureProfile":Landroid/media/quality/PictureProfile;
    :cond_d0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v9, "Picture profile instance parameter is null!"

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2509
    .end local v0    # "pictureProfile":Landroid/media/quality/PictureProfile;
    .local v9, "pictureProfile":Landroid/media/quality/PictureProfile;
    :catch_d8
    move-exception v0

    .line 2510
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MediaCodec"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unexpected exception when casting the instance parameter to PictureProfile!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2506
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ea
    move-exception v0

    .line 2507
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Cannot cast the instance parameter to PictureProfile!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2523
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v9    # "pictureProfile":Landroid/media/quality/PictureProfile;
    :cond_f3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v0

    if-eqz v0, :cond_147

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 2524
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "picture-profile-id"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 2525
    const/4 v9, 0x0

    .line 2527
    .local v9, "pictureProfileId":Ljava/lang/String;
    :try_start_10e
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_114
    .catch Ljava/lang/ClassCastException; {:try_start_10e .. :try_end_114} :catch_13e
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_114} :catch_12c

    .line 2535
    .end local v9    # "pictureProfileId":Ljava/lang/String;
    .local v0, "pictureProfileId":Ljava/lang/String;
    nop

    .line 2536
    if-eqz v0, :cond_124

    .line 2540
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_123

    .line 2541
    const-string v9, "picture-profile-id"

    aput-object v9, v3, v6

    .line 2542
    aput-object v0, v1, v6

    .line 2544
    .end local v0    # "pictureProfileId":Ljava/lang/String;
    :cond_123
    goto :goto_155

    .line 2537
    .restart local v0    # "pictureProfileId":Ljava/lang/String;
    :cond_124
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v9, "KEY_PICTURE_PROFILE_ID parameter is null!"

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2531
    .end local v0    # "pictureProfileId":Ljava/lang/String;
    .restart local v9    # "pictureProfileId":Ljava/lang/String;
    :catch_12c
    move-exception v0

    .line 2532
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MediaCodec"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unexpected exception when casting the KEY_PICTURE_PROFILE_ID parameter!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2528
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_13e
    move-exception v0

    .line 2529
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Cannot cast the KEY_PICTURE_PROFILE_ID parameter to String!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2545
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v9    # "pictureProfileId":Ljava/lang/String;
    :cond_147
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v6

    .line 2546
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v6

    .line 2548
    :goto_155
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v6, v6, 0x1

    .line 2549
    goto/16 :goto_54

    .line 2490
    :cond_15a
    move-object v2, v3

    move-object v3, v1

    goto :goto_15f

    .line 2484
    .end local v2    # "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v6    # "i":I
    .local v0, "keys":[Ljava/lang/String;
    :cond_15d
    move-object v2, v0

    move-object v3, v1

    .line 2552
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "values":[Ljava/lang/Object;
    .local v2, "keys":[Ljava/lang/String;
    .local v3, "values":[Ljava/lang/Object;
    :goto_15f
    const/4 v0, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_165

    move v1, v9

    goto :goto_166

    :cond_165
    move v1, v0

    :goto_166
    iput-boolean v1, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2553
    iput-object p3, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2554
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2555
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_177

    .line 2556
    :try_start_171
    iput v9, p0, Landroid/media/MediaCodec;->mBufferMode:I
    :try_end_173
    .catchall {:try_start_171 .. :try_end_173} :catchall_174

    goto :goto_179

    .line 2560
    :catchall_174
    move-exception v0

    move-object v4, v2

    goto :goto_192

    .line 2558
    :cond_177
    :try_start_177
    iput v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    .line 2560
    :goto_179
    monitor-exit v1
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_190

    .line 2562
    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaCodec;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2564
    move-object v4, v2

    .end local v2    # "keys":[Ljava/lang/String;
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v8, :cond_18f

    .line 2567
    if-nez p2, :cond_18f

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_18f

    .line 2568
    iput-boolean v9, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2571
    :cond_18f
    return-void

    .line 2560
    .end local v4    # "keys":[Ljava/lang/String;
    .restart local v2    # "keys":[Ljava/lang/String;
    :catchall_190
    move-exception v0

    move-object v4, v2

    .end local v2    # "keys":[Ljava/lang/String;
    .restart local v4    # "keys":[Ljava/lang/String;
    :goto_192
    :try_start_192
    monitor-exit v1
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_194

    throw v0

    :catchall_194
    move-exception v0

    goto :goto_192
.end method

.method public static whitelist createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2140
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createByCodecNameForClient(Ljava/lang/String;II)Landroid/media/MediaCodec;
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clientPid"    # I
    .param p2, "clientUid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2165
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "clientPid":I
    .end local p2    # "clientUid":I
    .local v1, "name":Ljava/lang/String;
    .local v4, "clientPid":I
    .local v5, "clientUid":I
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZII)V

    return-object v0
.end method

.method public static whitelist createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2107
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createPersistentInputSurface()Landroid/view/Surface;
    .registers 1

    .line 2707
    invoke-static {}, Landroid/media/MediaCodec;->native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o freeAllTrackedBuffers()V
    .registers 3

    .line 4659
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4660
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 4661
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 4662
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    .line 4663
    iput-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 4664
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4665
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 4666
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 4667
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 4668
    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4669
    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4670
    monitor-exit v0

    .line 4671
    return-void

    .line 4670
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private blacklist freeByteBufferLocked(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 4644
    if-eqz p1, :cond_5

    .line 4646
    invoke-static {p1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 4648
    :cond_5
    return-void
.end method

.method private blacklist freeByteBuffersLocked([Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 4651
    if-eqz p1, :cond_e

    .line 4652
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 4653
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2}, Landroid/media/MediaCodec;->freeByteBufferLocked(Ljava/nio/ByteBuffer;)V

    .line 4652
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4656
    :cond_e
    return-void
.end method

.method private final native greylist-max-o getBuffer(ZI)Ljava/nio/ByteBuffer;
.end method

.method private final native greylist getBuffers(Z)[Ljava/nio/ByteBuffer;
.end method

.method private greylist-max-o getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "lastHandler"    # Landroid/media/MediaCodec$EventHandler;

    .line 5883
    if-nez p1, :cond_5

    .line 5884
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    return-object v0

    .line 5886
    :cond_5
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5887
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {p2}, Landroid/media/MediaCodec$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_10

    .line 5888
    return-object p2

    .line 5890
    :cond_10
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    return-object v1
.end method

.method private final native greylist-max-o getFormatNative(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public static blacklist getGloballyAvailableResources()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$GlobalResourceInfo;",
            ">;"
        }
    .end annotation

    .line 2383
    invoke-static {}, Landroid/media/MediaCodec;->native_getGloballyAvailableResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final native greylist-max-o getImage(ZI)Landroid/media/Image;
.end method

.method private final native greylist-max-o getOutputFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native greylist-max-o getOwnCodecInfo()Landroid/media/MediaCodecInfo;
.end method

.method private blacklist invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V
    .registers 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "input"    # Z

    .line 4552
    if-nez p1, :cond_f

    .line 4553
    if-ltz p2, :cond_1c

    .line 4554
    if-eqz p3, :cond_9

    iget-object v0, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4555
    .local v0, "indices":Ljava/util/BitSet;
    :goto_b
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->clear(I)V

    .line 4556
    .end local v0    # "indices":Ljava/util/BitSet;
    goto :goto_1c

    .line 4557
    :cond_f
    if-ltz p2, :cond_1c

    array-length v0, p1

    if-ge p2, v0, :cond_1c

    .line 4558
    aget-object v0, p1, p2

    .line 4559
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1c

    .line 4560
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4563
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 4634
    if-eqz p1, :cond_11

    .line 4635
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_11

    aget-object v3, p1, v2

    .line 4636
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_e

    .line 4637
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4635
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4641
    :cond_11
    return-void
.end method

.method static synthetic blacklist lambda$configure$0()Ljava/lang/Boolean;
    .registers 1

    .line 2469
    invoke-static {}, Landroid/media/codec/Flags;->nullOutputSurfaceSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$configure$1()Ljava/lang/Boolean;
    .registers 1

    .line 2470
    invoke-static {}, Landroid/media/codec/Flags;->nullOutputSurface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$detachOutputSurface$2()Ljava/lang/Boolean;
    .registers 1

    .line 2686
    invoke-static {}, Landroid/media/codec/Flags;->nullOutputSurfaceSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setCallback$5()Ljava/lang/Boolean;
    .registers 1

    .line 5551
    invoke-static {}, Landroid/media/codec/Flags;->setCallbackStall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setCallback$6()V
    .registers 3

    .line 5563
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5564
    return-void
.end method

.method private synthetic blacklist lambda$setCallback$7()V
    .registers 3

    .line 5568
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5569
    return-void
.end method

.method private synthetic blacklist lambda$setCallback$8()V
    .registers 3

    .line 5582
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5583
    return-void
.end method

.method private synthetic blacklist lambda$setCallback$9()V
    .registers 3

    .line 5587
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5588
    return-void
.end method

.method static synthetic blacklist lambda$validateOutputByteBuffersLocked$3(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$BufferInfo;)I
    .registers 4
    .param p0, "info1"    # Landroid/media/MediaCodec$BufferInfo;
    .param p1, "info2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 4600
    iget v0, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$validateOutputByteBuffersLocked$4(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$BufferInfo;)I
    .registers 4
    .param p0, "info1"    # Landroid/media/MediaCodec$BufferInfo;
    .param p1, "info2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 4602
    iget v0, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private final blacklist lockAndGetContext()J
    .registers 3

    .line 6108
    iget-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6109
    iget-wide v0, p0, Landroid/media/MediaCodec;->mNativeContext:J

    return-wide v0
.end method

.method private blacklist logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 5523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5524
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 5525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    return-void
.end method

.method public static whitelist mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;
    .registers 2
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 3783
    invoke-static {p0}, Landroid/media/MediaCodec;->native_mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist native_closeMediaImage(J)V
.end method

.method private final native greylist-max-o native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
.end method

.method private static final native greylist-max-o native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;
.end method

.method private final native greylist-max-o native_dequeueInputBuffer(J)I
.end method

.method private final native greylist-max-o native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method private native blacklist native_detachOutputSurface()V
.end method

.method private native blacklist native_enableOnFirstTunnelFrameReadyListener(Z)V
.end method

.method private native greylist-max-o native_enableOnFrameRenderedListener(Z)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private static native blacklist native_getGloballyAvailableResources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$GlobalResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getOutputFrame(Landroid/media/MediaCodec$OutputFrame;I)V
.end method

.method private native blacklist native_getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;
.end method

.method private native blacklist native_getRequiredResources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$InstanceResourceInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist native_getSupportedVendorParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private static native blacklist native_mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;
.end method

.method private native blacklist native_queueHardwareBuffer(ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/HardwareBuffer;",
            "JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_queueInputBuffer(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native blacklist native_queueInputBuffers(I[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation
.end method

.method private native blacklist native_queueLinearBlock(ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/media/MediaCodec$LinearBlock;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native blacklist native_queueSecureInputBuffers(I[Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private static final native greylist-max-o native_releasePersistentInputSurface(Landroid/view/Surface;)V
.end method

.method private final native greylist-max-o native_reset()V
.end method

.method private native blacklist native_setAudioPresentation(II)V
.end method

.method private final native greylist-max-o native_setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method private final native greylist-max-o native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native greylist-max-o native_setSurface(Landroid/view/Surface;)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;ZZII)V
.end method

.method private final native greylist-max-o native_start()V
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private native blacklist native_subscribeToVendorParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native blacklist native_unsubscribeFromVendorParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private greylist-max-o postEventFromNative(IIILjava/lang/Object;)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 6035
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6036
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 6037
    .local v1, "handler":Landroid/media/MediaCodec$EventHandler;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_c

    .line 6038
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    move-object v1, v2

    goto :goto_19

    .line 6039
    :cond_c
    const/4 v2, 0x4

    if-ne p1, v2, :cond_13

    .line 6040
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    move-object v1, v2

    goto :goto_19

    .line 6041
    :cond_13
    const/4 v2, 0x3

    if-ne p1, v2, :cond_19

    .line 6042
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    move-object v1, v2

    .line 6044
    :cond_19
    :goto_19
    if-eqz v1, :cond_22

    .line 6045
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 6046
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6048
    .end local v1    # "handler":Landroid/media/MediaCodec$EventHandler;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_22
    monitor-exit v0

    .line 6049
    return-void

    .line 6048
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private final native greylist releaseOutputBuffer(IZZJ)V
.end method

.method private blacklist releaseOutputBufferInternal(IZZJ)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "render"    # Z
    .param p3, "updatePts"    # Z
    .param p4, "renderTimestampNs"    # J

    .line 4383
    const/4 v1, 0x0

    .line 4384
    .local v1, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4385
    :try_start_4
    iget v0, p0, Landroid/media/MediaCodec;->mBufferMode:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_6a

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_74

    .line 4399
    move-wide v3, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .local v3, "renderTimestampNs":J
    .local p2, "index":I
    .local p3, "render":Z
    .local p4, "updatePts":Z
    :try_start_f
    new-instance p5, Ljava/lang/IllegalStateException;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_72

    goto :goto_51

    .line 4394
    .end local v3    # "renderTimestampNs":J
    .restart local p1    # "index":I
    .local p2, "render":Z
    .local p3, "updatePts":Z
    .local p4, "renderTimestampNs":J
    :pswitch_12
    :try_start_12
    iget-object v0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$OutputFrame;

    .line 4395
    .local v0, "frame":Landroid/media/MediaCodec$OutputFrame;
    invoke-virtual {v0, v3}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 4396
    invoke-virtual {v0}, Landroid/media/MediaCodec$OutputFrame;->clear()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_21

    .line 4397
    goto :goto_47

    .line 4402
    .end local v0    # "frame":Landroid/media/MediaCodec$OutputFrame;
    :catchall_21
    move-exception v0

    move-wide v3, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    goto :goto_70

    .line 4387
    :pswitch_28
    :try_start_28
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v3}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4388
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 4389
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_6a

    if-nez v0, :cond_3a

    :try_start_36
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_21

    if-nez v0, :cond_47

    .line 4390
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    move-object v1, v0

    .line 4402
    :cond_47
    :goto_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_6a

    .line 4403
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    .line 4405
    move-wide v3, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .restart local v3    # "renderTimestampNs":J
    .local p2, "index":I
    .local p3, "render":Z
    .local p4, "updatePts":Z
    return-void

    .line 4399
    :goto_51
    :try_start_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized buffer mode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Landroid/media/MediaCodec;->mBufferMode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v3    # "renderTimestampNs":J
    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p2    # "index":I
    .end local p3    # "render":Z
    .end local p4    # "updatePts":Z
    throw p5

    .line 4402
    .restart local v1    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .local p2, "render":Z
    .local p3, "updatePts":Z
    .local p4, "renderTimestampNs":J
    :catchall_6a
    move-exception v0

    move-wide v3, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .restart local v3    # "renderTimestampNs":J
    .local p2, "index":I
    .local p3, "render":Z
    .local p4, "updatePts":Z
    :goto_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_72

    throw v0

    :catchall_72
    move-exception v0

    goto :goto_70

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_28
        :pswitch_12
    .end packed-switch
.end method

.method private blacklist revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V
    .registers 7
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "input"    # Z

    .line 4582
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4583
    if-nez p1, :cond_12

    .line 4584
    if-ltz p2, :cond_1f

    .line 4585
    if-eqz p3, :cond_c

    :try_start_9
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    .line 4586
    .local v1, "indices":Ljava/util/BitSet;
    :goto_e
    invoke-virtual {v1, p2}, Ljava/util/BitSet;->set(I)V

    .line 4587
    .end local v1    # "indices":Ljava/util/BitSet;
    goto :goto_1f

    .line 4588
    :cond_12
    if-ltz p2, :cond_1f

    array-length v1, p1

    if-ge p2, v1, :cond_1f

    .line 4589
    aget-object v1, p1, p2

    .line 4590
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_1f

    .line 4591
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4594
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 4595
    return-void

    .line 4594
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private final blacklist setAndUnlockContext(J)V
    .registers 4
    .param p1, "context"    # J

    .line 6113
    iput-wide p1, p0, Landroid/media/MediaCodec;->mNativeContext:J

    .line 6114
    iget-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6115
    return-void
.end method

.method private final native greylist setParameters([Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private blacklist validateInputByteBufferLocked([Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .line 4567
    if-nez p1, :cond_a

    .line 4568
    if-ltz p2, :cond_1a

    .line 4569
    iget-object v0, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1a

    .line 4571
    :cond_a
    if-ltz p2, :cond_1a

    array-length v0, p1

    if-ge p2, v0, :cond_1a

    .line 4572
    aget-object v0, p1, p2

    .line 4573
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1a

    .line 4574
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4575
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4578
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist validateOutputByteBufferLocked([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 7
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .line 4620
    if-nez p1, :cond_a

    .line 4621
    if-ltz p2, :cond_25

    .line 4622
    iget-object v0, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_25

    .line 4624
    :cond_a
    if-ltz p2, :cond_25

    array-length v0, p1

    if-ge p2, v0, :cond_25

    .line 4625
    aget-object v0, p1, p2

    .line 4626
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_25

    .line 4627
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4628
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 4631
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_25
    :goto_25
    return-void
.end method

.method private blacklist validateOutputByteBuffersLocked([Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V
    .registers 9
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    .line 4599
    .local p3, "infoDeque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaCodec$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    .line 4601
    .local v0, "minInfo":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/media/MediaCodec$BufferInfo;>;"
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaCodec$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/media/MediaCodec$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 4603
    .local v1, "maxInfo":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/media/MediaCodec$BufferInfo;>;"
    if-nez p1, :cond_24

    .line 4604
    if-ltz p2, :cond_5c

    .line 4605
    iget-object v2, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {v2, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_5c

    .line 4607
    :cond_24
    if-ltz p2, :cond_5c

    array-length v2, p1

    if-ge p2, v2, :cond_5c

    .line 4608
    aget-object v2, p1, p2

    .line 4609
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_5c

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 4610
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 4611
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4612
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4616
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public whitelist configure(Landroid/media/MediaFormat;Landroid/view/Surface;ILandroid/media/MediaDescrambler;)V
    .registers 12
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "flags"    # I
    .param p4, "descrambler"    # Landroid/media/MediaDescrambler;

    .line 2451
    nop

    .line 2452
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Landroid/media/MediaDescrambler;->getBinder()Landroid/os/IHwBinder;

    move-result-object v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move-object v5, v0

    .line 2451
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .end local p1    # "format":Landroid/media/MediaFormat;
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "flags":I
    .local v2, "format":Landroid/media/MediaFormat;
    .local v3, "surface":Landroid/view/Surface;
    .local v6, "flags":I
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2453
    return-void
.end method

.method public whitelist configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 11
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I

    .line 2422
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "format":Landroid/media/MediaFormat;
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "crypto":Landroid/media/MediaCrypto;
    .end local p4    # "flags":I
    .local v1, "format":Landroid/media/MediaFormat;
    .local v2, "surface":Landroid/view/Surface;
    .local v3, "crypto":Landroid/media/MediaCrypto;
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2423
    return-void
.end method

.method public final native whitelist createInputSurface()Landroid/view/Surface;
.end method

.method public final whitelist dequeueInputBuffer(J)I
    .registers 8
    .param p1, "timeoutUs"    # J

    .line 3594
    const-string v0, "MediaCodec::dequeueInputBuffer#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3595
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3596
    :try_start_a
    iget v3, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    .line 3601
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2f

    .line 3602
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_dequeueInputBuffer(J)I

    move-result v0

    .line 3603
    .local v0, "res":I
    if-ltz v0, :cond_23

    .line 3604
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3605
    :try_start_19
    iget-object v4, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v0}, Landroid/media/MediaCodec;->validateInputByteBufferLocked([Ljava/nio/ByteBuffer;I)V

    .line 3606
    monitor-exit v3

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1

    .line 3608
    :cond_23
    :goto_23
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3609
    return v0

    .line 3597
    .end local v0    # "res":I
    :cond_27
    :try_start_27
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "dequeueInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use MediaCodec.Callback objectes to get input buffer slots."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "timeoutUs":J
    throw v1

    .line 3601
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "timeoutUs":J
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final whitelist dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .registers 9
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "timeoutUs"    # J

    .line 4280
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4281
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    .line 4286
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_42

    .line 4287
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 4288
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4289
    const/4 v0, -0x3

    if-ne v1, v0, :cond_1a

    .line 4290
    const/4 v0, 0x0

    :try_start_14
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffersLocked(Z)V

    goto :goto_36

    .line 4297
    :catchall_18
    move-exception v0

    goto :goto_38

    .line 4291
    :cond_1a
    if-ltz v1, :cond_36

    .line 4292
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, p1}, Landroid/media/MediaCodec;->validateOutputByteBufferLocked([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 4293
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_36

    .line 4294
    :cond_29
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaCodec$BufferInfo;->dup()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4297
    :cond_36
    :goto_36
    monitor-exit v2

    .line 4298
    return v1

    .line 4297
    :goto_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_18

    throw v0

    .line 4282
    .end local v1    # "res":I
    :cond_3a
    :try_start_3a
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "dequeueOutputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use MediaCodec.Callback objects to get output buffer slots."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local p2    # "timeoutUs":J
    throw v1

    .line 4286
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local p2    # "timeoutUs":J
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v1
.end method

.method public whitelist detachOutputSurface()V
    .registers 3

    .line 2679
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_1b

    .line 2686
    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2687
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_detachOutputSurface()V

    .line 2691
    return-void

    .line 2689
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec does not support detaching output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2680
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec was not configured for an output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 2199
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_finalize()V

    .line 2200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2201
    return-void
.end method

.method public final whitelist flush()V
    .registers 3

    .line 2835
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2836
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 2837
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->invalidateByteBuffersLocked([Ljava/nio/ByteBuffer;)V

    .line 2838
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidInputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2839
    iget-object v1, p0, Landroid/media/MediaCodec;->mValidOutputIndices:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 2840
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 2841
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 2842
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    .line 2843
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_flush()V

    .line 2844
    return-void

    .line 2842
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final native whitelist getCanonicalName()Ljava/lang/String;
.end method

.method public whitelist getCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 4

    .line 6064
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6065
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCodecInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6066
    :try_start_7
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_1b

    .line 6069
    invoke-direct {p0}, Landroid/media/MediaCodec;->getOwnCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 6070
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_1b

    .line 6071
    invoke-static {v0}, Landroid/media/MediaCodecList;->getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 6074
    :cond_1b
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    monitor-exit v1

    return-object v2

    .line 6075
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public whitelist getInputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I

    .line 4804
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4805
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 4811
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 4812
    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4813
    .local v1, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4814
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v2}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4815
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 4816
    monitor-exit v3

    .line 4817
    return-object v1

    .line 4816
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v0

    .line 4806
    .end local v1    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_1f
    :try_start_1f
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4811
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist getInputBuffers()[Ljava/nio/ByteBuffer;
    .registers 4

    .line 4725
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4726
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    .line 4732
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v1, :cond_f

    .line 4733
    invoke-direct {p0, v2}, Landroid/media/MediaCodec;->cacheBuffersLocked(Z)V

    .line 4735
    :cond_f
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_17

    .line 4739
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 4736
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 4727
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :cond_1d
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 4740
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final whitelist getInputFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 4449
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getInputImage(I)Landroid/media/Image;
    .registers 6
    .param p1, "index"    # I

    .line 4841
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4842
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 4848
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 4849
    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v1

    .line 4850
    .local v1, "newImage":Landroid/media/Image;
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4851
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v2}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4852
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 4853
    monitor-exit v3

    .line 4854
    return-object v1

    .line 4853
    :catchall_1c
    move-exception v0

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v0

    .line 4843
    .end local v1    # "newImage":Landroid/media/Image;
    :cond_1f
    :try_start_1f
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputImage() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4848
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 5211
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 5212
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public final whitelist getName()Ljava/lang/String;
    .registers 3

    .line 5175
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 5176
    .local v0, "canonicalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method public whitelist getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I

    .line 4878
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4879
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    .line 4884
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 4885
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4886
    .local v1, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4887
    :try_start_11
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v0}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4888
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 4889
    monitor-exit v2

    .line 4890
    return-object v1

    .line 4889
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v0

    .line 4880
    .end local v1    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_20
    :try_start_20
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame() to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4884
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getOutputBuffers()[Ljava/nio/ByteBuffer;
    .registers 4

    .line 4767
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4768
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    .line 4773
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v1, :cond_10

    .line 4774
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffersLocked(Z)V

    .line 4776
    :cond_10
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_18

    .line 4780
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 4777
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 4769
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :cond_1e
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 4781
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final whitelist getOutputFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 4434
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final whitelist getOutputFormat(I)Landroid/media/MediaFormat;
    .registers 4
    .param p1, "index"    # I

    .line 4463
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getOutputFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getOutputFrame(I)Landroid/media/MediaCodec$OutputFrame;
    .registers 7
    .param p1, "index"    # I

    .line 5077
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5078
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8c

    .line 5081
    if-ltz p1, :cond_62

    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_62

    .line 5085
    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$OutputFrame;

    .line 5086
    .local v1, "frame":Landroid/media/MediaCodec$OutputFrame;
    if-eqz v1, :cond_49

    .line 5089
    invoke-virtual {v1}, Landroid/media/MediaCodec$OutputFrame;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 5093
    invoke-virtual {v1}, Landroid/media/MediaCodec$OutputFrame;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 5094
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->native_getOutputFrame(Landroid/media/MediaCodec$OutputFrame;I)V

    .line 5095
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$OutputFrame;->setLoaded(Z)V

    .line 5097
    :cond_2e
    monitor-exit v0

    return-object v1

    .line 5090
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The output frame is stale at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 5087
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unavailable index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 5082
    .end local v1    # "frame":Landroid/media/MediaCodec$OutputFrame;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_62
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected range of index: [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 5083
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 5079
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_8c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The codec is not configured for block model"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 5098
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public whitelist getOutputImage(I)Landroid/media/Image;
    .registers 6
    .param p1, "index"    # I

    .line 4913
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4914
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    .line 4919
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 4920
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v1

    .line 4921
    .local v1, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4922
    :try_start_11
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v0}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 4923
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 4924
    monitor-exit v2

    .line 4925
    return-object v1

    .line 4924
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v0

    .line 4915
    .end local v1    # "newImage":Landroid/media/Image;
    :cond_20
    :try_start_20
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputImage() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame() to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4919
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 5814
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getQueueRequest(I)Landroid/media/MediaCodec$QueueRequest;
    .registers 7
    .param p1, "index"    # I

    .line 4208
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4209
    :try_start_3
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_84

    .line 4212
    if-ltz p1, :cond_5a

    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5a

    .line 4216
    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$QueueRequest;

    .line 4217
    .local v1, "request":Landroid/media/MediaCodec$QueueRequest;
    if-eqz v1, :cond_41

    .line 4220
    invoke-virtual {v1}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4224
    invoke-virtual {v1}, Landroid/media/MediaCodec$QueueRequest;->clear()Landroid/media/MediaCodec$QueueRequest;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 4221
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The request is stale at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 4218
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unavailable index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 4213
    .end local v1    # "request":Landroid/media/MediaCodec$QueueRequest;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_5a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected range of index: [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 4214
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4210
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_84
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The codec is not configured for block model"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4225
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public blacklist getRequiredResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodec$InstanceResourceInfo;",
            ">;"
        }
    .end annotation

    .line 2634
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getRequiredResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedVendorParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5749
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getSupportedVendorParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queueInputBuffer(IIIJI)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .line 3156
    const-string v0, "MediaCodec::queueInputBuffer#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3157
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_18

    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_10

    goto :goto_18

    .line 3159
    :cond_10
    new-instance v0, Landroid/media/MediaCodec$InvalidBufferFlagsException;

    const-string v1, "An input buffer cannot have both BUFFER_FLAG_END_OF_STREAM and BUFFER_FLAG_DECODE_ONLY flags"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaCodec$InvalidBufferFlagsException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw v0

    .line 3161
    :cond_18
    :goto_18
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3162
    :try_start_1b
    iget v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_54

    .line 3167
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3168
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3169
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_62

    .line 3171
    :try_start_2b
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueInputBuffer(IIIJI)V
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2e} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_41
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    move v5, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 3177
    .end local p1    # "index":I
    .end local p6    # "flags":I
    .local v5, "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "size":I
    .local p5, "presentationTimeUs":J
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3178
    nop

    .line 3179
    return-void

    .line 3177
    .end local v5    # "flags":I
    .end local p5    # "presentationTimeUs":J
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "size":I
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catchall_39
    move-exception v0

    move v5, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .end local p6    # "flags":I
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "size":I
    .restart local p5    # "presentationTimeUs":J
    goto :goto_50

    .line 3173
    .end local v5    # "flags":I
    .end local p5    # "presentationTimeUs":J
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "size":I
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catch_41
    move-exception v0

    move v5, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 3174
    .end local p1    # "index":I
    .end local p6    # "flags":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "size":I
    .restart local p5    # "presentationTimeUs":J
    :try_start_48
    iget-object v3, p1, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p2, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3175
    nop

    .end local v5    # "flags":I
    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p2    # "index":I
    .end local p3    # "offset":I
    .end local p4    # "size":I
    .end local p5    # "presentationTimeUs":J
    throw v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4f

    .line 3177
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "flags":I
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p2    # "index":I
    .restart local p3    # "offset":I
    .restart local p4    # "size":I
    .restart local p5    # "presentationTimeUs":J
    :catchall_4f
    move-exception v0

    :goto_50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3178
    throw v0

    .line 3163
    .end local v5    # "flags":I
    .end local p5    # "presentationTimeUs":J
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "size":I
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :cond_54
    move v5, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .end local p6    # "flags":I
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "size":I
    .restart local p5    # "presentationTimeUs":J
    :try_start_5a
    new-instance v0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v1, "queueInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local v5    # "flags":I
    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p2    # "index":I
    .end local p3    # "offset":I
    .end local p4    # "size":I
    .end local p5    # "presentationTimeUs":J
    throw v0

    .line 3169
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "size":I
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catchall_62
    move-exception v0

    move v5, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .end local p6    # "flags":I
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "size":I
    .restart local p5    # "presentationTimeUs":J
    :goto_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_6b

    throw v0

    :catchall_6b
    move-exception v0

    goto :goto_69
.end method

.method public final whitelist queueInputBuffers(ILjava/util/ArrayDeque;)V
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    .line 3219
    .local p2, "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    const-string v0, "MediaCodec::queueInputBuffers#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3220
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3221
    :try_start_a
    iget v3, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35

    .line 3226
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3227
    iget-object v3, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v3, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3228
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_3d

    .line 3230
    nop

    .line 3231
    :try_start_1b
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3230
    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodec;->native_queueInputBuffers(I[Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_22} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_22} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_22} :catch_29
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    .line 3236
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3237
    nop

    .line 3238
    return-void

    .line 3236
    :catchall_27
    move-exception v0

    goto :goto_31

    .line 3232
    :catch_29
    move-exception v0

    .line 3233
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2a
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3234
    nop

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    throw v0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 3236
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    :goto_31
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3237
    throw v0

    .line 3222
    :cond_35
    :try_start_35
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "queueInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    throw v1

    .line 3228
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public final whitelist queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .line 3497
    const-string v0, "MediaCodec::queueSecureInputBuffer#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3498
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_18

    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_10

    goto :goto_18

    .line 3500
    :cond_10
    new-instance v0, Landroid/media/MediaCodec$InvalidBufferFlagsException;

    const-string v1, "An input buffer cannot have both BUFFER_FLAG_END_OF_STREAM and BUFFER_FLAG_DECODE_ONLY flags"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaCodec$InvalidBufferFlagsException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    throw v0

    .line 3502
    :cond_18
    :goto_18
    iget-object v3, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3503
    :try_start_1b
    iget v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_54

    .line 3508
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3509
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3510
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_62

    .line 3512
    :try_start_2b
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2e} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_41
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    move v5, p6

    move-wide p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 3518
    .end local p1    # "index":I
    .end local p6    # "flags":I
    .local v5, "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "info":Landroid/media/MediaCodec$CryptoInfo;
    .local p5, "presentationTimeUs":J
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3519
    nop

    .line 3520
    return-void

    .line 3518
    .end local v5    # "flags":I
    .end local p5    # "presentationTimeUs":J
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "info":Landroid/media/MediaCodec$CryptoInfo;
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catchall_39
    move-exception v0

    move v5, p6

    move-wide p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .end local p6    # "flags":I
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "info":Landroid/media/MediaCodec$CryptoInfo;
    .restart local p5    # "presentationTimeUs":J
    goto :goto_50

    .line 3514
    .end local v5    # "flags":I
    .end local p5    # "presentationTimeUs":J
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "info":Landroid/media/MediaCodec$CryptoInfo;
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catch_41
    move-exception v0

    move v5, p6

    move-wide p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 3515
    .end local p1    # "index":I
    .end local p6    # "flags":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "info":Landroid/media/MediaCodec$CryptoInfo;
    .restart local p5    # "presentationTimeUs":J
    :try_start_48
    iget-object v3, p1, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p2, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3516
    nop

    .end local v5    # "flags":I
    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p2    # "index":I
    .end local p3    # "offset":I
    .end local p4    # "info":Landroid/media/MediaCodec$CryptoInfo;
    .end local p5    # "presentationTimeUs":J
    throw v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4f

    .line 3518
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "flags":I
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p2    # "index":I
    .restart local p3    # "offset":I
    .restart local p4    # "info":Landroid/media/MediaCodec$CryptoInfo;
    .restart local p5    # "presentationTimeUs":J
    :catchall_4f
    move-exception v0

    :goto_50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3519
    throw v0

    .line 3504
    .end local v5    # "flags":I
    .end local p5    # "presentationTimeUs":J
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "info":Landroid/media/MediaCodec$CryptoInfo;
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :cond_54
    move v5, p6

    move-wide p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .end local p6    # "flags":I
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "info":Landroid/media/MediaCodec$CryptoInfo;
    .restart local p5    # "presentationTimeUs":J
    :try_start_5a
    new-instance v0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v1, "queueSecureInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {v0, p0, v1}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local v5    # "flags":I
    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p2    # "index":I
    .end local p3    # "offset":I
    .end local p4    # "info":Landroid/media/MediaCodec$CryptoInfo;
    .end local p5    # "presentationTimeUs":J
    throw v0

    .line 3510
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .local p2, "offset":I
    .local p3, "info":Landroid/media/MediaCodec$CryptoInfo;
    .local p4, "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catchall_62
    move-exception v0

    move v5, p6

    move-wide p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "index":I
    .end local p6    # "flags":I
    .restart local v5    # "flags":I
    .local p2, "index":I
    .local p3, "offset":I
    .local p4, "info":Landroid/media/MediaCodec$CryptoInfo;
    .restart local p5    # "presentationTimeUs":J
    :goto_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_6b

    throw v0

    :catchall_6b
    move-exception v0

    goto :goto_69
.end method

.method public final whitelist queueSecureInputBuffers(ILjava/util/ArrayDeque;Ljava/util/ArrayDeque;)V
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;)V"
        }
    .end annotation

    .line 3549
    .local p2, "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .local p3, "cryptoInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$CryptoInfo;>;"
    const-string v0, "MediaCodec::queueSecureInputBuffers#java"

    const-wide/16 v1, 0x200

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3550
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3551
    :try_start_a
    iget v3, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_39

    .line 3556
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v4}, Landroid/media/MediaCodec;->invalidateByteBufferLocked([Ljava/nio/ByteBuffer;IZ)V

    .line 3557
    iget-object v3, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v3, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3558
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_41

    .line 3560
    nop

    .line 3561
    :try_start_1b
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 3560
    invoke-direct {p0, p1, v0, v3}, Landroid/media/MediaCodec;->native_queueSecureInputBuffers(I[Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_26} :catch_2d
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3566
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3567
    nop

    .line 3568
    return-void

    .line 3566
    :catchall_2b
    move-exception v0

    goto :goto_35

    .line 3562
    :catch_2d
    move-exception v0

    .line 3563
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2e
    iget-object v3, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, p1, v4}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;IZ)V

    .line 3564
    nop

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .end local p3    # "cryptoInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$CryptoInfo;>;"
    throw v0
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 3566
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .restart local p3    # "cryptoInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$CryptoInfo;>;"
    :goto_35
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3567
    throw v0

    .line 3552
    :cond_39
    :try_start_39
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "queueSecureInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .end local p3    # "cryptoInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$CryptoInfo;>;"
    throw v1

    .line 3558
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "bufferInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .restart local p3    # "cryptoInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$CryptoInfo;>;"
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public final whitelist release()V
    .registers 2

    .line 2229
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2230
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_release()V

    .line 2231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2232
    return-void
.end method

.method public final whitelist releaseOutputBuffer(IJ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "renderTimestampNs"    # J

    .line 4377
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    .end local p1    # "index":I
    .end local p2    # "renderTimestampNs":J
    .local v1, "index":I
    .local v4, "renderTimestampNs":J
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBufferInternal(IZZJ)V

    .line 4379
    return-void
.end method

.method public final whitelist releaseOutputBuffer(IZ)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "render"    # Z

    .line 4324
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "index":I
    .end local p2    # "render":Z
    .local v1, "index":I
    .local v2, "render":Z
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBufferInternal(IZZJ)V

    .line 4325
    return-void
.end method

.method public final whitelist reset()V
    .registers 2

    .line 2214
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2215
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_reset()V

    .line 2216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2217
    return-void
.end method

.method public whitelist setAudioPresentation(Landroid/media/AudioPresentation;)V
    .registers 4
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 5150
    if-eqz p1, :cond_e

    .line 5153
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->native_setAudioPresentation(II)V

    .line 5154
    return-void

    .line 5151
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallback(Landroid/media/MediaCodec$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;

    .line 5619
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 5620
    return-void
.end method

.method public whitelist setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5550
    new-instance v0, Landroid/media/MediaCodec$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda2;-><init>()V

    .line 5551
    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    .line 5552
    .local v0, "setCallbackStallFlag":Z
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_42

    .line 5553
    iget-object v3, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5554
    :try_start_10
    iget-object v4, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v4}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v4

    .line 5558
    .local v4, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v5, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v4, v5, :cond_3d

    .line 5559
    if-eqz v0, :cond_31

    .line 5560
    const-string v1, "[new handler] removeMessages(SET_CALLBACK)"

    new-instance v5, Landroid/media/MediaCodec$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, v1, v5}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5565
    const-string v1, "[new handler] removeMessages(CALLBACK)"

    new-instance v5, Landroid/media/MediaCodec$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, v1, v5}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3b

    .line 5571
    :cond_31
    iget-object v5, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v5, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5572
    iget-object v5, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v5, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5574
    :goto_3b
    iput-object v4, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    .line 5576
    .end local v4    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    :cond_3d
    monitor-exit v3

    goto :goto_67

    :catchall_3f
    move-exception v1

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_3f

    throw v1

    .line 5577
    :cond_42
    iget-object v3, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v3, :cond_67

    .line 5578
    if-eqz v0, :cond_5d

    .line 5579
    const-string v1, "[null handler] removeMessages(SET_CALLBACK)"

    new-instance v3, Landroid/media/MediaCodec$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, v1, v3}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5584
    const-string v1, "[null handler] removeMessages(CALLBACK)"

    new-instance v3, Landroid/media/MediaCodec$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/media/MediaCodec$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaCodec;)V

    invoke-direct {p0, v1, v3}, Landroid/media/MediaCodec;->logAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_67

    .line 5590
    :cond_5d
    iget-object v3, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5591
    iget-object v3, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5595
    :cond_67
    :goto_67
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_7a

    .line 5597
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5598
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5604
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 5606
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7a
    return-void
.end method

.method public whitelist setInputSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2734
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-eqz v0, :cond_8

    .line 2737
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setInputSurface(Landroid/view/Surface;)V

    .line 2738
    return-void

    .line 2735
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a PersistentSurface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnFirstTunnelFrameReadyListener(Landroid/os/Handler;Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    .line 5652
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5653
    :try_start_3
    iput-object p2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    .line 5654
    const/4 v1, 0x4

    if-eqz p2, :cond_1a

    .line 5655
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p1, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v2

    .line 5658
    .local v2, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v3, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v2, v3, :cond_17

    .line 5659
    iget-object v3, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5661
    :cond_17
    iput-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    .end local v2    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    goto :goto_24

    .line 5662
    :cond_1a
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_24

    .line 5663
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_25

    .line 5662
    :cond_24
    :goto_24
    nop

    .line 5665
    :goto_25
    if-eqz p2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->native_enableOnFirstTunnelFrameReadyListener(Z)V

    .line 5666
    monitor-exit v0

    .line 5667
    return-void

    .line 5666
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/MediaCodec$OnFrameRenderedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5720
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5721
    :try_start_3
    iput-object p1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    .line 5722
    const/4 v1, 0x3

    if-eqz p1, :cond_1a

    .line 5723
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v2

    .line 5724
    .local v2, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v3, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v2, v3, :cond_17

    .line 5725
    iget-object v3, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 5727
    :cond_17
    iput-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    .end local v2    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    goto :goto_24

    .line 5728
    :cond_1a
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_24

    .line 5729
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_25

    .line 5728
    :cond_24
    :goto_24
    nop

    .line 5731
    :goto_25
    if-eqz p1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->native_enableOnFrameRenderedListener(Z)V

    .line 5732
    monitor-exit v0

    .line 5733
    return-void

    .line 5732
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist setOutputSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2653
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_8

    .line 2656
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setSurface(Landroid/view/Surface;)V

    .line 2657
    return-void

    .line 2654
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec was not configured for an output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setParameters(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "params"    # Landroid/os/Bundle;

    .line 5445
    if-nez p1, :cond_3

    .line 5446
    return-void

    .line 5449
    :cond_3
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5450
    .local v0, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 5452
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 5453
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5454
    .local v4, "key":Ljava/lang/String;
    const-string v5, "audio-session-id"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 5455
    const/4 v5, 0x0

    .line 5457
    .local v5, "sessionId":I
    :try_start_2d
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_48

    .line 5460
    .end local v5    # "sessionId":I
    .local v6, "sessionId":I
    nop

    .line 5461
    const-string v5, "audio-hw-sync"

    aput-object v5, v0, v2

    .line 5462
    invoke-static {v6}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 5463
    .end local v6    # "sessionId":I
    goto/16 :goto_10a

    .line 5458
    .restart local v5    # "sessionId":I
    :catch_48
    move-exception v3

    .line 5459
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wrong Session ID Parameter!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5463
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "sessionId":I
    :cond_51
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v5

    const-string v6, "MediaCodec"

    if-eqz v5, :cond_aa

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 5464
    const-string v5, "picture-profile-instance"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 5465
    const/4 v5, 0x0

    .line 5467
    .local v5, "pictureProfile":Landroid/media/quality/PictureProfile;
    :try_start_68
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/quality/PictureProfile;
    :try_end_6e
    .catch Ljava/lang/ClassCastException; {:try_start_68 .. :try_end_6e} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6e} :catch_91

    .line 5475
    .end local v5    # "pictureProfile":Landroid/media/quality/PictureProfile;
    .local v7, "pictureProfile":Landroid/media/quality/PictureProfile;
    nop

    .line 5476
    if-eqz v7, :cond_89

    .line 5480
    invoke-virtual {v7}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v5

    .line 5481
    .local v5, "handle":Landroid/media/quality/PictureProfileHandle;
    sget-object v6, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    if-eq v5, v6, :cond_87

    .line 5482
    const-string v6, "picture-profile-handle"

    aput-object v6, v0, v2

    .line 5483
    invoke-virtual {v5}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    .line 5485
    .end local v5    # "handle":Landroid/media/quality/PictureProfileHandle;
    .end local v7    # "pictureProfile":Landroid/media/quality/PictureProfile;
    :cond_87
    goto/16 :goto_10a

    .line 5477
    .restart local v7    # "pictureProfile":Landroid/media/quality/PictureProfile;
    :cond_89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Picture profile instance parameter is null!"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5471
    .end local v7    # "pictureProfile":Landroid/media/quality/PictureProfile;
    .local v5, "pictureProfile":Landroid/media/quality/PictureProfile;
    :catch_91
    move-exception v3

    .line 5472
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unexpected exception when casting the instance parameter to PictureProfile!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5468
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_a1
    move-exception v3

    .line 5469
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot cast the instance parameter to PictureProfile!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5485
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "pictureProfile":Landroid/media/quality/PictureProfile;
    :cond_aa
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->applyPictureProfiles()Z

    move-result v5

    if-eqz v5, :cond_f4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 5486
    const-string v5, "picture-profile-id"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 5487
    const/4 v7, 0x0

    .line 5489
    .local v7, "pictureProfileId":Ljava/lang/String;
    :try_start_bf
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/ClassCastException; {:try_start_bf .. :try_end_c5} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c5} :catch_db

    .line 5497
    .end local v7    # "pictureProfileId":Ljava/lang/String;
    .local v8, "pictureProfileId":Ljava/lang/String;
    nop

    .line 5498
    if-eqz v8, :cond_d3

    .line 5501
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d2

    .line 5502
    aput-object v5, v0, v2

    .line 5503
    aput-object v8, v1, v2

    .line 5505
    .end local v8    # "pictureProfileId":Ljava/lang/String;
    :cond_d2
    goto :goto_10a

    .line 5499
    .restart local v8    # "pictureProfileId":Ljava/lang/String;
    :cond_d3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "KEY_PICTURE_PROFILE_ID parameter is null!"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5493
    .end local v8    # "pictureProfileId":Ljava/lang/String;
    .restart local v7    # "pictureProfileId":Ljava/lang/String;
    :catch_db
    move-exception v3

    .line 5494
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unexpected exception when casting the KEY_PICTURE_PROFILE_ID parameter!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5490
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_eb
    move-exception v3

    .line 5491
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot cast the KEY_PICTURE_PROFILE_ID parameter to String!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5506
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v7    # "pictureProfileId":Ljava/lang/String;
    :cond_f4
    aput-object v4, v0, v2

    .line 5507
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 5510
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, [B

    if-eqz v6, :cond_108

    .line 5511
    move-object v6, v5

    check-cast v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v1, v2

    goto :goto_10a

    .line 5513
    :cond_108
    aput-object v5, v1, v2

    .line 5516
    .end local v5    # "value":Ljava/lang/Object;
    :goto_10a
    nop

    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 5517
    goto/16 :goto_18

    .line 5519
    :cond_10f
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->setParameters([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5520
    return-void
.end method

.method public final native whitelist setVideoScalingMode(I)V
.end method

.method public final native whitelist signalEndOfInputStream()V
.end method

.method public final whitelist start()V
    .registers 1

    .line 2779
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_start()V

    .line 2780
    return-void
.end method

.method public final whitelist stop()V
    .registers 4

    .line 2791
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_stop()V

    .line 2792
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2794
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2795
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_19

    .line 2796
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2797
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2799
    :cond_19
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_23

    .line 2800
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2802
    :cond_23
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_2d

    .line 2803
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2805
    :cond_2d
    monitor-exit v0

    .line 2806
    return-void

    .line 2805
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist subscribeToVendorParameters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5845
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_subscribeToVendorParameters(Ljava/util/List;)V

    .line 5846
    return-void
.end method

.method public whitelist unsubscribeFromVendorParameters(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5876
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_unsubscribeFromVendorParameters(Ljava/util/List;)V

    .line 5877
    return-void
.end method
