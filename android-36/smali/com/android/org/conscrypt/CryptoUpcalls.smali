.class final Lcom/android/org/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "CryptoUpcalls.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/android/org/conscrypt/CryptoUpcalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist ecSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .registers 6
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B

    .line 65
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 70
    const-string v1, "NONEwithECDSA"

    invoke-static {p0, p1, v1}, Lcom/android/org/conscrypt/CryptoUpcalls;->signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 67
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getExternalProviders(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 52
    .local v4, "p":Ljava/security/Provider;
    invoke-static {v4}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 53
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v4    # "p":Ljava/security/Provider;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 56
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 57
    sget-object v1, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find external provider for algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 59
    :cond_3a
    return-object v0
.end method

.method static blacklist rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 4
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "input"    # [B

    .line 145
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/android/org/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B
    .registers 14
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "cipherMode"    # I
    .param p3, "input"    # [B

    .line 150
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 152
    sget-object v1, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 153
    return-object v2

    .line 157
    :cond_26
    packed-switch p1, :pswitch_data_11c

    .line 170
    :pswitch_29
    sget-object v1, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported OpenSSL/BoringSSL padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 171
    return-object v2

    .line 167
    :pswitch_42
    const-string v1, "OAEPPadding"

    .line 168
    .local v1, "jcaPadding":Ljava/lang/String;
    goto :goto_4b

    .line 164
    .end local v1    # "jcaPadding":Ljava/lang/String;
    :pswitch_45
    const-string v1, "NoPadding"

    .line 165
    .restart local v1    # "jcaPadding":Ljava/lang/String;
    goto :goto_4b

    .line 161
    .end local v1    # "jcaPadding":Ljava/lang/String;
    :pswitch_48
    const-string v1, "PKCS1Padding"

    .line 162
    .restart local v1    # "jcaPadding":Ljava/lang/String;
    nop

    .line 174
    :goto_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSA/ECB/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "transformation":Ljava/lang/String;
    :try_start_5e
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 182
    .local v4, "c":Ljavax/crypto/Cipher;
    invoke-virtual {v4, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 185
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v5
    :try_end_6d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_6d} :catch_102
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5e .. :try_end_6d} :catch_102
    .catch Ljava/security/InvalidKeyException; {:try_start_5e .. :try_end_6d} :catch_71

    if-eqz v5, :cond_70

    .line 186
    const/4 v4, 0x0

    .line 194
    :cond_70
    goto :goto_7d

    .line 191
    .end local v4    # "c":Ljavax/crypto/Cipher;
    :catch_71
    move-exception v4

    .line 192
    .local v4, "e":Ljava/security/InvalidKeyException;
    sget-object v5, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Preferred provider doesn\'t support key:"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    const/4 v5, 0x0

    move-object v4, v5

    .line 198
    .local v4, "c":Ljavax/crypto/Cipher;
    :goto_7d
    if-nez v4, :cond_cd

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cipher."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    .line 202
    .local v7, "p":Ljava/security/Provider;
    :try_start_a6
    invoke-static {v3, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v8

    move-object v4, v8

    .line 203
    invoke-virtual {v4, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_ae
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a6 .. :try_end_ae} :catch_af
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a6 .. :try_end_ae} :catch_af
    .catch Ljava/security/InvalidKeyException; {:try_start_a6 .. :try_end_ae} :catch_af

    .line 204
    goto :goto_b2

    .line 205
    :catch_af
    move-exception v8

    .line 207
    .local v8, "e":Ljava/security/GeneralSecurityException;
    const/4 v4, 0x0

    .line 209
    .end local v7    # "p":Ljava/security/Provider;
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_9a

    .line 210
    :cond_b2
    :goto_b2
    if-nez v4, :cond_cd

    .line 211
    sget-object v6, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find provider for algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 212
    return-object v2

    .line 217
    .end local v5    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    :cond_cd
    :try_start_cd
    invoke-virtual {v4, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d1} :catch_d2

    return-object v2

    .line 218
    :catch_d2
    move-exception v5

    .line 219
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while decrypting message with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " private key using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    return-object v2

    .line 188
    .end local v4    # "c":Ljavax/crypto/Cipher;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_102
    move-exception v4

    .line 189
    .local v4, "e":Ljava/security/GeneralSecurityException;
    sget-object v5, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported cipher algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 190
    return-object v2

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_29
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method static blacklist rsaSignDigestWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 4
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "message"    # [B

    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/org/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B
    .registers 10
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 82
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 85
    invoke-virtual {v1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v2
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_aa
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_10} :catch_14

    if-eqz v2, :cond_13

    .line 86
    const/4 v1, 0x0

    .line 95
    :cond_13
    goto :goto_21

    .line 91
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_14
    move-exception v1

    .line 92
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v2, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    const-string v3, "Preferred provider doesn\'t support key:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 94
    const/4 v2, 0x0

    move-object v1, v2

    .line 99
    .local v1, "signature":Ljava/security/Signature;
    :goto_21
    if-nez v1, :cond_7c

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    const/4 v3, 0x0

    .line 102
    .local v3, "savedRuntimeException":Ljava/lang/RuntimeException;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    .line 104
    .local v5, "p":Ljava/security/Provider;
    :try_start_4b
    invoke-static {p2, v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v6

    move-object v1, v6

    .line 105
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_53
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4b .. :try_end_53} :catch_5a
    .catch Ljava/security/InvalidKeyException; {:try_start_4b .. :try_end_53} :catch_5a
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_53} :catch_54

    .line 106
    goto :goto_5e

    .line 109
    :catch_54
    move-exception v6

    .line 110
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 111
    if-nez v3, :cond_5d

    .line 112
    move-object v3, v6

    goto :goto_5d

    .line 107
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_5a
    move-exception v6

    .line 108
    .local v6, "e":Ljava/security/GeneralSecurityException;
    const/4 v1, 0x0

    .line 114
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    nop

    .line 115
    .end local v5    # "p":Ljava/security/Provider;
    :cond_5d
    :goto_5d
    goto :goto_3f

    .line 116
    :cond_5e
    :goto_5e
    if-nez v1, :cond_7c

    .line 117
    if-nez v3, :cond_7b

    .line 120
    sget-object v4, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find provider for algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 121
    return-object v0

    .line 118
    :cond_7b
    throw v3

    .line 127
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    .end local v3    # "savedRuntimeException":Ljava/lang/RuntimeException;
    :cond_7c
    :try_start_7c
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 128
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_84

    return-object v0

    .line 129
    :catch_84
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while signing message with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 131
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " private key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    return-object v0

    .line 88
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_aa
    move-exception v1

    .line 89
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/android/org/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported signature algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 90
    return-object v0
.end method
