.class public final Landroid/media/MediaDescrambler;
.super Ljava/lang/Object;
.source "MediaDescrambler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDescrambler$DescramblerWrapper;,
        Landroid/media/MediaDescrambler$AidlDescrambler;,
        Landroid/media/MediaDescrambler$HidlDescrambler;
    }
.end annotation


# static fields
.field public static final whitelist SCRAMBLE_CONTROL_EVEN_KEY:B = 0x2t

.field public static final whitelist SCRAMBLE_CONTROL_ODD_KEY:B = 0x3t

.field public static final whitelist SCRAMBLE_CONTROL_RESERVED:B = 0x1t

.field public static final whitelist SCRAMBLE_CONTROL_UNSCRAMBLED:B = 0x0t

.field public static final whitelist SCRAMBLE_FLAG_PES_HEADER:B = 0x1t

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaDescrambler"


# instance fields
.field private blacklist mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

.field private blacklist mIsAidlHal:Z

.field private greylist-max-o mNativeContext:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaDescrambler;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_descramble(Landroid/media/MediaDescrambler;BBI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 12

    invoke-direct/range {p0 .. p11}, Landroid/media/MediaDescrambler;->native_descramble(BBI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_release(Landroid/media/MediaDescrambler;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->native_release()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_setup(Landroid/media/MediaDescrambler;Landroid/os/IHwBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaDescrambler;->native_setup(Landroid/os/IHwBinder;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 407
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Landroid/media/MediaDescrambler;->native_init()V

    .line 409
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 7
    .param p1, "CA_system_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 200
    const-string v0, "Unsupported CA_system_id "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    :try_start_5
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 203
    new-instance v1, Landroid/media/MediaDescrambler$AidlDescrambler;

    .line 204
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/cas/IMediaCasService;->createDescrambler(I)Landroid/hardware/cas/IDescrambler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/media/MediaDescrambler$AidlDescrambler;-><init>(Landroid/media/MediaDescrambler;Landroid/hardware/cas/IDescrambler;)V

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaDescrambler;->mIsAidlHal:Z

    goto :goto_36

    .line 206
    :cond_1e
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 207
    new-instance v1, Landroid/media/MediaDescrambler$HidlDescrambler;

    .line 209
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/cas/V1_0/IMediaCasService;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/media/MediaDescrambler$HidlDescrambler;-><init>(Landroid/media/MediaDescrambler;Landroid/hardware/cas/V1_0/IDescramblerBase;)V

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaDescrambler;->mIsAidlHal:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_5c
    .catchall {:try_start_5 .. :try_end_36} :catchall_5a

    .line 218
    :goto_36
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    if-eqz v1, :cond_3b

    :goto_3a
    goto :goto_7d

    .line 219
    :cond_3b
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_52
    :try_start_52
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No CAS service found!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaDescrambler;
    .end local p1    # "CA_system_id":I
    throw v1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_5c
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    .line 218
    .restart local p0    # "this":Landroid/media/MediaDescrambler;
    .restart local p1    # "CA_system_id":I
    :catchall_5a
    move-exception v1

    goto :goto_95

    .line 214
    :catch_5c
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v2, "MediaDescrambler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create descrambler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;
    :try_end_78
    .catchall {:try_start_5d .. :try_end_78} :catchall_5a

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    if-eqz v1, :cond_7e

    goto :goto_3a

    .line 222
    :goto_7d
    return-void

    .line 219
    :cond_7e
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :goto_95
    iget-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    if-nez v2, :cond_b0

    .line 219
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_b0
    throw v1
.end method

.method private final greylist-max-o cleanupAndRethrowIllegalState()V
    .registers 2

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private final native greylist-max-o native_descramble(BBI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setup(Landroid/os/IHwBinder;)V
.end method

.method private final greylist-max-o validateInternalStates()V
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    if-eqz v0, :cond_5

    .line 186
    return-void

    .line 184
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 382
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    if-eqz v0, :cond_13

    .line 384
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    invoke-interface {v1}, Landroid/media/MediaDescrambler$DescramblerWrapper;->release()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_f
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_10

    .line 387
    :catchall_b
    move-exception v1

    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    .line 388
    throw v1

    .line 385
    :catch_f
    move-exception v1

    .line 387
    :goto_10
    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    .line 388
    nop

    .line 390
    :cond_13
    return-void
.end method

.method public final whitelist descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .registers 7
    .param p1, "srcBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "dstBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 348
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 350
    iget v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-lez v0, :cond_6c

    .line 353
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_18

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v0, :cond_10

    goto :goto_18

    .line 355
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CryptoInfo: clearData and encryptedData size arrays are both null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_18
    :goto_18
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-eqz v0, :cond_2c

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    array-length v0, v0

    iget v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-lt v0, v1, :cond_24

    goto :goto_2c

    .line 359
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CryptoInfo: numBytesOfClearData is too small!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2c
    :goto_2c
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v0, :cond_40

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    array-length v0, v0

    iget v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-lt v0, v1, :cond_38

    goto :goto_40

    .line 363
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CryptoInfo: numBytesOfEncryptedData is too small!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_40
    :goto_40
    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-eqz v0, :cond_64

    iget-object v0, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_64

    .line 371
    :try_start_4b
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaDescrambler$DescramblerWrapper;->descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I

    move-result v0
    :try_end_51
    .catch Landroid/os/ServiceSpecificException; {:try_start_4b .. :try_end_51} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_51} :catch_52

    return v0

    .line 374
    :catch_52
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    goto :goto_62

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_57
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 376
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    nop

    .line 377
    :goto_62
    const/4 v0, -0x1

    return v0

    .line 366
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CryptoInfo: key array is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CryptoInfo: invalid numSubSamples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 394
    invoke-virtual {p0}, Landroid/media/MediaDescrambler;->close()V

    .line 395
    return-void
.end method

.method greylist-max-o getBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 235
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 237
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    invoke-interface {v0}, Landroid/media/MediaDescrambler$DescramblerWrapper;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAidlHal()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Landroid/media/MediaDescrambler;->mIsAidlHal:Z

    return v0
.end method

.method public final whitelist requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mime"    # Ljava/lang/String;

    .line 249
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 252
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    invoke-interface {v0, p1}, Landroid/media/MediaDescrambler$DescramblerWrapper;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return v0

    .line 253
    :catch_a
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist setMediaCasSession(Landroid/media/MediaCas$Session;)V
    .registers 4
    .param p1, "session"    # Landroid/media/MediaCas$Session;

    .line 275
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 278
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/media/MediaDescrambler$DescramblerWrapper;

    iget-object v1, p1, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1}, Landroid/media/MediaDescrambler$DescramblerWrapper;->setMediaCasSession([B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 281
    goto :goto_f

    .line 279
    :catch_b
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method
