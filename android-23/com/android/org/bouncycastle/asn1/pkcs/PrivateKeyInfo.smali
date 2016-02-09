.class public Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PrivateKeyInfo.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 77
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    .line 79
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@11
    move-result-object v1

    #@12
    .line 80
    .local v1, "version":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v3, "wrong version for private key info"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 85
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2b
    .line 86
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@35
    .line 88
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@41
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@47
    .line 75
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 3
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@5
    invoke-interface {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "DER"

    #@c
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@15
    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@17
    .line 67
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@19
    .line 63
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 39
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 41
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 43
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 48
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getPrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 122
    :catch_0
    move-exception v0

    #@a
    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v2, "unable to parse private key"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
.end method

.method public getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 153
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    const-wide/16 v2, 0x0

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10
    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@17
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@20
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@22
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 162
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2a
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2d
    return-object v1
.end method
