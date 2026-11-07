.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPrivateKeyParameters.java"


# instance fields
.field private final blacklist d:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 4
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePrivateScalar(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getD()Ljava/math/BigInteger;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->d:Ljava/math/BigInteger;

    return-object v0
.end method
