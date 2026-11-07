.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSAPrivateKey.java"


# instance fields
.field private blacklist coefficient:Ljava/math/BigInteger;

.field private blacklist exponent1:Ljava/math/BigInteger;

.field private blacklist exponent2:Ljava/math/BigInteger;

.field private blacklist modulus:Ljava/math/BigInteger;

.field private blacklist otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist prime1:Ljava/math/BigInteger;

.field private blacklist prime2:Ljava/math/BigInteger;

.field private blacklist privateExponent:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;

.field private blacklist version:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 82
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    if-ltz v1, :cond_8e

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8e

    .line 88
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    .line 89
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 90
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    .line 91
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 92
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    .line 93
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    .line 94
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    .line 95
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    .line 96
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    .line 98
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 100
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    :cond_8d
    return-void

    .line 85
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for RSA private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const-wide/16 v0, 0x0

    .line 65
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 67
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    .line 68
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 69
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    .line 70
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    .line 71
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    .line 72
    iput-object p7, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    .line 73
    iput-object p8, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .registers 2

    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    if-eqz v0, :cond_7

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getCoefficient()Ljava/math/BigInteger;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getExponent1()Ljava/math/BigInteger;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getExponent2()Ljava/math/BigInteger;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getPrime1()Ljava/math/BigInteger;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getPrime2()Ljava/math/BigInteger;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getPrivateExponent()Ljava/math/BigInteger;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 173
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 175
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 179
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 181
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 183
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz p0, :cond_78

    .line 187
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    :cond_78
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
