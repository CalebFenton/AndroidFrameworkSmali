.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private final inputBuffer:[B

.field private outputBuffer:[B

.field private outputIndex:I

.field private outputLength:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 78
    new-instance v0, Ljavax/crypto/NullCipher;

    #@2
    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    #@8
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 59
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 60
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@6
    .line 61
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    #@9
    move-result v2

    #@a
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    .line 63
    .local v0, "blockSize":I
    const/16 v2, 0x2000

    #@10
    div-int/2addr v2, v0

    #@11
    mul-int/2addr v2, v0

    #@12
    .line 62
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v1

    #@16
    .line 64
    .local v1, "bufferSize":I
    new-array v2, v1, [B

    #@18
    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    #@1a
    .line 65
    if-le v0, v3, :cond_0

    #@1c
    mul-int/lit8 v2, v0, 0x2

    #@1e
    :goto_0
    add-int/2addr v2, v1

    #@1f
    new-array v2, v2, [B

    #@21
    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@23
    .line 58
    return-void

    #@24
    .line 65
    :cond_0
    const/4 v2, 0x0

    #@25
    goto :goto_0
.end method

.method private fillBuffer()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 87
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 88
    return v10

    #@7
    .line 90
    :cond_0
    iput v10, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@9
    .line 91
    iput v10, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@b
    .line 92
    :goto_0
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@d
    if-nez v0, :cond_5

    #@f
    .line 95
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@11
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    #@13
    array-length v1, v1

    #@14
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    #@17
    move-result v8

    #@18
    .line 96
    .local v8, "outputSize":I
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@1a
    if-eqz v0, :cond_1

    #@1c
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@1e
    array-length v0, v0

    #@1f
    if-ge v0, v8, :cond_2

    #@21
    .line 97
    :cond_1
    new-array v0, v8, [B

    #@23
    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@25
    .line 99
    :cond_2
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    #@27
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    #@29
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    #@2c
    move-result v3

    #@2d
    .line 100
    .local v3, "byteCount":I
    const/4 v0, -0x1

    #@2e
    if-ne v3, v0, :cond_4

    #@30
    .line 102
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@32
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@34
    const/4 v2, 0x0

    #@35
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BI)I

    #@38
    move-result v0

    #@39
    iput v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 106
    iput-boolean v9, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    #@3d
    .line 107
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@3f
    if-eqz v0, :cond_3

    #@41
    move v0, v9

    #@42
    :goto_1
    return v0

    #@43
    .line 103
    :catch_0
    move-exception v6

    #@44
    .line 104
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    #@46
    const-string/jumbo v1, "Error while finalizing cipher"

    #@49
    invoke-direct {v0, v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v0

    #@4d
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    move v0, v10

    #@4e
    .line 107
    goto :goto_1

    #@4f
    .line 110
    :cond_4
    :try_start_1
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@51
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    #@53
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@55
    const/4 v2, 0x0

    #@56
    const/4 v5, 0x0

    #@57
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    #@5a
    move-result v0

    #@5b
    iput v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    #@5d
    goto :goto_0

    #@5e
    .line 111
    :catch_1
    move-exception v7

    #@5f
    .line 112
    .local v7, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/AssertionError;

    #@61
    invoke-direct {v0, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@64
    throw v0

    #@65
    .line 115
    .end local v3    # "byteCount":I
    .end local v7    # "e":Ljavax/crypto/ShortBufferException;
    .end local v8    # "outputSize":I
    :cond_5
    return v9
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@2
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@5
    .line 190
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@7
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 187
    :goto_0
    return-void

    #@b
    .line 191
    :catch_0
    move-exception v0

    #@c
    .local v0, "ignore":Ljava/security/GeneralSecurityException;
    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 206
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v1, "in == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 130
    :cond_0
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@f
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@11
    if-ne v0, v1, :cond_1

    #@13
    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->fillBuffer()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 133
    :cond_1
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@1b
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@1d
    add-int/lit8 v2, v1, 0x1

    #@1f
    iput v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@21
    aget-byte v0, v0, v1

    #@23
    and-int/lit16 v0, v0, 0xff

    #@25
    return v0

    #@26
    .line 131
    :cond_2
    const/4 v0, -0x1

    #@27
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 153
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "in == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 155
    :cond_0
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@f
    iget v2, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@11
    if-ne v1, v2, :cond_1

    #@13
    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->fillBuffer()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_4

    #@19
    .line 158
    :cond_1
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    #@1b
    iget v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@1d
    sub-int v0, v1, v2

    #@1f
    .line 159
    .local v0, "available":I
    if-ge v0, p3, :cond_2

    #@21
    .line 160
    move p3, v0

    #@22
    .line 162
    :cond_2
    if-eqz p1, :cond_3

    #@24
    .line 163
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    #@26
    iget v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@28
    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 165
    :cond_3
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@2d
    add-int/2addr v1, p3

    #@2e
    iput v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    #@30
    .line 166
    return p3

    #@31
    .line 156
    .end local v0    # "available":I
    :cond_4
    const/4 v1, -0x1

    #@32
    return v1
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
