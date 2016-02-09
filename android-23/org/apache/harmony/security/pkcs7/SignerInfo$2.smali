.class final Lorg/apache/harmony/security/pkcs7/SignerInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 173
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 184
    const/4 v0, 0x3

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;->setOptional(I)V

    #@7
    .line 185
    const/4 v0, 0x6

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;->setOptional(I)V

    #@b
    .line 182
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 208
    iget-object v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v9, [Ljava/lang/Object;

    #@4
    .line 209
    .local v9, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    #@6
    .line 210
    const/4 v1, 0x0

    #@7
    aget-object v1, v9, v1

    #@9
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@c
    move-result v1

    #@d
    .line 211
    const/4 v2, 0x1

    #@e
    aget-object v2, v9, v2

    #@10
    check-cast v2, [Ljava/lang/Object;

    #@12
    .line 212
    const/4 v3, 0x2

    #@13
    aget-object v3, v9, v3

    #@15
    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@17
    .line 213
    const/4 v4, 0x3

    #@18
    aget-object v4, v9, v4

    #@1a
    check-cast v4, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@1c
    .line 214
    const/4 v5, 0x4

    #@1d
    aget-object v5, v9, v5

    #@1f
    check-cast v5, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@21
    .line 215
    const/4 v6, 0x5

    #@22
    aget-object v6, v9, v6

    #@24
    check-cast v6, [B

    #@26
    .line 216
    const/4 v7, 0x6

    #@27
    aget-object v7, v9, v7

    #@29
    check-cast v7, Ljava/util/List;

    #@2b
    .line 209
    const/4 v8, 0x0

    #@2c
    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/pkcs7/SignerInfo;-><init>(I[Ljava/lang/Object;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;Lorg/apache/harmony/security/pkcs7/SignerInfo;)V

    #@2f
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    move-object v1, p1

    #@4
    .line 189
    check-cast v1, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    #@6
    .line 190
    .local v1, "si":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    new-array v2, v2, [B

    #@8
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get7(Lorg/apache/harmony/security/pkcs7/SignerInfo;)I

    #@b
    move-result v3

    #@c
    int-to-byte v3, v3

    #@d
    aput-byte v3, v2, v4

    #@f
    aput-object v2, p2, v4

    #@11
    .line 192
    const/4 v2, 0x2

    #@12
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    #@16
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get4(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljavax/security/auth/x500/X500Principal;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    #@21
    const/4 v4, 0x0

    #@22
    aput-object v3, v2, v4

    #@24
    .line 193
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get5(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/math/BigInteger;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    #@2b
    move-result-object v3

    #@2c
    const/4 v4, 0x1

    #@2d
    aput-object v3, v2, v4

    #@2f
    .line 192
    const/4 v3, 0x1

    #@30
    aput-object v2, p2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 200
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get1(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@35
    move-result-object v2

    #@36
    aput-object v2, p2, v5

    #@38
    .line 201
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get0(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@3b
    move-result-object v2

    #@3c
    const/4 v3, 0x3

    #@3d
    aput-object v2, p2, v3

    #@3f
    .line 202
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get2(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@42
    move-result-object v2

    #@43
    const/4 v3, 0x4

    #@44
    aput-object v2, p2, v3

    #@46
    .line 203
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get3(Lorg/apache/harmony/security/pkcs7/SignerInfo;)[B

    #@49
    move-result-object v2

    #@4a
    const/4 v3, 0x5

    #@4b
    aput-object v2, p2, v3

    #@4d
    .line 204
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->-get6(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/util/List;

    #@50
    move-result-object v2

    #@51
    const/4 v3, 0x6

    #@52
    aput-object v2, p2, v3

    #@54
    .line 188
    return-void

    #@55
    .line 194
    :catch_0
    move-exception v0

    #@56
    .line 198
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@58
    const-string/jumbo v3, "Failed to encode issuer name"

    #@5b
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5e
    throw v2
.end method
