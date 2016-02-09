.class public Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Pfx.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 20
    const/4 v1, 0x0

    #@5
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@7
    .line 25
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    .line 26
    .local v0, "version":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@15
    move-result v1

    #@16
    if-eq v1, v2, :cond_0

    #@18
    .line 28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v2, "wrong version for PFX PDU"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 31
    :cond_0
    const/4 v1, 0x1

    #@22
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@2c
    .line 33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@2f
    move-result v1

    #@30
    if-ne v1, v2, :cond_1

    #@32
    .line 35
    const/4 v1, 0x2

    #@33
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@36
    move-result-object v1

    #@37
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@3d
    .line 23
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V
    .locals 1
    .param p1, "contentInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .param p2, "macData"    # Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 20
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@6
    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@8
    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@a
    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 52
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@2
    return-object v0
.end method

.method public getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 77
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    const-wide/16 v2, 0x3

    #@9
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 78
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 85
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@1f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@22
    return-object v1
.end method
