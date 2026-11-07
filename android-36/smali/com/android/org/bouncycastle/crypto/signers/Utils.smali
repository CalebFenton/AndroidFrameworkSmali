.class abstract Lcom/android/org/bouncycastle/crypto/signers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static blacklist getDefaultProperties(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;Z)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/signers/Utils;->getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static blacklist getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 1

    if-eqz p0, :cond_5

    .line 39
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method
