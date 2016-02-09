.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSAESOAEPparams.java"


# static fields
.field public static final DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@11
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@16
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@18
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@1c
    const/4 v3, 0x0

    #@1d
    new-array v3, v3, [B

    #@1f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@22
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@25
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@27
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@f
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 68
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    .line 69
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    .line 70
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@10
    .line 72
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@14
    move-result v2

    #@15
    if-eq v0, v2, :cond_0

    #@17
    .line 74
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@1d
    .line 76
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@20
    move-result v2

    #@21
    packed-switch v2, :pswitch_data_0

    #@24
    .line 88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v3, "unknown tag"

    #@29
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 79
    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@33
    .line 72
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 82
    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3c
    goto :goto_1

    #@3d
    .line 85
    :pswitch_2
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@40
    move-result-object v2

    #@41
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@43
    goto :goto_1

    #@44
    .line 66
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    #@45
    .line 76
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "maskGenAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "pSourceAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    .line 57
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 58
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 31
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 38
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getPSourceAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 138
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_HASH_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 140
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->hashAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_MASK_GEN_FUNCTION:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 145
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@27
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->maskGenAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@29
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@31
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@33
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_2

    #@39
    .line 150
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@3b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAESOAEPparams;->pSourceAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3d
    const/4 v3, 0x2

    #@3e
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@41
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@44
    .line 153
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@46
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@49
    return-object v1
.end method
