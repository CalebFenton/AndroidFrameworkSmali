.class public Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ECPrivateKey.java"


# instance fields
.field private blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor blacklist <init>(ILjava/math/BigInteger;)V
    .registers 8
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 74
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 76
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 10
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "publicKey"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .param p4, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 116
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 117
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 119
    .local v0, "bytes":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 121
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 122
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    const/4 v2, 0x1

    if-eqz p4, :cond_2f

    .line 126
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    :cond_2f
    if-eqz p3, :cond_39

    .line 131
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    :cond_39
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 135
    return-void
.end method

.method public constructor blacklist <init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "orderBitLength"    # I
    .param p2, "key"    # Ljava/math/BigInteger;
    .param p3, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "key"    # Ljava/math/BigInteger;

    .line 59
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "publicKey"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .param p3, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 100
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "parameters"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    if-eqz v0, :cond_8

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    return-object v0

    .line 45
    :cond_8
    if-eqz p0, :cond_14

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 50
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getObjectInTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 7
    .param p1, "tagNo"    # I
    .param p2, "baseTagNo"    # I

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 167
    .local v0, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 169
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 171
    .local v1, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_30

    .line 173
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 174
    .local v2, "tag":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 176
    if-gez p2, :cond_2a

    .line 177
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    goto :goto_2f

    .line 178
    :cond_2a
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 176
    :goto_2f
    return-object v3

    .line 181
    .end local v1    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v2    # "tag":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_30
    goto :goto_6

    .line 182
    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist getKey()Ljava/math/BigInteger;
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 141
    .local v0, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getParametersObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParametersObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 160
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getObjectInTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getObjectInTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
