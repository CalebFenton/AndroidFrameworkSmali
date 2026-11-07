.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X9Curve.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private blacklist fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist seed:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 24
    .param p1, "fieldID"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;
    .param p2, "order"    # Ljava/math/BigInteger;
    .param p3, "cofactor"    # Ljava/math/BigInteger;
    .param p4, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_56

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    .line 57
    .local v7, "p":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 58
    .local v8, "A":Ljava/math/BigInteger;
    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 59
    .local v9, "B":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v6, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 60
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "A":Ljava/math/BigInteger;
    .end local v9    # "B":Ljava/math/BigInteger;
    goto/16 :goto_fa

    .line 61
    :cond_56
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 65
    .local v2, "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v11

    .line 66
    .local v11, "m":I
    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    .local v6, "representation":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v7, 0x0

    .line 69
    .local v7, "k1":I
    const/4 v8, 0x0

    .line 70
    .local v8, "k2":I
    const/4 v9, 0x0

    .line 72
    .local v9, "k3":I
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 75
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v7

    move v12, v7

    move v13, v8

    move v14, v9

    goto :goto_ca

    .line 77
    :cond_93
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->ppBasis:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_10e

    .line 80
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    .line 81
    .local v10, "pentanomial":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v7

    .line 82
    invoke-virtual {v10, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v8

    .line 83
    invoke-virtual {v10, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v9

    .line 84
    .end local v10    # "pentanomial":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    move v12, v7

    move v13, v8

    move v14, v9

    .line 89
    .end local v7    # "k1":I
    .end local v8    # "k2":I
    .end local v9    # "k3":I
    .local v12, "k1":I
    .local v13, "k2":I
    .local v14, "k3":I
    :goto_ca
    new-instance v15, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v15, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 90
    .local v15, "A":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v16, v4

    .line 91
    .local v16, "B":Ljava/math/BigInteger;
    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    invoke-direct/range {v10 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v10, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 92
    .end local v2    # "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "representation":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v11    # "m":I
    .end local v12    # "k1":I
    .end local v13    # "k2":I
    .end local v14    # "k3":I
    .end local v15    # "A":Ljava/math/BigInteger;
    .end local v16    # "B":Ljava/math/BigInteger;
    nop

    .line 98
    :goto_fa
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_10d

    .line 100
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 102
    :cond_10d
    return-void

    .line 87
    .restart local v2    # "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "representation":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v7    # "k1":I
    .restart local v8    # "k2":I
    .restart local v9    # "k3":I
    .restart local v11    # "m":I
    :cond_10e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "This type of EC basis is not implemented"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v2    # "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "representation":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "k1":I
    .end local v8    # "k2":I
    .end local v9    # "k3":I
    .end local v11    # "m":I
    :cond_116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "This type of ECCurve is not implemented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)V
    .registers 3
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "seed"    # [B

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 43
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 45
    return-void
.end method

.method private blacklist setFieldIdentifier()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_19

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 112
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 118
    :goto_19
    return-void

    .line 116
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 144
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 146
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_63

    .line 149
    :cond_35
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 151
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_71

    .line 157
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_71
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
