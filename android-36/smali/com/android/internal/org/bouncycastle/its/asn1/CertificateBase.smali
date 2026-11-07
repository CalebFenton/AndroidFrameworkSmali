.class public Lcom/android/internal/org/bouncycastle/its/asn1/CertificateBase;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertificateBase.java"


# instance fields
.field private blacklist type:Lcom/android/internal/org/bouncycastle/its/asn1/CertificateType;

.field private blacklist version:[B


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 29
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/CertificateBase;
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;

    .line 35
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/ImplicitCertificate;

    if-eqz v0, :cond_8

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/ImplicitCertificate;

    return-object v0

    .line 39
    :cond_8
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/ExplicitCertificate;

    if-eqz v0, :cond_10

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/ExplicitCertificate;

    return-object v0

    .line 44
    :cond_10
    if-eqz p0, :cond_42

    .line 46
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 48
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/its/asn1/CertificateType;->Implicit:Lcom/android/internal/org/bouncycastle/its/asn1/CertificateType;

    invoke-interface {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 50
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/ImplicitCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/CertificateBase;

    move-result-object v1

    return-object v1

    .line 52
    :cond_28
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/its/asn1/CertificateType;->Explicit:Lcom/android/internal/org/bouncycastle/its/asn1/CertificateType;

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 54
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/ExplicitCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/CertificateBase;

    move-result-object v1

    return-object v1

    .line 56
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unknown certificate type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
