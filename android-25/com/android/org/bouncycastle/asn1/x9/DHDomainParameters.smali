.class public Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p2, "g"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "q"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p4, "j"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p5, "validationParms"    # Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 71
    if-nez p1, :cond_0

    #@5
    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "\'p\' cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 75
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "\'g\' cannot be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 79
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "\'q\' cannot be null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 84
    :cond_2
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@26
    .line 85
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@28
    .line 86
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2a
    .line 87
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2c
    .line 88
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@2e
    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x3

    #@8
    if-lt v2, v3, :cond_0

    #@a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x5

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 95
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Bad sequence size: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@32
    move-result-object v0

    #@33
    .line 99
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3a
    move-result-object v2

    #@3b
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3d
    .line 100
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@47
    .line 101
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4e
    move-result-object v2

    #@4f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@51
    .line 103
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@54
    move-result-object v1

    #@55
    .line 105
    .local v1, "next":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_2

    #@57
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@59
    if-eqz v2, :cond_2

    #@5b
    .line 107
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@61
    .line 108
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@64
    move-result-object v1

    #@65
    .line 111
    :cond_2
    if-eqz v1, :cond_3

    #@67
    .line 113
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6a
    move-result-object v2

    #@6b
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@6e
    move-result-object v2

    #@6f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@71
    .line 91
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validationParms"    # Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 48
    if-nez p1, :cond_0

    #@5
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "\'p\' cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 52
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "\'g\' cannot be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 56
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "\'q\' cannot be null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 61
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@26
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2b
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2d
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@30
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@32
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@34
    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@37
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@39
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3b
    invoke-direct {v0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@3e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@40
    .line 65
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@42
    .line 46
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 31
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 33
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    #@f
    nop

    #@10
    nop

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@14
    return-object v0

    #@15
    .line 41
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Invalid DHDomainParameters: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 119
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
.method public getG()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getJ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getP()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getQ()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getValidationParms()Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 149
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 150
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 151
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 156
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 161
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@26
    .line 164
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@28
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2b
    return-object v1
.end method
