.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSASSAPSSparams.java"


# static fields
.field public static final DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field public static final DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@11
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@16
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@18
    const-wide/16 v2, 0x14

    #@1a
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@1d
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1f
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    const-wide/16 v2, 0x1

    #@23
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@28
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13
    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 71
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    .line 72
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    .line 73
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@10
    .line 74
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@14
    .line 76
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@18
    move-result v2

    #@19
    if-eq v0, v2, :cond_0

    #@1b
    .line 78
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@21
    .line 80
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@24
    move-result v2

    #@25
    packed-switch v2, :pswitch_data_0

    #@28
    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v3, "unknown tag"

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 83
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@37
    .line 76
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 86
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@40
    goto :goto_1

    #@41
    .line 89
    :pswitch_2
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@47
    goto :goto_1

    #@48
    .line 92
    :pswitch_3
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4e
    goto :goto_1

    #@4f
    .line 69
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    #@50
    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "maskGenAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "saltLength"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p4, "trailerField"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    .line 63
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 64
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    .line 65
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 60
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 33
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 35
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 42
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getSaltLength()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTrailerField()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 148
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 150
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 152
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 157
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@27
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@29
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@31
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_SALT_LENGTH:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@33
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_2

    #@39
    .line 162
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@3b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->saltLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3d
    const/4 v3, 0x2

    #@3e
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@41
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@44
    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@46
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@48
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_3

    #@4e
    .line 167
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@50
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->trailerField:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@52
    const/4 v3, 0x3

    #@53
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@56
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@59
    .line 170
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@5b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@5e
    return-object v1
.end method
