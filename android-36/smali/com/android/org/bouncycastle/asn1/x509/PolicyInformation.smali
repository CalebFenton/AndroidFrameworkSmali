.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PolicyInformation.java"


# instance fields
.field private blacklist policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2d

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2d

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_2c

    .line 33
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    :cond_2c
    return-void

    .line 25
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .registers 2

    if-eqz p0, :cond_11

    .line 54
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v0, :cond_7

    goto :goto_11

    .line 59
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 56
    :cond_11
    :goto_11
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    return-object p0
.end method


# virtual methods
.method public blacklist getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 84
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz p0, :cond_12

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    :cond_12
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    const-string v1, "Policy information: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_49

    .line 103
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 104
    :goto_19
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 108
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_2c
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 113
    :cond_3c
    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
