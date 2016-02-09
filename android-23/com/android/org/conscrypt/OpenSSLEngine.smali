.class public Lcom/android/org/conscrypt/OpenSSLEngine;
.super Ljava/lang/Object;
.source "OpenSSLEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEngine$BoringSSL;
    }
.end annotation


# static fields
.field private static final mLoadingLock:Ljava/lang/Object;


# instance fields
.field private final ctx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 26
    sget-boolean v0, Lcom/android/org/conscrypt/NativeCrypto;->isBoringSSL:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 27
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_load_dynamic()V

    #@7
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    #@e
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@7
    .line 70
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "engineCtx"    # J

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@5
    .line 83
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_init(J)I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 84
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_free(J)I

    #@e
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Could not initialize engine"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 80
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/OpenSSLEngine;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngine;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;
    .locals 6
    .param p0, "engine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    sget-boolean v2, Lcom/android/org/conscrypt/NativeCrypto;->isBoringSSL:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 46
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngine$BoringSSL;->INSTANCE:Lcom/android/org/conscrypt/OpenSSLEngine;

    #@6
    return-object v2

    #@7
    .line 49
    :cond_0
    if-nez p0, :cond_1

    #@9
    .line 50
    new-instance v2, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v3, "engine == null"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 54
    :cond_1
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    #@14
    monitor-enter v3

    #@15
    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_by_id(Ljava/lang/String;)J

    #@18
    move-result-wide v0

    #@19
    .line 56
    .local v0, "engineCtx":J
    const-wide/16 v4, 0x0

    #@1b
    cmp-long v2, v0, v4

    #@1d
    if-nez v2, :cond_2

    #@1f
    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Unknown ENGINE id: "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 54
    .end local v0    # "engineCtx":J
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2

    #@3c
    .line 60
    .restart local v0    # "engineCtx":J
    :cond_2
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_add(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    monitor-exit v3

    #@40
    .line 63
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLEngine;

    #@42
    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngine;-><init>(J)V

    #@45
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 143
    if-ne p1, p0, :cond_0

    #@4
    .line 144
    return v7

    #@5
    .line 147
    :cond_0
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLEngine;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 148
    return v6

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 151
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLEngine;

    #@d
    .line 153
    .local v1, "other":Lcom/android/org/conscrypt/OpenSSLEngine;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    #@10
    move-result-wide v2

    #@11
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@13
    cmp-long v2, v2, v4

    #@15
    if-nez v2, :cond_2

    #@17
    .line 154
    return v7

    #@18
    .line 157
    :cond_2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@1a
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_get_id(J)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 158
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_3

    #@20
    .line 159
    return v6

    #@21
    .line 162
    :cond_3
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    #@24
    move-result-wide v2

    #@25
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_get_id(J)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    return v2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    :try_start_0
    sget-boolean v0, Lcom/android/org/conscrypt/NativeCrypto;->isBoringSSL:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 133
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@6
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_finish(J)I

    #@9
    .line 134
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_free(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 137
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@11
    .line 130
    return-void

    #@12
    .line 136
    :catchall_0
    move-exception v0

    #@13
    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@16
    .line 136
    throw v0
.end method

.method getEngineContext()J
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@2
    return-wide v0
.end method

.method public getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 90
    if-nez p1, :cond_0

    #@3
    .line 91
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "id == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 94
    :cond_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@e
    invoke-static {v4, v5, p1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_load_private_key(JLjava/lang/String;)J

    #@11
    move-result-wide v2

    #@12
    .line 95
    .local v2, "keyRef":J
    const-wide/16 v4, 0x0

    #@14
    cmp-long v4, v2, v4

    #@16
    if-nez v4, :cond_1

    #@18
    .line 96
    return-object v6

    #@19
    .line 99
    :cond_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@1b
    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JLcom/android/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V

    #@1e
    .line 101
    .local v1, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 102
    :catch_0
    move-exception v0

    #@24
    .line 103
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/InvalidKeyException;

    #@26
    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@29
    throw v4
.end method

.method public getSecretKeyById(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 108
    if-nez p1, :cond_0

    #@3
    .line 109
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "id == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 112
    :cond_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@e
    invoke-static {v4, v5, p1}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_load_private_key(JLjava/lang/String;)J

    #@11
    move-result-wide v2

    #@12
    .line 113
    .local v2, "keyRef":J
    const-wide/16 v4, 0x0

    #@14
    cmp-long v4, v2, v4

    #@16
    if-nez v4, :cond_1

    #@18
    .line 114
    return-object v6

    #@19
    .line 117
    :cond_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@1b
    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JLcom/android/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V

    #@1e
    .line 119
    .local v1, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/OpenSSLKey;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 120
    :catch_0
    move-exception v0

    #@24
    .line 121
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/InvalidKeyException;

    #@26
    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@29
    throw v4
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 167
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngine;->ctx:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method
