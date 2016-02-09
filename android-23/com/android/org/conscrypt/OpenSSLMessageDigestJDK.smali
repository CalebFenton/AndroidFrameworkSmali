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
.field private ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final evp_md:J

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@8
    .line 47
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@a
    .line 48
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@c
    .line 50
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->resetContext()V

    #@f
    .line 46
    return-void
.end method

.method private constructor <init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "ctx"    # Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@8
    .line 54
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@a
    .line 55
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@c
    .line 56
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@e
    .line 53
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

.method private final resetContext()V
    .locals 4

    #@0
    .prologue
    .line 60
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@9
    .line 61
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    #@c
    .line 62
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@e
    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    #@11
    .line 63
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@13
    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 145
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    #@9
    .line 146
    .local v0, "ctxCopy":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    #@c
    .line 147
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@e
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_copy(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I

    #@11
    .line 148
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;

    #@13
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    #@15
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@17
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    #@1a
    return-object v1
.end method

.method protected engineDigest()[B
    .locals 3

    #@0
    .prologue
    .line 89
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@2
    new-array v0, v1, [B

    #@4
    .line 90
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {v1, v0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I

    #@a
    .line 91
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->resetContext()V

    #@d
    .line 92
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    #@2
    return v0
.end method

.method protected engineReset()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->resetContext()V

    #@3
    .line 67
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@3
    aput-byte p1, v0, v2

    #@5
    .line 79
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    #@b
    .line 77
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    #@2
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    #@5
    .line 83
    return-void
.end method
