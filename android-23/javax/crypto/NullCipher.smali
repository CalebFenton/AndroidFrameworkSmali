.class public Ljavax/crypto/NullCipher;
.super Ljavax/crypto/Cipher;
.source "NullCipher.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 41
    new-instance v1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    #@3
    invoke-direct {v1}, Lorg/apache/harmony/crypto/internal/NullCipherSpi;-><init>()V

    #@6
    invoke-direct {p0, v1, v2, v2}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@9
    .line 43
    const/4 v1, 0x0

    #@a
    :try_start_0
    check-cast v1, Ljava/security/Key;

    #@c
    const/4 v2, 0x0

    #@d
    check-cast v2, Ljava/security/SecureRandom;

    #@f
    const/4 v3, 0x1

    #@10
    invoke-virtual {p0, v3, v1, v2}, Ljavax/crypto/NullCipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 40
    :goto_0
    return-void

    #@14
    .line 44
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Ljava/security/InvalidKeyException;
    goto :goto_0
.end method
