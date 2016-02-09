.class final Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TSTInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 258
    const/4 v0, 0x5

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    #@7
    .line 259
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@9
    const/4 v1, 0x6

    #@a
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setDefault(Ljava/lang/Object;I)V

    #@d
    .line 260
    const/4 v0, 0x7

    #@e
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    #@11
    .line 261
    const/16 v0, 0x8

    #@13
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    #@16
    .line 262
    const/16 v0, 0x9

    #@18
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    #@1b
    .line 256
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 12
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 266
    iget-object v11, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v11, [Ljava/lang/Object;

    #@5
    .line 268
    .local v11, "values":[Ljava/lang/Object;
    aget-object v0, v11, v1

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v8, 0x0

    #@a
    .line 271
    :goto_0
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;

    #@c
    .line 272
    const/4 v1, 0x0

    #@d
    aget-object v1, v11, v1

    #@f
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    .line 273
    const/4 v2, 0x1

    #@14
    aget-object v2, v11, v2

    #@16
    check-cast v2, [I

    #@18
    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 274
    const/4 v3, 0x2

    #@1d
    aget-object v3, v11, v3

    #@1f
    check-cast v3, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@21
    .line 275
    new-instance v4, Ljava/math/BigInteger;

    #@23
    const/4 v5, 0x3

    #@24
    aget-object v5, v11, v5

    #@26
    check-cast v5, [B

    #@28
    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    #@2b
    .line 276
    const/4 v5, 0x4

    #@2c
    aget-object v5, v11, v5

    #@2e
    check-cast v5, Ljava/util/Date;

    #@30
    .line 277
    const/4 v6, 0x5

    #@31
    aget-object v6, v11, v6

    #@33
    check-cast v6, [I

    #@35
    .line 278
    const/4 v7, 0x6

    #@36
    aget-object v7, v11, v7

    #@38
    check-cast v7, Ljava/lang/Boolean;

    #@3a
    .line 280
    const/16 v9, 0x8

    #@3c
    aget-object v9, v11, v9

    #@3e
    check-cast v9, Lorg/apache/harmony/security/x509/GeneralName;

    #@40
    .line 281
    const/16 v10, 0x9

    #@42
    aget-object v10, v11, v10

    #@44
    check-cast v10, Lorg/apache/harmony/security/x509/Extensions;

    #@46
    .line 271
    invoke-direct/range {v0 .. v10}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;-><init>(ILjava/lang/String;Lorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/math/BigInteger;Ljava/util/Date;[ILjava/lang/Boolean;Ljava/math/BigInteger;Lorg/apache/harmony/security/x509/GeneralName;Lorg/apache/harmony/security/x509/Extensions;)V

    #@49
    return-object v0

    #@4a
    .line 268
    :cond_0
    new-instance v8, Ljava/math/BigInteger;

    #@4c
    .line 269
    aget-object v0, v11, v1

    #@4e
    check-cast v0, [B

    #@50
    .line 268
    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@53
    .local v8, "nonce":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 285
    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;

    #@4
    .line 287
    .local v0, "info":Lorg/apache/harmony/security/x509/tsp/TSTInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get9(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, p2, v3

    #@f
    .line 288
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get6(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x1

    #@18
    aput-object v2, p2, v3

    #@1a
    .line 289
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get3(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, p2, v3

    #@21
    .line 290
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get7(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x3

    #@2a
    aput-object v2, p2, v3

    #@2c
    .line 291
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get2(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/util/Date;

    #@2f
    move-result-object v2

    #@30
    const/4 v3, 0x4

    #@31
    aput-object v2, p2, v3

    #@33
    .line 292
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get0(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)[I

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x5

    #@38
    aput-object v2, p2, v3

    #@3a
    .line 293
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get5(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/Boolean;

    #@3d
    move-result-object v2

    #@3e
    const/4 v3, 0x6

    #@3f
    aput-object v2, p2, v3

    #@41
    .line 294
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get4(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    #@44
    move-result-object v2

    #@45
    if-nez v2, :cond_0

    #@47
    :goto_0
    const/4 v2, 0x7

    #@48
    aput-object v1, p2, v2

    #@4a
    .line 295
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get8(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/GeneralName;

    #@4d
    move-result-object v1

    #@4e
    const/16 v2, 0x8

    #@50
    aput-object v1, p2, v2

    #@52
    .line 296
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get1(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/Extensions;

    #@55
    move-result-object v1

    #@56
    const/16 v2, 0x9

    #@58
    aput-object v1, p2, v2

    #@5a
    .line 284
    return-void

    #@5b
    .line 294
    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->-get4(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@62
    move-result-object v1

    #@63
    goto :goto_0
.end method
