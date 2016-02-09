.class public final Lcom/android/org/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "CryptoUpcalls.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 47
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    #@9
    move-result-object v3

    #@a
    const/4 v2, 0x0

    #@b
    array-length v4, v3

    #@c
    :goto_0
    if-ge v2, v4, :cond_1

    #@e
    aget-object v0, v3, v2

    #@10
    .line 48
    .local v0, "p":Ljava/security/Provider;
    invoke-static {v0}, Lcom/android/org/conscrypt/CryptoUpcalls;->isOurProvider(Ljava/security/Provider;)Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_0

    #@16
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 52
    .end local v0    # "p":Ljava/security/Provider;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 53
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Could not find external provider for algorithm: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 55
    :cond_2
    return-object v1
.end method

.method private static isOurProvider(Ljava/security/Provider;)Z
    .locals 2
    .param p0, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@7
    move-result-object v0

    #@8
    const-class v1, Lcom/android/org/conscrypt/CryptoUpcalls;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/Package;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static rawSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .locals 14
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 63
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    .line 64
    .local v5, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v10, "RSA"

    #@8
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v10

    #@c
    if-eqz v10, :cond_2

    #@e
    .line 69
    const-string/jumbo v0, "NONEwithRSA"

    #@11
    .line 80
    .local v0, "algorithm":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@14
    move-result-object v9

    #@15
    .line 81
    .local v9, "signature":Ljava/security/Signature;
    invoke-virtual {v9, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@18
    .line 84
    invoke-virtual {v9}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    #@1b
    move-result-object v10

    #@1c
    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->isOurProvider(Ljava/security/Provider;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v10

    #@20
    if-eqz v10, :cond_0

    #@22
    .line 85
    const/4 v9, 0x0

    #@23
    .line 98
    .end local v9    # "signature":Ljava/security/Signature;
    :cond_0
    :goto_1
    if-nez v9, :cond_4

    #@25
    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v11, "Signature."

    #@2d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v10

    #@31
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v10

    #@35
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3c
    move-result-object v8

    #@3d
    .line 100
    .local v8, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v7

    #@41
    .local v7, "p$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v10

    #@45
    if-eqz v10, :cond_1

    #@47
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/security/Provider;

    #@4d
    .line 102
    .local v6, "p":Ljava/security/Provider;
    :try_start_1
    invoke-static {v0, v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@50
    move-result-object v9

    #@51
    .line 103
    .restart local v9    # "signature":Ljava/security/Signature;
    invoke-virtual {v9, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    #@54
    .line 109
    .end local v6    # "p":Ljava/security/Provider;
    .end local v9    # "signature":Ljava/security/Signature;
    :cond_1
    if-nez v9, :cond_4

    #@56
    .line 110
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@58
    new-instance v11, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v12, "Could not find provider for algorithm: "

    #@60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v11

    #@64
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v11

    #@68
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v11

    #@6c
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6f
    .line 111
    return-object v13

    #@70
    .line 70
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_2
    const-string/jumbo v10, "EC"

    #@73
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v10

    #@77
    if-eqz v10, :cond_3

    #@79
    .line 71
    const-string/jumbo v0, "NONEwithECDSA"

    #@7c
    .restart local v0    # "algorithm":Ljava/lang/String;
    goto :goto_0

    #@7d
    .line 73
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/RuntimeException;

    #@7f
    new-instance v11, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v12, "Unexpected key type: "

    #@87
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8e
    move-result-object v12

    #@8f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v11

    #@93
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v11

    #@97
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v10

    #@9b
    .line 90
    .restart local v0    # "algorithm":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@9c
    .line 91
    .local v3, "e":Ljava/security/InvalidKeyException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9e
    const-string/jumbo v11, "Preferred provider doesn\'t support key:"

    #@a1
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a4
    .line 92
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    #@a7
    .line 93
    const/4 v9, 0x0

    #@a8
    .local v9, "signature":Ljava/security/Signature;
    goto/16 :goto_1

    #@aa
    .line 87
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    .end local v9    # "signature":Ljava/security/Signature;
    :catch_1
    move-exception v4

    #@ab
    .line 88
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ad
    new-instance v11, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v12, "Unsupported signature algorithm: "

    #@b5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v11

    #@bd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v11

    #@c1
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c4
    .line 89
    return-object v13

    #@c5
    .line 105
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "p":Ljava/security/Provider;
    .restart local v7    # "p$iterator":Ljava/util/Iterator;
    .restart local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :catch_2
    move-exception v2

    #@c6
    .line 106
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const/4 v9, 0x0

    #@c7
    .restart local v9    # "signature":Ljava/security/Signature;
    goto/16 :goto_2

    #@c9
    .line 117
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "p":Ljava/security/Provider;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    .end local v9    # "signature":Ljava/security/Signature;
    :cond_4
    :try_start_2
    invoke-virtual {v9, p1}, Ljava/security/Signature;->update([B)V

    #@cc
    .line 118
    invoke-virtual {v9}, Ljava/security/Signature;->sign()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@cf
    move-result-object v10

    #@d0
    return-object v10

    #@d1
    .line 119
    :catch_3
    move-exception v1

    #@d2
    .line 120
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d4
    new-instance v11, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v12, "Exception while signing message with "

    #@dc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v11

    #@e0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@e3
    move-result-object v12

    #@e4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v11

    #@e8
    .line 121
    const-string/jumbo v12, " private key:"

    #@eb
    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v11

    #@ef
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v11

    #@f3
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f6
    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@f9
    .line 123
    return-object v13
.end method

.method public static rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .locals 13
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "input"    # [B

    #@0
    .prologue
    .line 129
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 130
    .local v5, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v10, "RSA"

    #@7
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_0

    #@d
    .line 131
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    new-instance v11, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v12, "Unexpected key type: "

    #@17
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v11

    #@1f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v11

    #@23
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 132
    const/4 v10, 0x0

    #@27
    return-object v10

    #@28
    .line 136
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@2b
    .line 147
    :pswitch_0
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d
    new-instance v11, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v12, "Unsupported OpenSSL/BoringSSL padding: "

    #@35
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v11

    #@39
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v11

    #@3d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v11

    #@41
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 148
    const/4 v10, 0x0

    #@45
    return-object v10

    #@46
    .line 138
    :pswitch_1
    const-string/jumbo v4, "PKCS1Padding"

    #@49
    .line 151
    .local v4, "jcaPadding":Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v11, "RSA/ECB/"

    #@51
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v10

    #@55
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v10

    #@59
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    .line 152
    .local v9, "transformation":Ljava/lang/String;
    const/4 v0, 0x0

    #@5e
    .line 156
    .local v0, "c":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@61
    move-result-object v0

    #@62
    .line 157
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v10, 0x2

    #@63
    invoke-virtual {v0, v10, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@66
    .line 160
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    #@69
    move-result-object v10

    #@6a
    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->isOurProvider(Ljava/security/Provider;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_1

    #@70
    .line 161
    const/4 v0, 0x0

    #@71
    .line 174
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    #@73
    .line 175
    new-instance v10, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v11, "Cipher."

    #@7b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    invoke-static {v10}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    #@8a
    move-result-object v8

    #@8b
    .line 176
    .local v8, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8e
    move-result-object v7

    #@8f
    .local v7, "p$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@92
    move-result v10

    #@93
    if-eqz v10, :cond_2

    #@95
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@98
    move-result-object v6

    #@99
    check-cast v6, Ljava/security/Provider;

    #@9b
    .line 178
    .local v6, "p":Ljava/security/Provider;
    :try_start_1
    invoke-static {v9, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@9e
    move-result-object v0

    #@9f
    .line 179
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    const/4 v10, 0x2

    #@a0
    invoke-virtual {v0, v10, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    #@a3
    .line 186
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v6    # "p":Ljava/security/Provider;
    :cond_2
    if-nez v0, :cond_3

    #@a5
    .line 187
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a7
    new-instance v11, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v12, "Could not find provider for algorithm: "

    #@af
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v11

    #@bb
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@be
    .line 188
    const/4 v10, 0x0

    #@bf
    return-object v10

    #@c0
    .line 141
    .end local v4    # "jcaPadding":Ljava/lang/String;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    .end local v9    # "transformation":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "NoPadding"

    #@c3
    .restart local v4    # "jcaPadding":Ljava/lang/String;
    goto :goto_0

    #@c4
    .line 144
    .end local v4    # "jcaPadding":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v4, "OAEPPadding"

    #@c7
    .restart local v4    # "jcaPadding":Ljava/lang/String;
    goto :goto_0

    #@c8
    .line 166
    .restart local v9    # "transformation":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@c9
    .line 167
    .local v3, "e":Ljava/security/InvalidKeyException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@cb
    const-string/jumbo v11, "Preferred provider doesn\'t support key:"

    #@ce
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d1
    .line 168
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    #@d4
    .line 169
    const/4 v0, 0x0

    #@d5
    .local v0, "c":Ljavax/crypto/Cipher;
    goto :goto_1

    #@d6
    .line 163
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    #@d7
    .line 164
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d9
    new-instance v11, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v12, "Unsupported cipher algorithm: "

    #@e1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v11

    #@e5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v11

    #@e9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v11

    #@ed
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f0
    .line 165
    const/4 v10, 0x0

    #@f1
    return-object v10

    #@f2
    .line 182
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .restart local v6    # "p":Ljava/security/Provider;
    .restart local v7    # "p$iterator":Ljava/util/Iterator;
    .restart local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :catch_2
    move-exception v2

    #@f3
    .line 183
    .restart local v2    # "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    #@f4
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    goto :goto_2

    #@f5
    .line 193
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "p":Ljava/security/Provider;
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@f8
    move-result-object v10

    #@f9
    return-object v10

    #@fa
    .line 194
    :catch_3
    move-exception v1

    #@fb
    .line 195
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@fd
    new-instance v11, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v12, "Exception while decrypting message with "

    #@105
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v11

    #@109
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@10c
    move-result-object v12

    #@10d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v11

    #@111
    .line 196
    const-string/jumbo v12, " private key using "

    #@114
    .line 195
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v11

    #@118
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v11

    #@11c
    .line 196
    const-string/jumbo v12, ":"

    #@11f
    .line 195
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v11

    #@123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v11

    #@127
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12a
    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@12d
    .line 198
    const/4 v10, 0x0

    #@12e
    return-object v10

    #@12f
    .line 136
    nop

    #@130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
