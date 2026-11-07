.class public abstract Landroid/media/MediaCodec$Callback;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 5899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CryptoException;

    .line 5966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must override onCryptoError when the codec is configured with CONFIGURE_FLAG_USE_CRYPTO_ASYNC."

    invoke-direct {v0, v1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract whitelist onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
.end method

.method public abstract whitelist onInputBufferAvailable(Landroid/media/MediaCodec;I)V
.end method

.method public whitelist onMetricsFlushed(Landroid/media/MediaCodec;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "metrics"    # Landroid/os/PersistableBundle;

    .line 6011
    return-void
.end method

.method public abstract whitelist onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
.end method

.method public whitelist onOutputBuffersAvailable(Landroid/media/MediaCodec;ILjava/util/ArrayDeque;)V
    .registers 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodec;",
            "I",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    .line 5939
    .local p3, "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must override onOutputBuffersAvailable when codec is configured to operate with multiple access units"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
.end method

.method public blacklist onRequiredResourcesChanged(Landroid/media/MediaCodec;)V
    .registers 2
    .param p1, "codec"    # Landroid/media/MediaCodec;

    .line 6030
    return-void
.end method
