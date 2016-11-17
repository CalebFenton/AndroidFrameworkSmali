.class public final Lorg/apache/xpath/axes/IteratorPool;
.super Ljava/lang/Object;
.source "IteratorPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x6658af730705416L


# instance fields
.field private final m_freeStack:Ljava/util/ArrayList;

.field private final m_orig:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    #@5
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@c
    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1
    .param p1, "obj"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 115
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getInstance()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 88
    :try_start_0
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 94
    :try_start_1
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    #@b
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v2

    #@13
    .line 97
    :catch_0
    move-exception v0

    #@14
    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@16
    invoke-direct {v2, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@19
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit p0

    #@1c
    throw v2

    #@1d
    .line 104
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@1f
    iget-object v3, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v3

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    .local v1, "result":Lorg/apache/xml/dtm/DTMIterator;
    monitor-exit p0

    #@2e
    .line 105
    return-object v1
.end method

.method public declared-synchronized getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 70
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    #@b
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v1

    #@13
    .line 75
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .local v0, "result":Lorg/apache/xml/dtm/DTMIterator;
    monitor-exit p0

    #@24
    .line 76
    return-object v0

    #@25
    .end local v0    # "result":Lorg/apache/xml/dtm/DTMIterator;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method
