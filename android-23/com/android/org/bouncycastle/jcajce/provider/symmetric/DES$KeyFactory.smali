.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 240
    const-string/jumbo v0, "DES"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@7
    .line 238
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    instance-of v1, p1, Ljavax/crypto/spec/DESKeySpec;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 284
    check-cast v0, Ljavax/crypto/spec/DESKeySpec;

    #@7
    .line 285
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@9
    invoke-virtual {v0}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "DES"

    #@10
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@13
    return-object v1

    #@14
    .line 288
    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESKeySpec;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    if-nez p2, :cond_0

    #@2
    .line 250
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v3, "keySpec parameter is null"

    #@7
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 252
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 254
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@f
    const-string/jumbo v3, "key parameter is null"

    #@12
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 257
    :cond_1
    const-class v2, Ljavax/crypto/spec/SecretKeySpec;

    #@18
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 259
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    #@20
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@23
    move-result-object v3

    #@24
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyFactory;->algName:Ljava/lang/String;

    #@26
    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@29
    return-object v2

    #@2a
    .line 261
    :cond_2
    const-class v2, Ljavax/crypto/spec/DESKeySpec;

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 263
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@35
    move-result-object v0

    #@36
    .line 267
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    #@38
    invoke-direct {v2, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    return-object v2

    #@3c
    .line 270
    :catch_0
    move-exception v1

    #@3d
    .line 271
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@3f
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2

    #@47
    .line 275
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@49
    const-string/jumbo v3, "Invalid KeySpec"

    #@4c
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v2
.end method
