.class final Lorg/apache/harmony/security/x509/TBSCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertificate;
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
    const/4 v1, 0x0

    #@1
    .line 232
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@4
    .line 240
    const/4 v0, 0x1

    #@5
    new-array v0, v0, [B

    #@7
    aput-byte v1, v0, v1

    #@9
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setDefault(Ljava/lang/Object;I)V

    #@c
    .line 241
    const/4 v0, 0x7

    #@d
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    #@10
    .line 242
    const/16 v0, 0x8

    #@12
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    #@15
    .line 243
    const/16 v0, 0x9

    #@17
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    #@1a
    .line 238
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 14
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v1, 0x7

    #@3
    const/4 v12, 0x0

    #@4
    .line 247
    iget-object v13, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@6
    check-cast v13, [Ljava/lang/Object;

    #@8
    .line 249
    .local v13, "values":[Ljava/lang/Object;
    aget-object v0, v13, v1

    #@a
    if-nez v0, :cond_0

    #@c
    .line 250
    const/4 v8, 0x0

    #@d
    .line 251
    :goto_0
    aget-object v0, v13, v2

    #@f
    if-nez v0, :cond_1

    #@11
    .line 252
    const/4 v9, 0x0

    #@12
    .line 253
    :goto_1
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    #@14
    .line 254
    const/4 v1, 0x0

    #@15
    aget-object v1, v13, v1

    #@17
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@1a
    move-result v1

    #@1b
    .line 255
    new-instance v2, Ljava/math/BigInteger;

    #@1d
    const/4 v3, 0x1

    #@1e
    aget-object v3, v13, v3

    #@20
    check-cast v3, [B

    #@22
    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    #@25
    .line 256
    const/4 v3, 0x2

    #@26
    aget-object v3, v13, v3

    #@28
    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2a
    .line 257
    const/4 v4, 0x3

    #@2b
    aget-object v4, v13, v4

    #@2d
    check-cast v4, Lorg/apache/harmony/security/x501/Name;

    #@2f
    .line 258
    const/4 v5, 0x4

    #@30
    aget-object v5, v13, v5

    #@32
    check-cast v5, Lorg/apache/harmony/security/x509/Validity;

    #@34
    .line 259
    const/4 v6, 0x5

    #@35
    aget-object v6, v13, v6

    #@37
    check-cast v6, Lorg/apache/harmony/security/x501/Name;

    #@39
    .line 260
    const/4 v7, 0x6

    #@3a
    aget-object v7, v13, v7

    #@3c
    check-cast v7, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@3e
    .line 263
    const/16 v10, 0x9

    #@40
    aget-object v10, v13, v10

    #@42
    check-cast v10, Lorg/apache/harmony/security/x509/Extensions;

    #@44
    .line 264
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@47
    move-result-object v11

    #@48
    .line 253
    invoke-direct/range {v0 .. v12}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate;)V

    #@4b
    return-object v0

    #@4c
    .line 250
    :cond_0
    aget-object v0, v13, v1

    #@4e
    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    #@50
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    #@53
    move-result-object v8

    #@54
    .local v8, "issuerUniqueID":[Z
    goto :goto_0

    #@55
    .line 252
    .end local v8    # "issuerUniqueID":[Z
    :cond_1
    aget-object v0, v13, v2

    #@57
    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    #@59
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    #@5c
    move-result-object v9

    #@5d
    .local v9, "subjectUniqueID":[Z
    goto :goto_1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 269
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    #@3
    .line 270
    .local v0, "tbs":Lorg/apache/harmony/security/x509/TBSCertificate;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get9(Lorg/apache/harmony/security/x509/TBSCertificate;)I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, p2, v2

    #@e
    .line 271
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get3(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, p2, v2

    #@19
    .line 272
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get4(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput-object v1, p2, v2

    #@20
    .line 273
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get1(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, p2, v2

    #@27
    .line 274
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get8(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;

    #@2a
    move-result-object v1

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, p2, v2

    #@2e
    .line 275
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get5(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    #@31
    move-result-object v1

    #@32
    const/4 v2, 0x5

    #@33
    aput-object v1, p2, v2

    #@35
    .line 276
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get6(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@38
    move-result-object v1

    #@39
    const/4 v2, 0x6

    #@3a
    aput-object v1, p2, v2

    #@3c
    .line 277
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get2(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    #@3f
    move-result-object v1

    #@40
    if-eqz v1, :cond_0

    #@42
    .line 278
    new-instance v1, Lorg/apache/harmony/security/asn1/BitString;

    #@44
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get2(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    #@4b
    const/4 v2, 0x7

    #@4c
    aput-object v1, p2, v2

    #@4e
    .line 280
    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get7(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    #@51
    move-result-object v1

    #@52
    if-eqz v1, :cond_1

    #@54
    .line 281
    new-instance v1, Lorg/apache/harmony/security/asn1/BitString;

    #@56
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get7(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    #@59
    move-result-object v2

    #@5a
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    #@5d
    const/16 v2, 0x8

    #@5f
    aput-object v1, p2, v2

    #@61
    .line 283
    :cond_1
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->-get0(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    #@64
    move-result-object v1

    #@65
    const/16 v2, 0x9

    #@67
    aput-object v1, p2, v2

    #@69
    .line 268
    return-void
.end method
