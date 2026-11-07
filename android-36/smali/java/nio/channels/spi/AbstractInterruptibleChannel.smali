.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# instance fields
.field private final greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile blacklist closed:Z

.field private volatile greylist-max-o interrupted:Ljava/lang/Thread;

.field private greylist-max-o interruptor:Lsun/nio/ch/Interruptible;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcloseLock(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetclosed(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputclosed(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)V
    .registers 2

    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputinterrupted(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method static greylist-max-o blockedOn(Lsun/nio/ch/Interruptible;)V
    .registers 2
    .param p0, "intr"    # Lsun/nio/ch/Interruptible;

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->blockedOn(Lsun/nio/ch/Interruptible;)V

    .line 212
    return-void
.end method


# virtual methods
.method protected final whitelist test-api begin()V
    .registers 3

    .line 154
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    if-nez v0, :cond_b

    .line 155
    new-instance v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    .line 168
    :cond_b
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-static {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 170
    .local v0, "me":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 171
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-interface {v1, v0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    .line 172
    :cond_1f
    return-void
.end method

.method public final whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-eqz v1, :cond_9

    .line 111
    monitor-exit v0

    return-void

    .line 112
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    .line 113
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected final whitelist test-api end(Z)V
    .registers 5
    .param p1, "completed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    .line 197
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    .line 198
    .local v1, "interrupted":Ljava/lang/Thread;
    if-eqz v1, :cond_17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_17

    .line 199
    :cond_f
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    .line 200
    new-instance v0, Ljava/nio/channels/ClosedByInterruptException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    throw v0

    .line 202
    :cond_17
    :goto_17
    if-nez p1, :cond_24

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_1e

    goto :goto_24

    .line 203
    :cond_1e
    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v0

    .line 204
    :cond_24
    :goto_24
    return-void
.end method

.method protected abstract whitelist test-api implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api isOpen()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
