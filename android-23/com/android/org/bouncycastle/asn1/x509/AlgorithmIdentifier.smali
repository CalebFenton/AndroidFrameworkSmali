.class public Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AlgorithmIdentifier.java"


# instance fields
.field private objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private parametersDefined:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "objectId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 18
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@6
    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "objectId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 18
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@6
    .line 70
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@9
    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    .line 72
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@d
    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@6
    .line 18
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@8
    .line 82
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@b
    move-result v0

    #@c
    if-lt v0, v1, :cond_0

    #@e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@11
    move-result v0

    #@12
    if-le v0, v3, :cond_1

    #@14
    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Bad sequence size: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@25
    move-result v2

    #@26
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 88
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35
    move-result-object v0

    #@36
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 90
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3f
    move-result v0

    #@40
    if-ne v0, v3, :cond_2

    #@42
    .line 92
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@44
    .line 93
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4a
    .line 80
    :goto_0
    return-void

    #@4b
    .line 97
    :cond_2
    const/4 v0, 0x0

    #@4c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4e
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 18
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@6
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    .line 61
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 30
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 32
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@f
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@14
    return-object v0

    #@15
    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1b
    check-cast p0, Ljava/lang/String;

    #@1d
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    #@20
    return-object v0

    #@21
    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@23
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@2a
    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    #@0
    .prologue
    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 132
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 134
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 136
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 138
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@17
    .line 146
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@19
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1c
    return-object v1

    #@1d
    .line 142
    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@22
    goto :goto_0
.end method
