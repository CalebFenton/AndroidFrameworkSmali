.class public Lorg/apache/harmony/security/asn1/BerOutputStream;
.super Ljava/lang/Object;
.source "BerOutputStream.java"


# instance fields
.field public content:Ljava/lang/Object;

.field public encoded:[B

.field public length:I

.field protected offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public encodeANY()V
    .locals 5

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 71
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    .line 69
    return-void
.end method

.method public encodeBitString()V
    .locals 6

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    #@4
    .line 77
    .local v0, "bStr":Lorg/apache/harmony/security/asn1/BitString;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@6
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@8
    iget v3, v0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    #@a
    int-to-byte v3, v3

    #@b
    aput-byte v3, v1, v2

    #@d
    .line 78
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@f
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@11
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    add-int/lit8 v3, v3, 0x1

    #@15
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@17
    add-int/lit8 v4, v4, -0x1

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 79
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@1f
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@21
    add-int/2addr v1, v2

    #@22
    iput v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@24
    .line 74
    return-void
.end method

.method public encodeBoolean()V
    .locals 3

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/lang/Boolean;

    #@4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@c
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    const/4 v2, -0x1

    #@f
    aput-byte v2, v0, v1

    #@11
    .line 88
    :goto_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@17
    .line 82
    return-void

    #@18
    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@1a
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@1c
    const/4 v2, 0x0

    #@1d
    aput-byte v2, v0, v1

    #@1f
    goto :goto_0
.end method

.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 2
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 2
    .param p1, "explicit"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public encodeGeneralizedTime()V
    .locals 5

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 101
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    .line 99
    return-void
.end method

.method public encodeInteger()V
    .locals 5

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 111
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    .line 109
    return-void
.end method

.method public encodeOID()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x7f

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 121
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@6
    check-cast v2, [I

    #@8
    .line 123
    .local v2, "oid":[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@a
    .line 127
    .local v3, "oidLen":I
    array-length v4, v2

    #@b
    add-int/lit8 v1, v4, -0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-le v1, v8, :cond_2

    #@f
    .line 128
    aget v0, v2, v1

    #@11
    .line 129
    .local v0, "elem":I
    if-le v0, v9, :cond_0

    #@13
    .line 130
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@15
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@17
    add-int/2addr v5, v3

    #@18
    add-int/lit8 v5, v5, -0x1

    #@1a
    and-int/lit8 v6, v0, 0x7f

    #@1c
    int-to-byte v6, v6

    #@1d
    aput-byte v6, v4, v5

    #@1f
    .line 131
    shr-int/lit8 v0, v0, 0x7

    #@21
    .line 132
    :goto_1
    if-lez v0, :cond_1

    #@23
    .line 133
    add-int/lit8 v3, v3, -0x1

    #@25
    .line 134
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@27
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@29
    add-int/2addr v5, v3

    #@2a
    add-int/lit8 v5, v5, -0x1

    #@2c
    or-int/lit16 v6, v0, 0x80

    #@2e
    int-to-byte v6, v6

    #@2f
    aput-byte v6, v4, v5

    #@31
    .line 135
    shr-int/lit8 v0, v0, 0x7

    #@33
    goto :goto_1

    #@34
    .line 138
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@36
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@38
    add-int/2addr v5, v3

    #@39
    add-int/lit8 v5, v5, -0x1

    #@3b
    int-to-byte v6, v0

    #@3c
    aput-byte v6, v4, v5

    #@3e
    .line 127
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@40
    add-int/lit8 v3, v3, -0x1

    #@42
    goto :goto_0

    #@43
    .line 143
    .end local v0    # "elem":I
    :cond_2
    aget v4, v2, v7

    #@45
    mul-int/lit8 v4, v4, 0x28

    #@47
    aget v5, v2, v8

    #@49
    add-int v0, v4, v5

    #@4b
    .line 144
    .restart local v0    # "elem":I
    if-le v0, v9, :cond_3

    #@4d
    .line 145
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4f
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@51
    add-int/2addr v5, v3

    #@52
    add-int/lit8 v5, v5, -0x1

    #@54
    and-int/lit8 v6, v0, 0x7f

    #@56
    int-to-byte v6, v6

    #@57
    aput-byte v6, v4, v5

    #@59
    .line 146
    shr-int/lit8 v0, v0, 0x7

    #@5b
    .line 147
    :goto_2
    if-lez v0, :cond_4

    #@5d
    .line 148
    add-int/lit8 v3, v3, -0x1

    #@5f
    .line 149
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@61
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@63
    add-int/2addr v5, v3

    #@64
    add-int/lit8 v5, v5, -0x1

    #@66
    or-int/lit16 v6, v0, 0x80

    #@68
    int-to-byte v6, v6

    #@69
    aput-byte v6, v4, v5

    #@6b
    .line 150
    shr-int/lit8 v0, v0, 0x7

    #@6d
    goto :goto_2

    #@6e
    .line 153
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@70
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@72
    add-int/2addr v5, v3

    #@73
    add-int/lit8 v5, v5, -0x1

    #@75
    int-to-byte v6, v0

    #@76
    aput-byte v6, v4, v5

    #@78
    .line 156
    :cond_4
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@7a
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@7c
    add-int/2addr v4, v5

    #@7d
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@7f
    .line 119
    return-void
.end method

.method public encodeOctetString()V
    .locals 5

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 116
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    .line 114
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .param p1, "sequenceOf"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@0
    .prologue
    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .param p1, "set"    # Lorg/apache/harmony/security/asn1/ASN1Set;

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public encodeString()V
    .locals 5

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 177
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    .line 175
    return-void
.end method

.method public final encodeTag(I)V
    .locals 7
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 46
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@2
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@4
    add-int/lit8 v6, v5, 0x1

    #@6
    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@8
    int-to-byte v6, p1

    #@9
    aput-byte v6, v4, v5

    #@b
    .line 48
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@d
    const/16 v5, 0x7f

    #@f
    if-le v4, v5, :cond_2

    #@11
    .line 49
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@13
    shr-int/lit8 v0, v4, 0x8

    #@15
    .line 50
    .local v0, "eLen":I
    const/4 v2, 0x1

    #@16
    .line 51
    :goto_0
    if-lez v0, :cond_0

    #@18
    .line 52
    add-int/lit8 v4, v2, 0x1

    #@1a
    int-to-byte v2, v4

    #@1b
    .line 51
    .local v2, "numOctets":B
    shr-int/lit8 v0, v0, 0x8

    #@1d
    goto :goto_0

    #@1e
    .line 55
    .end local v2    # "numOctets":B
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@20
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@22
    or-int/lit16 v6, v2, 0x80

    #@24
    int-to-byte v6, v6

    #@25
    aput-byte v6, v4, v5

    #@27
    .line 56
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@29
    add-int/lit8 v4, v4, 0x1

    #@2b
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@2d
    .line 58
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@2f
    .line 59
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@31
    add-int/2addr v4, v2

    #@32
    add-int/lit8 v3, v4, -0x1

    #@34
    .line 60
    .local v3, "numOffset":I
    const/4 v1, 0x0

    #@35
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@37
    .line 61
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@39
    sub-int v5, v3, v1

    #@3b
    int-to-byte v6, v0

    #@3c
    aput-byte v6, v4, v5

    #@3e
    .line 60
    add-int/lit8 v1, v1, 0x1

    #@40
    shr-int/lit8 v0, v0, 0x8

    #@42
    goto :goto_1

    #@43
    .line 63
    :cond_1
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@45
    add-int/2addr v4, v2

    #@46
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@48
    .line 45
    .end local v0    # "eLen":I
    .end local v1    # "i":I
    .end local v3    # "numOffset":I
    :goto_2
    return-void

    #@49
    .line 65
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4b
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@4d
    add-int/lit8 v6, v5, 0x1

    #@4f
    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@51
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@53
    int-to-byte v6, v6

    #@54
    aput-byte v6, v4, v5

    #@56
    goto :goto_2
.end method

.method public encodeUTCTime()V
    .locals 5

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 106
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    #@13
    .line 104
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .locals 2
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@0
    .prologue
    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .locals 2
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .param p1, "set"    # Lorg/apache/harmony/security/asn1/ASN1Set;

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@0
    .prologue
    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Is not implemented yet"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
