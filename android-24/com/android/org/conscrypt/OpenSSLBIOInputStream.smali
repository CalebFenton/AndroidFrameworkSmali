.class public Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private ctx:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isFinite"    # Z

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 34
    invoke-static {p0, p2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    #@9
    .line 31
    return-void
.end method


# virtual methods
.method public getBioContext()J
    .locals 2

    #@0
    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    #@2
    return-wide v0
.end method

.method public gets([B)I
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 50
    if-eqz p1, :cond_0

    #@3
    array-length v3, p1

    #@4
    if-nez v3, :cond_1

    #@6
    .line 51
    :cond_0
    return v4

    #@7
    .line 54
    :cond_1
    const/4 v1, 0x0

    #@8
    .line 55
    .local v1, "offset":I
    const/4 v0, 0x0

    #@9
    .line 56
    .local v0, "inputByte":I
    :goto_0
    array-length v3, p1

    #@a
    if-ge v1, v3, :cond_2

    #@c
    .line 57
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->read()I

    #@f
    move-result v0

    #@10
    .line 58
    const/4 v3, -0x1

    #@11
    if-ne v0, v3, :cond_3

    #@13
    .line 74
    :cond_2
    return v1

    #@14
    .line 62
    :cond_3
    const/16 v3, 0xa

    #@16
    if-ne v0, v3, :cond_4

    #@18
    .line 63
    if-nez v1, :cond_2

    #@1a
    goto :goto_0

    #@1b
    .line 71
    :cond_4
    add-int/lit8 v2, v1, 0x1

    #@1d
    .end local v1    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v0

    #@1e
    aput-byte v3, p1, v1

    #@20
    move v1, v2

    #@21
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@5
    .line 41
    return-void
.end method
