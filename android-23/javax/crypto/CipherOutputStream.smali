.class public Ljavax/crypto/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 63
    new-instance v0, Ljavax/crypto/NullCipher;

    #@2
    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@8
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 50
    iput-object p2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@5
    .line 48
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
    .line 126
    :try_start_0
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 127
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@6
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->doFinal()[B

    #@9
    move-result-object v2

    #@a
    .line 128
    .local v2, "result":[B
    if-eqz v2, :cond_0

    #@c
    .line 129
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@e
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    #@11
    .line 132
    .end local v2    # "result":[B
    :cond_0
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 133
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@17
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 140
    :cond_1
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 141
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@20
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    #@23
    .line 123
    :cond_2
    return-void

    #@24
    .line 137
    :catch_0
    move-exception v1

    #@25
    .line 138
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    #@27
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 139
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catchall_0
    move-exception v3

    #@30
    .line 140
    iget-object v4, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 141
    iget-object v4, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@36
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    #@39
    .line 139
    :cond_3
    throw v3

    #@3a
    .line 135
    :catch_1
    move-exception v0

    #@3b
    .line 136
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    #@3d
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 108
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    #@3
    .line 74
    return-void
.end method

.method public write([BII)V
    .locals 2
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
    .line 92
    if-nez p3, :cond_0

    #@2
    .line 93
    return-void

    #@3
    .line 95
    :cond_0
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    #@5
    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    #@8
    move-result-object v0

    #@9
    .line 96
    .local v0, "result":[B
    if-eqz v0, :cond_1

    #@b
    .line 97
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    #@d
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    #@10
    .line 91
    :cond_1
    return-void
.end method
