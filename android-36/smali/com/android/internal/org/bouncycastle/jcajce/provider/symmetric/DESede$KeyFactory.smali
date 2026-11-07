.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyFactory"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 337
    const-string v0, "DESede"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 338
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 391
    instance-of v0, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v0, :cond_13

    .line 393
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    .line 394
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object v2

    const-string v3, "DESede"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 397
    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    :cond_13
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 8
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 345
    if-eqz p2, :cond_5d

    .line 349
    if-eqz p1, :cond_55

    .line 354
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 356
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 358
    :cond_18
    const-class v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 360
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 364
    .local v0, "bytes":[B
    :try_start_24
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3c

    .line 366
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 368
    .local v1, "longKey":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    const/16 v4, 0x8

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    new-instance v2, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    return-object v2

    .line 375
    .end local v1    # "longKey":[B
    :cond_3c
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_42

    return-object v1

    .line 378
    :catch_42
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_55
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_5d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec parameter is null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
