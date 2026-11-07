.class final Ljavax/crypto/NullCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "NullCipherSpi.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .line 105
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 62
    .local v0, "x":[B
    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 2
    .param p1, "inputLen"    # I

    .line 57
    return p1
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;

    .line 77
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;

    .line 69
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;

    .line 73
    return-void
.end method

.method public whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 48
    return-void
.end method

.method public whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 2
    .param p1, "padding"    # Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .line 90
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_4
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return p3
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 81
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    new-array v0, p3, [B

    .line 83
    .local v0, "x":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object v0
.end method
