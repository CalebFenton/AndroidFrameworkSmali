.class public final Lsun/security/ec/ECParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "ECParameters.java"


# instance fields
.field private paramSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    #@3
    return-void
.end method

.method public static decodeParameters([B)Ljava/security/spec/ECParameterSpec;
    .locals 6
    .param p0, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    new-instance v0, Lsun/security/util/DerValue;

    #@2
    invoke-direct {v0, p0}, Lsun/security/util/DerValue;-><init>([B)V

    #@5
    .line 193
    .local v0, "encodedParams":Lsun/security/util/DerValue;
    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    #@7
    const/4 v4, 0x6

    #@8
    if-ne v3, v4, :cond_1

    #@a
    .line 194
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@d
    move-result-object v1

    #@e
    .line 195
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-static {v1}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Lsun/security/util/ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    #@11
    move-result-object v2

    #@12
    .line 196
    .local v2, "spec":Ljava/security/spec/ECParameterSpec;
    if-nez v2, :cond_0

    #@14
    .line 197
    new-instance v3, Ljava/io/IOException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "Unknown named curve: "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v3

    #@2e
    .line 199
    :cond_0
    return-object v2

    #@2f
    .line 202
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    #@31
    const-string/jumbo v4, "Only named ECParameters supported"

    #@34
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v3
.end method

.method public static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 87
    array-length v3, p0

    #@3
    if-eqz v3, :cond_0

    #@5
    aget-byte v3, p0, v5

    #@7
    const/4 v4, 0x4

    #@8
    if-eq v3, v4, :cond_1

    #@a
    .line 88
    :cond_0
    new-instance v3, Ljava/io/IOException;

    #@c
    const-string/jumbo v4, "Only uncompressed point format supported"

    #@f
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v3, v3, 0x7

    #@1d
    shr-int/lit8 v0, v3, 0x3

    #@1f
    .line 91
    .local v0, "n":I
    array-length v3, p0

    #@20
    mul-int/lit8 v4, v0, 0x2

    #@22
    add-int/lit8 v4, v4, 0x1

    #@24
    if-eq v3, v4, :cond_2

    #@26
    .line 92
    new-instance v3, Ljava/io/IOException;

    #@28
    const-string/jumbo v4, "Point does not match field size"

    #@2b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 94
    :cond_2
    new-array v1, v0, [B

    #@31
    .line 95
    .local v1, "xb":[B
    new-array v2, v0, [B

    #@33
    .line 96
    .local v2, "yb":[B
    invoke-static {p0, v6, v1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 97
    add-int/lit8 v3, v0, 0x1

    #@38
    invoke-static {p0, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3b
    .line 98
    new-instance v3, Ljava/security/spec/ECPoint;

    #@3d
    new-instance v4, Ljava/math/BigInteger;

    #@3f
    invoke-direct {v4, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@42
    new-instance v5, Ljava/math/BigInteger;

    #@44
    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@47
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4a
    return-object v3
.end method

.method public static encodeParameters(Ljava/security/spec/ECParameterSpec;)[B
    .locals 4
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 183
    invoke-static {p0}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    #@3
    move-result-object v0

    #@4
    .line 184
    .local v0, "curve":Lsun/security/ec/NamedCurve;
    if-nez v0, :cond_0

    #@6
    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Not a known named curve: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 187
    :cond_0
    invoke-virtual {v0}, Lsun/security/ec/NamedCurve;->getEncoded()[B

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method public static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 7
    .param p0, "point"    # Ljava/security/spec/ECPoint;
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 104
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@4
    move-result-object v4

    #@5
    invoke-interface {v4}, Ljava/security/spec/ECField;->getFieldSize()I

    #@8
    move-result v4

    #@9
    add-int/lit8 v4, v4, 0x7

    #@b
    shr-int/lit8 v1, v4, 0x3

    #@d
    .line 105
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    #@14
    move-result-object v4

    #@15
    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    #@18
    move-result-object v2

    #@19
    .line 106
    .local v2, "xb":[B
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    #@24
    move-result-object v3

    #@25
    .line 107
    .local v3, "yb":[B
    array-length v4, v2

    #@26
    if-gt v4, v1, :cond_0

    #@28
    array-length v4, v3

    #@29
    if-le v4, v1, :cond_1

    #@2b
    .line 108
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@2d
    .line 109
    const-string/jumbo v5, "Point coordinates do not match field size"

    #@30
    .line 108
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 111
    :cond_1
    shl-int/lit8 v4, v1, 0x1

    #@36
    add-int/lit8 v4, v4, 0x1

    #@38
    new-array v0, v4, [B

    #@3a
    .line 112
    .local v0, "b":[B
    const/4 v4, 0x4

    #@3b
    aput-byte v4, v0, v6

    #@3d
    .line 113
    array-length v4, v2

    #@3e
    sub-int v4, v1, v4

    #@40
    add-int/lit8 v4, v4, 0x1

    #@42
    array-length v5, v2

    #@43
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@46
    .line 114
    array-length v4, v0

    #@47
    array-length v5, v3

    #@48
    sub-int/2addr v4, v5

    #@49
    array-length v5, v3

    #@4a
    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4d
    .line 115
    return-object v0
.end method

.method static getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;
    .locals 4
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    :try_start_0
    const-string/jumbo v2, "EC"

    #@3
    sget-object v3, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    #@5
    .line 279
    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    #@8
    move-result-object v1

    #@9
    .line 281
    .local v1, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v1, p0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 282
    return-object v1

    #@d
    .line 283
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    #@e
    .line 284
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@10
    const-string/jumbo v3, "EC parameters error"

    #@13
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v2
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 177
    invoke-static {p0}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    #@4
    move-result-object v0

    #@5
    .line 178
    .local v0, "curve":Lsun/security/ec/NamedCurve;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Lsun/security/ec/NamedCurve;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method public static getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;
    .locals 6
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 137
    instance-of v3, p0, Lsun/security/ec/NamedCurve;

    #@3
    if-nez v3, :cond_0

    #@5
    if-nez p0, :cond_1

    #@7
    .line 138
    :cond_0
    check-cast p0, Lsun/security/ec/NamedCurve;

    #@9
    .end local p0    # "params":Ljava/security/spec/ECParameterSpec;
    return-object p0

    #@a
    .line 148
    .restart local p0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    #@15
    move-result v0

    #@16
    .line 149
    .local v0, "fieldSize":I
    invoke-static {}, Lsun/security/ec/NamedCurve;->knownECParameterSpecs()Ljava/util/Collection;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    .local v2, "namedCurve$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_3

    #@24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/security/spec/ECParameterSpec;

    #@2a
    .line 153
    .local v1, "namedCurve":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    #@35
    move-result v3

    #@36
    if-ne v3, v0, :cond_2

    #@38
    .line 156
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_2

    #@46
    .line 159
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_2

    #@54
    .line 162
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_2

    #@62
    .line 165
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@65
    move-result v3

    #@66
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@69
    move-result v4

    #@6a
    if-ne v3, v4, :cond_2

    #@6c
    .line 169
    check-cast v1, Lsun/security/ec/NamedCurve;

    #@6e
    .end local v1    # "namedCurve":Ljava/security/spec/ECParameterSpec;
    return-object v1

    #@6f
    .line 172
    :cond_3
    return-object v5
.end method

.method static trimZeroes([B)[B
    .locals 4
    .param p0, "b"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 121
    const/4 v0, 0x0

    #@2
    .line 122
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@3
    add-int/lit8 v2, v2, -0x1

    #@5
    if-ge v0, v2, :cond_0

    #@7
    aget-byte v2, p0, v0

    #@9
    if-nez v2, :cond_0

    #@b
    .line 123
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 125
    :cond_0
    if-nez v0, :cond_1

    #@10
    .line 126
    return-object p0

    #@11
    .line 128
    :cond_1
    array-length v2, p0

    #@12
    sub-int/2addr v2, v0

    #@13
    new-array v1, v2, [B

    #@15
    .line 129
    .local v1, "t":[B
    array-length v2, v1

    #@16
    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 130
    return-object v1
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    invoke-static {v0}, Lsun/security/ec/ECParameters;->encodeParameters(Ljava/security/spec/ECParameterSpec;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encodingMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    invoke-virtual {p0}, Lsun/security/ec/ECParameters;->engineGetEncoded()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    .local p1, "spec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/security/spec/ECParameterSpec;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 329
    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@a
    return-object v0

    #@b
    .line 330
    :cond_0
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 331
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    #@15
    iget-object v1, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@17
    invoke-static {v1}, Lsun/security/ec/ECParameters;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@1e
    return-object v0

    #@1f
    .line 333
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@21
    .line 334
    const-string/jumbo v1, "Only ECParameterSpec and ECGenParameterSpec supported"

    #@24
    .line 333
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    instance-of v2, p1, Ljava/security/spec/ECParameterSpec;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v2, p1

    #@5
    .line 297
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    #@7
    invoke-static {v2}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@d
    .line 298
    iget-object v2, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@f
    if-nez v2, :cond_2

    #@11
    .line 299
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    #@13
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Not a supported named curve: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 299
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 302
    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECGenParameterSpec;

    #@2d
    if-eqz v2, :cond_3

    #@2f
    .line 303
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    #@31
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 304
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    #@38
    move-result-object v1

    #@39
    .line 305
    .local v1, "spec":Ljava/security/spec/ECParameterSpec;
    if-nez v1, :cond_1

    #@3b
    .line 306
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Unknown curve: "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@54
    throw v2

    #@55
    .line 308
    :cond_1
    iput-object v1, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@57
    .line 295
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_2
    return-void

    #@58
    .line 309
    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    if-nez p1, :cond_4

    #@5a
    .line 310
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    #@5c
    .line 311
    const-string/jumbo v3, "paramSpec must not be null"

    #@5f
    .line 310
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2

    #@63
    .line 313
    :cond_4
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    #@65
    .line 314
    const-string/jumbo v3, "Only ECParameterSpec and ECGenParameterSpec supported"

    #@68
    .line 313
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v2
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    invoke-static {p1}, Lsun/security/ec/ECParameters;->decodeParameters([B)Ljava/security/spec/ECParameterSpec;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@6
    .line 318
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .param p1, "params"    # [B
    .param p2, "decodingMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lsun/security/ec/ECParameters;->engineInit([B)V

    #@3
    .line 322
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
