.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PBES2Parameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist func:Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private blacklist scheme:Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 48
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 50
    .local v1, "funcSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->id_PBKDF2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 52
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->id_PBKDF2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_3b

    .line 56
    :cond_35
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 59
    :goto_3b
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;)V
    .registers 3
    .param p1, "keyDevFunc"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .param p2, "encScheme"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 41
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 42
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 26
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    if-eqz v0, :cond_8

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    return-object v0

    .line 30
    :cond_8
    if-eqz p0, :cond_14

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 35
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEncryptionScheme()Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method

.method public blacklist getKeyDerivationFunc()Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 74
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 76
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
