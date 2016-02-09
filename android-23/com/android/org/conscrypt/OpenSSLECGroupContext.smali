.class public final Lcom/android/org/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "OpenSSLECGroupContext.java"


# instance fields
.field private final groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V
    .locals 0
    .param p1, "groupCtx"    # Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@5
    .line 32
    return-void
.end method

.method public static getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 6
    .param p0, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    const-string/jumbo v3, "secp256r1"

    #@3
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 40
    const-string/jumbo p0, "prime256v1"

    #@c
    .line 45
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    #@f
    move-result-wide v0

    #@10
    .line 46
    .local v0, "ctx":J
    const-wide/16 v4, 0x0

    #@12
    cmp-long v3, v0, v4

    #@14
    if-nez v3, :cond_2

    #@16
    .line 47
    const/4 v3, 0x0

    #@17
    return-object v3

    #@18
    .line 41
    .end local v0    # "ctx":J
    :cond_1
    const-string/jumbo v3, "secp192r1"

    #@1b
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 42
    const-string/jumbo p0, "prime192v1"

    #@24
    goto :goto_0

    #@25
    .line 49
    .restart local v0    # "ctx":J
    :cond_2
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@27
    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@2a
    .line 52
    .local v2, "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    const/4 v3, 0x4

    #@2b
    .line 51
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_point_conversion_form(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;I)V

    #@2e
    .line 53
    const/4 v3, 0x0

    #@2f
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_asn1_flag(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;I)V

    #@32
    .line 55
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@34
    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #@37
    return-object v3
.end method

.method public static getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 25
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    #@3
    move-result-object v14

    #@4
    .line 81
    .local v14, "curveName":Ljava/lang/String;
    if-eqz v14, :cond_0

    #@6
    .line 82
    invoke-static {v14}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@9
    move-result-object v4

    #@a
    return-object v4

    #@b
    .line 86
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@e
    move-result-object v13

    #@f
    .line 87
    .local v13, "curve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@12
    move-result-object v16

    #@13
    .line 90
    .local v16, "field":Ljava/security/spec/ECField;
    move-object/from16 v0, v16

    #@15
    instance-of v4, v0, Ljava/security/spec/ECFieldFp;

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 91
    check-cast v16, Ljava/security/spec/ECFieldFp;

    #@1b
    .end local v16    # "field":Ljava/security/spec/ECField;
    invoke-virtual/range {v16 .. v16}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    #@1e
    move-result-object v22

    #@1f
    .line 97
    .local v22, "p":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@22
    move-result-object v17

    #@23
    .line 98
    .local v17, "generator":Ljava/security/spec/ECPoint;
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    #@26
    move-result-object v12

    #@27
    .line 99
    .local v12, "b":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    #@2a
    move-result-object v23

    #@2b
    .line 100
    .local v23, "x":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    #@2e
    move-result-object v24

    #@2f
    .line 104
    .local v24, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->bitLength()I

    #@32
    move-result v4

    #@33
    sparse-switch v4, :sswitch_data_0

    #@36
    .line 139
    :cond_1
    :goto_0
    if-eqz v14, :cond_3

    #@38
    .line 140
    invoke-static {v14}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@3b
    move-result-object v4

    #@3c
    return-object v4

    #@3d
    .line 93
    .end local v12    # "b":Ljava/math/BigInteger;
    .end local v17    # "generator":Ljava/security/spec/ECPoint;
    .end local v22    # "p":Ljava/math/BigInteger;
    .end local v23    # "x":Ljava/math/BigInteger;
    .end local v24    # "y":Ljava/math/BigInteger;
    .restart local v16    # "field":Ljava/security/spec/ECField;
    :cond_2
    new-instance v4, Ljava/security/InvalidParameterException;

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "unhandled field class "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 94
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v4

    #@5f
    .line 106
    .end local v16    # "field":Ljava/security/spec/ECField;
    .restart local v12    # "b":Ljava/math/BigInteger;
    .restart local v17    # "generator":Ljava/security/spec/ECPoint;
    .restart local v22    # "p":Ljava/math/BigInteger;
    .restart local v23    # "x":Ljava/math/BigInteger;
    .restart local v24    # "y":Ljava/math/BigInteger;
    :sswitch_0
    const/16 v4, 0x10

    #@61
    move-object/from16 v0, v22

    #@63
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    const-string/jumbo v5, "ffffffffffffffffffffffffffffffff000000000000000000000001"

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_1

    #@70
    .line 107
    const/16 v4, 0x10

    #@72
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    const-string/jumbo v5, "b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4"

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v4

    #@7d
    .line 106
    if-eqz v4, :cond_1

    #@7f
    .line 108
    const/16 v4, 0x10

    #@81
    move-object/from16 v0, v23

    #@83
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    const-string/jumbo v5, "b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21"

    #@8a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v4

    #@8e
    .line 106
    if-eqz v4, :cond_1

    #@90
    .line 109
    const/16 v4, 0x10

    #@92
    move-object/from16 v0, v24

    #@94
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    const-string/jumbo v5, "bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34"

    #@9b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v4

    #@9f
    .line 106
    if-eqz v4, :cond_1

    #@a1
    .line 110
    const-string/jumbo v14, "secp224r1"

    #@a4
    goto :goto_0

    #@a5
    .line 114
    :sswitch_1
    const/16 v4, 0x10

    #@a7
    move-object/from16 v0, v22

    #@a9
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    const-string/jumbo v5, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    #@b0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v4

    #@b4
    if-eqz v4, :cond_1

    #@b6
    .line 115
    const/16 v4, 0x10

    #@b8
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    const-string/jumbo v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    #@bf
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v4

    #@c3
    .line 114
    if-eqz v4, :cond_1

    #@c5
    .line 116
    const/16 v4, 0x10

    #@c7
    move-object/from16 v0, v23

    #@c9
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@cc
    move-result-object v4

    #@cd
    const-string/jumbo v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    #@d0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v4

    #@d4
    .line 114
    if-eqz v4, :cond_1

    #@d6
    .line 117
    const/16 v4, 0x10

    #@d8
    move-object/from16 v0, v24

    #@da
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@dd
    move-result-object v4

    #@de
    const-string/jumbo v5, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    #@e1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v4

    #@e5
    .line 114
    if-eqz v4, :cond_1

    #@e7
    .line 118
    const-string/jumbo v14, "prime256v1"

    #@ea
    goto/16 :goto_0

    #@ec
    .line 122
    :sswitch_2
    const/16 v4, 0x10

    #@ee
    move-object/from16 v0, v22

    #@f0
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@f3
    move-result-object v4

    #@f4
    const-string/jumbo v5, "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff0000000000000000ffffffff"

    #@f7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result v4

    #@fb
    if-eqz v4, :cond_1

    #@fd
    .line 123
    const/16 v4, 0x10

    #@ff
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@102
    move-result-object v4

    #@103
    const-string/jumbo v5, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    #@106
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v4

    #@10a
    .line 122
    if-eqz v4, :cond_1

    #@10c
    .line 124
    const/16 v4, 0x10

    #@10e
    move-object/from16 v0, v23

    #@110
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@113
    move-result-object v4

    #@114
    const-string/jumbo v5, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    #@117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11a
    move-result v4

    #@11b
    .line 122
    if-eqz v4, :cond_1

    #@11d
    .line 125
    const/16 v4, 0x10

    #@11f
    move-object/from16 v0, v24

    #@121
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@124
    move-result-object v4

    #@125
    const-string/jumbo v5, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    #@128
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12b
    move-result v4

    #@12c
    .line 122
    if-eqz v4, :cond_1

    #@12e
    .line 126
    const-string/jumbo v14, "secp384r1"

    #@131
    goto/16 :goto_0

    #@133
    .line 130
    :sswitch_3
    const/16 v4, 0x10

    #@135
    move-object/from16 v0, v22

    #@137
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@13a
    move-result-object v4

    #@13b
    const-string/jumbo v5, "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    #@13e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@141
    move-result v4

    #@142
    if-eqz v4, :cond_1

    #@144
    .line 131
    const/16 v4, 0x10

    #@146
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@149
    move-result-object v4

    #@14a
    const-string/jumbo v5, "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    #@14d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v4

    #@151
    .line 130
    if-eqz v4, :cond_1

    #@153
    .line 132
    const/16 v4, 0x10

    #@155
    move-object/from16 v0, v23

    #@157
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@15a
    move-result-object v4

    #@15b
    const-string/jumbo v5, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    #@15e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@161
    move-result v4

    #@162
    .line 130
    if-eqz v4, :cond_1

    #@164
    .line 133
    const/16 v4, 0x10

    #@166
    move-object/from16 v0, v24

    #@168
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@16b
    move-result-object v4

    #@16c
    const-string/jumbo v5, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    #@16f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v4

    #@173
    .line 130
    if-eqz v4, :cond_1

    #@175
    .line 134
    const-string/jumbo v14, "secp521r1"

    #@178
    goto/16 :goto_0

    #@17a
    .line 143
    :cond_3
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    #@17d
    move-result-object v11

    #@17e
    .line 144
    .local v11, "a":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@181
    move-result-object v21

    #@182
    .line 145
    .local v21, "order":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@185
    move-result v10

    #@186
    .line 150
    .local v10, "cofactor":I
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->toByteArray()[B

    #@189
    move-result-object v4

    #@18a
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    #@18d
    move-result-object v5

    #@18e
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    #@191
    move-result-object v6

    #@192
    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->toByteArray()[B

    #@195
    move-result-object v7

    #@196
    .line 151
    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->toByteArray()[B

    #@199
    move-result-object v8

    #@19a
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toByteArray()[B

    #@19d
    move-result-object v9

    #@19e
    .line 149
    invoke-static/range {v4 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1a1
    move-result-wide v18

    #@1a2
    .line 157
    .local v18, "group":J
    const-wide/16 v4, 0x0

    #@1a4
    cmp-long v4, v18, v4

    #@1a6
    if-nez v4, :cond_4

    #@1a8
    .line 158
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@1aa
    const-string/jumbo v5, "EC_GROUP_new_arbitrary returned NULL"

    #@1ad
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1b0
    throw v4

    #@1b1
    .line 152
    .end local v18    # "group":J
    :catch_0
    move-exception v15

    #@1b2
    .line 153
    .local v15, "exception":Ljava/lang/Throwable;
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@1b4
    const-string/jumbo v5, "EC_GROUP_new_arbitrary failed"

    #@1b7
    invoke-direct {v4, v5, v15}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1ba
    throw v4

    #@1bb
    .line 161
    .end local v15    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "group":J
    :cond_4
    new-instance v20, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@1bd
    move-object/from16 v0, v20

    #@1bf
    move-wide/from16 v1, v18

    #@1c1
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    #@1c4
    .line 163
    .local v20, "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    const/4 v4, 0x4

    #@1c5
    .line 162
    move-object/from16 v0, v20

    #@1c7
    invoke-static {v0, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_set_point_conversion_form(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;I)V

    #@1ca
    .line 165
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@1cc
    move-object/from16 v0, v20

    #@1ce
    invoke-direct {v4, v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    #@1d1
    return-object v4

    #@1d2
    .line 104
    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x180 -> :sswitch_2
        0x209 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 61
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 64
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@9
    .line 65
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@b
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@d
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_cmp(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 18

    #@0
    .prologue
    .line 169
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@4
    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 171
    .local v6, "curveName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@c
    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B

    #@f
    move-result-object v7

    #@10
    .line 172
    .local v7, "curveParams":[[B
    new-instance v12, Ljava/math/BigInteger;

    #@12
    const/4 v15, 0x0

    #@13
    aget-object v15, v7, v15

    #@15
    invoke-direct {v12, v15}, Ljava/math/BigInteger;-><init>([B)V

    #@18
    .line 173
    .local v12, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    #@1a
    const/4 v15, 0x1

    #@1b
    aget-object v15, v7, v15

    #@1d
    invoke-direct {v2, v15}, Ljava/math/BigInteger;-><init>([B)V

    #@20
    .line 174
    .local v2, "a":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    #@22
    const/4 v15, 0x2

    #@23
    aget-object v15, v7, v15

    #@25
    invoke-direct {v3, v15}, Ljava/math/BigInteger;-><init>([B)V

    #@28
    .line 177
    .local v3, "b":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@2a
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@2c
    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    #@2f
    move-result v14

    #@30
    .line 178
    .local v14, "type":I
    const/4 v15, 0x1

    #@31
    if-ne v14, v15, :cond_0

    #@33
    .line 179
    new-instance v8, Ljava/security/spec/ECFieldFp;

    #@35
    invoke-direct {v8, v12}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    #@38
    .line 186
    .local v8, "field":Ljava/security/spec/ECField;
    :goto_0
    new-instance v5, Ljava/security/spec/EllipticCurve;

    #@3a
    invoke-direct {v5, v8, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3d
    .line 188
    .local v5, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    #@3f
    .line 189
    new-instance v15, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@45
    move-object/from16 v16, v0

    #@47
    invoke-static/range {v16 .. v16}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    #@4a
    move-result-wide v16

    #@4b
    invoke-direct/range {v15 .. v17}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    #@4e
    .line 188
    move-object/from16 v0, p0

    #@50
    invoke-direct {v10, v0, v15}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    #@53
    .line 190
    .local v10, "generatorCtx":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v10}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    #@56
    move-result-object v9

    #@57
    .line 192
    .local v9, "generator":Ljava/security/spec/ECPoint;
    new-instance v11, Ljava/math/BigInteger;

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@5d
    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    #@60
    move-result-object v15

    #@61
    invoke-direct {v11, v15}, Ljava/math/BigInteger;-><init>([B)V

    #@64
    .line 193
    .local v11, "order":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@6a
    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    #@6d
    move-result-object v15

    #@6e
    invoke-direct {v4, v15}, Ljava/math/BigInteger;-><init>([B)V

    #@71
    .line 195
    .local v4, "cofactor":Ljava/math/BigInteger;
    new-instance v13, Ljava/security/spec/ECParameterSpec;

    #@73
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    #@76
    move-result v15

    #@77
    invoke-direct {v13, v5, v9, v11, v15}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@7a
    .line 196
    .local v13, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v13, v6}, Lcom/android/org/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    #@7d
    .line 197
    return-object v13

    #@7e
    .line 180
    .end local v4    # "cofactor":Ljava/math/BigInteger;
    .end local v5    # "curve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "field":Ljava/security/spec/ECField;
    .end local v9    # "generator":Ljava/security/spec/ECPoint;
    .end local v10    # "generatorCtx":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    .end local v11    # "order":Ljava/math/BigInteger;
    .end local v13    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_0
    const/4 v15, 0x2

    #@7f
    if-ne v14, v15, :cond_1

    #@81
    .line 181
    new-instance v8, Ljava/security/spec/ECFieldF2m;

    #@83
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    #@86
    move-result v15

    #@87
    add-int/lit8 v15, v15, -0x1

    #@89
    invoke-direct {v8, v15, v12}, Ljava/security/spec/ECFieldF2m;-><init>(ILjava/math/BigInteger;)V

    #@8c
    .restart local v8    # "field":Ljava/security/spec/ECField;
    goto :goto_0

    #@8d
    .line 183
    .end local v8    # "field":Ljava/security/spec/ECField;
    :cond_1
    new-instance v15, Ljava/lang/RuntimeException;

    #@8f
    new-instance v16, Ljava/lang/StringBuilder;

    #@91
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v17, "unknown curve type "

    #@97
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v16

    #@9b
    move-object/from16 v0, v16

    #@9d
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v16

    #@a1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v16

    #@a5
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v15
.end method

.method public getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method
