.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PBES2Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 44
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@d
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v2

    #@11
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@14
    move-result-object v1

    #@15
    .line 46
    .local v1, "funcSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    #@16
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 48
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@24
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    const/4 v4, 0x1

    #@27
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@32
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@34
    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@3e
    .line 41
    return-void

    #@3f
    .line 52
    :cond_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@42
    move-result-object v2

    #@43
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@45
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;)V
    .locals 0
    .param p1, "keyDevFunc"    # Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .param p2, "encScheme"    # Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@5
    .line 37
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@7
    .line 34
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 22
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 24
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 26
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 31
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@2
    return-object v0
.end method

.method public getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 72
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 73
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 75
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
