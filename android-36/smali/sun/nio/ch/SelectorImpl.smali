.class public abstract Lsun/nio/ch/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# instance fields
.field protected blacklist keys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist publicKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private greylist publicSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 54
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 57
    const-string v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 58
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    .line 59
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    goto :goto_32

    .line 61
    :cond_22
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    .line 62
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-static {v0}, Lsun/nio/ch/Util;->ungrowableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    .line 64
    :goto_32
    return-void
.end method

.method private blacklist lockAndDoSelect(J)I
    .registers 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    monitor-enter p0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 84
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    .line 85
    :try_start_a
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 86
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->doSelect(J)I

    move-result v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_15

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_18

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_21

    return v2

    .line 87
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    .end local p1    # "timeout":J
    :try_start_17
    throw v2

    .line 88
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    .restart local p1    # "timeout":J
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_18

    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    .end local p1    # "timeout":J
    :try_start_1a
    throw v1

    .line 83
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    .restart local p1    # "timeout":J
    :cond_1b
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    .end local p1    # "timeout":J
    throw v0

    .line 89
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    .restart local p1    # "timeout":J
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method protected abstract blacklist doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract blacklist implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api implCloseSelector()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 110
    monitor-enter p0

    .line 111
    :try_start_4
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_17

    .line 112
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 113
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->implClose()V

    .line 114
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_11

    .line 115
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_14

    .line 116
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_17

    .line 117
    return-void

    .line 114
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    :try_start_13
    throw v2

    .line 115
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_14

    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    :try_start_16
    throw v1

    .line 116
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected abstract blacklist implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract blacklist implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public whitelist test-api keys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    .line 68
    :cond_f
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 69
    :cond_15
    :goto_15
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    return-object v0
.end method

.method blacklist processDeregisterQueue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v0

    .line 143
    .local v0, "cks":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v0

    .line 144
    :try_start_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/SelectionKeyImpl;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_35

    .line 149
    .local v2, "ski":Lsun/nio/ch/SelectionKeyImpl;
    :try_start_1b
    invoke-virtual {p0, v2}, Lsun/nio/ch/SelectorImpl;->implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_1e
    .catch Ljava/net/SocketException; {:try_start_1b .. :try_end_1e} :catch_25
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    .line 153
    :try_start_1e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_35

    .line 154
    nop

    .line 155
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    goto :goto_f

    .line 153
    .restart local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_23
    move-exception v3

    goto :goto_2e

    .line 150
    :catch_25
    move-exception v3

    .line 151
    .local v3, "se":Ljava/net/SocketException;
    :try_start_26
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error deregistering key"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "cks":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    throw v4
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_23

    .line 153
    .end local v3    # "se":Ljava/net/SocketException;
    .restart local v0    # "cks":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    :goto_2e
    :try_start_2e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 154
    nop

    .end local v0    # "cks":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local p0    # "this":Lsun/nio/ch/SelectorImpl;
    throw v3

    .line 157
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    .restart local v0    # "cks":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local p0    # "this":Lsun/nio/ch/SelectorImpl;
    :cond_33
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .registers 3
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    .line 121
    return-void
.end method

.method protected final whitelist test-api register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .param p1, "ch"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "ops"    # I
    .param p3, "attachment"    # Ljava/lang/Object;

    .line 127
    instance-of v0, p1, Lsun/nio/ch/SelChImpl;

    if-eqz v0, :cond_1d

    .line 129
    new-instance v0, Lsun/nio/ch/SelectionKeyImpl;

    move-object v1, p1

    check-cast v1, Lsun/nio/ch/SelChImpl;

    invoke-direct {v0, v1, p0}, Lsun/nio/ch/SelectionKeyImpl;-><init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V

    .line 130
    .local v0, "k":Lsun/nio/ch/SelectionKeyImpl;
    invoke-virtual {v0, p3}, Lsun/nio/ch/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1

    .line 132
    :try_start_12
    invoke-virtual {p0, v0}, Lsun/nio/ch/SelectorImpl;->implRegister(Lsun/nio/ch/SelectionKeyImpl;)V

    .line 133
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 134
    invoke-virtual {v0, p2}, Lsun/nio/ch/SelectionKeyImpl;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 135
    return-object v0

    .line 133
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    .line 128
    .end local v0    # "k":Lsun/nio/ch/SelectionKeyImpl;
    :cond_1d
    new-instance v0, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v0
.end method

.method public whitelist test-api select()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->select(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api select(J)I
    .registers 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_13

    .line 97
    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    goto :goto_e

    :cond_d
    move-wide v0, p1

    :goto_e
    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    move-result v0

    return v0

    .line 96
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api selectNow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api selectedKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    .line 74
    :cond_f
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 75
    :cond_15
    :goto_15
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public abstract whitelist test-api wakeup()Ljava/nio/channels/Selector;
.end method
