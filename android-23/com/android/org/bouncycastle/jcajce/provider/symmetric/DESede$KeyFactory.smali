.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
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
    .line 306
    const-string/jumbo v0, "DESede"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@7
    .line 304
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
    .line 360
    instance-of v1, p1, Ljavax/crypto/spec/DESedeKeySpec;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 362
    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    #@7
    .line 363
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@9
    invoke-virtual {v0}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "DESede"

    #@10
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@13
    return-object v1

    #@14
    .line 366
    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 314
    if-nez p2, :cond_0

    #@4
    .line 316
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@6
    const-string/jumbo v4, "keySpec parameter is null"

    #@9
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 318
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 320
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@11
    const-string/jumbo v4, "key parameter is null"

    #@14
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 323
    :cond_1
    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 325
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    #@22
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@25
    move-result-object v4

    #@26
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyFactory;->algName:Ljava/lang/String;

    #@28
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@2b
    return-object v3

    #@2c
    .line 327
    :cond_2
    const-class v3, Ljavax/crypto/spec/DESedeKeySpec;

    #@2e
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_4

    #@34
    .line 329
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@37
    move-result-object v0

    #@38
    .line 333
    .local v0, "bytes":[B
    :try_start_0
    array-length v3, v0

    #@39
    if-ne v3, v4, :cond_3

    #@3b
    .line 335
    const/16 v3, 0x18

    #@3d
    new-array v2, v3, [B

    #@3f
    .line 337
    .local v2, "longKey":[B
    const/4 v3, 0x0

    #@40
    const/4 v4, 0x0

    #@41
    const/16 v5, 0x10

    #@43
    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 338
    const/4 v3, 0x0

    #@47
    const/16 v4, 0x10

    #@49
    const/16 v5, 0x8

    #@4b
    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4e
    .line 340
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    #@50
    invoke-direct {v3, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    #@53
    return-object v3

    #@54
    .line 344
    .end local v2    # "longKey":[B
    :cond_3
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    #@56
    invoke-direct {v3, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    return-object v3

    #@5a
    .line 348
    :catch_0
    move-exception v1

    #@5b
    .line 349
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@5d
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@64
    throw v3

    #@65
    .line 353
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@67
    const-string/jumbo v4, "Invalid KeySpec"

    #@6a
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v3
.end method
