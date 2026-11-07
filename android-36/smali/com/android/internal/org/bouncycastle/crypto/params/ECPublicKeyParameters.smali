.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPublicKeyParameters.java"


# instance fields
.field private final blacklist q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 4
    .param p1, "q"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->validatePublicPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->q:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
