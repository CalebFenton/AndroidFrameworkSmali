.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Signature.java"


# instance fields
.field blacklist certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2c

    .line 50
    nop

    .line 51
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 50
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 53
    :cond_2c
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .registers 3
    .param p1, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 27
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .param p3, "certs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 36
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 39
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 40
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 59
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 65
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    if-eqz v0, :cond_8

    .line 67
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    return-object v0

    .line 69
    :cond_8
    if-eqz p0, :cond_14

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 74
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 105
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->signature:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_20

    .line 110
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->certs:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    :cond_20
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
