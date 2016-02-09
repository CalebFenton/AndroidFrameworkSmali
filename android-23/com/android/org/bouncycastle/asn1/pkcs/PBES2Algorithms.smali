.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;
.super Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@3
    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 29
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    .line 31
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@15
    .line 33
    .local v2, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@18
    move-result-object v0

    #@19
    .line 35
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1f
    .line 37
    .local v1, "funcSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    #@20
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@23
    move-result-object v3

    #@24
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 39
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@2e
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30
    const/4 v5, 0x1

    #@31
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@34
    move-result-object v5

    #@35
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    #@38
    move-result-object v5

    #@39
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3c
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@3e
    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@45
    move-result-object v3

    #@46
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@48
    .line 23
    return-void

    #@49
    .line 43
    :cond_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@4c
    move-result-object v3

    #@4d
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@4f
    goto :goto_0
.end method


# virtual methods
.method public getASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 66
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 67
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@7
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@a
    .line 69
    .local v0, "subV":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 71
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@11
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 72
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@16
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@19
    .line 73
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@1b
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@21
    .line 75
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@23
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@26
    return-object v2
.end method

.method public getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@2
    return-object v0
.end method

.method public getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@2
    return-object v0
.end method

.method public getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method
