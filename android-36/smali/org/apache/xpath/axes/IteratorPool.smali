.class public final Lorg/apache/xpath/axes/IteratorPool;
.super Ljava/lang/Object;
.source "IteratorPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = -0x6658af730705416L


# instance fields
.field private final greylist m_freeStack:Ljava/util/ArrayList;

.field private final greylist m_orig:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 3

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 118
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist getInstance()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    if-eqz v0, :cond_1c

    .line 94
    :try_start_9
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_15
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    goto :goto_2c

    :catch_15
    move-exception v0

    .line 98
    :try_start_16
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 104
    :cond_1c
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_13

    .line 105
    monitor-exit p0

    return-object v0

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_13

    throw v0
.end method

.method public declared-synchronized greylist getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 70
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    goto :goto_25

    .line 75
    :cond_15
    :try_start_15
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_13

    .line 76
    monitor-exit p0

    return-object v0

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_13

    throw v0
.end method
