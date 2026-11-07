.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RSAPrivateKey.java"


# instance fields
.field private blacklist coefficient:Ljava/math/BigInteger;

.field private blacklist exponent1:Ljava/math/BigInteger;

.field private blacklist exponent2:Ljava/math/BigInteger;

.field private blacklist modulus:Ljava/math/BigInteger;

.field private blacklist otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist prime1:Ljava/math/BigInteger;

.field private blacklist prime2:Ljava/math/BigInteger;

.field private blacklist privateExponent:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;

.field private blacklist version:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 81
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 82
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 83
    .local v2, "versionValue":I
    if-ltz v2, :cond_8e

    const/4 v3, 0x1

    if-gt v2, v3, :cond_8e

    .line 88
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    .line 89
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 92
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    .line 94
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    .line 96
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    .line 98
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 100
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 102
    :cond_8d
    return-void

    .line 85
    :cond_8e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong version for RSA private key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "prime1"    # Ljava/math/BigInteger;
    .param p5, "prime2"    # Ljava/math/BigInteger;
    .param p6, "exponent1"    # Ljava/math/BigInteger;
    .param p7, "exponent2"    # Ljava/math/BigInteger;
    .param p8, "coefficient"    # Ljava/math/BigInteger;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 65
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 67
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    .line 68
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 69
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    .line 70
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    .line 71
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    .line 72
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    .line 73
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    .line 74
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 36
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    if-eqz v0, :cond_8

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    return-object v0

    .line 47
    :cond_8
    if-eqz p0, :cond_14

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getExponent1()Ljava/math/BigInteger;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getExponent2()Ljava/math/BigInteger;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrime1()Ljava/math/BigInteger;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrime2()Ljava/math/BigInteger;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrivateExponent()Ljava/math/BigInteger;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/math/BigInteger;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 173
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 175
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 179
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 181
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 183
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_7a

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    :cond_7a
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
