.class final Ljavax/crypto/NullCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "NullCipherSpi.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    #@0
    .prologue
    .line 105
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII[BI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected engineGetIV()[B
    .locals 2

    #@0
    .prologue
    .line 61
    const/16 v1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 62
    .local v0, "x":[B
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 57
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 77
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 69
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 73
    return-void
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 0
    .param p1, "padding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    #@0
    .prologue
    .line 90
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 91
    :cond_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7
    .line 92
    return p3
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    if-nez p1, :cond_0

    #@3
    return-object v1

    #@4
    .line 82
    :cond_0
    new-array v0, p3, [B

    #@6
    .line 83
    .local v0, "x":[B
    const/4 v1, 0x0

    #@7
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a
    .line 84
    return-object v0
.end method
