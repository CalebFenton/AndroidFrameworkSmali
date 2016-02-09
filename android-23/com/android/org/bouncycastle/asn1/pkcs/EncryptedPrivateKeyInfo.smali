.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 25
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@11
    .line 26
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "encoding"    # [B

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@7
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c
    .line 31
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 40
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 42
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 44
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 49
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEncryptedData()[B
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 81
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
