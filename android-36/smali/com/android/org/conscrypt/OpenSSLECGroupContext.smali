.class final Lcom/android/org/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "OpenSSLECGroupContext.java"


# static fields
.field private static final blacklist ALIASES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "secp256r1"

    const-string v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.3.132.0.33"

    const-string v3, "secp224r1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.3.132.0.34"

    const-string v3, "secp384r1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.3.132.0.35"

    const-string v3, "secp521r1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.2.840.10045.3.1.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V
    .registers 2
    .param p1, "groupCtx"    # Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 52
    return-void
.end method

.method static blacklist getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .registers 5
    .param p0, "curveName"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 56
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    .line 59
    :cond_11
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    .local v0, "ctx":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    .line 61
    const/4 v2, 0x0

    return-object v2

    .line 63
    :cond_1d
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 65
    .local v2, "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    return-object v3
.end method

.method static blacklist getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .registers 19
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 85
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "curveName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 87
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    return-object v1

    .line 91
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 92
    .local v1, "curve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    .line 95
    .local v2, "field":Ljava/security/spec/ECField;
    instance-of v3, v2, Ljava/security/spec/ECFieldFp;

    if-eqz v3, :cond_15e

    .line 96
    move-object v3, v2

    check-cast v3, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v3}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 102
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 103
    .local v4, "generator":Ljava/security/spec/ECPoint;
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v5

    .line 104
    .local v5, "b":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v6

    .line 105
    .local v6, "x":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v7

    .line 109
    .local v7, "y":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    const/16 v9, 0x10

    sparse-switch v8, :sswitch_data_180

    goto/16 :goto_10a

    .line 135
    :sswitch_39
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 136
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "51953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 137
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 138
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 139
    const-string v0, "secp521r1"

    move-object v8, v0

    goto/16 :goto_10b

    .line 127
    :sswitch_6e
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff0000000000000000ffffffff"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 128
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 129
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 130
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 131
    const-string v0, "secp384r1"

    move-object v8, v0

    goto :goto_10b

    .line 119
    :sswitch_a2
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 120
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 121
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 122
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 123
    const-string v0, "prime256v1"

    move-object v8, v0

    goto :goto_10b

    .line 111
    :sswitch_d6
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "ffffffffffffffffffffffffffffffff000000000000000000000001"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 112
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 113
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 114
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 115
    const-string v0, "secp224r1"

    move-object v8, v0

    goto :goto_10b

    .line 144
    :cond_10a
    :goto_10a
    move-object v8, v0

    .end local v0    # "curveName":Ljava/lang/String;
    .local v8, "curveName":Ljava/lang/String;
    :goto_10b
    if-eqz v8, :cond_112

    .line 145
    invoke-static {v8}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    return-object v0

    .line 148
    :cond_112
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v9

    .line 149
    .local v9, "a":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v10

    .line 150
    .local v10, "order":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v17

    .line 154
    .local v17, "cofactor":I
    nop

    .line 155
    :try_start_11f
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 156
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v16

    .line 154
    invoke-static/range {v11 .. v17}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J

    move-result-wide v11
    :try_end_13b
    .catchall {:try_start_11f .. :try_end_13b} :catchall_155

    .line 160
    .local v11, "group":J
    nop

    .line 162
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_14d

    .line 166
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v0, v11, v12}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 168
    .local v0, "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    new-instance v13, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v13, v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    return-object v13

    .line 163
    .end local v0    # "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    :cond_14d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v13, "EC_GROUP_new_arbitrary returned NULL"

    invoke-direct {v0, v13}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    .end local v11    # "group":J
    :catchall_155
    move-exception v0

    .line 158
    .local v0, "exception":Ljava/lang/Throwable;
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "EC_GROUP_new_arbitrary failed"

    invoke-direct {v11, v12, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 98
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "generator":Ljava/security/spec/ECPoint;
    .end local v5    # "b":Ljava/math/BigInteger;
    .end local v6    # "x":Ljava/math/BigInteger;
    .end local v7    # "y":Ljava/math/BigInteger;
    .end local v8    # "curveName":Ljava/lang/String;
    .end local v9    # "a":Ljava/math/BigInteger;
    .end local v10    # "order":Ljava/math/BigInteger;
    .end local v17    # "cofactor":I
    .local v0, "curveName":Ljava/lang/String;
    :cond_15e
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhandled field class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_180
    .sparse-switch
        0xe0 -> :sswitch_d6
        0x100 -> :sswitch_a2
        0x180 -> :sswitch_6e
        0x209 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OpenSSLECGroupContext.equals is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getCurveName()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .registers 14

    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "curveName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B

    move-result-object v1

    .line 179
    .local v1, "curveParams":[[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 180
    .local v2, "p":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 181
    .local v3, "a":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 183
    .local v4, "b":Ljava/math/BigInteger;
    new-instance v5, Ljava/security/spec/ECFieldFp;

    invoke-direct {v5, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 185
    .local v5, "field":Ljava/security/spec/ECField;
    new-instance v6, Ljava/security/spec/EllipticCurve;

    invoke-direct {v6, v5, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 187
    .local v6, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    new-instance v8, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 188
    invoke-static {v9}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    invoke-direct {v7, p0, v8}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    .line 189
    .local v7, "generatorCtx":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v8

    .line 191
    .local v8, "generator":Ljava/security/spec/ECPoint;
    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v10}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>([B)V

    .line 192
    .local v9, "order":Ljava/math/BigInteger;
    new-instance v10, Ljava/math/BigInteger;

    iget-object v11, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v11}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    .line 194
    .local v10, "cofactor":Ljava/math/BigInteger;
    new-instance v11, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    invoke-direct {v11, v6, v8, v9, v12}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 195
    .local v11, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v11, v0}, Lcom/android/org/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    .line 196
    return-object v11
.end method

.method blacklist getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
