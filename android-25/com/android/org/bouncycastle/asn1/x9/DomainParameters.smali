.class public Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DomainParameters.java"


# instance fields
.field private final g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 105
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x3

    #@9
    if-lt v2, v3, :cond_0

    #@b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x5

    #@10
    if-le v2, v3, :cond_1

    #@12
    .line 109
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Bad sequence size: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@23
    move-result v4

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@33
    move-result-object v0

    #@34
    .line 113
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3e
    .line 114
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@48
    .line 115
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4f
    move-result-object v2

    #@50
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@52
    .line 117
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@55
    move-result-object v1

    #@56
    .line 119
    .local v1, "next":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_2

    #@58
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5a
    if-eqz v2, :cond_2

    #@5c
    .line 121
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5f
    move-result-object v2

    #@60
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@62
    .line 122
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@65
    move-result-object v1

    #@66
    .line 129
    :goto_0
    if-eqz v1, :cond_3

    #@68
    .line 131
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6b
    move-result-object v2

    #@6c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@72
    .line 105
    :goto_1
    return-void

    #@73
    .line 126
    :cond_2
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@75
    goto :goto_0

    #@76
    .line 135
    :cond_3
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@78
    goto :goto_1
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validationParams"    # Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 77
    if-nez p1, :cond_0

    #@6
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "\'p\' cannot be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 81
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "\'g\' cannot be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 85
    :cond_1
    if-nez p3, :cond_2

    #@1c
    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "\'q\' cannot be null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 90
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@27
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@2a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2c
    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2e
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@33
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@35
    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@38
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3a
    .line 94
    if-eqz p4, :cond_3

    #@3c
    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3e
    invoke-direct {v0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@41
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@43
    .line 102
    :goto_0
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@45
    .line 75
    return-void

    #@46
    .line 100
    :cond_3
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@48
    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 53
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 55
    nop

    #@6
    nop

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 57
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 62
    :cond_1
    return-object v1
.end method

.method private static getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 141
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getJ()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 183
    return-object v1

    #@6
    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidationParams()Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 206
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 207
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 208
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 209
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 211
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 213
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 218
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@26
    .line 221
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@28
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2b
    return-object v1
.end method
