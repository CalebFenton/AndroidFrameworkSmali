.class Landroid/net/LocalSocketImpl;
.super Ljava/lang/Object;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LocalSocketImpl$SocketInputStream;,
        Landroid/net/LocalSocketImpl$SocketOutputStream;
    }
.end annotation


# instance fields
.field private greylist-max-o fd:Ljava/io/FileDescriptor;

.field private greylist-max-o fis:Landroid/net/LocalSocketImpl$SocketInputStream;

.field private greylist-max-o fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

.field greylist inboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private greylist-max-o mFdCreatedInternally:Z

.field greylist-max-r outboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private greylist-max-o readMonitor:Ljava/lang/Object;

.field private greylist-max-o writeMonitor:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfd(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .registers 1

    iget-object p0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreadMonitor(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwriteMonitor(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mread_native(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreadba_native(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrite_native(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteba_native(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V

    return-void
.end method

.method constructor greylist <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    .line 190
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 191
    return-void
.end method

.method private native greylist-max-o bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static greylist-max-o javaSoToOsOpt(I)I
    .registers 4
    .param p0, "optID"    # I

    .line 574
    sparse-switch p0, :sswitch_data_26

    .line 582
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :sswitch_1c
    sget v0, Landroid/system/OsConstants;->SO_RCVBUF:I

    return v0

    .line 576
    :sswitch_1f
    sget v0, Landroid/system/OsConstants;->SO_SNDBUF:I

    return v0

    .line 580
    :sswitch_22
    sget v0, Landroid/system/OsConstants;->SO_REUSEADDR:I

    return v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x4 -> :sswitch_22
        0x1001 -> :sswitch_1f
        0x1002 -> :sswitch_1c
    .end sparse-switch
.end method

.method private native greylist-max-o read_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o readba_native([BIILjava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o write_native(ILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o writeba_native([BIILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected greylist-max-o accept(Landroid/net/LocalSocketImpl;)V
    .registers 4
    .param p1, "s"    # Landroid/net/LocalSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_18

    .line 303
    :try_start_4
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_10} :catch_12

    .line 307
    nop

    .line 308
    return-void

    .line 305
    :catch_12
    move-exception v0

    .line 306
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 299
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public greylist-max-o bind(Landroid/net/LocalSocketAddress;)V
    .registers 5
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_16

    .line 275
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    .line 276
    return-void

    .line 272
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1d

    if-nez v0, :cond_b

    goto :goto_19

    .line 243
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 246
    goto :goto_15

    .line 244
    :catch_11
    move-exception v0

    .line 245
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_12
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 247
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_15
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 248
    monitor-exit p0

    .line 249
    return-void

    .line 239
    :cond_19
    :goto_19
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 240
    monitor-exit p0

    return-void

    .line 248
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method protected greylist-max-o connect(Landroid/net/LocalSocketAddress;I)V
    .registers 6
    .param p1, "address"    # Landroid/net/LocalSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_16

    .line 259
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    .line 260
    return-void

    .line 256
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o create(I)V
    .registers 5
    .param p1, "sockType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_2b

    .line 210
    packed-switch p1, :pswitch_data_34

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown sockType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_10
    sget v0, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    .line 219
    .local v0, "osType":I
    goto :goto_19

    .line 215
    .end local v0    # "osType":I
    :pswitch_13
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    .line 216
    .restart local v0    # "osType":I
    goto :goto_19

    .line 212
    .end local v0    # "osType":I
    :pswitch_16
    sget v0, Landroid/system/OsConstants;->SOCK_DGRAM:I

    .line 213
    .restart local v0    # "osType":I
    nop

    .line 224
    :goto_19
    :try_start_19
    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_19 .. :try_end_25} :catch_26

    .line 228
    goto :goto_2a

    .line 226
    :catch_26
    move-exception v1

    .line 227
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 229
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_2a
    return-void

    .line 206
    .end local v0    # "osType":I
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LocalSocketImpl already has an fd"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->close()V

    .line 571
    return-void
.end method

.method public greylist-max-o getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_3
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 541
    .local v1, "result":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 542
    monitor-exit v0

    return-object v1

    .line 543
    .end local v1    # "result":[Ljava/io/FileDescriptor;
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected greylist-max-o getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected greylist-max-o getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_17

    .line 322
    monitor-enter p0

    .line 323
    :try_start_5
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    if-nez v0, :cond_10

    .line 324
    new-instance v0, Landroid/net/LocalSocketImpl$SocketInputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketInputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    .line 327
    :cond_10
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    monitor-exit p0

    return-object v0

    .line 328
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 319
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getOption(I)Ljava/lang/Object;
    .registers 5
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7b

    .line 422
    sparse-switch p1, :sswitch_data_84

    .line 448
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    goto :goto_5f

    .line 424
    :sswitch_a
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v0

    .line 426
    .local v0, "timeval":Landroid/system/StructTimeval;
    invoke-virtual {v0}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 427
    .local v1, "toReturn":Ljava/lang/Object;
    goto :goto_5c

    .line 435
    .end local v0    # "timeval":Landroid/system/StructTimeval;
    .end local v1    # "toReturn":Ljava/lang/Object;
    :sswitch_1e
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_LINGER:I

    .line 436
    invoke-static {v0, v1, v2}, Landroid/system/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    .line 437
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_34

    .line 438
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "toReturn":Ljava/lang/Object;
    goto :goto_5c

    .line 440
    .end local v1    # "toReturn":Ljava/lang/Object;
    :cond_34
    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 442
    .restart local v1    # "toReturn":Ljava/lang/Object;
    goto :goto_5c

    .line 431
    .end local v0    # "linger":Landroid/system/StructLinger;
    .end local v1    # "toReturn":Ljava/lang/Object;
    :sswitch_3b
    invoke-static {p1}, Landroid/net/LocalSocketImpl;->javaSoToOsOpt(I)I

    move-result v0

    .line 432
    .local v0, "osOpt":I
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    invoke-static {v1, v2, v0}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 433
    .restart local v1    # "toReturn":Ljava/lang/Object;
    goto :goto_5c

    .line 444
    .end local v0    # "osOpt":I
    .end local v1    # "toReturn":Ljava/lang/Object;
    :sswitch_4c
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v2, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 446
    .restart local v1    # "toReturn":Ljava/lang/Object;
    nop

    .line 450
    :goto_5c
    return-object v1

    .line 451
    .end local v1    # "toReturn":Ljava/lang/Object;
    :catch_5d
    move-exception v0

    goto :goto_76

    .line 448
    :goto_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/LocalSocketImpl;
    .end local p1    # "optID":I
    throw v0
    :try_end_76
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_76} :catch_5d

    .line 452
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local p0    # "this":Landroid/net/LocalSocketImpl;
    .restart local p1    # "optID":I
    :goto_76
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 417
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_7b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_4c
        0x4 -> :sswitch_3b
        0x80 -> :sswitch_1e
        0x1001 -> :sswitch_3b
        0x1002 -> :sswitch_3b
        0x1006 -> :sswitch_a
    .end sparse-switch
.end method

.method protected greylist-max-o getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_17

    .line 343
    monitor-enter p0

    .line 344
    :try_start_5
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    if-nez v0, :cond_10

    .line 345
    new-instance v0, Landroid/net/LocalSocketImpl$SocketOutputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketOutputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    .line 348
    :cond_10
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    monitor-exit p0

    return-object v0

    .line 349
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 340
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getPeerCredentials()Landroid/net/Credentials;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSockAddress()Landroid/net/LocalSocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o listen(I)V
    .registers 4
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_11

    .line 284
    :try_start_4
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_9} :catch_b

    .line 287
    nop

    .line 288
    return-void

    .line 285
    :catch_b
    move-exception v0

    .line 286
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 281
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not impled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fds"    # [Ljava/io/FileDescriptor;

    .line 522
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->outboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 524
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o setOption(ILjava/lang/Object;)V
    .registers 9
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_9a

    .line 469
    const/4 v0, -0x1

    .line 470
    .local v0, "boolValue":I
    const/4 v1, 0x0

    .line 471
    .local v1, "intValue":I
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 472
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1e

    .line 473
    :cond_12
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_81

    .line 474
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 480
    :goto_1e
    sparse-switch p1, :sswitch_data_a4

    .line 505
    :try_start_21
    new-instance v2, Ljava/io/IOException;

    goto :goto_65

    .line 488
    :sswitch_24
    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    .line 489
    .local v2, "timeval":Landroid/system/StructTimeval;
    iget-object v3, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v3, v4, v5, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 491
    iget-object v3, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v3, v4, v5, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 493
    goto :goto_61

    .line 482
    .end local v2    # "timeval":Landroid/system/StructTimeval;
    :sswitch_3c
    new-instance v2, Landroid/system/StructLinger;

    invoke-direct {v2, v0, v1}, Landroid/system/StructLinger;-><init>(II)V

    .line 483
    .local v2, "linger":Landroid/system/StructLinger;
    iget-object v3, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-static {v3, v4, v5, v2}, Landroid/system/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    .line 484
    goto :goto_61

    .line 497
    .end local v2    # "linger":Landroid/system/StructLinger;
    :sswitch_4b
    invoke-static {p1}, Landroid/net/LocalSocketImpl;->javaSoToOsOpt(I)I

    move-result v2

    .line 498
    .local v2, "osOpt":I
    iget-object v3, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    invoke-static {v3, v4, v2, v1}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 499
    goto :goto_61

    .line 501
    .end local v2    # "osOpt":I
    :sswitch_57
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v4, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 503
    nop

    .line 509
    :goto_61
    nop

    .line 510
    return-void

    .line 507
    :catch_63
    move-exception v2

    goto :goto_7c

    .line 505
    :goto_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "boolValue":I
    .end local v1    # "intValue":I
    .end local p0    # "this":Landroid/net/LocalSocketImpl;
    .end local p1    # "optID":I
    .end local p2    # "value":Ljava/lang/Object;
    throw v2
    :try_end_7c
    .catch Landroid/system/ErrnoException; {:try_start_21 .. :try_end_7c} :catch_63

    .line 508
    .restart local v0    # "boolValue":I
    .restart local v1    # "intValue":I
    .local v2, "e":Landroid/system/ErrnoException;
    .restart local p0    # "this":Landroid/net/LocalSocketImpl;
    .restart local p1    # "optID":I
    .restart local p2    # "value":Ljava/lang/Object;
    :goto_7c
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 476
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_81
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v0    # "boolValue":I
    .end local v1    # "intValue":I
    :cond_9a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_57
        0x4 -> :sswitch_4b
        0x80 -> :sswitch_3c
        0x1001 -> :sswitch_4b
        0x1002 -> :sswitch_4b
        0x1006 -> :sswitch_24
    .end sparse-switch
.end method

.method protected greylist-max-o shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_13

    .line 375
    :try_start_4
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SHUT_RD:I

    invoke-static {v0, v1}, Landroid/system/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_b} :catch_d

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catch_d
    move-exception v0

    .line 377
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 371
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_13

    .line 393
    :try_start_4
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SHUT_WR:I

    invoke-static {v0, v1}, Landroid/system/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_b} :catch_d

    .line 396
    nop

    .line 397
    return-void

    .line 394
    :catch_d
    move-exception v0

    .line 395
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 389
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o supportsUrgentData()Z
    .registers 2

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
