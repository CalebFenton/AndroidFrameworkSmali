.class public Lorg/apache/harmony/crypto/internal/NullCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "NullCipherSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/crypto/internal/NullCipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public engineDoFinal([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-virtual/range {p0 .. p5}, Lorg/apache/harmony/crypto/internal/NullCipherSpi;->engineUpdate([BII[BI)I

    #@3
    move-result v0

    #@4
    .line 147
    .local v0, "result":I
    return v0
.end method

.method public engineDoFinal([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 135
    if-nez p1, :cond_0

    #@3
    .line 136
    return-object v0

    #@4
    .line 138
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/crypto/internal/NullCipherSpi;->engineUpdate([BII)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 57
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 67
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [B

    #@4
    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public engineGetOutputSize(I)I
    .locals 0
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 62
    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    return-void
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    return-void
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    if-nez p1, :cond_0

    #@2
    .line 119
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "input == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 120
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "output == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1d
    move-result v3

    #@1e
    sub-int v1, v2, v3

    #@20
    .line 125
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 129
    return v1

    #@24
    .line 126
    :catch_0
    move-exception v0

    #@25
    .line 127
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v2, Ljavax/crypto/ShortBufferException;

    #@27
    const-string/jumbo v3, "output buffer too small"

    #@2a
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
.end method

.method public engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    if-nez p1, :cond_0

    #@2
    .line 109
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 111
    :cond_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7
    .line 112
    return p3
.end method

.method public engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    if-nez p1, :cond_0

    #@3
    .line 98
    return-object v1

    #@4
    .line 100
    :cond_0
    new-array v0, p3, [B

    #@6
    .line 101
    .local v0, "result":[B
    const/4 v1, 0x0

    #@7
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a
    .line 102
    return-object v0
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
