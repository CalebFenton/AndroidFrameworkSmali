.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptedData.java"


# instance fields
.field blacklist data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 61
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-void

    .line 63
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence not version 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .registers 2

    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    if-eqz v0, :cond_7

    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 97
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 107
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 109
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
