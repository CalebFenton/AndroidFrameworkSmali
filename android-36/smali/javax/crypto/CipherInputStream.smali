.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private greylist-max-o cipher:Ljavax/crypto/Cipher;

.field private greylist-max-o closed:Z

.field private greylist-max-o done:Z

.field private greylist-max-o ibuffer:[B

.field private greylist-max-o input:Ljava/io/InputStream;

.field private greylist-max-o obuffer:[B

.field private greylist-max-o ofinish:I

.field private greylist-max-o ostart:I


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 178
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 90
    iput v0, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 92
    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 94
    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    .line 179
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    .line 180
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 181
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    .line 164
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 90
    iput v0, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 92
    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 94
    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    .line 165
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    .line 166
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 167
    return-void
.end method

.method private greylist-max-o getMoreData()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 117
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 118
    iput v0, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 119
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    .line 120
    .local v2, "expectedOutputSize":I
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    if-eqz v3, :cond_1d

    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_21

    .line 121
    :cond_1d
    new-array v3, v2, [B

    iput-object v3, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 123
    :cond_21
    iget-object v3, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 124
    .local v8, "readin":I
    const-string v3, "ShortBufferException is not expected"

    const/4 v4, 0x0

    if-ne v8, v1, :cond_4e

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 130
    :try_start_31
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v5, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    invoke-virtual {v1, v5, v0}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I
    :try_end_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_31 .. :try_end_3b} :catch_45
    .catch Ljavax/crypto/BadPaddingException; {:try_start_31 .. :try_end_3b} :catch_45
    .catch Ljavax/crypto/ShortBufferException; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 137
    goto :goto_5d

    .line 134
    :catch_3c
    move-exception v0

    .line 135
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    :catch_45
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 133
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_4e
    :try_start_4e
    iget-object v5, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v6, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    iget-object v9, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_5c} :catch_69
    .catch Ljavax/crypto/ShortBufferException; {:try_start_4e .. :try_end_5c} :catch_60

    .line 149
    nop

    .line 151
    :goto_5d
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    return v0

    .line 145
    :catch_60
    move-exception v0

    .line 147
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    :catch_69
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 144
    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 322
    return-void

    .line 325
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    .line 326
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 329
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->done:Z

    if-nez v0, :cond_23

    .line 331
    :try_start_11
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_16
    .catch Ljavax/crypto/BadPaddingException; {:try_start_11 .. :try_end_16} :catch_17
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_11 .. :try_end_16} :catch_17

    .line 338
    goto :goto_23

    .line 333
    :catch_17
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    instance-of v1, v0, Ljavax/crypto/AEADBadTagException;

    if-nez v1, :cond_1d

    goto :goto_23

    .line 336
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 340
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    :cond_23
    :goto_23
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 341
    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 342
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    if-lt v0, v1, :cond_12

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "i":I
    :goto_7
    if-nez v0, :cond_e

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    move-result v0

    goto :goto_7

    .line 203
    :cond_e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    return v1

    .line 205
    .end local v0    # "i":I
    :cond_12
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    if-lt v0, v1, :cond_12

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "i":I
    :goto_7
    if-nez v0, :cond_e

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    move-result v0

    goto :goto_7

    .line 250
    :cond_e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    return v1

    .line 252
    .end local v0    # "i":I
    :cond_12
    if-gtz p3, :cond_16

    .line 253
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_16
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    .line 256
    .local v0, "available":I
    if-ge p3, v0, :cond_1e

    move v0, p3

    .line 257
    :cond_1e
    if-eqz p1, :cond_27

    .line 258
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :cond_27
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    add-int/2addr v1, v0

    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 261
    return v0
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    .line 284
    .local v0, "available":I
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_b

    .line 285
    int-to-long p1, v0

    .line 287
    :cond_b
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_12

    .line 288
    return-wide v1

    .line 290
    :cond_12
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 291
    return-wide p1
.end method
