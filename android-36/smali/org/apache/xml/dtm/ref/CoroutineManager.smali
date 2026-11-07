.class public Lorg/apache/xml/dtm/ref/CoroutineManager;
.super Ljava/lang/Object;
.source "CoroutineManager.java"


# static fields
.field static final greylist ANYBODY:I = -0x1

.field static final greylist NOBODY:I = -0x1

.field static final greylist m_unreasonableId:I = 0x400


# instance fields
.field greylist m_activeIDs:Ljava/util/BitSet;

.field greylist m_nextCoroutine:I

.field greylist m_yield:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist co_entry_pause(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 231
    :catch_9
    :goto_9
    iget v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eq v0, p1, :cond_13

    .line 235
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_9
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_9

    :catchall_11
    move-exception p1

    goto :goto_1d

    .line 244
    :cond_13
    :try_start_13
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_11

    monitor-exit p0

    return-object p1

    .line 229
    :cond_17
    :try_start_17
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p1

    .line 244
    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_11

    throw p1
.end method

.method public declared-synchronized greylist co_exit(I)V
    .registers 3

    monitor-enter p0

    .line 313
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    const/4 p1, -0x1

    .line 314
    iput p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 316
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized greylist co_exit_to(Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 337
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    .line 338
    iput p3, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    .line 340
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->clear(I)V

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 343
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    goto :goto_2d

    .line 333
    :cond_19
    :try_start_19
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string p2, "ER_COROUTINE_NOT_AVAIL"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_17

    throw p1
.end method

.method public declared-synchronized greylist co_joinCoroutineSet(I)I
    .registers 5

    monitor-enter p0

    const/4 v0, -0x1

    const/16 v1, 0x400

    if-ltz p1, :cond_15

    if-ge p1, v1, :cond_13

    .line 188
    :try_start_8
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_11

    if-eqz v1, :cond_27

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_2e

    .line 189
    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-ge p1, v1, :cond_23

    .line 198
    :try_start_18
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_11

    if-eqz v2, :cond_23

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_23
    if-lt p1, v1, :cond_27

    .line 204
    monitor-exit p0

    return v0

    .line 207
    :cond_27
    :try_start_27
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11

    .line 208
    monitor-exit p0

    return p1

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_11

    throw p1
.end method

.method public declared-synchronized greylist co_resume(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    monitor-enter p0

    .line 263
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_activeIDs:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 268
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;

    .line 269
    iput p3, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 272
    :catch_10
    :goto_10
    iget p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_nextCoroutine:I

    if-ne p1, p2, :cond_32

    const/4 p3, -0x1

    if-eq p1, p3, :cond_32

    if-ne p1, p3, :cond_1a

    goto :goto_32

    :cond_1a
    if-eq p1, p3, :cond_22

    .line 295
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/CoroutineManager;->m_yield:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    goto :goto_4a

    .line 289
    :cond_22
    :try_start_22
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    .line 292
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string p2, "ER_COROUTINE_CO_EXIT"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_20

    .line 277
    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_10
    .catchall {:try_start_32 .. :try_end_35} :catchall_20

    goto :goto_10

    .line 264
    :cond_36
    :try_start_36
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string p2, "ER_COROUTINE_NOT_AVAIL"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :goto_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_20

    throw p1
.end method
