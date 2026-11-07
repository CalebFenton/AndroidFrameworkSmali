.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private blacklist algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 31
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 39
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .registers 2

    .line 45
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_7

    .line 47
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getEncryptedData()[B
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 86
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
