.class public Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SubjectPublicKeyInfo.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 70
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x2

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Bad sequence size: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 73
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v3

    #@1c
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@2b
    move-result-object v0

    #@2c
    .line 78
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@36
    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@40
    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # [B

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    .line 61
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 40
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 47
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getPublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@b
    .line 126
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@b
    .line 109
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 149
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 151
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 154
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
