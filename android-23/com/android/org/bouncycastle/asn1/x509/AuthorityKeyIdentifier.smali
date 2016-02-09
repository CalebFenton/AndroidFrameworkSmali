.class public Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 38
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    .line 39
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@9
    .line 40
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 72
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@e
    move-result-object v0

    #@f
    .line 74
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 76
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@1c
    move-result-object v1

    #@1d
    .line 78
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@20
    move-result v2

    #@21
    packed-switch v2, :pswitch_data_0

    #@24
    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v3, "illegal tag"

    #@29
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 81
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@33
    goto :goto_0

    #@34
    .line 84
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@37
    move-result-object v2

    #@38
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3a
    goto :goto_0

    #@3b
    .line 87
    :pswitch_2
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3e
    move-result-object v2

    #@3f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@41
    goto :goto_0

    #@42
    .line 70
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    #@43
    .line 78
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    check-cast v0, [B

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@6
    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 5
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 38
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    .line 39
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@9
    .line 40
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@e
    move-result-object v1

    #@f
    .line 114
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@12
    move-result v3

    #@13
    new-array v2, v3, [B

    #@15
    .line 116
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@1c
    move-result-object v0

    #@1d
    .line 117
    .local v0, "bytes":[B
    array-length v3, v0

    #@1e
    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@21
    .line 118
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@24
    .line 119
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@26
    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@29
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2b
    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 5
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 127
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 38
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    .line 39
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@9
    .line 40
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 133
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@e
    move-result-object v1

    #@f
    .line 135
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@12
    move-result v3

    #@13
    new-array v2, v3, [B

    #@15
    .line 137
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@1c
    move-result-object v0

    #@1d
    .line 138
    .local v0, "bytes":[B
    array-length v3, v0

    #@1e
    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@21
    .line 139
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@24
    .line 141
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@26
    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@29
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2b
    .line 142
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@35
    .line 143
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@37
    invoke-direct {v3, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3a
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3c
    .line 130
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "keyIdentifier"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 163
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    #@4
    .line 161
    return-void
.end method

.method public constructor <init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 38
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@6
    .line 39
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8
    .line 40
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    .line 175
    if-eqz p1, :cond_1

    #@c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@e
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@11
    :goto_0
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@13
    .line 176
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@15
    .line 177
    if-eqz p3, :cond_0

    #@17
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@19
    invoke-direct {v1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@1c
    :cond_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1e
    .line 173
    return-void

    #@1f
    :cond_1
    move-object v0, v1

    #@20
    .line 175
    goto :goto_0
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 54
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 56
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 61
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAuthorityCertIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 202
    :cond_0
    return-object v1
.end method

.method public getKeyIdentifier()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 184
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 187
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 210
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 212
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 214
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@e
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 219
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@1c
    const/4 v3, 0x1

    #@1d
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 224
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@29
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2b
    const/4 v3, 0x2

    #@2c
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@32
    .line 228
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@34
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@37
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AuthorityKeyIdentifier: KeyID("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ")"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
