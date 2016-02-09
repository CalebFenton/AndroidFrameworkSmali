.class public Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9Curve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 18
    .param p1, "fieldID"    # Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
    .param p2, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 27
    const/4 v7, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v7

    #@c
    move-object/from16 v0, p0

    #@e
    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    .line 53
    move-object/from16 v0, p0

    #@12
    iget-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_1

    #@1c
    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f
    move-result-object v7

    #@20
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@22
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@25
    move-result-object v14

    #@26
    .line 56
    .local v14, "p":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@28
    const/4 v7, 0x0

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2e
    move-result-object v7

    #@2f
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@31
    invoke-direct {v1, v14, v7}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@34
    .line 57
    .local v1, "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@36
    const/4 v7, 0x1

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3c
    move-result-object v7

    #@3d
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3f
    invoke-direct {v6, v14, v7}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@42
    .line 58
    .local v6, "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@44
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@53
    move-result-object v9

    #@54
    invoke-direct {v7, v14, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@57
    move-object/from16 v0, p0

    #@59
    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5b
    .line 99
    .end local v14    # "p":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5e
    move-result v7

    #@5f
    const/4 v8, 0x3

    #@60
    if-ne v7, v8, :cond_0

    #@62
    .line 101
    const/4 v7, 0x2

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@68
    move-result-object v7

    #@69
    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@6b
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@6e
    move-result-object v7

    #@6f
    move-object/from16 v0, p0

    #@71
    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    #@73
    .line 48
    :cond_0
    return-void

    #@74
    .line 60
    .end local v1    # "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v6    # "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    :cond_1
    move-object/from16 v0, p0

    #@76
    iget-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_4

    #@80
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@83
    move-result-object v7

    #@84
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@87
    move-result-object v15

    #@88
    .line 64
    .local v15, "parameters":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    #@89
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8c
    move-result-object v7

    #@8d
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@96
    move-result v2

    #@97
    .line 67
    .local v2, "m":I
    const/4 v7, 0x1

    #@98
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9b
    move-result-object v17

    #@9c
    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9e
    .line 69
    .local v17, "representation":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x0

    #@9f
    .line 70
    .local v3, "k1":I
    const/4 v4, 0x0

    #@a0
    .line 71
    .local v4, "k2":I
    const/4 v5, 0x0

    #@a1
    .line 73
    .local v5, "k3":I
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a3
    move-object/from16 v0, v17

    #@a5
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v7

    #@a9
    if-eqz v7, :cond_2

    #@ab
    .line 76
    const/4 v7, 0x2

    #@ac
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@af
    move-result-object v7

    #@b0
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@bb
    move-result v3

    #@bc
    .line 90
    :goto_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@be
    const/4 v7, 0x0

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c4
    move-result-object v6

    #@c5
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c7
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@ca
    .line 91
    .restart local v1    # "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@cc
    const/4 v7, 0x1

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@d2
    move-result-object v11

    #@d3
    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@d5
    move v7, v2

    #@d6
    move v8, v3

    #@d7
    move v9, v4

    #@d8
    move v10, v5

    #@d9
    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@dc
    .line 92
    .restart local v6    # "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@de
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e1
    move-result-object v8

    #@e2
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@e5
    move-result-object v12

    #@e6
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e9
    move-result-object v8

    #@ea
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@ed
    move-result-object v13

    #@ee
    move v8, v2

    #@ef
    move v9, v3

    #@f0
    move v10, v4

    #@f1
    move v11, v5

    #@f2
    invoke-direct/range {v7 .. v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f9
    goto/16 :goto_0

    #@fb
    .line 78
    .end local v1    # "x9A":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    .end local v6    # "x9B":Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
    :cond_2
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->ppBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fd
    move-object/from16 v0, v17

    #@ff
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v7

    #@103
    if-eqz v7, :cond_3

    #@105
    .line 81
    const/4 v7, 0x2

    #@106
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@109
    move-result-object v7

    #@10a
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@10d
    move-result-object v16

    #@10e
    .line 82
    .local v16, "pentanomial":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    #@10f
    move-object/from16 v0, v16

    #@111
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@114
    move-result-object v7

    #@115
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@118
    move-result-object v7

    #@119
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@11c
    move-result-object v7

    #@11d
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@120
    move-result v3

    #@121
    .line 83
    const/4 v7, 0x1

    #@122
    move-object/from16 v0, v16

    #@124
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@127
    move-result-object v7

    #@128
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12b
    move-result-object v7

    #@12c
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@12f
    move-result-object v7

    #@130
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@133
    move-result v4

    #@134
    .line 84
    const/4 v7, 0x2

    #@135
    move-object/from16 v0, v16

    #@137
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13a
    move-result-object v7

    #@13b
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13e
    move-result-object v7

    #@13f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@142
    move-result-object v7

    #@143
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@146
    move-result v5

    #@147
    goto/16 :goto_1

    #@149
    .line 88
    .end local v16    # "pentanomial":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@14b
    const-string/jumbo v8, "This type of EC basis is not implemented"

    #@14e
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@151
    throw v7

    #@152
    .line 96
    .end local v2    # "m":I
    .end local v3    # "k1":I
    .end local v4    # "k2":I
    .end local v5    # "k3":I
    .end local v15    # "parameters":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v17    # "representation":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@154
    const-string/jumbo v8, "This type of ECCurve is not implemented"

    #@157
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15a
    throw v7
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 27
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    .line 33
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    #@a
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    #@d
    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "seed"    # [B

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    .line 42
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    #@a
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    #@d
    .line 39
    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 109
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 105
    :goto_0
    return-void

    #@d
    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 113
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    goto :goto_0

    #@1a
    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v1, "This type of ECCurve is not implemented"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 145
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 147
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@11
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@13
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@1a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@21
    .line 148
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@23
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@25
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@2c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@33
    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 158
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@39
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    #@3b
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@41
    .line 161
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@43
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@46
    return-object v1

    #@47
    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_0

    #@51
    .line 152
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@53
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@55
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@58
    move-result-object v2

    #@59
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@5c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@63
    .line 153
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    #@65
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@67
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6a
    move-result-object v2

    #@6b
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@6e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@75
    goto :goto_0
.end method
