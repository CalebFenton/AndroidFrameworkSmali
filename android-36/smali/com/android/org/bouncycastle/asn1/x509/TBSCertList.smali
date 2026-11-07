.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# instance fields
.field blacklist crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field blacklist nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field blacklist version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 177
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_b3

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 187
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move v0, v2

    goto :goto_2a

    :cond_27
    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    :goto_2a
    add-int/lit8 v1, v0, 0x1

    .line 194
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v3, v0, 0x2

    .line 195
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    add-int/lit8 v1, v0, 0x3

    .line 196
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 198
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 199
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v3, :cond_6c

    .line 200
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v3, :cond_6c

    .line 201
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v3, :cond_79

    :cond_6c
    add-int/lit8 v0, v0, 0x4

    .line 203
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    move v1, v0

    .line 206
    :cond_79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_94

    .line 207
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_94

    add-int/lit8 v0, v1, 0x1

    .line 209
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move v1, v0

    .line 212
    :cond_94
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_b2

    .line 213
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_b2

    .line 215
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    :cond_b2
    return-void

    .line 180
    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 2

    .line 163
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_7

    .line 165
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 169
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public blacklist getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public blacklist getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object p0
.end method

.method public blacklist getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez p0, :cond_b

    .line 274
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList-IA;)V

    return-object p0

    .line 277
    :cond_b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object p0
.end method

.method public blacklist getVersionNumber()I
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 225
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 287
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 289
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_d

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 293
    :cond_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_23

    .line 299
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 303
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2a

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 308
    :cond_2a
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_37

    .line 310
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 313
    :cond_37
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
