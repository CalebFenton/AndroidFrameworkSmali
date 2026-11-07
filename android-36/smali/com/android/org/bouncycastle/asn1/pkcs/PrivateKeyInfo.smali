.class public Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PrivateKeyInfo.java"


# instance fields
.field private blacklist attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private blacklist privateKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

.field private blacklist version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    .line 132
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 137
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getVersionValue(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    .line 139
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 140
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, -0x1

    .line 143
    :goto_2a
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 145
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 147
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-le v3, v1, :cond_63

    const/4 v1, 0x0

    if-eqz v3, :cond_5b

    const/4 v4, 0x1

    if-ne v3, v4, :cond_53

    if-lt v0, v4, :cond_4b

    .line 169
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    goto :goto_61

    .line 166
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown optional field in private key info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_5b
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    :goto_61
    move v1, v3

    goto :goto_2a

    .line 150
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid optional field in private key info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz p4, :cond_a

    sget-object v1, Lcom/android/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    goto :goto_c

    :cond_a
    sget-object v1, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    :goto_c
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 125
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 126
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 127
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-nez p4, :cond_20

    const/4 p1, 0x0

    goto :goto_25

    .line 128
    :cond_20
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {p1, p4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    :goto_25
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 2

    .line 73
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 2

    .line 78
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_7

    .line 80
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getVersionValue(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)I
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    if-ltz p0, :cond_a

    const/4 v0, 0x1

    if-gt p0, v0, :cond_a

    return p0

    .line 95
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public blacklist getPrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 197
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getPrivateKeyLength()I
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctetsLength()I

    move-result p0

    return p0
.end method

.method public blacklist getPublicKeyData()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public blacklist getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public blacklist hasPublicKey()Z
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 247
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 249
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 255
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 258
    :cond_22
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz p0, :cond_2f

    .line 260
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    :cond_2f
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
