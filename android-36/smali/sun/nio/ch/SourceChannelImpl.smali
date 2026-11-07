.class Lsun/nio/ch/SourceChannelImpl;
.super Ljava/nio/channels/Pipe$SourceChannel;
.source "SourceChannelImpl.java"

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

    .line 35
    nop

    .line 41
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 80
    invoke-direct {p0, p1}, Ljava/nio/channels/Pipe$SourceChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->lock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->stateLock:Ljava/lang/Object;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    .line 81
    iput-object p2, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 82
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->fdVal:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    .line 84
    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    return-void

    .line 155
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist getFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 72
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getFDVal()I
    .registers 2

    .line 76
    iget v0, p0, Lsun/nio/ch/SourceChannelImpl;->fdVal:I

    return v0
.end method

.method protected whitelist test-api implCloseSelectableChannel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 89
    sget-object v1, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 90
    :cond_f
    iget-wide v1, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 91
    .local v1, "th":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1a

    .line 92
    invoke-static {v1, v2}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 93
    :cond_1a
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_23

    .line 94
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->kill()V

    .line 95
    .end local v1    # "th":J
    :cond_23
    monitor-exit v0

    .line 96
    return-void

    .line 95
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

    .line 113
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 114
    return-void
.end method

.method public blacklist kill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 101
    monitor-exit v0

    return-void

    .line 102
    :cond_a
    iget v1, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 103
    iput v2, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    .line 104
    monitor-exit v0

    return-void

    .line 106
    :cond_13
    nop

    .line 107
    sget-object v1, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v3, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v3}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 108
    iput v2, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 13
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_62

    .line 163
    invoke-direct {p0}, Lsun/nio/ch/SourceChannelImpl;->ensureOpen()V

    .line 164
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "n":I
    const/4 v2, -0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :try_start_e
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->begin()V

    .line 168
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v7
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_50

    if-nez v7, :cond_25

    .line 169
    nop

    .line 176
    :try_start_18
    iput-wide v4, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 177
    if-gtz v1, :cond_20

    if-ne v1, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v3, v6

    :cond_20
    :goto_20
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 178
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_5f

    .line 169
    return v6

    .line 170
    :cond_25
    :try_start_25
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 172
    :cond_2b
    iget-object v7, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v8, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v9, -0x1

    invoke-static {v7, p1, v9, v10, v8}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v7

    move v1, v7

    .line 173
    const/4 v7, -0x3

    if-ne v1, v7, :cond_3f

    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2b

    .line 174
    :cond_3f
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v7
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_50

    .line 176
    :try_start_43
    iput-wide v4, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 177
    if-gtz v1, :cond_4b

    if-ne v1, v2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v6

    :cond_4b
    :goto_4b
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 178
    monitor-exit v0

    .line 174
    return v7

    .line 176
    :catchall_50
    move-exception v7

    iput-wide v4, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 177
    if-gtz v1, :cond_59

    if-ne v1, v2, :cond_58

    goto :goto_59

    :cond_58
    move v3, v6

    :cond_59
    :goto_59
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 178
    nop

    .line 179
    nop

    .end local p0    # "this":Lsun/nio/ch/SourceChannelImpl;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v7

    .line 180
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SourceChannelImpl;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_5f

    throw v1

    .line 161
    :cond_62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;)J
    .registers 13
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    if-eqz p1, :cond_6e

    .line 194
    invoke-direct {p0}, Lsun/nio/ch/SourceChannelImpl;->ensureOpen()V

    .line 195
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    const-wide/16 v1, 0x0

    .line 198
    .local v1, "n":J
    const/4 v3, 0x0

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    :try_start_10
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->begin()V

    .line 199
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v9
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_59

    if-nez v9, :cond_2a

    .line 200
    nop

    .line 207
    :try_start_1a
    iput-wide v7, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 208
    cmp-long v9, v1, v7

    if-gtz v9, :cond_24

    cmp-long v4, v1, v4

    if-nez v4, :cond_25

    :cond_24
    move v3, v6

    :cond_25
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 209
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_6b

    .line 200
    return-wide v7

    .line 201
    :cond_2a
    :try_start_2a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 203
    :cond_30
    iget-object v9, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, p1, v10}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v9

    move-wide v1, v9

    .line 204
    const-wide/16 v9, -0x3

    cmp-long v9, v1, v9

    if-nez v9, :cond_45

    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_30

    .line 205
    :cond_45
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v9
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_59

    .line 207
    :try_start_49
    iput-wide v7, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 208
    cmp-long v7, v1, v7

    if-gtz v7, :cond_53

    cmp-long v4, v1, v4

    if-nez v4, :cond_54

    :cond_53
    move v3, v6

    :cond_54
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 209
    monitor-exit v0

    .line 205
    return-wide v9

    .line 207
    :catchall_59
    move-exception v9

    iput-wide v7, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 208
    cmp-long v7, v1, v7

    if-gtz v7, :cond_64

    cmp-long v4, v1, v4

    if-nez v4, :cond_65

    :cond_64
    move v3, v6

    :cond_65
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 209
    nop

    .line 210
    nop

    .end local p0    # "this":Lsun/nio/ch/SourceChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    throw v9

    .line 211
    .end local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SourceChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_49 .. :try_end_6d} :catchall_6b

    throw v1

    .line 193
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_11

    .line 188
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/SourceChannelImpl;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 187
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 148
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 149
    sget-short p1, Lsun/nio/ch/Net;->POLLIN:S

    .line 150
    :cond_5
    iget-object v0, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v0, p2, p1}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 151
    return-void
.end method

.method public blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SourceChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 140
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SourceChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 10
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 118
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 119
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v1

    .line 120
    .local v1, "oldOps":I
    move v2, p2

    .line 122
    .local v2, "newOps":I
    sget-short v3, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v3, p1

    if-nez v3, :cond_36

    .line 125
    sget-short v3, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v4, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v3, v4

    and-int/2addr v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_22

    .line 126
    move v2, v0

    .line 127
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 128
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_21

    move v4, v5

    :cond_21
    return v4

    .line 131
    :cond_22
    sget-short v3, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_2d

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2d

    .line 133
    or-int/lit8 v2, v2, 0x1

    .line 135
    :cond_2d
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 136
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_35

    move v4, v5

    :cond_35
    return v4

    .line 123
    :cond_36
    new-instance v3, Ljava/lang/Error;

    const-string v4, "POLLNVAL detected"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method
