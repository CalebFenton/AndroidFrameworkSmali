.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .registers 3
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .line 544
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 546
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .local v0, "key":[B
    goto :goto_24

    .line 548
    .end local v0    # "key":[B
    :cond_c
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    goto :goto_1c

    .line 554
    :cond_13
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_24

    .line 550
    .end local v0    # "key":[B
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .line 556
    .restart local v0    # "key":[B
    :goto_24
    return-object v0
.end method

.method public static blacklist getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p0, "pbeParameterSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .line 529
    :try_start_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterSpec"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 531
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 532
    .local v0, "getParameterSpecMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    .line 533
    .end local v0    # "getParameterSpecMethod":Ljava/lang/reflect/Method;
    :catch_1e
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .registers 4
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .line 83
    if-eqz p0, :cond_ac

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto/16 :goto_ac

    .line 105
    :cond_7
    const/4 v0, 0x1

    if-eq p0, v0, :cond_64

    const/4 v0, 0x5

    if-ne p0, v0, :cond_e

    goto :goto_64

    .line 187
    :cond_e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5e

    .line 189
    packed-switch p1, :pswitch_data_cc

    .line 244
    :pswitch_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown digest scheme for PBE encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_1d
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 242
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_cb

    .line 236
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_28
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 237
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_cb

    .line 231
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_33
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 232
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_cb

    .line 218
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_3e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 219
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_cb

    .line 203
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_49
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 204
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_cb

    .line 198
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_54
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 199
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 249
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_5e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 107
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_64
    :goto_64
    packed-switch p1, :pswitch_data_e4

    .line 184
    :pswitch_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_70
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 160
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 154
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_7a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 155
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 149
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_84
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 150
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 136
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_8e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 137
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 121
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_98
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 122
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 116
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_a2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 117
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 85
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_ac
    :goto_ac
    packed-switch p1, :pswitch_data_fc

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_b7
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 100
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_cb

    .line 94
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_c1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 95
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    nop

    .line 252
    :goto_cb
    return-object v0

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_54
        :pswitch_49
        :pswitch_14
        :pswitch_14
        :pswitch_3e
        :pswitch_14
        :pswitch_14
        :pswitch_33
        :pswitch_28
        :pswitch_1d
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_98
        :pswitch_67
        :pswitch_67
        :pswitch_8e
        :pswitch_67
        :pswitch_67
        :pswitch_84
        :pswitch_7a
        :pswitch_70
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_b7
    .end packed-switch
.end method

.method public static blacklist makePBEMacParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7
    .param p0, "pbeKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 407
    if-eqz p1, :cond_2d

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2d

    .line 412
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 413
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 414
    .local v1, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 417
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 421
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    return-object v3

    .line 409
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 10
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "pbeSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .line 501
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 504
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 506
    .local v1, "keyBytes":[B
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 508
    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 510
    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v4, v1

    if-eq v3, v4, :cond_25

    .line 512
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 515
    .end local v3    # "i":I
    :cond_25
    return-object v2
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 9
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .line 435
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 439
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 441
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 443
    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 445
    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v1

    if-eq v3, v4, :cond_21

    .line 447
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 450
    .end local v3    # "i":I
    :cond_21
    return-object v2
.end method

.method public static blacklist makePBEParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 13
    .param p0, "pbeKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .line 338
    if-eqz p1, :cond_9d

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_9d

    .line 343
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 344
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 345
    .local v1, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 348
    .local v2, "key":[B
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 350
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 353
    :cond_22
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v3

    if-eqz v3, :cond_6d

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 361
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 362
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    .line 363
    .local v4, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_52

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6c

    :cond_52
    instance-of v5, v4, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_6c

    .line 365
    move-object v5, v3

    check-cast v5, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 366
    .local v5, "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 368
    .local v6, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 369
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 370
    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v3, v7

    .line 373
    .end local v4    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v5    # "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v6    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_6c
    goto :goto_75

    .line 376
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_6d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 379
    .restart local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_75
    const-string v4, "DES"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 381
    instance-of v4, v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_92

    .line 383
    move-object v4, v3

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 385
    .local v4, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 386
    .end local v4    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_9c

    .line 389
    :cond_92
    move-object v4, v3

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 391
    .restart local v4    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 395
    .end local v4    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_9c
    :goto_9c
    return-object v3

    .line 340
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 10
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .line 464
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 468
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 470
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 472
    if-eqz p4, :cond_1a

    .line 474
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1e

    .line 478
    .end local v2    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_1a
    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 481
    .restart local v2    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v1

    if-eq v3, v4, :cond_28

    .line 483
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 486
    .end local v3    # "i":I
    :cond_28
    return-object v2
.end method

.method public static blacklist makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 20
    .param p0, "pbeKey"    # [B
    .param p1, "scheme"    # I
    .param p2, "digest"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "targetAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 269
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    if-eqz v2, :cond_79

    instance-of v3, v2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v3, :cond_79

    .line 274
    move-object v3, v2

    check-cast v3, Ljavax/crypto/spec/PBEParameterSpec;

    .line 275
    .local v3, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static/range {p1 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v4

    .line 276
    .local v4, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    move-object v5, p0

    .line 284
    .local v5, "key":[B
    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 286
    if-eqz v1, :cond_4b

    .line 288
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    .line 292
    .local v6, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 293
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    .line 294
    .local v7, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v8, 0x1

    if-eq p1, v8, :cond_30

    const/4 v8, 0x5

    if-ne p1, v8, :cond_4a

    :cond_30
    instance-of v8, v7, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v8, :cond_4a

    .line 296
    move-object v8, v6

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 297
    .local v8, "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v9, v7

    check-cast v9, Ljavax/crypto/spec/IvParameterSpec;

    .line 299
    .local v9, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 300
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 301
    invoke-virtual {v9}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v6, v10

    .line 304
    .end local v7    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v8    # "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v9    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_4a
    goto :goto_4f

    .line 307
    .end local v6    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_4b
    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    .line 310
    .restart local v6    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_4f
    const-string v7, "DES"

    move-object/from16 v8, p6

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 312
    instance-of v7, v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_6e

    .line 314
    move-object v7, v6

    check-cast v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 316
    .local v7, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 317
    .end local v7    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_78

    .line 320
    :cond_6e
    move-object v7, v6

    check-cast v7, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 322
    .restart local v7    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 326
    .end local v7    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_78
    :goto_78
    return-object v6

    .line 269
    .end local v3    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v4    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v5    # "key":[B
    .end local v6    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_79
    move-object/from16 v8, p6

    .line 271
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
