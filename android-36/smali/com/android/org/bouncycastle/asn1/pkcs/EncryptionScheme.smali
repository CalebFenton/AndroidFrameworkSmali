.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptionScheme.java"


# instance fields
.field private blacklist algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .registers 2

    .line 40
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    if-eqz v0, :cond_7

    .line 42
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method
