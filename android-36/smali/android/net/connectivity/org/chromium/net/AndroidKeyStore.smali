.class public Landroid/net/connectivity/org/chromium/net/AndroidKeyStore;
.super Ljava/lang/Object;
.source "AndroidKeyStore.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net::android"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist encryptWithPrivateKey(Ljava/security/PrivateKey;Ljava/lang/String;[B)[B
    .registers 9
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .line 123
    const-string v0, "AndroidKeyStore"

    const/4 v1, 0x0

    .line 125
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_8} :catch_54
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_8} :catch_54

    .line 129
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .local v3, "cipher":Ljavax/crypto/Cipher;
    nop

    .line 132
    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {v3, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 133
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    return-object v0

    .line 134
    :catch_12
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while encrypting input with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " private key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v0, v4}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v2

    .line 126
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .local v1, "cipher":Ljavax/crypto/Cipher;
    :catch_54
    move-exception v3

    .line 127
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cipher "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v2
.end method

.method private static blacklist getPrivateKeyClassName(Ljava/security/PrivateKey;)Ljava/lang/String;
    .registers 2
    .param p0, "privateKey"    # Ljava/security/PrivateKey;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist privateKeySupportsCipher(Ljava/security/PrivateKey;Ljava/lang/String;)Z
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 62
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_9} :catch_2f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_9} :catch_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_9} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    .line 68
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    nop

    .line 69
    return v2

    .line 65
    :catch_b
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking support for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidKeyStore"

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v0

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2f
    move-exception v1

    .line 64
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return v0
.end method

.method private static blacklist privateKeySupportsSignature(Ljava/security/PrivateKey;Ljava/lang/String;)Z
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 41
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_8} :catch_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_8} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_b

    .line 47
    .end local v1    # "signature":Ljava/security/Signature;
    nop

    .line 48
    const/4 v0, 0x1

    return v0

    .line 44
    :catch_b
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking support for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidKeyStore"

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v0

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2f
    move-exception v1

    .line 43
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return v0
.end method

.method private static blacklist signWithPrivateKey(Ljava/security/PrivateKey;Ljava/lang/String;[B)[B
    .registers 9
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .line 85
    const-string v0, "AndroidKeyStore"

    const/4 v1, 0x0

    .line 87
    .local v1, "signature":Ljava/security/Signature;
    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_8} :catch_56

    .line 91
    .end local v1    # "signature":Ljava/security/Signature;
    .local v3, "signature":Ljava/security/Signature;
    nop

    .line 94
    :try_start_9
    invoke-virtual {v3, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 95
    invoke-virtual {v3, p2}, Ljava/security/Signature;->update([B)V

    .line 96
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    .line 97
    :catch_14
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while signing message with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " private key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v0, v4}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v2

    .line 88
    .end local v3    # "signature":Ljava/security/Signature;
    .local v1, "signature":Ljava/security/Signature;
    :catch_56
    move-exception v3

    .line 89
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v2
.end method
