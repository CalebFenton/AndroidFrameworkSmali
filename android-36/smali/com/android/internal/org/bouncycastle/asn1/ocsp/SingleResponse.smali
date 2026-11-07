.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SingleResponse.java"


# instance fields
.field private blacklist certID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

.field private blacklist certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

.field private blacklist nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field private blacklist singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 61
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    .line 64
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-le v1, v3, :cond_47

    .line 68
    nop

    .line 69
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 68
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 70
    nop

    .line 71
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 70
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    goto :goto_66

    .line 73
    :cond_47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_66

    .line 75
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 77
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_60

    .line 79
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_66

    .line 83
    :cond_60
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 86
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_66
    :goto_66
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 6
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .param p3, "thisUpdate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "nextUpdate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p5, "singleExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    .line 53
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    .line 54
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 55
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 56
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 12
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .param p3, "thisUpdate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "nextUpdate"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p5, "singleExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    .line 42
    invoke-static {p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "certID":Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .end local p2    # "certStatus":Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .end local p3    # "thisUpdate":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local p4    # "nextUpdate":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v1, "certID":Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .local v2, "certStatus":Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .local v3, "thisUpdate":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v4, "nextUpdate":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 43
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 92
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    if-eqz v0, :cond_8

    .line 100
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    return-object v0

    .line 102
    :cond_8
    if-eqz p0, :cond_14

    .line 104
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 107
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCertID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public blacklist getCertStatus()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    return-object v0
.end method

.method public blacklist getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist getSingleExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 148
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 150
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 156
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_25
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_33

    .line 161
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_33
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
