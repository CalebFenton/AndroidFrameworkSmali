.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Request.java"


# instance fields
.field blacklist reqCert:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

.field blacklist singleRequestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->reqCert:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 35
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 37
    nop

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 37
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 40
    :cond_23
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 3
    .param p1, "reqCert"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .param p2, "singleRequestExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->reqCert:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 27
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 28
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    if-eqz v0, :cond_8

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    return-object v0

    .line 56
    :cond_8
    if-eqz p0, :cond_14

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getReqCert()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->reqCert:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public blacklist getSingleRequestExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 86
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->reqCert:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_1b

    .line 90
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    :cond_1b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
