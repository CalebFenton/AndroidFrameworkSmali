.class public abstract Ljava/nio/channels/spi/AbstractSelector;
.super Ljava/nio/channels/Selector;
.source "AbstractSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/spi/AbstractSelector$1;
    }
.end annotation


# instance fields
.field private final cancelledKeysSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final wakeupRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/nio/channels/Selector;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 36
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@e
    .line 38
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    #@15
    .line 40
    new-instance v0, Ljava/nio/channels/spi/AbstractSelector$1;

    #@17
    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractSelector$1;-><init>(Ljava/nio/channels/spi/AbstractSelector;)V

    #@1a
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->wakeupRunnable:Ljava/lang/Runnable;

    #@1c
    .line 47
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@1e
    .line 46
    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    #@0
    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->wakeupRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->pushInterruptAction$(Ljava/lang/Runnable;)V

    #@9
    .line 114
    return-void
.end method

.method cancel(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    #@0
    .prologue
    .line 127
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    #@2
    monitor-enter v1

    #@3
    .line 128
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 126
    return-void

    #@a
    .line 127
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method protected final cancelledKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    #@2
    return-object v0
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
    .line 57
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 58
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->implCloseSelector()V

    #@c
    .line 56
    :cond_0
    return-void
.end method

.method protected final deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/spi/AbstractSelectionKey;

    #@0
    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    #@6
    invoke-virtual {v0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->deregister(Ljava/nio/channels/SelectionKey;)V

    #@9
    .line 106
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p1, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    #@c
    .line 104
    return-void
.end method

.method protected final end()V
    .locals 2

    #@0
    .prologue
    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->wakeupRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->popInterruptAction$(Ljava/lang/Runnable;)V

    #@9
    .line 122
    return-void
.end method

.method protected abstract implCloseSelector()V
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
    .line 72
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@2
    return-object v0
.end method

.method protected abstract register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
.end method
