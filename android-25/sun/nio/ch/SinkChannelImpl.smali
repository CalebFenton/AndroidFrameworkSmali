.class Lsun/nio/ch/SinkChannelImpl;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "SinkChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_INUSE:I = 0x0

.field private static final ST_KILLED:I = 0x1

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field fd:Ljava/io/FileDescriptor;

.field fdVal:I

.field private final lock:Ljava/lang/Object;

.field private volatile state:I

.field private final stateLock:Ljava/lang/Object;

.field private volatile thread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/SinkChannelImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@b
    .line 211
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    #@d
    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    #@10
    sput-object v0, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@12
    .line 34
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 50
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@7
    .line 53
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    #@e
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    #@15
    .line 65
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    #@18
    .line 80
    iput-object p2, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1a
    .line 81
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->fdVal:I

    #@20
    .line 82
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    #@23
    .line 78
    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 155
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v0

    #@c
    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Lsun/nio/ch/SinkChannelImpl;->fdVal:I

    #@2
    return v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    iget-object v3, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 87
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    #@5
    const/4 v4, 0x1

    #@6
    if-eq v2, v4, :cond_0

    #@8
    .line 88
    sget-object v2, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@a
    iget-object v4, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@c
    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    #@f
    .line 89
    :cond_0
    iget-wide v0, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@11
    .line 90
    .local v0, "th":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v2, v0, v4

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 91
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@1a
    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isRegistered()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 93
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_2
    monitor-exit v3

    #@24
    .line 85
    return-void

    #@25
    .line 86
    .end local v0    # "th":J
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    #@5
    .line 111
    return-void
.end method

.method public kill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 98
    iget-object v2, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 99
    :try_start_0
    iget v3, p0, Lsun/nio/ch/SinkChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v3, v1, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 100
    return-void

    #@b
    .line 101
    :cond_0
    :try_start_1
    iget v3, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    #@d
    const/4 v4, -0x1

    #@e
    if-ne v3, v4, :cond_1

    #@10
    .line 102
    const/4 v0, 0x1

    #@11
    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 103
    return-void

    #@15
    .line 105
    :cond_1
    :try_start_2
    sget-boolean v3, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@17
    if-nez v3, :cond_4

    #@19
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_2

    #@1f
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isRegistered()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_3

    #@25
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    #@27
    new-instance v0, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    .line 98
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v2

    #@2f
    throw v0

    #@30
    :cond_3
    move v0, v1

    #@31
    .line 105
    goto :goto_0

    #@32
    .line 106
    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@34
    iget-object v1, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@36
    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    #@39
    .line 107
    const/4 v0, 0x1

    #@3a
    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    monitor-exit v2

    #@3d
    .line 97
    return-void
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 148
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 149
    const/4 p1, 0x4

    #@4
    .line 150
    :cond_0
    iget-object v0, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    #@6
    invoke-virtual {v0, p2, p1}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    #@9
    .line 147
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SinkChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 140
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SinkChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 6
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 117
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    #@5
    move-result v0

    #@6
    .line 118
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@9
    move-result v2

    #@a
    .line 119
    .local v2, "oldOps":I
    move v1, p2

    #@b
    .line 121
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 122
    new-instance v3, Ljava/lang/Error;

    #@11
    const-string/jumbo v4, "POLLNVAL detected"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 124
    :cond_0
    and-int/lit8 v5, p1, 0x18

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 126
    move v1, v0

    #@1d
    .line 127
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@20
    .line 128
    not-int v5, v2

    #@21
    and-int/2addr v5, v0

    #@22
    if-eqz v5, :cond_1

    #@24
    :goto_0
    return v3

    #@25
    :cond_1
    move v3, v4

    #@26
    goto :goto_0

    #@27
    .line 131
    :cond_2
    and-int/lit8 v5, p1, 0x4

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 132
    and-int/lit8 v5, v0, 0x4

    #@2d
    if-eqz v5, :cond_3

    #@2f
    .line 133
    or-int/lit8 v1, p2, 0x4

    #@31
    .line 135
    :cond_3
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@34
    .line 136
    not-int v5, v2

    #@35
    and-int/2addr v5, v1

    #@36
    if-eqz v5, :cond_4

    #@38
    :goto_1
    return v3

    #@39
    :cond_4
    move v3, v4

    #@3a
    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 159
    invoke-direct {p0}, Lsun/nio/ch/SinkChannelImpl;->ensureOpen()V

    #@6
    .line 160
    iget-object v4, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 161
    const/4 v0, 0x0

    #@a
    .line 163
    .local v0, "n":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    #@d
    .line 164
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 172
    const-wide/16 v6, 0x0

    #@15
    :try_start_1
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@17
    .line 173
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@1b
    .line 174
    sget-boolean v1, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    new-instance v1, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@2a
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 160
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v4

    #@2d
    throw v1

    #@2e
    :cond_0
    monitor-exit v4

    #@2f
    .line 165
    return v3

    #@30
    .line 166
    :cond_1
    :try_start_2
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@33
    move-result-wide v6

    #@34
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@36
    .line 168
    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@38
    const-wide/16 v6, -0x1

    #@3a
    sget-object v5, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@3c
    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@3f
    move-result v0

    #@40
    .line 169
    const/4 v1, -0x3

    #@41
    if-ne v0, v1, :cond_3

    #@43
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@46
    move-result v1

    #@47
    if-nez v1, :cond_2

    #@49
    .line 170
    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    move-result v1

    #@4d
    .line 172
    const-wide/16 v6, 0x0

    #@4f
    :try_start_3
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@51
    .line 173
    if-gtz v0, :cond_4

    #@53
    if-ne v0, v8, :cond_5

    #@55
    :cond_4
    :goto_0
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@58
    .line 174
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@5a
    if-nez v2, :cond_6

    #@5c
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@5f
    move-result v2

    #@60
    if-nez v2, :cond_6

    #@62
    new-instance v1, Ljava/lang/AssertionError;

    #@64
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@67
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    :cond_5
    move v2, v3

    #@69
    .line 173
    goto :goto_0

    #@6a
    :cond_6
    monitor-exit v4

    #@6b
    .line 170
    return v1

    #@6c
    .line 171
    :catchall_1
    move-exception v1

    #@6d
    .line 172
    const-wide/16 v6, 0x0

    #@6f
    :try_start_4
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@71
    .line 173
    if-gtz v0, :cond_7

    #@73
    if-ne v0, v8, :cond_8

    #@75
    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@78
    .line 174
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@7a
    if-nez v2, :cond_9

    #@7c
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@7f
    move-result v2

    #@80
    if-nez v2, :cond_9

    #@82
    new-instance v1, Ljava/lang/AssertionError;

    #@84
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@87
    throw v1

    #@88
    :cond_8
    move v2, v3

    #@89
    .line 173
    goto :goto_1

    #@8a
    .line 171
    :cond_9
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .locals 14
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v12, -0x2

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    const-wide/16 v10, 0x0

    #@6
    .line 180
    if-nez p1, :cond_0

    #@8
    .line 181
    new-instance v2, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v2

    #@e
    .line 182
    :cond_0
    invoke-direct {p0}, Lsun/nio/ch/SinkChannelImpl;->ensureOpen()V

    #@11
    .line 183
    iget-object v5, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    #@13
    monitor-enter v5

    #@14
    .line 184
    const-wide/16 v0, 0x0

    #@16
    .line 186
    .local v0, "n":J
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    #@19
    .line 187
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_2

    #@1f
    .line 195
    const-wide/16 v2, 0x0

    #@21
    :try_start_1
    iput-wide v2, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@23
    .line 196
    const/4 v2, 0x0

    #@24
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@27
    .line 197
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@29
    if-nez v2, :cond_1

    #@2b
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_1

    #@31
    new-instance v2, Ljava/lang/AssertionError;

    #@33
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@36
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 183
    :catchall_0
    move-exception v2

    #@38
    monitor-exit v5

    #@39
    throw v2

    #@3a
    :cond_1
    monitor-exit v5

    #@3b
    .line 188
    return-wide v10

    #@3c
    .line 189
    :cond_2
    :try_start_2
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@3f
    move-result-wide v6

    #@40
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@42
    .line 191
    :cond_3
    iget-object v2, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@44
    sget-object v6, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@46
    invoke-static {v2, p1, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    #@49
    move-result-wide v0

    #@4a
    .line 192
    const-wide/16 v6, -0x3

    #@4c
    cmp-long v2, v0, v6

    #@4e
    if-nez v2, :cond_4

    #@50
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    #@53
    move-result v2

    #@54
    if-nez v2, :cond_3

    #@56
    .line 193
    :cond_4
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@59
    move-result-wide v6

    #@5a
    .line 195
    const-wide/16 v8, 0x0

    #@5c
    :try_start_3
    iput-wide v8, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@5e
    .line 196
    cmp-long v2, v0, v10

    #@60
    if-gtz v2, :cond_5

    #@62
    cmp-long v2, v0, v12

    #@64
    if-nez v2, :cond_6

    #@66
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@69
    .line 197
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@6b
    if-nez v2, :cond_7

    #@6d
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@70
    move-result v2

    #@71
    if-nez v2, :cond_7

    #@73
    new-instance v2, Ljava/lang/AssertionError;

    #@75
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@78
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@79
    :cond_6
    move v3, v4

    #@7a
    .line 196
    goto :goto_0

    #@7b
    :cond_7
    monitor-exit v5

    #@7c
    .line 193
    return-wide v6

    #@7d
    .line 194
    :catchall_1
    move-exception v2

    #@7e
    .line 195
    const-wide/16 v6, 0x0

    #@80
    :try_start_4
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    #@82
    .line 196
    cmp-long v6, v0, v10

    #@84
    if-gtz v6, :cond_8

    #@86
    cmp-long v6, v0, v12

    #@88
    if-nez v6, :cond_9

    #@8a
    :cond_8
    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@8d
    .line 197
    sget-boolean v3, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    #@8f
    if-nez v3, :cond_a

    #@91
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@94
    move-result v3

    #@95
    if-nez v3, :cond_a

    #@97
    new-instance v2, Ljava/lang/AssertionError;

    #@99
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@9c
    throw v2

    #@9d
    :cond_9
    move v3, v4

    #@9e
    .line 196
    goto :goto_1

    #@9f
    .line 194
    :cond_a
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 205
    :cond_1
    array-length v0, p1

    #@b
    sub-int/2addr v0, p3

    #@c
    if-gt p2, v0, :cond_0

    #@e
    .line 207
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Lsun/nio/ch/SinkChannelImpl;->write([Ljava/nio/ByteBuffer;)J

    #@15
    move-result-wide v0

    #@16
    return-wide v0
.end method
