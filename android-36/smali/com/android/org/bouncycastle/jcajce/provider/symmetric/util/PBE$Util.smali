.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# direct methods
.method private static blacklist convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 546
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0

    :cond_c
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    goto :goto_1c

    .line 554
    :cond_13
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    return-object p0

    .line 550
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5

    const/4 v0, 0x0

    .line 529
    :try_start_1
    const-class v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "javax.crypto.spec.PBEParameterSpec"

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getParameterSpec"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 531
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 532
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    return-object v0
.end method

.method private static blacklist makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_bc

    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    goto/16 :goto_bc

    :cond_8
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eq p0, v0, :cond_6c

    const/4 v5, 0x5

    if-ne p0, v5, :cond_13

    goto :goto_6c

    :cond_13
    const/4 v5, 0x2

    if-ne p0, v5, :cond_66

    if-eqz p1, :cond_5c

    if-eq p1, v0, :cond_52

    if-eq p1, v1, :cond_48

    if-eq p1, v4, :cond_3e

    if-eq p1, v3, :cond_34

    if-ne p1, v2, :cond_2c

    .line 241
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 244
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_34
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 231
    :cond_3e
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 218
    :cond_48
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 203
    :cond_52
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 198
    :cond_5c
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 249
    :cond_66
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    return-object p0

    :cond_6c
    :goto_6c
    if-eqz p1, :cond_b2

    if-eq p1, v0, :cond_a8

    if-eq p1, v1, :cond_9e

    if-eq p1, v4, :cond_94

    if-eq p1, v3, :cond_8a

    if-ne p1, v2, :cond_82

    .line 159
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 184
    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_8a
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 149
    :cond_94
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 136
    :cond_9e
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 121
    :cond_a8
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 116
    :cond_b2
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    :cond_bc
    :goto_bc
    if-eqz p1, :cond_d2

    if-ne p1, v0, :cond_ca

    .line 99
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0

    .line 102
    :cond_ca
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_d2
    new-instance p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    return-object p0
.end method

.method public static blacklist makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    if-eqz p1, :cond_2c

    .line 407
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2c

    .line 412
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 413
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    .line 417
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 419
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    return-object p0

    .line 409
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 501
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p1

    .line 504
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    .line 506
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p4

    invoke-virtual {p1, p0, v0, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 508
    invoke-virtual {p1, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    const/4 p1, 0x0

    move p3, p1

    .line 510
    :goto_1d
    array-length p4, p2

    if-eq p3, p4, :cond_25

    .line 512
    aput-byte p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_25
    return-object p0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 435
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p2

    .line 439
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    .line 441
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 443
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    const/4 p2, 0x0

    move p3, p2

    .line 445
    :goto_19
    array-length v0, p1

    if-eq p3, v0, :cond_21

    .line 447
    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    :cond_21
    return-object p0
.end method

.method public static blacklist makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    if-eqz p1, :cond_99

    .line 338
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_99

    .line 343
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 344
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x2

    .line 350
    new-array v1, v1, [B

    .line 353
    :cond_21
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 355
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v1

    if-eqz v1, :cond_69

    .line 357
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 362
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 363
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_71

    :cond_50
    instance-of p0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p0, :cond_71

    .line 365
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 366
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 368
    new-instance p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 369
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 370
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, p0

    goto :goto_71

    .line 376
    :cond_69
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 379
    :cond_71
    :goto_71
    const-string p0, "DES"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_98

    .line 381
    instance-of p0, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p0, :cond_8e

    .line 383
    move-object p0, v0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 385
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    return-object v0

    .line 389
    :cond_8e
    move-object p0, v0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 391
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    :cond_98
    return-object v0

    .line 340
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 464
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p2

    .line 468
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    .line 470
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    if-eqz p4, :cond_1a

    .line 474
    invoke-virtual {p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    goto :goto_1e

    .line 478
    :cond_1a
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    :goto_1e
    const/4 p2, 0x0

    move p3, p2

    .line 481
    :goto_20
    array-length p4, p1

    if-eq p3, p4, :cond_28

    .line 483
    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    :cond_28
    return-object p0
.end method

.method public static blacklist makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 9

    if-eqz p5, :cond_6c

    .line 269
    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_6c

    .line 274
    check-cast p5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 275
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p2

    .line 284
    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v1

    invoke-virtual {p2, p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    if-eqz p4, :cond_40

    .line 288
    invoke-virtual {p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 293
    invoke-static {p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_27

    const/4 p3, 0x5

    if-ne p1, p3, :cond_44

    .line 294
    :cond_27
    instance-of p1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p1, :cond_44

    .line 296
    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 297
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 299
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 300
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 301
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object p0, p1

    goto :goto_44

    .line 307
    :cond_40
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 310
    :cond_44
    :goto_44
    const-string p1, "DES"

    invoke-virtual {p6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 312
    instance-of p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_61

    .line 314
    move-object p1, p0

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 316
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    return-object p0

    .line 320
    :cond_61
    move-object p1, p0

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 322
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    :cond_6b
    return-object p0

    .line 271
    :cond_6c
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
