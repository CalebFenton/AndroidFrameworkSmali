.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field blacklist certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 44
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 78
    .local v0, "e":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 80
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 82
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_44

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :pswitch_2c
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 92
    goto :goto_41

    .line 88
    :pswitch_33
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 89
    goto :goto_41

    .line 85
    :pswitch_3a
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 86
    nop

    .line 96
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_41
    goto :goto_e

    .line 97
    :cond_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 158
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 159
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 7
    .param p1, "spki"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 114
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 44
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 118
    .local v0, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 120
    .local v1, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    .line 121
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 122
    invoke-interface {v0, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 123
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 124
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "spki"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .line 135
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 44
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 138
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 139
    .local v1, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    .line 141
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v3

    .line 142
    .local v3, "bytes":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 143
    invoke-interface {v1, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 145
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 146
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 147
    if-eqz p3, :cond_34

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_34
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 148
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "keyIdentifier"    # [B

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 168
    return-void
.end method

.method public constructor blacklist <init>([BLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 7
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .line 178
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 43
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 44
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 179
    if-eqz p1, :cond_16

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 180
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 181
    if-eqz p3, :cond_22

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_22
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 182
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 50
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_8

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    return-object v0

    .line 60
    :cond_8
    if-eqz p0, :cond_14

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAuthorityCertIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 206
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyIdentifier()[B
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    .line 191
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 214
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 216
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 218
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_24

    .line 223
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_33

    .line 228
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_33
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "null"

    .line 239
    .local v0, "keyID":Ljava/lang/String;
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
