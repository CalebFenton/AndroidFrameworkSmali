.class abstract Lcom/android/org/bouncycastle/crypto/engines/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static blacklist getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 1

    if-eqz p0, :cond_5

    .line 10
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method
