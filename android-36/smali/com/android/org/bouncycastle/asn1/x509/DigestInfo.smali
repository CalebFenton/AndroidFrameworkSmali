.class public Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DigestInfo.java"


# instance fields
.field private blacklist algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist digest:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .registers 2

    .line 41
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    if-eqz v0, :cond_7

    .line 43
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getDigest()[B
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 85
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
