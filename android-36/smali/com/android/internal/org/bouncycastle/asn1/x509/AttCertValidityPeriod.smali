.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AttCertValidityPeriod.java"


# instance fields
.field blacklist notAfterTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field blacklist notBeforeTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 3
    .param p1, "notBeforeTime"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p2, "notAfterTime"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 55
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 57
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 46
    return-void

    .line 40
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 23
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    if-eqz v0, :cond_8

    .line 25
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    return-object v0

    .line 27
    :cond_8
    if-eqz p0, :cond_14

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getNotAfterTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist getNotBeforeTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 83
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
