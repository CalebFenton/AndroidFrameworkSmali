.class public Ljavax/crypto/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private ibuffer:[B

.field private obuffer:[B

.field private output:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 72
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    #@8
    .line 105
    iput-object p1, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    #@a
    .line 106
    new-instance v0, Ljavax/crypto/NullCipher;

    #@c
    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    #@f
    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@11
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 72
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    #@8
    .line 90
    iput-object p1, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    #@a
    .line 91
    iput-object p2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@c
    .line 88
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 202
    :try_start_0
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@3
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->doFinal()[B

    #@6
    move-result-object v3

    #@7
    iput-object v3, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 209
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavax/crypto/CipherOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@c
    .line 211
    :goto_1
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    #@11
    .line 200
    return-void

    #@12
    .line 205
    :catch_0
    move-exception v0

    #@13
    .line 206
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@15
    goto :goto_0

    #@16
    .line 203
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    #@17
    .line 204
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@19
    goto :goto_0

    #@1a
    .line 210
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    #@1b
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_1
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 177
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 178
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    #@7
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@9
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@c
    .line 179
    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@e
    .line 181
    :cond_0
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    #@10
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@13
    .line 176
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 117
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    #@4
    int-to-byte v1, p1

    #@5
    aput-byte v1, v0, v3

    #@7
    .line 118
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@9
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@12
    .line 119
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 120
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    #@18
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 121
    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@1f
    .line 116
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    #@5
    .line 140
    return-void
.end method

.method public write([BII)V
    .locals 3
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
    const/4 v2, 0x0

    #@1
    .line 155
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@9
    .line 156
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 157
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    #@f
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@11
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@14
    .line 158
    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    #@16
    .line 154
    :cond_0
    return-void
.end method
