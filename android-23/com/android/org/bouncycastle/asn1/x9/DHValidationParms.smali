.class public Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DHValidationParms.java"


# instance fields
.field private pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private seed:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad sequence size: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 58
    :cond_0
    const/4 v0, 0x0

    #@29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@33
    .line 59
    const/4 v0, 0x1

    #@34
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3e
    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 2
    .param p1, "seed"    # Lcom/android/org/bouncycastle/asn1/DERBitString;
    .param p2, "pgenCounter"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 38
    if-nez p1, :cond_0

    #@5
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "\'seed\' cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 42
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "\'pgenCounter\' cannot be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 47
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@1b
    .line 48
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    .line 36
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 26
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 28
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 33
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getPgenCounter()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getSeed()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 75
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
