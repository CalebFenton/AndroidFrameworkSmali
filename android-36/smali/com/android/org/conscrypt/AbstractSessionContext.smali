.class abstract Lcom/android/org/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field private static final blacklist DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080


# instance fields
.field private final blacklist lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile blacklist maximumSize:I

.field private final blacklist sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/NativeSslSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist sslCtxNativePointer:J

.field private volatile blacklist timeout:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmaximumSize(Lcom/android/org/conscrypt/AbstractSessionContext;)I
    .registers 1

    iget p0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return p0
.end method

.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "maximumSize"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x7080

    iput v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 47
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 51
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 73
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 74
    return-void
.end method

.method private blacklist freeNative()V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 264
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 265
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 266
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 267
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_free(JLcom/android/org/conscrypt/AbstractSessionContext;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_23

    .line 270
    .end local v0    # "toFree":J
    :cond_18
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    nop

    .line 272
    return-void

    .line 270
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    throw v0
.end method

.method private blacklist isValid()Z
    .registers 5

    .line 205
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist setTimeout(I)V
    .registers 6
    .param p1, "seconds"    # I

    .line 177
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    int-to-long v2, p1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JLcom/android/org/conscrypt/AbstractSessionContext;J)J
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_20

    .line 183
    :cond_15
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 184
    throw v0
.end method

.method private blacklist trimToSize()V
    .registers 6

    .line 376
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 378
    .local v1, "size":I
    iget v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v1, v2, :cond_2d

    .line 379
    iget v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int v2, v1, v2

    .line 380
    .local v2, "removals":I
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 381
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :goto_1b
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "removals":I
    .local v4, "removals":I
    if-lez v2, :cond_2d

    .line 382
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/NativeSslSession;

    .line 383
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 384
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 385
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    move v2, v4

    goto :goto_1b

    .line 387
    .end local v1    # "size":I
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    .end local v4    # "removals":I
    :cond_2d
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method final blacklist cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 288
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    .line 289
    .local v0, "id":[B
    if-eqz v0, :cond_33

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_33

    .line 293
    :cond_a
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 294
    :try_start_d
    new-instance v2, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 295
    .local v2, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 296
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/AbstractSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 299
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 301
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    nop

    .end local v2    # "key":Lcom/android/org/conscrypt/ByteArray;
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw v2

    .line 290
    :cond_33
    :goto_33
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->freeNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 280
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 281
    throw v0
.end method

.method public final whitelist test-api getIds()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/org/conscrypt/NativeSslSession;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/org/conscrypt/NativeSslSession;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 87
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$2;

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext$2;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v0

    .line 86
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public final whitelist test-api getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 5
    .param p1, "sessionId"    # [B

    .line 124
    if-eqz p1, :cond_25

    .line 127
    new-instance v0, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 129
    .local v0, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_a
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/NativeSslSession;

    .line 131
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_22

    .line 132
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 133
    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    return-object v1

    .line 135
    :cond_20
    const/4 v1, 0x0

    return-object v1

    .line 131
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2

    .line 125
    .end local v0    # "key":Lcom/android/org/conscrypt/ByteArray;
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getSessionCacheSize()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method final blacklist getSessionFromCache([B)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 5
    .param p1, "sessionId"    # [B

    .line 327
    if-nez p1, :cond_4

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 334
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    new-instance v2, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v2, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/NativeSslSession;

    .line 335
    .local v1, "session":Lcom/android/org/conscrypt/NativeSslSession;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    .line 336
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 337
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 340
    :cond_26
    return-object v1

    .line 346
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v0

    return-object v0

    .line 335
    .end local v1    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method abstract blacklist getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;
.end method

.method public final whitelist test-api getSessionTimeout()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    return v0
.end method

.method blacklist initSpake(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 13
    .param p1, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSpake2PlusKeyManager()Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    move-result-object v1

    .line 210
    .local v1, "spakeKeyManager":Lcom/android/org/conscrypt/Spake2PlusKeyManager;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->getContext()[B

    move-result-object v2

    .line 211
    .local v2, "context":[B
    invoke-virtual {v1}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->getIdProver()[B

    move-result-object v4

    .line 212
    .local v4, "idProverArray":[B
    invoke-virtual {v1}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->getIdVerifier()[B

    move-result-object v5

    .line 213
    .local v5, "idVerifierArray":[B
    invoke-virtual {v1}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->getPassword()[B

    move-result-object v3

    .line 214
    .local v3, "pwArray":[B
    invoke-virtual {v1}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->isClient()Z

    move-result v6

    .line 215
    .local v6, "isClient":Z
    invoke-virtual {v1}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->getHandshakeLimit()I

    move-result v7

    .line 216
    .local v7, "handshakeLimit":I
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 218
    :try_start_25
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 219
    iget-wide v8, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_40

    move-object v10, p0

    :try_start_2e
    invoke-static/range {v2 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_spake_credential([B[B[B[BZIJLcom/android/org/conscrypt/AbstractSessionContext;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_35

    .line 230
    :catchall_32
    move-exception v0

    goto :goto_42

    .line 218
    :cond_34
    move-object v10, p0

    .line 230
    :goto_35
    iget-object v0, v10, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_40
    move-exception v0

    move-object v10, p0

    :goto_42
    iget-object v8, v10, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 231
    throw v0
.end method

.method blacklist newSsl()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 241
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(JLcom/android/org/conscrypt/AbstractSessionContext;)J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_27

    .line 246
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 241
    return-wide v0

    .line 243
    :cond_1f
    :try_start_1f
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Invalid session context"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/AbstractSessionContext;
    throw v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 246
    .restart local p0    # "this":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 247
    throw v0
.end method

.method abstract blacklist onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V
.end method

.method abstract blacklist onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V
.end method

.method final blacklist removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 309
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    .line 310
    .local v0, "id":[B
    if-eqz v0, :cond_1f

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_1f

    .line 314
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 316
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 317
    .local v1, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 318
    :try_start_15
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    monitor-exit v2

    .line 320
    return-void

    .line 319
    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v3

    .line 311
    .end local v1    # "key":Lcom/android/org/conscrypt/ByteArray;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public final whitelist test-api setSessionCacheSize(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 189
    if-ltz p1, :cond_c

    .line 193
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 194
    .local v0, "oldMaximum":I
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 197
    if-ge p1, v0, :cond_b

    .line 198
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->trimToSize()V

    .line 200
    :cond_b
    return-void

    .line 190
    .end local v0    # "oldMaximum":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setSessionTimeout(I)V
    .registers 6
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 150
    if-ltz p1, :cond_39

    .line 154
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 156
    :try_start_5
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 160
    if-lez p1, :cond_b

    move v1, p1

    goto :goto_e

    :cond_b
    const v1, 0x7fffffff

    :goto_e
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->setTimeout(I)V

    .line 162
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/NativeSslSession;

    .line 167
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v3

    if-nez v3, :cond_33

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 172
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_33
    goto :goto_1b

    .line 173
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :cond_34
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v1

    .line 151
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seconds < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setSesssionIdContext([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 251
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 253
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 254
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(JLcom/android/org/conscrypt/AbstractSessionContext;[B)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 257
    :cond_14
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 258
    nop

    .line 259
    return-void

    .line 257
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 258
    throw v0
.end method
