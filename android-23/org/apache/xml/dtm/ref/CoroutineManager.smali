.class public Lorg/apache/xml/dtm/ref/CoroutineManager;
.super Ljava/lang/Object;
.source "CoroutineManager.java"


# static fields
.field static final ANYBODY:I = -0x1

.field static final NOBODY:I = -0x1

.field static final m_unreasonableId:I = 0x400


# instance fields
.field m_activeIDs:Ljava/util/BitSet;

.field m_nextCoroutine:I

.field m_yield:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    new-instance v0, Ljava/util/BitSet;

    #@5
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@a
    .line 149
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    #@d
    .line 160
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@10
    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized co_entry_pause(I)Ljava/lang/Object;
    .locals 2
    .param p1, "thisCoroutine"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 229
    new-instance v1, Ljava/lang/NoSuchMethodException;

    #@b
    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    #@e
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1

    #@12
    .line 231
    :cond_0
    :goto_0
    :try_start_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-eq v1, p1, :cond_1

    #@16
    .line 235
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 238
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@1c
    .line 244
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    return-object v1
.end method

.method public declared-synchronized co_exit(I)V
    .locals 1
    .param p1, "thisCoroutine"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    #@6
    .line 314
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@9
    .line 315
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 311
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized co_exit_to(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "arg_object"    # Ljava/lang/Object;
    .param p2, "thisCoroutine"    # I
    .param p3, "toCoroutine"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 332
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@3
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 333
    new-instance v0, Ljava/lang/NoSuchMethodException;

    #@b
    const-string/jumbo v1, "ER_COROUTINE_NOT_AVAIL"

    #@e
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljava/lang/Object;

    #@11
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x0

    #@16
    aput-object v3, v2, v4

    #@18
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0

    #@23
    .line 337
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    #@25
    .line 338
    iput p3, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@27
    .line 340
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@29
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->clear(I)V

    #@2c
    .line 342
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    .line 330
    return-void
.end method

.method public declared-synchronized co_joinCoroutineSet(I)I
    .locals 3
    .param p1, "coroutineID"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/16 v1, 0x400

    #@3
    monitor-enter p0

    #@4
    .line 186
    if-ltz p1, :cond_1

    #@6
    .line 188
    if-ge p1, v1, :cond_0

    #@8
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_3

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 189
    return v2

    #@12
    .line 195
    :cond_1
    const/4 p1, 0x0

    #@13
    .line 196
    :goto_0
    if-ge p1, v1, :cond_2

    #@15
    .line 198
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@17
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 199
    add-int/lit8 p1, p1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 203
    :cond_2
    if-lt p1, v1, :cond_3

    #@22
    monitor-exit p0

    #@23
    .line 204
    return v2

    #@24
    .line 207
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@26
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 208
    return p1

    #@2b
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit p0

    #@2d
    throw v0
.end method

.method public declared-synchronized co_resume(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 6
    .param p1, "arg_object"    # Ljava/lang/Object;
    .param p2, "thisCoroutine"    # I
    .param p3, "toCoroutine"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 263
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    #@4
    invoke-virtual {v1, p3}, Ljava/util/BitSet;->get(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 264
    new-instance v1, Ljava/lang/NoSuchMethodException;

    #@c
    const-string/jumbo v2, "ER_COROUTINE_NOT_AVAIL"

    #@f
    const/4 v3, 0x1

    #@10
    new-array v3, v3, [Ljava/lang/Object;

    #@12
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1

    #@24
    .line 268
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    #@26
    .line 269
    iput p3, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@28
    .line 271
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->notify()V

    #@2b
    .line 272
    :goto_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@2d
    if-ne v1, p2, :cond_1

    #@2f
    iget v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    if-ne v1, v2, :cond_2

    #@33
    .line 277
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/CoroutineManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 280
    :catch_0
    move-exception v0

    #@38
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@39
    .line 272
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_3
    iget v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@3b
    if-eq v1, v2, :cond_1

    #@3d
    .line 286
    iget v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    #@3f
    if-ne v1, v2, :cond_3

    #@41
    .line 289
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    #@44
    .line 292
    new-instance v1, Ljava/lang/NoSuchMethodException;

    #@46
    const-string/jumbo v2, "ER_COROUTINE_CO_EXIT"

    #@49
    const/4 v3, 0x0

    #@4a
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    .line 295
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    monitor-exit p0

    #@55
    return-object v1
.end method
