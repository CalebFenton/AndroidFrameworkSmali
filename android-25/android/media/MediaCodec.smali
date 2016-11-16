.class public final Landroid/media/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$BufferInfo;,
        Landroid/media/MediaCodec$BufferMap;,
        Landroid/media/MediaCodec$Callback;,
        Landroid/media/MediaCodec$CodecException;,
        Landroid/media/MediaCodec$CryptoException;,
        Landroid/media/MediaCodec$CryptoInfo;,
        Landroid/media/MediaCodec$EventHandler;,
        Landroid/media/MediaCodec$MediaImage;,
        Landroid/media/MediaCodec$OnFrameRenderedListener;,
        Landroid/media/MediaCodec$PersistentSurface;
    }
.end annotation


# static fields
.field public static final BUFFER_FLAG_CODEC_CONFIG:I = 0x2

.field public static final BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final BUFFER_FLAG_SYNC_FRAME:I = 0x1

.field private static final CB_ERROR:I = 0x3

.field private static final CB_INPUT_AVAILABLE:I = 0x1

.field private static final CB_OUTPUT_AVAILABLE:I = 0x2

.field private static final CB_OUTPUT_FORMAT_CHANGE:I = 0x4

.field public static final CONFIGURE_FLAG_ENCODE:I = 0x1

.field public static final CRYPTO_MODE_AES_CBC:I = 0x2

.field public static final CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field private static final EVENT_CALLBACK:I = 0x1

.field private static final EVENT_FRAME_RENDERED:I = 0x3

.field private static final EVENT_SET_CALLBACK:I = 0x2

.field public static final INFO_OUTPUT_BUFFERS_CHANGED:I = -0x3

.field public static final INFO_OUTPUT_FORMAT_CHANGED:I = -0x2

.field public static final INFO_TRY_AGAIN_LATER:I = -0x1

.field public static final PARAMETER_KEY_REQUEST_SYNC_FRAME:Ljava/lang/String; = "request-sync"

.field public static final PARAMETER_KEY_SUSPEND:Ljava/lang/String; = "drop-input-frames"

.field public static final PARAMETER_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video-bitrate"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mBufferLock:Ljava/lang/Object;

.field private mCachedInputBuffers:[Ljava/nio/ByteBuffer;

.field private mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCallback:Landroid/media/MediaCodec$Callback;

.field private mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

.field private final mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final mDequeuedOutputInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Landroid/media/MediaCodec$EventHandler;

.field private mHasSurface:Z

.field private mListenerLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

.field private mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;


# direct methods
.method static synthetic -get0(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/view/Surface;)V
    .locals 0
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/MediaCodec;->native_releasePersistentInputSurface(Landroid/view/Surface;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 3413
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 3414
    invoke-static {}, Landroid/media/MediaCodec;->native_init()V

    #@9
    .line 1472
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsType"    # Z
    .param p3, "encoder"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1587
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    #@b
    .line 1690
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    #@e
    .line 2813
    new-instance v1, Landroid/media/MediaCodec$BufferMap;

    #@10
    invoke-direct {v1, v2}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$BufferMap;)V

    #@13
    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@15
    .line 2814
    new-instance v1, Landroid/media/MediaCodec$BufferMap;

    #@17
    invoke-direct {v1, v2}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$BufferMap;)V

    #@1a
    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@1c
    .line 2816
    new-instance v1, Ljava/util/HashMap;

    #@1e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@21
    .line 2815
    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    #@23
    .line 1764
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@26
    move-result-object v0

    #@27
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@29
    .line 1765
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    #@2b
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    #@2e
    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@30
    .line 1771
    :goto_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@32
    iput-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@34
    .line 1772
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@36
    iput-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@38
    .line 1774
    new-instance v1, Ljava/lang/Object;

    #@3a
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@3d
    iput-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@3f
    .line 1776
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_setup(Ljava/lang/String;ZZ)V

    #@42
    .line 1762
    return-void

    #@43
    .line 1766
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@46
    move-result-object v0

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 1767
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    #@4b
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    #@4e
    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@50
    goto :goto_0

    #@51
    .line 1769
    :cond_1
    iput-object v2, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@53
    goto :goto_0
.end method

.method private final cacheBuffers(Z)V
    .locals 2
    .param p1, "input"    # Z

    #@0
    .prologue
    .line 2900
    const/4 v0, 0x0

    #@1
    .line 2902
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getBuffers(Z)[Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 2903
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 2907
    .end local v0    # "buffers":[Ljava/nio/ByteBuffer;
    :goto_0
    if-eqz p1, :cond_0

    #@a
    .line 2908
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@c
    .line 2899
    :goto_1
    return-void

    #@d
    .line 2910
    :cond_0
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@f
    goto :goto_1

    #@10
    .line 2904
    :catch_0
    move-exception v1

    #@11
    .local v1, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1757
    new-instance v0, Landroid/media/MediaCodec;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    #@6
    return-object v0
.end method

.method public static createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1724
    new-instance v0, Landroid/media/MediaCodec;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    #@7
    return-object v0
.end method

.method public static createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1742
    new-instance v0, Landroid/media/MediaCodec;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    #@6
    return-object v0
.end method

.method public static createPersistentInputSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 1920
    invoke-static {}, Landroid/media/MediaCodec;->native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private final freeAllTrackedBuffers()V
    .locals 2

    #@0
    .prologue
    .line 2889
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2890
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@5
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    #@8
    .line 2891
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    #@d
    .line 2892
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@10
    .line 2893
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@13
    .line 2894
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@15
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    #@18
    .line 2895
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@1a
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 2888
    return-void

    #@1f
    .line 2889
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method private final freeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 2874
    if-eqz p1, :cond_0

    #@2
    .line 2876
    invoke-static {p1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@5
    .line 2873
    :cond_0
    return-void
.end method

.method private final freeByteBuffers([Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 2881
    if-eqz p1, :cond_0

    #@2
    .line 2882
    const/4 v1, 0x0

    #@3
    array-length v2, p1

    #@4
    :goto_0
    if-ge v1, v2, :cond_0

    #@6
    aget-object v0, p1, v1

    #@8
    .line 2883
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffer(Ljava/nio/ByteBuffer;)V

    #@b
    .line 2882
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 2880
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final native getBuffer(ZI)Ljava/nio/ByteBuffer;
.end method

.method private final native getBuffers(Z)[Ljava/nio/ByteBuffer;
.end method

.method private getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "lastHandler"    # Landroid/media/MediaCodec$EventHandler;

    #@0
    .prologue
    .line 3314
    if-nez p1, :cond_0

    #@2
    .line 3315
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@4
    return-object v1

    #@5
    .line 3317
    :cond_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@8
    move-result-object v0

    #@9
    .line 3318
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {p2}, Landroid/media/MediaCodec$EventHandler;->getLooper()Landroid/os/Looper;

    #@c
    move-result-object v1

    #@d
    if-ne v1, v0, :cond_1

    #@f
    .line 3319
    return-object p2

    #@10
    .line 3321
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    #@12
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    #@15
    return-object v1
.end method

.method private final native getFormatNative(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native getImage(ZI)Landroid/media/Image;
.end method

.method private final native getOutputFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2821
    if-eqz p1, :cond_0

    #@3
    if-ltz p2, :cond_0

    #@5
    array-length v1, p1

    #@6
    if-ge p2, v1, :cond_0

    #@8
    .line 2822
    aget-object v0, p1, p2

    #@a
    .line 2823
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@c
    .line 2824
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    #@f
    .line 2820
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2864
    if-eqz p1, :cond_1

    #@3
    .line 2865
    array-length v3, p1

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p1, v1

    #@9
    .line 2866
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@b
    .line 2867
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    #@e
    .line 2865
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2863
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private final native native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
.end method

.method private static final native native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;
.end method

.method private final native native_dequeueInputBuffer(J)I
.end method

.method private final native native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method private native native_enableOnFrameRenderedListener(Z)V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_queueInputBuffer(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private static final native native_releasePersistentInputSurface(Landroid/view/Surface;)V
.end method

.method private final native native_reset()V
.end method

.method private final native native_setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method private final native native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native native_setSurface(Landroid/view/Surface;)V
.end method

.method private final native native_setup(Ljava/lang/String;ZZ)V
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private postEventFromNative(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3369
    iget-object v3, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 3370
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    #@5
    .line 3371
    .local v0, "handler":Landroid/media/MediaCodec$EventHandler;
    const/4 v2, 0x1

    #@6
    if-ne p1, v2, :cond_2

    #@8
    .line 3372
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@a
    .line 3376
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@c
    .line 3377
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    .line 3378
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v3

    #@14
    .line 3368
    return-void

    #@15
    .line 3373
    :cond_2
    const/4 v2, 0x3

    #@16
    if-ne p1, v2, :cond_0

    #@18
    .line 3374
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 3369
    .end local v0    # "handler":Landroid/media/MediaCodec$EventHandler;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method private final native releaseOutputBuffer(IZZJ)V
.end method

.method private final revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 2842
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2843
    if-eqz p1, :cond_0

    #@5
    if-ltz p2, :cond_0

    #@7
    :try_start_0
    array-length v1, p1

    #@8
    if-ge p2, v1, :cond_0

    #@a
    .line 2844
    aget-object v0, p1, p2

    #@c
    .line 2845
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@e
    .line 2846
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    monitor-exit v2

    #@13
    .line 2841
    return-void

    #@14
    .line 2842
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private final native setParameters([Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private final validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 2831
    if-eqz p1, :cond_0

    #@2
    if-ltz p2, :cond_0

    #@4
    array-length v1, p1

    #@5
    if-ge p2, v1, :cond_0

    #@7
    .line 2832
    aget-object v0, p1, p2

    #@9
    .line 2833
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@b
    .line 2834
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    #@f
    .line 2835
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@12
    .line 2830
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;

    #@0
    .prologue
    .line 2854
    if-eqz p1, :cond_0

    #@2
    if-ltz p2, :cond_0

    #@4
    array-length v1, p1

    #@5
    if-ge p2, v1, :cond_0

    #@7
    .line 2855
    aget-object v0, p1, p2

    #@9
    .line 2856
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@b
    .line 2857
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    #@f
    .line 2858
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@11
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    #@13
    add-int/2addr v1, v2

    #@14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@17
    move-result-object v1

    #@18
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@1d
    .line 2853
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 12
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1854
    const/4 v1, 0x0

    #@1
    .line 1855
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    #@2
    .line 1857
    .local v2, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    #@4
    .line 1858
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@7
    move-result-object v9

    #@8
    .line 1859
    .local v9, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@b
    move-result v0

    #@c
    new-array v1, v0, [Ljava/lang/String;

    #@e
    .line 1860
    .local v1, "keys":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@11
    move-result v0

    #@12
    new-array v2, v0, [Ljava/lang/Object;

    #@14
    .line 1862
    .local v2, "values":[Ljava/lang/Object;
    const/4 v10, 0x0

    #@15
    .line 1863
    .local v10, "i":I
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v8

    #@1d
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    check-cast v7, Ljava/util/Map$Entry;

    #@29
    .line 1864
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/String;

    #@2f
    const-string/jumbo v3, "audio-session-id"

    #@32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 1865
    const/4 v11, 0x0

    #@39
    .line 1867
    .local v11, "sessionId":I
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/Integer;

    #@3f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result v11

    #@43
    .line 1872
    const-string/jumbo v0, "audio-hw-sync"

    #@46
    aput-object v0, v1, v10

    #@48
    .line 1873
    invoke-static {v11}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    #@4b
    move-result v0

    #@4c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v0

    #@50
    aput-object v0, v2, v10

    #@52
    .line 1878
    .end local v11    # "sessionId":I
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1869
    .restart local v11    # "sessionId":I
    :catch_0
    move-exception v6

    #@56
    .line 1870
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v3, "Wrong Session ID Parameter!"

    #@5b
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 1875
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "sessionId":I
    :cond_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Ljava/lang/String;

    #@65
    aput-object v0, v1, v10

    #@67
    .line 1876
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    aput-object v0, v2, v10

    #@6d
    goto :goto_1

    #@6e
    .line 1882
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/Object;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    #@70
    const/4 v0, 0x1

    #@71
    :goto_2
    iput-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    #@73
    move-object v0, p0

    #@74
    move-object v3, p2

    #@75
    move-object v4, p3

    #@76
    move/from16 v5, p4

    #@78
    .line 1884
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    #@7b
    .line 1853
    return-void

    #@7c
    .line 1882
    :cond_2
    const/4 v0, 0x0

    #@7d
    goto :goto_2
.end method

.method public final native createInputSurface()Landroid/view/Surface;
.end method

.method public final dequeueInputBuffer(J)I
    .locals 3
    .param p1, "timeoutUs"    # J

    #@0
    .prologue
    .line 2507
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_dequeueInputBuffer(J)I

    #@3
    move-result v0

    #@4
    .line 2508
    .local v0, "res":I
    if-ltz v0, :cond_0

    #@6
    .line 2509
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 2510
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@b
    invoke-direct {p0, v1, v0}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 2513
    :cond_0
    return v0

    #@10
    .line 2509
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public final dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 6
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "timeoutUs"    # J

    #@0
    .prologue
    .line 2570
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    #@3
    move-result v0

    #@4
    .line 2571
    .local v0, "res":I
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 2572
    const/4 v1, -0x3

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 2573
    const/4 v1, 0x0

    #@b
    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffers(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    :goto_0
    monitor-exit v2

    #@f
    .line 2581
    return v0

    #@10
    .line 2574
    :cond_1
    if-ltz v0, :cond_0

    #@12
    .line 2575
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@14
    invoke-direct {p0, v1, v0, p1}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    #@17
    .line 2576
    iget-boolean v1, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 2577
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p1}, Landroid/media/MediaCodec$BufferInfo;->dup()Landroid/media/MediaCodec$BufferInfo;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 2571
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 1781
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_finalize()V

    #@3
    .line 1780
    return-void
.end method

.method public final flush()V
    .locals 2

    #@0
    .prologue
    .line 2048
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2049
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@5
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    #@8
    .line 2050
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    #@d
    .line 2051
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@f
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    #@12
    .line 2052
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@14
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 2054
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_flush()V

    #@1b
    .line 2047
    return-void

    #@1c
    .line 2048
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public getCodecInfo()Landroid/media/MediaCodecInfo;
    .locals 1

    #@0
    .prologue
    .line 3393
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/media/MediaCodecList;->getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2992
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 2993
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 2994
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@d
    .line 2995
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 2997
    return-object v0

    #@14
    .line 2993
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 2934
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2935
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2938
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@c
    return-object v0
.end method

.method public final getInputFormat()Landroid/media/MediaFormat;
    .locals 2

    #@0
    .prologue
    .line 2721
    new-instance v0, Landroid/media/MediaFormat;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@a
    return-object v0
.end method

.method public getInputImage(I)Landroid/media/Image;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3021
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    #@4
    move-result-object v0

    #@5
    .line 3022
    .local v0, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 3023
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@d
    .line 3024
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 3026
    return-object v0

    #@14
    .line 3022
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3050
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 3051
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 3052
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@d
    .line 3053
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 3055
    return-object v0

    #@14
    .line 3051
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public getOutputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 2965
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2966
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2969
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@c
    return-object v0
.end method

.method public final getOutputFormat()Landroid/media/MediaFormat;
    .locals 2

    #@0
    .prologue
    .line 2706
    new-instance v0, Landroid/media/MediaFormat;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@a
    return-object v0
.end method

.method public final getOutputFormat(I)Landroid/media/MediaFormat;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2735
    new-instance v0, Landroid/media/MediaFormat;

    #@2
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getOutputFormatNative(I)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@9
    return-object v0
.end method

.method public getOutputImage(I)Landroid/media/Image;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3078
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    #@4
    move-result-object v0

    #@5
    .line 3079
    .local v0, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 3080
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@a
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@d
    .line 3081
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 3083
    return-object v0

    #@14
    .line 3079
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 4
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

    #@0
    .prologue
    .line 2277
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2278
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@5
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@8
    .line 2279
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@a
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 2282
    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 2276
    return-void

    #@12
    .line 2277
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 2284
    :catch_0
    move-exception v0

    #@16
    .line 2285
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@18
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@1b
    .line 2286
    throw v0
.end method

.method public final queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 4
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

    #@0
    .prologue
    .line 2475
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2476
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@5
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@8
    .line 2477
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@a
    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 2480
    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 2474
    return-void

    #@12
    .line 2475
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 2482
    :catch_0
    move-exception v0

    #@16
    .line 2483
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    #@18
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@1b
    .line 2484
    throw v0
.end method

.method public final release()V
    .locals 0

    #@0
    .prologue
    .line 1809
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    #@3
    .line 1810
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_release()V

    #@6
    .line 1808
    return-void
.end method

.method public final releaseOutputBuffer(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "renderTimestampNs"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2668
    const/4 v6, 0x0

    #@2
    .line 2669
    .local v6, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 2670
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@7
    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@a
    .line 2671
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@c
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    #@f
    .line 2672
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2673
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    .end local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    check-cast v6, Landroid/media/MediaCodec$BufferInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v1

    #@20
    move-object v0, p0

    #@21
    move v1, p1

    #@22
    move v3, v2

    #@23
    move-wide v4, p2

    #@24
    .line 2676
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    #@27
    .line 2667
    return-void

    #@28
    .line 2669
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public final releaseOutputBuffer(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "render"    # Z

    #@0
    .prologue
    .line 2607
    const/4 v6, 0x0

    #@1
    .line 2608
    .local v6, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2609
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    #@6
    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    #@9
    .line 2610
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    #@b
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    #@e
    .line 2611
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2612
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    .end local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    check-cast v6, Landroid/media/MediaCodec$BufferInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    monitor-exit v1

    #@1f
    .line 2615
    const-wide/16 v4, 0x0

    #@21
    const/4 v3, 0x0

    #@22
    move-object v0, p0

    #@23
    move v1, p1

    #@24
    move v2, p2

    #@25
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    #@28
    .line 2606
    return-void

    #@29
    .line 2608
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v1

    #@2b
    throw v0
.end method

.method public final reset()V
    .locals 0

    #@0
    .prologue
    .line 1795
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    #@3
    .line 1796
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_reset()V

    #@6
    .line 1794
    return-void
.end method

.method public setCallback(Landroid/media/MediaCodec$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;

    #@0
    .prologue
    .line 3247
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    #@4
    .line 3246
    return-void
.end method

.method public setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x2

    #@3
    .line 3206
    if-eqz p1, :cond_3

    #@5
    .line 3207
    iget-object v3, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 3208
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@a
    invoke-direct {p0, p2, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    #@d
    move-result-object v1

    #@e
    .line 3212
    .local v1, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@10
    if-eq v1, v2, :cond_0

    #@12
    .line 3213
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@14
    const/4 v4, 0x2

    #@15
    invoke-virtual {v2, v4}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@18
    .line 3214
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v2, v4}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@1e
    .line 3215
    iput-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v3

    #@21
    .line 3223
    .end local v1    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 3225
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@27
    invoke-virtual {v2, v5, v6, v6, p1}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    .line 3226
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@2d
    invoke-virtual {v2, v0}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@30
    .line 3232
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setCallback(Landroid/media/MediaCodec$Callback;)V

    #@33
    .line 3205
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    #@34
    .line 3207
    :catchall_0
    move-exception v2

    #@35
    monitor-exit v3

    #@36
    throw v2

    #@37
    .line 3218
    :cond_3
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 3219
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@3d
    invoke-virtual {v2, v5}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@40
    .line 3220
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@42
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@45
    goto :goto_0
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 1947
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "not a PersistentSurface"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1950
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setInputSurface(Landroid/view/Surface;)V

    #@10
    .line 1946
    return-void
.end method

.method public setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaCodec$OnFrameRenderedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3295
    iget-object v2, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 3296
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    #@5
    .line 3297
    if-eqz p1, :cond_2

    #@7
    .line 3298
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@9
    invoke-direct {p0, p2, v1}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    #@c
    move-result-object v0

    #@d
    .line 3299
    .local v0, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 3300
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@13
    const/4 v3, 0x3

    #@14
    invoke-virtual {v1, v3}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@17
    .line 3302
    :cond_0
    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@19
    .line 3306
    .end local v0    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    #@1b
    const/4 v1, 0x1

    #@1c
    :goto_1
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->native_enableOnFrameRenderedListener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    .line 3294
    return-void

    #@21
    .line 3303
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 3304
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@27
    const/4 v3, 0x3

    #@28
    invoke-virtual {v1, v3}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 3295
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1

    #@2f
    .line 3306
    :cond_3
    const/4 v1, 0x0

    #@30
    goto :goto_1
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 1900
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1901
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "codec was not configured for an output surface"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1903
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setSurface(Landroid/view/Surface;)V

    #@10
    .line 1899
    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3167
    if-nez p1, :cond_0

    #@2
    .line 3168
    return-void

    #@3
    .line 3171
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@6
    move-result v5

    #@7
    new-array v3, v5, [Ljava/lang/String;

    #@9
    .line 3172
    .local v3, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@c
    move-result v5

    #@d
    new-array v4, v5, [Ljava/lang/Object;

    #@f
    .line 3174
    .local v4, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@10
    .line 3175
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/lang/String;

    #@24
    .line 3176
    .local v1, "key":Ljava/lang/String;
    aput-object v1, v3, v0

    #@26
    .line 3177
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    aput-object v5, v4, v0

    #@2c
    .line 3178
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 3181
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodec;->setParameters([Ljava/lang/String;[Ljava/lang/Object;)V

    #@32
    .line 3166
    return-void
.end method

.method public final native setVideoScalingMode(I)V
.end method

.method public final native signalEndOfInputStream()V
.end method

.method public final start()V
    .locals 2

    #@0
    .prologue
    .line 1991
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_start()V

    #@3
    .line 1992
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1993
    const/4 v0, 0x1

    #@7
    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    #@a
    .line 1994
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 1990
    return-void

    #@10
    .line 1992
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public final stop()V
    .locals 3

    #@0
    .prologue
    .line 2007
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_stop()V

    #@3
    .line 2008
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    #@6
    .line 2010
    iget-object v1, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 2011
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2012
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@f
    const/4 v2, 0x2

    #@10
    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@13
    .line 2013
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    #@19
    .line 2015
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 2016
    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    #@1f
    const/4 v2, 0x3

    #@20
    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_1
    monitor-exit v1

    #@24
    .line 2006
    return-void

    #@25
    .line 2010
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method
