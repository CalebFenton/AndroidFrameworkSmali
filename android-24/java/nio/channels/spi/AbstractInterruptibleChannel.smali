.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# instance fields
.field private final closeLock:Ljava/lang/Object;

.field private volatile interrupted:Ljava/lang/Thread;

.field private interruptor:Lsun/nio/ch/Interruptible;

.field private volatile open:Z


# direct methods
.method static synthetic -get0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    #@2
    return p1
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    #@a
    .line 93
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    #@d
    .line 98
    return-void
.end method

.method static blockedOn(Lsun/nio/ch/Interruptible;)V
    .locals 1
    .param p0, "intr"    # Lsun/nio/ch/Interruptible;

    #@0
    .prologue
    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->blockedOn(Lsun/nio/ch/Interruptible;)V

    #@7
    .line 211
    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 158
    new-instance v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    #@6
    invoke-direct {v1, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    #@9
    iput-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    #@b
    .line 171
    :cond_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    #@d
    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    #@10
    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@13
    move-result-object v0

    #@14
    .line 173
    .local v0, "me":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 174
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    #@1c
    invoke-interface {v1, v0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    #@1f
    .line 156
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 113
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 114
    return-void

    #@9
    .line 115
    :cond_0
    const/4 v0, 0x0

    #@a
    :try_start_1
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    #@c
    .line 116
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 111
    return-void

    #@11
    .line 112
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method protected final end(Z)V
    .locals 2
    .param p1, "completed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 199
    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    #@4
    .line 200
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    #@6
    .line 201
    .local v0, "interrupted":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    #@8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 202
    const/4 v0, 0x0

    #@f
    .line 203
    .local v0, "interrupted":Ljava/lang/Thread;
    new-instance v1, Ljava/nio/channels/ClosedByInterruptException;

    #@11
    invoke-direct {v1}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    #@14
    throw v1

    #@15
    .line 205
    .local v0, "interrupted":Ljava/lang/Thread;
    :cond_0
    if-nez p1, :cond_1

    #@17
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 197
    :cond_1
    return-void

    #@1c
    .line 206
    :cond_2
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    #@1e
    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@21
    throw v1
.end method

.method protected abstract implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    #@2
    return v0
.end method
