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
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->available_native(Ljava/io/FileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->pending_native(Ljava/io/FileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
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

.method static synthetic -wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
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

.method static synthetic -wrap4(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    .locals 0
    .param p1, "b"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
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
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@a
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@11
    .line 208
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
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@a
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@11
    .line 221
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@13
    .line 219
    return-void
.end method

.method private native accept(Ljava/io/FileDescriptor;Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native available_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

.method private native getOption_native(Ljava/io/FileDescriptor;I)I
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

.method private native listen_native(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native pending_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

.method private native setOption_native(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native shutdown(Ljava/io/FileDescriptor;Z)V
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
    .locals 2
    .param p1, "s"    # Landroid/net/LocalSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 328
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 331
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->accept(Ljava/io/FileDescriptor;Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p1, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@15
    .line 332
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p1, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    #@18
    .line 325
    return-void
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
    .line 385
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
    .line 302
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 303
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 306
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
    .line 300
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
    .line 268
    monitor-enter p0

    #@1
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    #@7
    if-nez v1, :cond_1

    #@9
    .line 270
    :cond_0
    const/4 v1, 0x0

    #@a
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 271
    return-void

    #@e
    .line 274
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@10
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 278
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
    .line 267
    return-void

    #@18
    .line 275
    :catch_0
    move-exception v0

    #@19
    .line 276
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_3
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 268
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
    .line 286
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 287
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 290
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
    .line 284
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
    .line 238
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 240
    packed-switch p1, :pswitch_data_0

    #@7
    .line 251
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "unknown sockType"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 242
    :pswitch_0
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@12
    .line 254
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
    .line 255
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 235
    .end local v1    # "osType":I
    :cond_0
    :goto_1
    return-void

    #@1f
    .line 245
    :pswitch_1
    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@21
    .restart local v1    # "osType":I
    goto :goto_0

    #@22
    .line 248
    .end local v1    # "osType":I
    :pswitch_2
    sget v1, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    #@24
    .restart local v1    # "osType":I
    goto :goto_0

    #@25
    .line 256
    :catch_0
    move-exception v0

    #@26
    .line 257
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@29
    goto :goto_1

    #@2a
    .line 240
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
    .line 540
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->close()V

    #@3
    .line 539
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
    .line 505
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    #@5
    .line 508
    .local v0, "result":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    #@6
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 509
    return-object v0

    #@a
    .line 505
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
    .line 418
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
    .line 343
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 344
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 347
    :cond_0
    monitor-enter p0

    #@e
    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 349
    new-instance v0, Landroid/net/LocalSocketImpl$SocketInputStream;

    #@14
    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketInputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    #@17
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    #@19
    .line 352
    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v0

    #@1d
    .line 347
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 3
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 434
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "socket not created"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 437
    :cond_0
    const/16 v1, 0x1006

    #@f
    if-ne p1, v1, :cond_1

    #@11
    .line 438
    const/4 v1, 0x0

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 441
    :cond_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@19
    invoke-direct {p0, v1, p1}, Landroid/net/LocalSocketImpl;->getOption_native(Ljava/io/FileDescriptor;I)I

    #@1c
    move-result v0

    #@1d
    .line 442
    .local v0, "value":I
    packed-switch p1, :pswitch_data_0

    #@20
    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 446
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 442
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 364
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 365
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 368
    :cond_0
    monitor-enter p0

    #@e
    .line 369
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 370
    new-instance v0, Landroid/net/LocalSocketImpl$SocketOutputStream;

    #@14
    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketOutputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    #@17
    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    #@19
    .line 373
    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v0

    #@1d
    .line 368
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
    .line 522
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
    .line 533
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected listen(I)V
    .locals 2
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 312
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 315
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->listen_native(Ljava/io/FileDescriptor;I)V

    #@12
    .line 309
    return-void
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
    .line 428
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
    .line 489
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 490
    :try_start_0
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->outboundFileDescriptors:[Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 488
    return-void

    #@7
    .line 489
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    const/4 v0, -0x1

    #@1
    .line 462
    .local v0, "boolValue":I
    const/4 v1, 0x0

    #@2
    .line 464
    .local v1, "intValue":I
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 465
    new-instance v2, Ljava/io/IOException;

    #@8
    const-string/jumbo v3, "socket not created"

    #@b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 468
    :cond_0
    instance-of v2, p2, Ljava/lang/Integer;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 469
    check-cast p2, Ljava/lang/Integer;

    #@15
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v1

    #@19
    .line 476
    :goto_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@1b
    invoke-direct {p0, v2, p1, v0, v1}, Landroid/net/LocalSocketImpl;->setOption_native(Ljava/io/FileDescriptor;III)V

    #@1e
    .line 454
    return-void

    #@1f
    .line 470
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 471
    check-cast p2, Ljava/lang/Boolean;

    #@25
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    const/4 v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    :cond_2
    const/4 v0, 0x0

    #@2e
    goto :goto_0

    #@2f
    .line 473
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "bad value: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v2
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 396
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 399
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketImpl;->shutdown(Ljava/io/FileDescriptor;Z)V

    #@13
    .line 393
    return-void
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 410
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "socket not created"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 413
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketImpl;->shutdown(Ljava/io/FileDescriptor;Z)V

    #@13
    .line 407
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 1

    #@0
    .prologue
    .line 423
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 225
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
