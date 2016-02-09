.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private final interruptAndCloseRunnable:Ljava/lang/Runnable;

.field volatile interrupted:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    #@6
    .line 40
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    #@8
    .line 42
    new-instance v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    #@a
    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    #@d
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    #@f
    .line 52
    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->pushInterruptAction$(Ljava/lang/Runnable;)V

    #@9
    .line 91
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 77
    monitor-enter p0

    #@5
    .line 78
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 79
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    #@c
    .line 80
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 75
    :cond_1
    return-void

    #@11
    .line 77
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method protected final end(Z)V
    .locals 2
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->popInterruptAction$(Ljava/lang/Runnable;)V

    #@9
    .line 111
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 112
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    #@10
    .line 113
    new-instance v0, Ljava/nio/channels/ClosedByInterruptException;

    #@12
    invoke-direct {v0}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    #@15
    throw v0

    #@16
    .line 115
    :cond_0
    if-nez p1, :cond_1

    #@18
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 116
    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    #@1e
    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@21
    throw v0

    #@22
    .line 109
    :cond_1
    return-void
.end method

.method protected abstract implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized isOpen()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 56
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
