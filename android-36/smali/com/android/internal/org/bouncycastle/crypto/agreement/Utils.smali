.class Lcom/android/internal/org/bouncycastle/crypto/agreement/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "k"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;

    .line 23
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static blacklist getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "k"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->AGREEMENT:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method
