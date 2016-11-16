.class abstract Lsun/nio/ch/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# instance fields
.field protected keys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 56
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    #@a
    .line 57
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    #@11
    .line 58
    const-string/jumbo v0, "1.4"

    #@14
    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 59
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    #@1c
    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    #@1e
    .line 60
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    #@20
    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    #@22
    .line 54
    :goto_0
    return-void

    #@23
    .line 62
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    #@25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    #@2b
    .line 63
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    #@2d
    invoke-static {v0}, Lsun/nio/ch/Util;->ungrowableSet(Ljava/util/Set;)Ljava/util/Set;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    #@33
    goto :goto_0
.end method

.method private lockAndDoSelect(J)I
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    monitor-enter p0

    #@1
    .line 83
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 84
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    #@9
    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 82
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    .line 85
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    #@12
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 86
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    #@15
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@16
    .line 87
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->doSelect(J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19
    move-result v2

    #@1a
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@1b
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    return v2

    #@1e
    .line 86
    :catchall_1
    move-exception v2

    #@1f
    :try_start_6
    monitor-exit v0

    #@20
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@21
    .line 85
    :catchall_2
    move-exception v0

    #@22
    :try_start_7
    monitor-exit v1

    #@23
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method protected abstract doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public implCloseSelector()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    #@3
    .line 111
    monitor-enter p0

    #@4
    .line 112
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    #@6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@7
    .line 113
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    #@9
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a
    .line 114
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->implClose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@f
    monitor-exit p0

    #@10
    .line 109
    return-void

    #@11
    .line 113
    :catchall_0
    move-exception v2

    #@12
    :try_start_5
    monitor-exit v0

    #@13
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@14
    .line 112
    :catchall_1
    move-exception v0

    #@15
    :try_start_6
    monitor-exit v1

    #@16
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@17
    .line 111
    :catchall_2
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method protected abstract implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public keys()Ljava/util/Set;
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
    .line 68
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "1.4"

    #@9
    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 70
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    #@11
    return-object v0

    #@12
    .line 69
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    #@14
    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@17
    throw v0
.end method

.method processDeregisterQueue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "cks":Ljava/util/Set;
    monitor-enter v0

    #@5
    .line 145
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 146
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .line 147
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lsun/nio/ch/SelectionKeyImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 150
    .local v4, "ski":Lsun/nio/ch/SelectionKeyImpl;
    :try_start_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SelectorImpl;->implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 157
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 144
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v4    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_0
    move-exception v5

    #@23
    monitor-exit v0

    #@24
    throw v5

    #@25
    .line 151
    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v4    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catch_0
    move-exception v3

    #@26
    .line 152
    .local v3, "se":Ljava/net/SocketException;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    #@28
    .line 153
    const-string/jumbo v5, "Error deregistering key"

    #@2b
    .line 152
    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    .line 154
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@31
    .line 155
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@32
    .line 156
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "se":Ljava/net/SocketException;
    :catchall_1
    move-exception v5

    #@33
    .line 157
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@36
    .line 156
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@37
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v4    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_0
    monitor-exit v0

    #@38
    .line 141
    return-void
.end method

.method putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .locals 0
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    #@0
    .prologue
    .line 122
    return-void
.end method

.method protected final register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "ops"    # I
    .param p3, "attachment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 128
    instance-of v1, p1, Lsun/nio/ch/SelChImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 129
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    #@6
    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    #@9
    throw v1

    #@a
    .line 130
    :cond_0
    new-instance v0, Lsun/nio/ch/SelectionKeyImpl;

    #@c
    check-cast p1, Lsun/nio/ch/SelChImpl;

    #@e
    .end local p1    # "ch":Ljava/nio/channels/spi/AbstractSelectableChannel;
    invoke-direct {v0, p1, p0}, Lsun/nio/ch/SelectionKeyImpl;-><init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V

    #@11
    .line 131
    .local v0, "k":Lsun/nio/ch/SelectionKeyImpl;
    invoke-virtual {v0, p3}, Lsun/nio/ch/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 132
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    #@16
    monitor-enter v1

    #@17
    .line 133
    :try_start_0
    invoke-virtual {p0, v0}, Lsun/nio/ch/SelectorImpl;->implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 135
    invoke-virtual {v0, p2}, Lsun/nio/ch/SelectionKeyImpl;->interestOps(I)Ljava/nio/channels/SelectionKey;

    #@1e
    .line 136
    return-object v0

    #@1f
    .line 132
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v1

    #@21
    throw v2
.end method

.method public select()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->select(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public select(J)I
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 96
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Negative timeout"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 98
    :cond_0
    cmp-long v0, p1, v2

    #@11
    if-nez v0, :cond_1

    #@13
    const-wide/16 p1, -0x1

    #@15
    .end local p1    # "timeout":J
    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public selectNow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
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
    .line 74
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "1.4"

    #@9
    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 76
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    #@11
    return-object v0

    #@12
    .line 75
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    #@14
    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@17
    throw v0
.end method

.method public abstract wakeup()Ljava/nio/channels/Selector;
.end method
