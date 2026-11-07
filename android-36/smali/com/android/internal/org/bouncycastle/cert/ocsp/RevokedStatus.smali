.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;
.super Ljava/lang/Object;
.source "RevokedStatus.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;


# instance fields
.field blacklist info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "revocationDate"    # Ljava/util/Date;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;I)V
    .registers 6
    .param p1, "revocationDate"    # Ljava/util/Date;
    .param p2, "reason"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getRevocationReason()I
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 57
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get a reason where none is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRevocationTime()Ljava/util/Date;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasRevocationReason()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->info:Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
