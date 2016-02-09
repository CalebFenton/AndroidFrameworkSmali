.class public final Lorg/apache/harmony/security/asn1/DerOutputStream;
.super Lorg/apache/harmony/security/asn1/BerOutputStream;
.source "DerOutputStream.java"


# static fields
.field private static final initSize:I = 0x20


# instance fields
.field private index:I

.field private len:[[I

.field private val:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;Ljava/lang/Object;)V
    .locals 2
    .param p1, "asn1"    # Lorg/apache/harmony/security/asn1/ASN1Type;
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 39
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;-><init>()V

    #@5
    .line 36
    new-array v0, v1, [[I

    #@7
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@9
    .line 37
    new-array v0, v1, [[Ljava/lang/Object;

    #@b
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@d
    .line 40
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@f
    .line 41
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@12
    .line 42
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@15
    .line 43
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    #@18
    move-result v0

    #@19
    new-array v0, v0, [B

    #@1b
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->encoded:[B

    #@1d
    .line 44
    const/4 v0, 0x0

    #@1e
    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@20
    .line 45
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@23
    .line 39
    return-void
.end method

.method private encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 5
    .param p1, "collection"    # Lorg/apache/harmony/security/asn1/ASN1ValueCollection;

    #@0
    .prologue
    .line 90
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@2
    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@4
    aget-object v2, v3, v4

    #@6
    .line 91
    .local v2, "values":[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@8
    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@a
    aget-object v0, v3, v4

    #@c
    .line 93
    .local v0, "compLens":[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@12
    .line 94
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@14
    if-ge v1, v3, :cond_0

    #@16
    .line 95
    aget-object v3, v2, v1

    #@18
    iput-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@1a
    .line 96
    aget v3, v0, v1

    #@1c
    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@1e
    .line 97
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@20
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@23
    .line 94
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 89
    :cond_0
    return-void
.end method

.method private getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 6
    .param p1, "collection"    # Lorg/apache/harmony/security/asn1/ASN1ValueCollection;

    #@0
    .prologue
    .line 201
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@2
    invoke-virtual {p1, v5}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    #@5
    move-result-object v5

    #@6
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 203
    .local v1, "cv":[Ljava/lang/Object;
    array-length v5, v1

    #@b
    new-array v4, v5, [Ljava/lang/Object;

    #@d
    .line 204
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    #@e
    new-array v0, v5, [I

    #@10
    .line 206
    .local v0, "compLens":[I
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    #@13
    .line 207
    const/4 v3, 0x0

    #@14
    .line 208
    .local v3, "seqLen":I
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@16
    if-ge v2, v5, :cond_0

    #@18
    .line 210
    aget-object v5, v1, v2

    #@1a
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@1c
    .line 212
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@1e
    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@21
    .line 214
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@23
    aput v5, v0, v2

    #@25
    .line 218
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@27
    aput-object v5, v4, v2

    #@29
    .line 220
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2b
    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    #@2e
    move-result v5

    #@2f
    add-int/2addr v3, v5

    #@30
    .line 208
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 222
    :cond_0
    iput v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@35
    .line 199
    return-void
.end method

.method private push([I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "lengths"    # [I
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@7
    .line 103
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@9
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@b
    array-length v3, v3

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 105
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@10
    array-length v2, v2

    #@11
    mul-int/lit8 v2, v2, 0x2

    #@13
    new-array v0, v2, [[I

    #@15
    .line 106
    .local v0, "newLen":[[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@17
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@19
    array-length v3, v3

    #@1a
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 107
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@1f
    .line 109
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@21
    array-length v2, v2

    #@22
    mul-int/lit8 v2, v2, 0x2

    #@24
    new-array v1, v2, [[Ljava/lang/Object;

    #@26
    .line 110
    .local v1, "newVal":[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@28
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@2a
    array-length v3, v3

    #@2b
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 111
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@30
    .line 113
    .end local v0    # "newLen":[[I
    .end local v1    # "newVal":[[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@32
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@34
    aput-object p1, v2, v3

    #@36
    .line 114
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@38
    iget v3, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@3a
    aput-object p2, v2, v3

    #@3c
    .line 101
    return-void
.end method


# virtual methods
.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 3
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@0
    .prologue
    .line 49
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@2
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@4
    aget-object v1, v1, v2

    #@6
    const/4 v2, 0x0

    #@7
    aget-object v0, v1, v2

    #@9
    check-cast v0, Lorg/apache/harmony/security/asn1/ASN1Type;

    #@b
    .line 50
    .local v0, "type":Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@d
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@f
    aget-object v1, v1, v2

    #@11
    const/4 v2, 0x1

    #@12
    aget-object v1, v1, v2

    #@14
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@16
    .line 51
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@1c
    .line 52
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@1f
    .line 48
    return-void
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 3
    .param p1, "explicit"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@3
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@5
    aget-object v0, v0, v1

    #@7
    aget-object v0, v0, v2

    #@9
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@b
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@d
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@f
    aget-object v0, v0, v1

    #@11
    aget v0, v0, v2

    #@13
    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@15
    .line 58
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    iput v0, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@1b
    .line 59
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@1d
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@20
    .line 55
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 63
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    .line 65
    .local v2, "type":[Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    #@4
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@6
    aget-object v3, v4, v5

    #@8
    .line 66
    .local v3, "values":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->len:[[I

    #@a
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@c
    aget-object v0, v4, v5

    #@e
    .line 68
    .local v0, "compLens":[I
    iget v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->index:I

    #@14
    .line 69
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@16
    if-ge v1, v4, :cond_1

    #@18
    .line 70
    aget-object v4, v3, v1

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 74
    :cond_0
    aget-object v4, v3, v1

    #@21
    iput-object v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@23
    .line 75
    aget v4, v0, v1

    #@25
    iput v4, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@27
    .line 77
    aget-object v4, v2, v1

    #@29
    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@2c
    goto :goto_1

    #@2d
    .line 62
    :cond_1
    return-void
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0
    .param p1, "sequenceOf"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    #@3
    .line 81
    return-void
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->encodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    #@3
    .line 85
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 5
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 118
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@3
    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getIndex(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 119
    .local v0, "i":I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@9
    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@f
    .line 121
    const/4 v2, 0x2

    #@10
    new-array v1, v2, [Ljava/lang/Object;

    #@12
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@14
    aget-object v2, v2, v0

    #@16
    const/4 v3, 0x0

    #@17
    aput-object v2, v1, v3

    #@19
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@1b
    aput-object v2, v1, v4

    #@1d
    .line 123
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    #@21
    .line 125
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@23
    aget-object v2, v2, v0

    #@25
    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@28
    .line 129
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@2a
    aput-object v2, v1, v4

    #@2c
    .line 117
    return-void
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 4
    .param p1, "explicit"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 133
    new-array v1, v2, [Ljava/lang/Object;

    #@4
    .line 134
    .local v1, "values":[Ljava/lang/Object;
    new-array v0, v2, [I

    #@6
    .line 136
    .local v0, "compLens":[I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@8
    aput-object v2, v1, v3

    #@a
    .line 138
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    #@d
    .line 140
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@f
    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@12
    .line 144
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@14
    aput-object v2, v1, v3

    #@16
    .line 145
    iget v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@18
    aput v2, v0, v3

    #@1a
    .line 147
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@1c
    invoke-virtual {v2, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@22
    .line 132
    return-void
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 151
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@3
    .line 153
    .local v3, "type":[Lorg/apache/harmony/security/asn1/ASN1Type;
    array-length v5, v3

    #@4
    new-array v4, v5, [Ljava/lang/Object;

    #@6
    .line 154
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v3

    #@7
    new-array v0, v5, [I

    #@9
    .line 156
    .local v0, "compLens":[I
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@b
    invoke-virtual {p1, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->getValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@e
    .line 158
    invoke-direct {p0, v0, v4}, Lorg/apache/harmony/security/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    #@11
    .line 160
    const/4 v2, 0x0

    #@12
    .line 161
    .local v2, "seqLen":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@14
    if-ge v1, v5, :cond_3

    #@16
    .line 163
    aget-object v5, v4, v1

    #@18
    if-nez v5, :cond_1

    #@1a
    .line 164
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    #@1c
    aget-boolean v5, v5, v1

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 161
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 167
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    #@25
    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    #@28
    throw v5

    #@29
    .line 171
    :cond_1
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    #@2b
    aget-object v5, v5, v1

    #@2d
    aget-object v6, v4, v1

    #@2f
    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_2

    #@35
    .line 172
    aput-object v7, v4, v1

    #@37
    goto :goto_1

    #@38
    .line 176
    :cond_2
    aget-object v5, v4, v1

    #@3a
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@3c
    .line 178
    aget-object v5, v3, v1

    #@3e
    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@41
    .line 180
    iget v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@43
    aput v5, v0, v1

    #@45
    .line 184
    iget-object v5, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->content:Ljava/lang/Object;

    #@47
    aput-object v5, v4, v1

    #@49
    .line 186
    aget-object v5, v3, v1

    #@4b
    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    #@4e
    move-result v5

    #@4f
    add-int/2addr v2, v5

    #@50
    goto :goto_1

    #@51
    .line 188
    :cond_3
    iput v2, p0, Lorg/apache/harmony/security/asn1/DerOutputStream;->length:I

    #@53
    .line 150
    return-void
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 0
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    #@3
    .line 191
    return-void
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@0
    .prologue
    .line 196
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/DerOutputStream;->getValueOfLength(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    #@3
    .line 195
    return-void
.end method
