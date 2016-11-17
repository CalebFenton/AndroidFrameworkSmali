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
.field private fd:Ljava/io/FileDescriptor;

.field private fis:Landroid/net/LocalSocketImpl$SocketInputStream;

.field private fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

.field inboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private mFdCreatedInternally:Z

.field outboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private readMonitor:Ljava/lang/Object;

.field private writeMonitor:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    .locals 0
    .param p1, "b"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@a
    .line 41
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@11
    .line 210
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@a
    .line 41
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@11
    .line 223
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@13
    .line 221
    return-void
.end method

.method private native bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static javaSoToOsOpt(I)I
    .locals 3
    .param p0, "optID"    # I

    #@0
    .prologue
    .line 609
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 617
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown option: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 611
    :sswitch_0
    sget v0, Landroid/system/OsConstants;->SO_SNDBUF:I

    #@1f
    return v0

    #@20
    .line 613
    :sswitch_1
    sget v0, Landroid/system/OsConstants;->SO_RCVBUF:I

    #@22
    return v0

    #@23
    .line 615
    :sswitch_2
    sget v0, Landroid/system/OsConstants;->SO_REUSEADDR:I

    #@25
    return v0

    #@26
    .line 609
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
    .end sparse-switch
.end method

.method private native read_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readba_native([BIILjava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native write_native(ILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeba_native([BIILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected accept(Landroid/net/LocalSocketImpl;)V
    .locals 3
    .param p1, "s"    # Landroid/net/LocalSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 332
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "socket not created"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 336
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v1, v2}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p1, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@16
    .line 337
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p1, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 330
    return-void

    #@1a
    .line 338
    :catch_0
    move-exception v0

    #@1b
    .line 339
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@1e
    move-result-object v1

    #@1f
    throw v1
.end method

.method protected available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 3
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 305
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 308
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    #@1e
    .line 302
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    monitor-enter p0

    #@1
    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    #@7
    if-nez v1, :cond_1

    #@9
    .line 272
    :cond_0
    const/4 v1, 0x0

    #@a
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 273
    return-void

    #@e
    .line 276
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@10
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 280
    :goto_0
    const/4 v1, 0x0

    #@14
    :try_start_2
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 269
    return-void

    #@18
    .line 277
    :catch_0
    move-exception v0

    #@19
    .line 278
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_3
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 270
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method protected connect(Landroid/net/LocalSocketAddress;I)V
    .locals 3
    .param p1, "address"    # Landroid/net/LocalSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 289
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 292
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    #@1e
    .line 286
    return-void
.end method

.method public create(I)V
    .locals 4
    .param p1, "sockType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 242
    packed-switch p1, :pswitch_data_0

    #@7
    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "unknown sockType"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 244
    :pswitch_0
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@12
    .line 256
    .local v1, "osType":I
    :goto_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    #@14
    const/4 v3, 0x0

    #@15
    invoke-static {v2, v1, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@1b
    .line 257
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 237
    .end local v1    # "osType":I
    :cond_0
    :goto_1
    return-void

    #@1f
    .line 247
    :pswitch_1
    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@21
    .restart local v1    # "osType":I
    goto :goto_0

    #@22
    .line 250
    .end local v1    # "osType":I
    :pswitch_2
    sget v1, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    #@24
    .restart local v1    # "osType":I
    goto :goto_0

    #@25
    .line 258
    :catch_0
    move-exception v0

    #@26
    .line 259
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@29
    goto :goto_1

    #@2a
    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->close()V

    #@3
    .line 604
    return-void
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 574
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    #@5
    .line 576
    .local v0, "result":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    #@6
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 577
    return-object v0

    #@a
    .line 573
    .end local v0    # "result":[Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v2

    #@c
    throw v1
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 352
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 355
    :cond_0
    monitor-enter p0

    #@e
    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 357
    new-instance v0, Landroid/net/LocalSocketImpl$SocketInputStream;

    #@14
    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketInputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    #@17
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    #@19
    .line 360
    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v0

    #@1d
    .line 355
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 8
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 450
    new-instance v5, Ljava/io/IOException;

    #@6
    const-string/jumbo v6, "socket not created"

    #@9
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 455
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@10
    .line 481
    :try_start_0
    new-instance v5, Ljava/io/IOException;

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "Unknown option: "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 484
    :catch_0
    move-exception v0

    #@2b
    .line 485
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2e
    move-result-object v5

    #@2f
    throw v5

    #@30
    .line 457
    .end local v0    # "e":Landroid/system/ErrnoException;
    :sswitch_0
    :try_start_1
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@32
    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@34
    .line 458
    sget v7, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@36
    .line 457
    invoke-static {v5, v6, v7}, Landroid/system/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    #@39
    move-result-object v3

    #@3a
    .line 459
    .local v3, "timeval":Landroid/system/StructTimeval;
    invoke-virtual {v3}, Landroid/system/StructTimeval;->toMillis()J

    #@3d
    move-result-wide v6

    #@3e
    long-to-int v5, v6

    #@3f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v4

    #@43
    .line 483
    .end local v3    # "timeval":Landroid/system/StructTimeval;
    .local v4, "toReturn":Ljava/lang/Object;
    :goto_0
    return-object v4

    #@44
    .line 464
    .end local v4    # "toReturn":Ljava/lang/Object;
    :sswitch_1
    invoke-static {p1}, Landroid/net/LocalSocketImpl;->javaSoToOsOpt(I)I

    #@47
    move-result v2

    #@48
    .line 465
    .local v2, "osOpt":I
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4a
    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@4c
    invoke-static {v5, v6, v2}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@4f
    move-result v5

    #@50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v4

    #@54
    .restart local v4    # "toReturn":Ljava/lang/Object;
    goto :goto_0

    #@55
    .line 469
    .end local v2    # "osOpt":I
    .end local v4    # "toReturn":Ljava/lang/Object;
    :sswitch_2
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@57
    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@59
    sget v7, Landroid/system/OsConstants;->SO_LINGER:I

    #@5b
    invoke-static {v5, v6, v7}, Landroid/system/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    #@5e
    move-result-object v1

    #@5f
    .line 470
    .local v1, "linger":Landroid/system/StructLinger;
    invoke-virtual {v1}, Landroid/system/StructLinger;->isOn()Z

    #@62
    move-result v5

    #@63
    if-nez v5, :cond_1

    #@65
    .line 471
    const/4 v5, -0x1

    #@66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v4

    #@6a
    .restart local v4    # "toReturn":Ljava/lang/Object;
    goto :goto_0

    #@6b
    .line 473
    .end local v4    # "toReturn":Ljava/lang/Object;
    :cond_1
    iget v5, v1, Landroid/system/StructLinger;->l_linger:I

    #@6d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v4

    #@71
    .restart local v4    # "toReturn":Ljava/lang/Object;
    goto :goto_0

    #@72
    .line 477
    .end local v1    # "linger":Landroid/system/StructLinger;
    .end local v4    # "toReturn":Ljava/lang/Object;
    :sswitch_3
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@74
    sget v6, Landroid/system/OsConstants;->IPPROTO_TCP:I

    #@76
    .line 478
    sget v7, Landroid/system/OsConstants;->TCP_NODELAY:I

    #@78
    .line 477
    invoke-static {v5, v6, v7}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@7b
    move-result v5

    #@7c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@7f
    move-result-object v4

    #@80
    .restart local v4    # "toReturn":Ljava/lang/Object;
    goto :goto_0

    #@81
    .line 455
    nop

    #@82
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_1
        0x80 -> :sswitch_2
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 373
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 376
    :cond_0
    monitor-enter p0

    #@e
    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 378
    new-instance v0, Landroid/net/LocalSocketImpl$SocketOutputStream;

    #@14
    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketOutputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    #@17
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    #@19
    .line 381
    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v0

    #@1d
    .line 376
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-direct {p0, v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSockAddress()Landroid/net/LocalSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected listen(I)V
    .locals 3
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 314
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "socket not created"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 317
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-static {v1, p1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 311
    return-void

    #@13
    .line 318
    :catch_0
    move-exception v0

    #@14
    .line 319
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@17
    move-result-object v1

    #@18
    throw v1
.end method

.method protected sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "not impled"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fds"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 558
    :try_start_0
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->outboundFileDescriptors:[Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 556
    return-void

    #@7
    .line 557
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 9
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 493
    new-instance v6, Ljava/io/IOException;

    #@6
    const-string/jumbo v7, "socket not created"

    #@9
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 502
    :cond_0
    const/4 v0, -0x1

    #@e
    .line 503
    .local v0, "boolValue":I
    const/4 v2, 0x0

    #@f
    .line 504
    .local v2, "intValue":I
    instance-of v6, p2, Ljava/lang/Integer;

    #@11
    if-eqz v6, :cond_1

    #@13
    .line 505
    check-cast p2, Ljava/lang/Integer;

    #@15
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v2

    #@19
    .line 513
    :goto_0
    sparse-switch p1, :sswitch_data_0

    #@1c
    .line 540
    :try_start_0
    new-instance v6, Ljava/io/IOException;

    #@1e
    new-instance v7, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v8, "Unknown option: "

    #@26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@35
    throw v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 542
    :catch_0
    move-exception v1

    #@37
    .line 543
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@3a
    move-result-object v6

    #@3b
    throw v6

    #@3c
    .line 506
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, p2, Ljava/lang/Boolean;

    #@3e
    if-eqz v6, :cond_3

    #@40
    .line 507
    check-cast p2, Ljava/lang/Boolean;

    #@42
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    const/4 v0, 0x1

    #@49
    goto :goto_0

    #@4a
    :cond_2
    const/4 v0, 0x0

    #@4b
    goto :goto_0

    #@4c
    .line 509
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v6, Ljava/io/IOException;

    #@4e
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "bad value: "

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v6

    #@66
    .line 515
    .end local p2    # "value":Ljava/lang/Object;
    :sswitch_0
    :try_start_1
    new-instance v3, Landroid/system/StructLinger;

    #@68
    invoke-direct {v3, v0, v2}, Landroid/system/StructLinger;-><init>(II)V

    #@6b
    .line 516
    .local v3, "linger":Landroid/system/StructLinger;
    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@6d
    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@6f
    sget v8, Landroid/system/OsConstants;->SO_LINGER:I

    #@71
    invoke-static {v6, v7, v8, v3}, Landroid/system/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    #@74
    .line 490
    .end local v3    # "linger":Landroid/system/StructLinger;
    :goto_1
    return-void

    #@75
    .line 525
    :sswitch_1
    int-to-long v6, v2

    #@76
    invoke-static {v6, v7}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@79
    move-result-object v5

    #@7a
    .line 526
    .local v5, "timeval":Landroid/system/StructTimeval;
    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@7c
    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@7e
    sget v8, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@80
    invoke-static {v6, v7, v8, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@83
    goto :goto_1

    #@84
    .line 532
    .end local v5    # "timeval":Landroid/system/StructTimeval;
    :sswitch_2
    invoke-static {p1}, Landroid/net/LocalSocketImpl;->javaSoToOsOpt(I)I

    #@87
    move-result v4

    #@88
    .line 533
    .local v4, "osOpt":I
    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@8a
    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@8c
    invoke-static {v6, v7, v4, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@8f
    goto :goto_1

    #@90
    .line 536
    .end local v4    # "osOpt":I
    :sswitch_3
    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@92
    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    #@94
    sget v8, Landroid/system/OsConstants;->TCP_NODELAY:I

    #@96
    invoke-static {v6, v7, v8, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@99
    goto :goto_1

    #@9a
    .line 513
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_2
        0x80 -> :sswitch_0
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_2
        0x1006 -> :sswitch_1
    .end sparse-switch
.end method

.method protected shutdownInput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 404
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "socket not created"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 408
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    sget v2, Landroid/system/OsConstants;->SHUT_RD:I

    #@11
    invoke-static {v1, v2}, Landroid/system/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 401
    return-void

    #@15
    .line 409
    :catch_0
    move-exception v0

    #@16
    .line 410
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@19
    move-result-object v1

    #@1a
    throw v1
.end method

.method protected shutdownOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 422
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "socket not created"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 426
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    sget v2, Landroid/system/OsConstants;->SHUT_WR:I

    #@11
    invoke-static {v1, v2}, Landroid/system/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 419
    return-void

    #@15
    .line 427
    :catch_0
    move-exception v0

    #@16
    .line 428
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@19
    move-result-object v1

    #@1a
    throw v1
.end method

.method protected supportsUrgentData()Z
    .locals 1

    #@0
    .prologue
    .line 439
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " fd:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
