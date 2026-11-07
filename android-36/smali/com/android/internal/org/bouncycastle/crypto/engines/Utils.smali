.class Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 2
    .param p0, "forEncryption"    # Z

    .line 10
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    :goto_7
    return-object v0
.end method
