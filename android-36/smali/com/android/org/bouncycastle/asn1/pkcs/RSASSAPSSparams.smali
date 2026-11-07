.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSASSAPSSparams.java"


# static fields
.field public static final blacklist DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final blacklist DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final blacklist DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field public static final blacklist DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private blacklist hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 30
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x0

    .line 80
    :goto_14
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_55

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 84
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4c

    if-eq v2, v3, :cond_45

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3e

    const/4 v4, 0x3

    if-ne v2, v4, :cond_36

    .line 96
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_52

    .line 99
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_3e
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_52

    .line 90
    :cond_45
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_52

    .line 87
    :cond_4c
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_55
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 69
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .registers 2

    .line 37
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    if-eqz v0, :cond_7

    .line 39
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getSaltLength()Ljava/math/BigInteger;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTrailerField()Ljava/math/BigInteger;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 156
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 161
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_30
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 166
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    :cond_45
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 171
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x3

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    :cond_5a
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
