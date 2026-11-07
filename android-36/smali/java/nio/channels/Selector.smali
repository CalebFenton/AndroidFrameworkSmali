.class public abstract Ljava/nio/channels/Selector;
.super Ljava/lang/Object;
.source "Selector.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$72X_FnnAGskBtGl86VDBNm28zk4(Ljava/nio/channels/Selector;Ljava/util/function/Consumer;Ljava/nio/channels/SelectionKey;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/nio/channels/Selector;->lambda$doSelect$0(Ljava/util/function/Consumer;Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 274
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist doSelect(Ljava/util/function/Consumer;J)I
    .registers 8
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter p0

    .line 563
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 564
    .local v0, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    .line 565
    :try_start_6
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 567
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_14

    .line 568
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v1

    .local v1, "numKeySelected":I
    goto :goto_18

    .line 570
    .end local v1    # "numKeySelected":I
    :cond_14
    invoke-virtual {p0, p2, p3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v1

    .line 574
    .restart local v1    # "numKeySelected":I
    :goto_18
    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    .line 575
    .local v2, "keysToConsume":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    nop

    .line 576
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 579
    new-instance v3, Ljava/nio/channels/Selector$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Ljava/nio/channels/Selector$$ExternalSyntheticLambda0;-><init>(Ljava/nio/channels/Selector;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 585
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2b

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2e

    return v1

    .line 586
    .end local v1    # "numKeySelected":I
    .end local v2    # "keysToConsume":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .end local p0    # "this":Ljava/nio/channels/Selector;
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/channels/SelectionKey;>;"
    .end local p2    # "timeout":J
    :try_start_2d
    throw v1

    .line 587
    .end local v0    # "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local p0    # "this":Ljava/nio/channels/Selector;
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/channels/SelectionKey;>;"
    .restart local p2    # "timeout":J
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private synthetic blacklist lambda$doSelect$0(Ljava/util/function/Consumer;Ljava/nio/channels/SelectionKey;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "k"    # Ljava/nio/channels/SelectionKey;

    .line 580
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 583
    return-void

    .line 582
    :cond_a
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api open()Ljava/nio/channels/Selector;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isOpen()Z
.end method

.method public abstract whitelist test-api keys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api provider()Ljava/nio/channels/spi/SelectorProvider;
.end method

.method public abstract whitelist test-api select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api select(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api select(Ljava/util/function/Consumer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/channels/SelectionKey;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/channels/Selector;->select(Ljava/util/function/Consumer;J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api select(Ljava/util/function/Consumer;J)I
    .registers 6
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/channels/SelectionKey;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_11

    .line 487
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-direct {p0, v0, p2, p3}, Ljava/nio/channels/Selector;->doSelect(Ljava/util/function/Consumer;J)I

    move-result v0

    return v0

    .line 486
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api selectNow()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api selectNow(Ljava/util/function/Consumer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/channels/SelectionKey;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/nio/channels/Selector;->doSelect(Ljava/util/function/Consumer;J)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api selectedKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api wakeup()Ljava/nio/channels/Selector;
.end method
