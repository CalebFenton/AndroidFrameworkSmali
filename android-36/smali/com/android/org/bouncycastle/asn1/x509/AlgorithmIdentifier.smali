.class public Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AlgorithmIdentifier.java"


# instance fields
.field private blacklist algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor greylist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor greylist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2d

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2d

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_29

    .line 73
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_29
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 65
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_7

    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 103
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz p0, :cond_12

    .line 107
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_12
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
