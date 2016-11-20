.class public Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CMSAlgorithmProtection.java"


# static fields
.field public static final MAC:I = 0x2

.field public static final SIGNATURE:I = 0x1


# instance fields
.field private final digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "sequence"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@7
    .line 64
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@a
    move-result v1

    #@b
    if-eq v1, v4, :cond_0

    #@d
    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "Sequence wrong size: One of signatureAlgorithm or macAlgorithm must be present"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 69
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    .line 71
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@27
    move-result-object v0

    #@28
    .line 72
    .local v0, "tagged":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@2b
    move-result v1

    #@2c
    if-ne v1, v3, :cond_1

    #@2e
    .line 74
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@34
    .line 75
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@36
    .line 62
    :goto_0
    return-void

    #@37
    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@3a
    move-result v1

    #@3b
    if-ne v1, v4, :cond_2

    #@3d
    .line 79
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3f
    .line 81
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@45
    goto :goto_0

    #@46
    .line 85
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "Unknown tag found: "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@57
    move-result v3

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;ILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 3
    .param p1, "digestAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "type"    # I
    .param p3, "algorithmIdentifier"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 39
    if-eqz p1, :cond_0

    #@6
    if-nez p3, :cond_1

    #@8
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "AlgorithmIdentifiers cannot be null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 44
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@13
    .line 46
    const/4 v0, 0x1

    #@14
    if-ne p2, v0, :cond_2

    #@16
    .line 48
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@18
    .line 49
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1a
    .line 37
    :goto_0
    return-void

    #@1b
    .line 51
    :cond_2
    const/4 v0, 0x2

    #@1c
    if-ne p2, v0, :cond_3

    #@1e
    .line 53
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    .line 54
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    goto :goto_0

    #@23
    .line 58
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Unknown type: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 94
    nop

    #@6
    nop

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 96
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 101
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getMacAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 124
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 127
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@11
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->signatureAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@13
    const/4 v3, 0x1

    #@14
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@17
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 131
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@20
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    const/4 v3, 0x2

    #@23
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@26
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@29
    .line 134
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2e
    return-object v1
.end method
