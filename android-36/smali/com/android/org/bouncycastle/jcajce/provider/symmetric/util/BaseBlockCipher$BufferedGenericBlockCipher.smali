.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;
.super Ljava/lang/Object;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# instance fields
.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 1387
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4

    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V
    .registers 2

    .line 1381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 3

    .line 1448
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p0
    :try_end_6
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1452
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 1408
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOutputSize(I)I
    .registers 2

    .line 1418
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 1

    .line 1413
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 2

    .line 1423
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result p0

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    .line 1398
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 6

    .line 1440
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual/range {p0 .. p5}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public blacklist updateAAD([BII)V
    .registers 4

    .line 1428
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AAD is not supported in the current mode."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist wrapOnNoPadding()Z
    .registers 1

    .line 1403
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    instance-of p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
