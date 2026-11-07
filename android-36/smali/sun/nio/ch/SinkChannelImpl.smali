.class Lsun/nio/ch/SinkChannelImpl;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "SinkChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ST_INUSE:I = 0x0

.field private static final blacklist ST_KILLED:I = 0x1

.field private static final blacklist ST_UNINITIALIZED:I = -0x1

.field private static final blacklist nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field blacklist fd:Ljava/io/FileDescriptor;

.field blacklist fdVal:I

.field private final blacklist lock:Ljava/lang/Object;

.field private volatile blacklist state:I

.field private final blacklist stateLock:Ljava/lang/Object;

.field private volatile blacklist thread:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    nop

    .line 40
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 79
    invoke-direct {p0, p1}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    .line 80
    iput-object p2, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 81
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->fdVal:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    .line 83
    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    return-void

    .line 154
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist getFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 71
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getFDVal()I
    .registers 2

    .line 75
    iget v0, p0, Lsun/nio/ch/SinkChannelImpl;->fdVal:I

    return v0
.end method

.method protected whitelist test-api implCloseSelectableChannel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 88
    sget-object v1, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 89
    :cond_f
    iget-wide v1, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 90
    .local v1, "th":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1a

    .line 91
    invoke-static {v1, v2}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 92
    :cond_1a
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_23

    .line 93
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->kill()V

    .line 94
    .end local v1    # "th":J
    :cond_23
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method protected whitelist test-api implConfigureBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 113
    return-void
.end method

.method public blacklist kill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 100
    monitor-exit v0

    return-void

    .line 101
    :cond_a
    iget v1, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 102
    iput v2, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    .line 103
    monitor-exit v0

    return-void

    .line 105
    :cond_13
    nop

    .line 106
    sget-object v1, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v3, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v3}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 107
    iput v2, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 147
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 148
    sget-short p1, Lsun/nio/ch/Net;->POLLOUT:S

    .line 149
    :cond_5
    iget-object v0, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v0, p2, p1}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 150
    return-void
.end method

.method public blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SinkChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 139
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SinkChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 10
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 117
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 118
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v1

    .line 119
    .local v1, "oldOps":I
    move v2, p2

    .line 121
    .local v2, "newOps":I
    sget-short v3, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v3, p1

    if-nez v3, :cond_38

    .line 124
    sget-short v3, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v4, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v3, v4

    and-int/2addr v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_23

    .line 125
    move v2, v0

    .line 126
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 127
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v4, v5

    :goto_22
    return v4

    .line 130
    :cond_23
    sget-short v3, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_2e

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2e

    .line 132
    or-int/lit8 v2, v2, 0x4

    .line 134
    :cond_2e
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 135
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v4, v5

    :goto_37
    return v4

    .line 122
    :cond_38
    new-instance v3, Ljava/lang/Error;

    const-string v4, "POLLNVAL detected"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .registers 13
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lsun/nio/ch/SinkChannelImpl;->ensureOpen()V

    .line 159
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "n":I
    const/4 v2, -0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->begin()V

    .line 163
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->isOpen()Z

    move-result v7
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_4e

    if-nez v7, :cond_23

    .line 164
    nop

    .line 171
    :try_start_16
    iput-wide v4, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 172
    if-gtz v1, :cond_1e

    if-ne v1, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v6

    :cond_1e
    :goto_1e
    invoke-virtual {p0, v3}, Lsun/nio/ch/SinkChannelImpl;->end(Z)V

    .line 173
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_5d

    .line 164
    return v6

    .line 165
    :cond_23
    :try_start_23
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 167
    :cond_29
    iget-object v7, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v8, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v9, -0x1

    invoke-static {v7, p1, v9, v10, v8}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v7

    move v1, v7

    .line 168
    const/4 v7, -0x3

    if-ne v1, v7, :cond_3d

    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_29

    .line 169
    :cond_3d
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v7
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_4e

    .line 171
    :try_start_41
    iput-wide v4, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 172
    if-gtz v1, :cond_49

    if-ne v1, v2, :cond_48

    goto :goto_49

    :cond_48
    move v3, v6

    :cond_49
    :goto_49
    invoke-virtual {p0, v3}, Lsun/nio/ch/SinkChannelImpl;->end(Z)V

    .line 173
    monitor-exit v0

    .line 169
    return v7

    .line 171
    :catchall_4e
    move-exception v7

    iput-wide v4, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 172
    if-gtz v1, :cond_57

    if-ne v1, v2, :cond_56

    goto :goto_57

    :cond_56
    move v3, v6

    :cond_57
    :goto_57
    invoke-virtual {p0, v3}, Lsun/nio/ch/SinkChannelImpl;->end(Z)V

    .line 173
    nop

    .line 174
    nop

    .end local p0    # "this":Lsun/nio/ch/SinkChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    throw v7

    .line 175
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SinkChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;)J
    .registers 13
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_6e

    .line 181
    invoke-direct {p0}, Lsun/nio/ch/SinkChannelImpl;->ensureOpen()V

    .line 182
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    const-wide/16 v1, 0x0

    .line 185
    .local v1, "n":J
    const/4 v3, 0x0

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    :try_start_10
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->begin()V

    .line 186
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->isOpen()Z

    move-result v9
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_59

    if-nez v9, :cond_2a

    .line 187
    nop

    .line 194
    :try_start_1a
    iput-wide v7, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 195
    cmp-long v9, v1, v7

    if-gtz v9, :cond_24

    cmp-long v4, v1, v4

    if-nez v4, :cond_25

    :cond_24
    move v3, v6

    :cond_25
    invoke-virtual {p0, v3}, Lsun/nio/ch/SinkChannelImpl;->end(Z)V

    .line 196
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_6b

    .line 187
    return-wide v7

    .line 188
    :cond_2a
    :try_start_2a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 190
    :cond_30
    iget-object v9, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, p1, v10}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v9

    move-wide v1, v9

    .line 191
    const-wide/16 v9, -0x3

    cmp-long v9, v1, v9

    if-nez v9, :cond_45

    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_30

    .line 192
    :cond_45
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v9
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_59

    .line 194
    :try_start_49
    iput-wide v7, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 195
    cmp-long v7, v1, v7

    if-gtz v7, :cond_53

    cmp-long v4, v1, v4

    if-nez v4, :cond_54

    :cond_53
    move v3, v6

    :cond_54
    invoke-virtual {p0, v3}, Lsun/nio/ch/SinkChannelImpl;->end(Z)V

    .line 196
    monitor-exit v0

    .line 192
    return-wide v9

    .line 194
    :catchall_59
    move-exception v9

    iput-wide v7, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 195
    cmp-long v7, v1, v7

    if-gtz v7, :cond_64

    cmp-long v4, v1, v4

    if-nez v4, :cond_65

    :cond_64
    move v3, v6

    :cond_65
    invoke-virtual {p0, v3}, Lsun/nio/ch/SinkChannelImpl;->end(Z)V

    .line 196
    nop

    .line 197
    nop

    .end local p0    # "this":Lsun/nio/ch/SinkChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    throw v9

    .line 198
    .end local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SinkChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_49 .. :try_end_6d} :catchall_6b

    throw v1

    .line 180
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_11

    .line 206
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/SinkChannelImpl;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
