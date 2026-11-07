.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source "BaseWrapCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist availableSpecs:[Ljava/lang/Class;

.field protected blacklist engineParams:Ljava/security/AlgorithmParameters;

.field private blacklist forWrapping:Z

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist iv:[B

.field private blacklist ivSize:I

.field protected blacklist pbeHash:I

.field protected blacklist pbeType:I

.field protected blacklist wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

.field private blacklist wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 5

    .line 92
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x2

    .line 61
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v3, v1, v2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    .line 72
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    .line 73
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 79
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 84
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V
    .registers 7

    .line 104
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x2

    .line 61
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v3, v1, v2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    .line 72
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    .line 73
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 79
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 84
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 105
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 106
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    return-void
.end method


# virtual methods
.method protected final blacklist createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 7

    .line 409
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz v0, :cond_67

    .line 414
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 420
    :try_start_7
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1f

    const/4 p2, 0x0

    if-eqz p1, :cond_2c

    .line 424
    :try_start_c
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_21
    .catchall {:try_start_c .. :try_end_1e} :catchall_1f

    goto :goto_3e

    :catchall_1f
    move-exception p1

    goto :goto_61

    :catch_21
    move-exception p1

    .line 428
    :try_start_22
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1f

    .line 435
    :cond_2c
    :try_start_2c
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1
    :try_end_3e
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2c .. :try_end_3e} :catch_56
    .catchall {:try_start_2c .. :try_end_3e} :catchall_1f

    .line 443
    :goto_3e
    :try_start_3e
    array-length p3, p1

    add-int/2addr p3, p5

    array-length v0, p4

    if-gt p3, v0, :cond_4e

    .line 448
    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    array-length p1, p1
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_1f

    .line 454
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    return p1

    .line 445
    :cond_4e
    :try_start_4e
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_56
    move-exception p1

    .line 439
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_1f

    .line 454
    :goto_61
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    .line 455
    throw p1

    .line 411
    :cond_67
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz v0, :cond_57

    if-eqz p1, :cond_9

    .line 367
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 372
    :cond_9
    :try_start_9
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_26

    const/4 p2, 0x0

    if-eqz p1, :cond_33

    .line 376
    :try_start_e
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_28
    .catchall {:try_start_e .. :try_end_20} :catchall_26

    .line 397
    :goto_20
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    return-object p1

    :catchall_26
    move-exception p1

    goto :goto_51

    :catch_28
    move-exception p1

    .line 380
    :try_start_29
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_26

    .line 387
    :cond_33
    :try_start_33
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1
    :try_end_45
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_33 .. :try_end_45} :catch_46
    .catchall {:try_start_33 .. :try_end_45} :catchall_26

    goto :goto_20

    :catch_46
    move-exception p1

    .line 391
    :try_start_47
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_26

    .line 397
    :goto_51
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    .line 398
    throw p1

    .line 362
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 2

    .line 122
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_3b

    .line 135
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    if-eqz v0, :cond_3b

    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1f

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 147
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_3b

    :catch_30
    move-exception p0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6

    if-eqz p3, :cond_26

    .line 293
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_27

    .line 297
    :cond_b
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t handle parameter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    const/4 v0, 0x0

    .line 301
    :goto_27
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 302
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    .line 313
    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 317
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 8

    .line 188
    instance-of v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_28

    .line 190
    check-cast p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 192
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_15

    .line 194
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_32

    .line 196
    :cond_15
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 198
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_32

    .line 202
    :cond_20
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PBE requires PBE parameters to be set."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_28
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object p2, v0

    .line 210
    :goto_32
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_44

    .line 212
    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .line 213
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p3

    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    .line 214
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v0, p2, p3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object p2, v0

    .line 233
    :cond_44
    instance-of p3, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p3, :cond_61

    iget p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    if-eqz p3, :cond_61

    if-eq p1, v0, :cond_52

    if-ne p1, v1, :cond_61

    .line 237
    :cond_52
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    .line 238
    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 239
    new-instance p3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {p3, p2, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object p2, p3

    :cond_61
    if-eqz p4, :cond_69

    .line 245
    new-instance p3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p3, p2, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object p2, p3

    :cond_69
    if-eq p1, v1, :cond_a0

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-eq p1, p3, :cond_91

    const/4 p3, 0x0

    if-eq p1, v0, :cond_87

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7f

    .line 258
    :try_start_75
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, p4, p2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 259
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    .line 260
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z

    return-void

    .line 273
    :cond_7f
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Unknown mode parameter passed to init."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_87
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, v1, p2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 254
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    .line 255
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z

    return-void

    .line 268
    :cond_91
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, p4, p2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 269
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    .line 270
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z

    return-void

    .line 263
    :cond_a0
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, v1, p2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 264
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    .line 265
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_ae} :catch_af

    return-void

    :catch_af
    move-exception p0

    .line 278
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 4

    .line 169
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t support mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 4

    .line 176
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Padding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 8

    .line 494
    const-string v0, "Unknown key type "

    :try_start_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 496
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object p1

    goto :goto_12

    .line 500
    :cond_d
    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1
    :try_end_12
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_12} :catch_dd
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_12} :catch_d2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_12} :catch_c7

    :goto_12
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1b

    .line 518
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 520
    :cond_1b
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_5d

    if-ne p3, v2, :cond_5d

    .line 528
    :try_start_26
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    .line 530
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1

    if-eqz p1, :cond_31

    return-object p1

    .line 538
    :cond_31
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "algorithm "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_55} :catch_55

    .line 543
    :catch_55
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Invalid key encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 550
    :cond_5d
    :try_start_5d
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_74

    .line 554
    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :catch_70
    move-exception p0

    goto :goto_95

    :catch_72
    move-exception p0

    goto :goto_ae

    :cond_74
    if-ne p3, v2, :cond_80

    .line 558
    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_7f
    .catch Ljava/security/NoSuchProviderException; {:try_start_5d .. :try_end_7f} :catch_72
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5d .. :try_end_7f} :catch_70

    return-object p0

    .line 570
    :cond_80
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 567
    :goto_95
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :goto_ae
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_c7
    move-exception p0

    .line 513
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_d2
    move-exception p0

    .line 509
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_dd
    move-exception p0

    .line 505
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 6

    .line 344
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz p0, :cond_9

    .line 349
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    .line 346
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 4

    .line 326
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz p0, :cond_9

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not supported in a wrapping mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 4

    .line 462
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_22

    .line 470
    :try_start_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 472
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object p0

    return-object p0

    .line 476
    :cond_11
    array-length p0, p1

    invoke-interface {v0, p1, v1, p0}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p0
    :try_end_16
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 481
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_22
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Cannot wrap key, null encoding."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
