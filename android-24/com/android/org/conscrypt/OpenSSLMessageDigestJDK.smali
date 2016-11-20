.class public Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigestSpi;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$MD5;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA1;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA512;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private digestInitializedInContext:Z

.field private final evp_md:J

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 5
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    #@3
    .line 42
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [B

    #@6
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@8
    .line 53
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@a
    .line 54
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@c
    .line 55
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@e
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@11
    move-result-wide v2

    #@12
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@15
    .line 56
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@17
    .line 52
    return-void
.end method

.method private constructor <init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "ctx"    # Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .param p5, "digestInitializedInContext"    # Z

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    #@3
    .line 42
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@8
    .line 61
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@a
    .line 62
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@c
    .line 63
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@e
    .line 64
    iput-boolean p5, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@10
    .line 60
    return-void
.end method

.method synthetic constructor <init>(JILcom/android/org/conscrypt/OpenSSLMessageDigestJDK;)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JI)V

    #@3
    return-void
.end method

.method private ensureDigestInitializedInContext()V
    .locals 4

    #@0
    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@6
    .line 70
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@8
    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    #@b
    .line 71
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@e
    .line 67
    .end local v0    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 207
    new-instance v5, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {v5, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@9
    .line 210
    .local v5, "ctxCopy":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 211
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@f
    invoke-static {v5, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_copy_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I

    #@12
    .line 213
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;

    #@14
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@16
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@18
    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@1a
    invoke-direct/range {v1 .. v6}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V

    #@1d
    return-object v1
.end method

.method protected engineDigest()[B
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 143
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    #@4
    .line 144
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@6
    new-array v0, v1, [B

    #@8
    .line 145
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@a
    invoke-static {v1, v0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I

    #@d
    .line 152
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@f
    .line 154
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@2
    return v0
.end method

.method protected engineReset()V
    .locals 2

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    .line 81
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_cleanup(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    #@5
    .line 82
    const/4 v1, 0x0

    #@6
    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    #@8
    .line 76
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@3
    aput-byte p1, v0, v2

    #@5
    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    #@b
    .line 91
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 109
    return-void

    #@7
    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_1

    #@d
    .line 113
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@10
    .line 114
    return-void

    #@11
    .line 117
    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    #@14
    move-result-wide v0

    #@15
    .line 118
    .local v0, "baseAddress":J
    const-wide/16 v6, 0x0

    #@17
    cmp-long v6, v0, v6

    #@19
    if-nez v6, :cond_2

    #@1b
    .line 121
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@1e
    .line 122
    return-void

    #@1f
    .line 126
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@22
    move-result v3

    #@23
    .line 127
    .local v3, "position":I
    if-gez v3, :cond_3

    #@25
    .line 128
    new-instance v6, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v7, "Negative position"

    #@2a
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v6

    #@2e
    .line 130
    :cond_3
    int-to-long v6, v3

    #@2f
    add-long v4, v0, v6

    #@31
    .line 131
    .local v4, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@34
    move-result v2

    #@35
    .line 132
    .local v2, "len":I
    if-gez v2, :cond_4

    #@37
    .line 133
    new-instance v6, Ljava/lang/RuntimeException;

    #@39
    const-string/jumbo v7, "Negative remaining amount"

    #@3c
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6

    #@40
    .line 136
    :cond_4
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    #@43
    .line 137
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@45
    invoke-static {v6, v4, v5, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    #@48
    .line 138
    add-int v6, v3, v2

    #@4a
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4d
    .line 103
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    #@3
    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@5
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@8
    .line 97
    return-void
.end method
