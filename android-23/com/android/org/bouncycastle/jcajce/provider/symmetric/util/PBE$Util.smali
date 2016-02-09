.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 2
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    #@0
    .prologue
    .line 343
    const/4 v1, 0x2

    #@1
    if-ne p0, v1, :cond_0

    #@3
    .line 345
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    #@a
    move-result-object v0

    #@b
    .line 355
    .local v0, "key":[B
    :goto_0
    return-object v0

    #@c
    .line 347
    .end local v0    # "key":[B
    :cond_0
    const/4 v1, 0x5

    #@d
    if-eq p0, v1, :cond_1

    #@f
    const/4 v1, 0x4

    #@10
    if-ne p0, v1, :cond_2

    #@12
    .line 349
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    #@19
    move-result-object v0

    #@1a
    .restart local v0    # "key":[B
    goto :goto_0

    #@1b
    .line 353
    .end local v0    # "key":[B
    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    #@22
    move-result-object v0

    #@23
    .restart local v0    # "key":[B
    goto :goto_0
.end method

.method private static makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .locals 3
    .param p0, "type"    # I
    .param p1, "hash"    # I

    #@0
    .prologue
    .line 65
    if-eqz p0, :cond_0

    #@2
    const/4 v1, 0x4

    #@3
    if-ne p0, v1, :cond_1

    #@5
    .line 67
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@8
    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 76
    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    #@13
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@1a
    .line 175
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    #@1b
    .line 81
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    #@1d
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@24
    .line 83
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@25
    .line 88
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x1

    #@26
    if-eq p0, v1, :cond_2

    #@28
    const/4 v1, 0x5

    #@29
    if-ne p0, v1, :cond_3

    #@2b
    .line 90
    :cond_2
    packed-switch p1, :pswitch_data_1

    #@2e
    .line 126
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@30
    const-string/jumbo v2, "unknown digest scheme for PBE PKCS5S2 encryption."

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 99
    :pswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    #@39
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@40
    .line 101
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@41
    .line 104
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    #@43
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@4a
    .line 106
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@4b
    .line 117
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    #@4d
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@54
    .line 119
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@55
    .line 129
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_3
    const/4 v1, 0x2

    #@56
    if-ne p0, v1, :cond_4

    #@58
    .line 131
    packed-switch p1, :pswitch_data_2

    #@5b
    .line 167
    :pswitch_6
    new-instance v1, Ljava/lang/IllegalStateException;

    #@5d
    const-string/jumbo v2, "unknown digest scheme for PBE encryption."

    #@60
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1

    #@64
    .line 140
    :pswitch_7
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    #@66
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    #@69
    move-result-object v1

    #@6a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@6d
    .line 142
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@6e
    .line 145
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_8
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    #@70
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@73
    move-result-object v1

    #@74
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@77
    .line 147
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@78
    .line 158
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    #@7a
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    #@7d
    move-result-object v1

    #@7e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@81
    .line 160
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@82
    .line 172
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_4
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    #@84
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    #@87
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    #@88
    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@90
    .line 90
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch

    #@9e
    .line 131
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 246
    if-eqz p1, :cond_1

    #@2
    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    #@4
    if-eqz v5, :cond_1

    #@6
    move-object v4, p1

    #@7
    .line 251
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    #@9
    .line 252
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    #@c
    move-result v5

    #@d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    #@10
    move-result v6

    #@11
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    #@14
    move-result-object v0

    #@15
    .line 253
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    #@18
    move-result-object v2

    #@19
    .line 256
    .local v2, "key":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 258
    const/4 v5, 0x2

    #@20
    new-array v2, v5, [B

    #@22
    .line 261
    :cond_0
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    #@29
    move-result v6

    #@2a
    invoke-virtual {v0, v2, v5, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@2d
    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    #@30
    move-result v5

    #@31
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@34
    move-result-object v3

    #@35
    .line 265
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    #@36
    .local v1, "i":I
    :goto_0
    array-length v5, v2

    #@37
    if-eq v1, v5, :cond_2

    #@39
    .line 267
    const/4 v5, 0x0

    #@3a
    aput-byte v5, v2, v1

    #@3c
    .line 265
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 248
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v1    # "i":I
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v4    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@41
    const-string/jumbo v6, "Need a PBEParameter spec with a PBE key."

    #@44
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v5

    #@48
    .line 270
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .restart local v1    # "i":I
    .restart local v2    # "key":[B
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_2
    return-object v3
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    #@0
    .prologue
    .line 321
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    #@3
    move-result-object v0

    #@4
    .line 325
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    #@7
    move-result-object v2

    #@8
    .line 327
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    #@f
    move-result v5

    #@10
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@13
    .line 329
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@16
    move-result-object v3

    #@17
    .line 331
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@19
    if-eq v1, v4, :cond_0

    #@1b
    .line 333
    const/4 v4, 0x0

    #@1c
    aput-byte v4, v2, v1

    #@1e
    .line 331
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 336
    :cond_0
    return-object v3
.end method

.method public static makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 9
    .param p0, "pbeKey"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 187
    if-eqz p1, :cond_2

    #@3
    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    #@5
    if-eqz v6, :cond_2

    #@7
    move-object v5, p1

    #@8
    .line 192
    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    #@a
    .line 193
    .local v5, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    #@d
    move-result v6

    #@e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    #@11
    move-result v7

    #@12
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    #@15
    move-result-object v0

    #@16
    .line 194
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    #@19
    move-result-object v3

    #@1a
    .line 197
    .local v3, "key":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 199
    const/4 v6, 0x2

    #@21
    new-array v3, v6, [B

    #@23
    .line 202
    :cond_0
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    #@2a
    move-result v7

    #@2b
    invoke-virtual {v0, v3, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@2e
    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_3

    #@34
    .line 206
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    #@37
    move-result v6

    #@38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    #@3b
    move-result v7

    #@3c
    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@3f
    move-result-object v4

    #@40
    .line 213
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string/jumbo v6, "DES"

    #@43
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_1

    #@49
    .line 215
    instance-of v6, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@4b
    if-eqz v6, :cond_4

    #@4d
    move-object v6, v4

    #@4e
    .line 217
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@50
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@56
    .line 219
    .local v2, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@59
    move-result-object v6

    #@5a
    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@5d
    .line 229
    .end local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    #@5e
    .local v1, "i":I
    :goto_2
    array-length v6, v3

    #@5f
    if-eq v1, v6, :cond_5

    #@61
    .line 231
    aput-byte v8, v3, v1

    #@63
    .line 229
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_2

    #@66
    .line 189
    .end local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v1    # "i":I
    .end local v3    # "key":[B
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v5    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v7, "Need a PBEParameter spec with a PBE key."

    #@6b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v6

    #@6f
    .line 210
    .restart local v0    # "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .restart local v3    # "key":[B
    .restart local v5    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    #@72
    move-result v6

    #@73
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@76
    move-result-object v4

    #@77
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@78
    :cond_4
    move-object v2, v4

    #@79
    .line 223
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@7b
    .line 225
    .restart local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@7e
    move-result-object v6

    #@7f
    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@82
    goto :goto_1

    #@83
    .line 234
    .end local v2    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .restart local v1    # "i":I
    :cond_5
    return-object v4
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 284
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    #@4
    move-result-object v0

    #@5
    .line 288
    .local v0, "generator":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    #@8
    move-result-object v2

    #@9
    .line 290
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    #@c
    move-result-object v4

    #@d
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    #@10
    move-result v5

    #@11
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@14
    .line 292
    if-eqz p4, :cond_0

    #@16
    .line 294
    invoke-virtual {v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@19
    move-result-object v3

    #@1a
    .line 301
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_1
    array-length v4, v2

    #@1c
    if-eq v1, v4, :cond_1

    #@1e
    .line 303
    aput-byte v6, v2, v1

    #@20
    .line 301
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_1

    #@23
    .line 298
    .end local v1    # "i":I
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@26
    move-result-object v3

    #@27
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@28
    .line 306
    .restart local v1    # "i":I
    :cond_1
    return-object v3
.end method
