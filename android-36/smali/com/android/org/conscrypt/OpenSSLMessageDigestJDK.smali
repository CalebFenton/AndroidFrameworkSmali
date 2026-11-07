.class public Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigestSpi;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA512;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA1;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$MD5;
    }
.end annotation


# instance fields
.field private final blacklist ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private blacklist digestInitializedInContext:Z

.field private final blacklist evp_md:J

.field private final blacklist singleByte:[B

.field private final blacklist size:I


# direct methods
.method private constructor blacklist <init>(JI)V
    .registers 7
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 57
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 58
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 59
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 60
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V
    .registers 7
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "ctx"    # Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .param p5, "digestInitializedInContext"    # Z

    .line 64
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 65
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 66
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 67
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 68
    iput-boolean p5, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(JILcom/android/org/conscrypt/OpenSSLMessageDigestJDK-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JI)V

    return-void
.end method

.method private declared-synchronized blacklist ensureDigestInitializedInContext()V
    .registers 4

    monitor-enter p0

    .line 72
    :try_start_1
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-nez v0, :cond_f

    .line 73
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 74
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 77
    .end local v0    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
    :cond_f
    monitor-exit p0

    return-void

    .line 71
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 10

    .line 229
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    move-object v7, v0

    .line 232
    .local v7, "ctxCopy":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-eqz v0, :cond_13

    .line 233
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v7, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_copy_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I

    .line 235
    :cond_13
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    iget-boolean v8, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V

    return-object v3
.end method

.method protected declared-synchronized whitelist test-api engineDigest()[B
    .registers 4

    monitor-enter p0

    .line 147
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 148
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v0, [B

    .line 149
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I

    .line 156
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 158
    monitor-exit p0

    return-object v0

    .line 146
    .end local v0    # "result":[B
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected whitelist test-api engineGetDigestLength()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected declared-synchronized whitelist test-api engineReset()V
    .registers 3

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 85
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_cleanup(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 87
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected declared-synchronized whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 97
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 98
    monitor-exit p0

    return-void

    .line 95
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
    .end local p1    # "input":B
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method protected declared-synchronized whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_50

    if-nez v0, :cond_9

    .line 113
    monitor-exit p0

    return-void

    .line 116
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_14

    .line 117
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_50

    .line 118
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 122
    .local v0, "baseAddress":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_23

    .line 125
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_50

    .line 126
    monitor-exit p0

    return-void

    .line 130
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 131
    .local v2, "position":I
    if-ltz v2, :cond_48

    .line 134
    int-to-long v3, v2

    add-long/2addr v3, v0

    .line 135
    .local v3, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 136
    .local v5, "len":I
    if-ltz v5, :cond_40

    .line 140
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 141
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v6, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    .line 142
    add-int v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_50

    .line 143
    monitor-exit p0

    return-void

    .line 137
    :cond_40
    :try_start_40
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    .end local v3    # "ptr":J
    .end local v5    # "len":I
    :cond_48
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Negative position"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    .end local v0    # "baseAddress":J
    .end local v2    # "position":I
    .end local p1    # "input":Ljava/nio/ByteBuffer;
    :catchall_50
    move-exception p1

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_50

    throw p1
.end method

.method protected declared-synchronized whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 102
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 103
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 104
    monitor-exit p0

    return-void

    .line 101
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
    .end local p1    # "input":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
