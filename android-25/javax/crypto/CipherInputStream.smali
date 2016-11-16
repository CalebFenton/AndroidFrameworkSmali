.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private done:Z

.field private ibuffer:[B

.field private input:Ljava/io/InputStream;

.field private obuffer:[B

.field private ofinish:I

.field private ostart:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 153
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 77
    const/16 v0, 0x200

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    #@a
    .line 80
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    #@c
    .line 86
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@e
    .line 88
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@10
    .line 154
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    #@12
    .line 155
    new-instance v0, Ljavax/crypto/NullCipher;

    #@14
    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    #@17
    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@19
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 77
    const/16 v0, 0x200

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    #@a
    .line 80
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    #@c
    .line 86
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@e
    .line 88
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@10
    .line 140
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    #@12
    .line 141
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@14
    .line 138
    return-void
.end method

.method private getMoreData()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 102
    iget-boolean v4, p0, Ljavax/crypto/CipherInputStream;->done:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    return v6

    #@8
    .line 103
    :cond_0
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    #@a
    iget-object v5, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    #@c
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    #@f
    move-result v3

    #@10
    .line 104
    .local v3, "readin":I
    if-ne v3, v6, :cond_2

    #@12
    .line 105
    const/4 v4, 0x1

    #@13
    iput-boolean v4, p0, Ljavax/crypto/CipherInputStream;->done:Z

    #@15
    .line 107
    :try_start_0
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@17
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->doFinal()[B

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 111
    :goto_0
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@1f
    if-nez v4, :cond_1

    #@21
    .line 112
    return v6

    #@22
    .line 110
    :catch_0
    move-exception v1

    #@23
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    iput-object v7, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@25
    goto :goto_0

    #@26
    .line 109
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v2

    #@27
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    iput-object v7, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@29
    goto :goto_0

    #@2a
    .line 114
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :cond_1
    iput v8, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@2c
    .line 115
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@2e
    array-length v4, v4

    #@2f
    iput v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@31
    .line 116
    iget v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@33
    return v4

    #@34
    .line 120
    :cond_2
    :try_start_1
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@36
    iget-object v5, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    #@38
    const/4 v6, 0x0

    #@39
    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    #@3c
    move-result-object v4

    #@3d
    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    #@3f
    .line 122
    :goto_1
    iput v8, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@41
    .line 123
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@43
    if-nez v4, :cond_3

    #@45
    .line 124
    iput v8, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@47
    .line 126
    :goto_2
    iget v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@49
    return v4

    #@4a
    .line 121
    :catch_2
    move-exception v0

    #@4b
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-object v7, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@4d
    goto :goto_1

    #@4e
    .line 125
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@50
    array-length v4, v4

    #@51
    iput v4, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@53
    goto :goto_2
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
    .line 281
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@2
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 296
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    #@3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    #@6
    .line 299
    :try_start_0
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    #@8
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 305
    :goto_0
    iput v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@d
    .line 306
    iput v3, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@f
    .line 295
    return-void

    #@10
    .line 301
    :catch_0
    move-exception v0

    #@11
    .local v0, "ex":Ljavax/crypto/BadPaddingException;
    goto :goto_0

    #@12
    .line 303
    .end local v0    # "ex":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    #@13
    .local v1, "ex":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 320
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 174
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@3
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@5
    if-lt v1, v2, :cond_1

    #@7
    .line 176
    const/4 v0, 0x0

    #@8
    .line 177
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    #@a
    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    #@d
    move-result v0

    #@e
    goto :goto_0

    #@f
    .line 178
    :cond_0
    if-ne v0, v3, :cond_1

    #@11
    return v3

    #@12
    .line 180
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@14
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@16
    add-int/lit8 v3, v2, 0x1

    #@18
    iput v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@1a
    aget-byte v1, v1, v2

    #@1c
    and-int/lit16 v1, v1, 0xff

    #@1e
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 221
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@4
    iget v3, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@6
    if-lt v2, v3, :cond_1

    #@8
    .line 223
    const/4 v1, 0x0

    #@9
    .line 224
    .local v1, "i":I
    :goto_0
    if-nez v1, :cond_0

    #@b
    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    #@e
    move-result v1

    #@f
    goto :goto_0

    #@10
    .line 225
    :cond_0
    if-ne v1, v5, :cond_1

    #@12
    return v5

    #@13
    .line 227
    .end local v1    # "i":I
    :cond_1
    if-gtz p3, :cond_2

    #@15
    .line 228
    return v4

    #@16
    .line 230
    :cond_2
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@18
    iget v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@1a
    sub-int v0, v2, v3

    #@1c
    .line 231
    .local v0, "available":I
    if-ge p3, v0, :cond_3

    #@1e
    move v0, p3

    #@1f
    .line 232
    :cond_3
    if-eqz p1, :cond_4

    #@21
    .line 233
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    #@23
    iget v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@25
    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@28
    .line 235
    :cond_4
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@2a
    add-int/2addr v2, v0

    #@2b
    iput v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@2d
    .line 236
    return v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 258
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    #@4
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@6
    sub-int v0, v1, v2

    #@8
    .line 259
    .local v0, "available":I
    int-to-long v2, v0

    #@9
    cmp-long v1, p1, v2

    #@b
    if-lez v1, :cond_0

    #@d
    .line 260
    int-to-long p1, v0

    #@e
    .line 262
    :cond_0
    cmp-long v1, p1, v4

    #@10
    if-gez v1, :cond_1

    #@12
    .line 263
    return-wide v4

    #@13
    .line 265
    :cond_1
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@15
    int-to-long v2, v1

    #@16
    add-long/2addr v2, p1

    #@17
    long-to-int v1, v2

    #@18
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    #@1a
    .line 266
    return-wide p1
.end method
