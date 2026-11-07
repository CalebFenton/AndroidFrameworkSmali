.class Landroid/media/MediaDescrambler$AidlDescrambler;
.super Ljava/lang/Object;
.source "MediaDescrambler.java"

# interfaces
.implements Landroid/media/MediaDescrambler$DescramblerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AidlDescrambler"
.end annotation


# instance fields
.field blacklist mAidlDescrambler:Landroid/hardware/cas/IDescrambler;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaDescrambler;Landroid/hardware/cas/IDescrambler;)V
    .registers 4
    .param p2, "aidlDescrambler"    # Landroid/hardware/cas/IDescrambler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p2, :cond_8

    .line 72
    iput-object p2, p0, Landroid/media/MediaDescrambler$AidlDescrambler;->mAidlDescrambler:Landroid/hardware/cas/IDescrambler;

    .line 76
    return-void

    .line 74
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Descrambler could not be created"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist release()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/media/MediaDescrambler$AidlDescrambler;->mAidlDescrambler:Landroid/hardware/cas/IDescrambler;

    invoke-interface {v0}, Landroid/hardware/cas/IDescrambler;->release()V

    .line 105
    return-void
.end method

.method public blacklist requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMediaCasSession([B)V
    .registers 4
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
