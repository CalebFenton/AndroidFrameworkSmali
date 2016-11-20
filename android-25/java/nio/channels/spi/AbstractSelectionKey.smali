.class public abstract Ljava/nio/channels/spi/AbstractSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AbstractSelectionKey.java"


# instance fields
.field private volatile valid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    #@6
    .line 48
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    #@0
    .prologue
    .line 70
    monitor-enter p0

    #@1
    .line 71
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 72
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    #@8
    .line 73
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;->selector()Ljava/nio/channels/Selector;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    #@e
    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AbstractSelector;->cancel(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 66
    return-void

    #@13
    .line 70
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method invalidate()V
    .locals 1

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    #@3
    .line 56
    return-void
.end method

.method public final isValid()Z
    .locals 1

    #@0
    .prologue
    .line 53
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    #@2
    return v0
.end method
