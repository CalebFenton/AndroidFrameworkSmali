.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PrivateKeyInfo.java"


# instance fields
.field private blacklist attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private blacklist privateKeyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 132
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 135
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 137
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getVersionValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)I

    move-result v1

    .line 139
    .local v1, "versionValue":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 142
    const/4 v2, -0x1

    .line 143
    .local v2, "lastTag":I
    :goto_2c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 145
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 147
    .local v3, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    .line 148
    .local v4, "tag":I
    if-le v4, v2, :cond_66

    .line 153
    move v2, v4

    .line 155
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_70

    .line 174
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unknown optional field in private key info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :pswitch_4c
    const/4 v6, 0x1

    if-lt v1, v6, :cond_56

    .line 169
    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 170
    goto :goto_65

    .line 166
    :cond_56
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :pswitch_5e
    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 160
    nop

    .line 177
    .end local v3    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v4    # "tag":I
    :goto_65
    goto :goto_2c

    .line 150
    .restart local v3    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v4    # "tag":I
    :cond_66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid optional field in private key info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    .end local v3    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v4    # "tag":I
    :cond_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_4c
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "privateKeyAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;[B)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .param p1, "privateKeyAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "attributes"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;[B)V

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;[B)V
    .registers 7
    .param p1, "privateKeyAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "attributes"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p4, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 124
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz p4, :cond_a

    sget-object v1, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    goto :goto_c

    :cond_a
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    :goto_c
    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 125
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 126
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 127
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 128
    if-nez p4, :cond_20

    const/4 v0, 0x0

    goto :goto_25

    :cond_20
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    :goto_25
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 129
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 73
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 78
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_8

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    return-object v0

    .line 82
    :cond_8
    if-eqz p0, :cond_14

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 87
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getVersionValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)I
    .registers 4
    .param p0, "version"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    .line 93
    .local v0, "versionValue":I
    if-ltz v0, :cond_a

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    .line 97
    return v0

    .line 95
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid version for private key info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getPrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 197
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getPrivateKeyLength()I
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctetsLength()I

    move-result v0

    return v0
.end method

.method public blacklist getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist hasPublicKey()Z
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 247
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 249
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 255
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 258
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_33

    .line 260
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    :cond_33
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
