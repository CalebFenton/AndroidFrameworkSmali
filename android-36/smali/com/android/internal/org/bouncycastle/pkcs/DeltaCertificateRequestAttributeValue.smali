.class public Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
.super Ljava/lang/Object;
.source "DeltaCertificateRequestAttributeValue.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private final blacklist attrSeq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private final blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private final blacklist signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private final blacklist subjectPKInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 10
    .param p1, "attrSeq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->attrSeq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "idx":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 45
    :cond_21
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 48
    :goto_24
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subjectPKInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 49
    add-int/2addr v0, v3

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    const/4 v4, 0x0

    .line 54
    .local v4, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v0, v5, :cond_68

    .line 56
    :goto_37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v0, v5, :cond_68

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 59
    .local v5, "tagObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-ne v6, v3, :cond_50

    .line 61
    invoke-static {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    goto :goto_5b

    .line 63
    :cond_50
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5f

    .line 65
    invoke-static {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 71
    :goto_5b
    nop

    .end local v5    # "tagObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_37

    .line 69
    .restart local v5    # "tagObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v5    # "tagObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_68
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 76
    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)V
    .registers 4
    .param p1, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPKInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subjectPKInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->attrSeq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
