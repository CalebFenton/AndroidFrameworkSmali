.class public Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "BasicConstraints.java"


# instance fields
.field cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "pathLenConstraint"    # I

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 17
    const/4 v0, 0x0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@a
    .line 18
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    .line 106
    const/4 v0, 0x1

    #@e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@14
    .line 107
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@16
    int-to-long v2, p1

    #@17
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1c
    .line 104
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@6
    .line 17
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@c
    .line 18
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@e
    .line 54
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 56
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@16
    .line 57
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@18
    .line 52
    :cond_0
    :goto_0
    return-void

    #@19
    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c
    move-result-object v0

    #@1d
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 63
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@2b
    .line 70
    :goto_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@2e
    move-result v0

    #@2f
    if-le v0, v3, :cond_0

    #@31
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 74
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3f
    goto :goto_0

    #@40
    .line 67
    :cond_2
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@42
    .line 68
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4c
    goto :goto_1

    #@4d
    .line 78
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4f
    const-string/jumbo v1, "wrong sequence in constructor"

    #@52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "cA"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 17
    const/4 v0, 0x0

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@b
    .line 18
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    .line 87
    if-eqz p1, :cond_0

    #@f
    .line 89
    const/4 v0, 0x1

    #@10
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@16
    .line 95
    :goto_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@18
    .line 85
    return-void

    #@19
    .line 93
    :cond_0
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@1b
    goto :goto_0
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
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
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 36
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    #@19
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@1b
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@22
    return-object v0

    #@23
    .line 43
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 122
    :cond_0
    return-object v1
.end method

.method public isCA()Z
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 138
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 140
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 145
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@17
    .line 148
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@19
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1c
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 157
    const-string/jumbo v0, "BasicConstraints: isCa(false)"

    #@b
    return-object v0

    #@c
    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "BasicConstraints: isCa("

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@1b
    move-result v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, ")"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v1, "BasicConstraints: isCa("

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@3b
    move-result v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, "), pathLenConstraint = "

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@49
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method
