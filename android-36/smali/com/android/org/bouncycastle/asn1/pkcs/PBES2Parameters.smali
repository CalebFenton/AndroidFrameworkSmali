.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PBES2Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private blacklist scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 52
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_39

    .line 56
    :cond_33
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 59
    :goto_39
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    .registers 2

    .line 26
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    if-eqz v0, :cond_7

    .line 28
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object p0
.end method

.method public blacklist getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
