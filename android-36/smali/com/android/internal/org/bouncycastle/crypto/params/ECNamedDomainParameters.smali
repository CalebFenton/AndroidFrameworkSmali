.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
.source "ECNamedDomainParameters.java"


# instance fields
.field private blacklist name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .registers 3
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "x9"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 45
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 9
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "domainParameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 39
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 40
    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 12
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    .line 22
    sget-object v5, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "name":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local p2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .local v1, "name":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v3, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v4, "n":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 13
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    .line 27
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "name":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local p2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .end local p5    # "h":Ljava/math/BigInteger;
    .local v1, "name":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v3, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v4, "n":Ljava/math/BigInteger;
    .local v5, "h":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 13
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    .line 32
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .end local p5    # "h":Ljava/math/BigInteger;
    .end local p6    # "seed":[B
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v2, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v3, "n":Ljava/math/BigInteger;
    .local v4, "h":Ljava/math/BigInteger;
    .local v5, "seed":[B
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 34
    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
