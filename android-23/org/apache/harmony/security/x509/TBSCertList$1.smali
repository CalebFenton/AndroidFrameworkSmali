.class final Lorg/apache/harmony/security/x509/TBSCertList$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList;
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
    .line 323
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 333
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    #@7
    .line 334
    const/4 v0, 0x4

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    #@b
    .line 335
    const/4 v0, 0x5

    #@c
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    #@f
    .line 336
    const/4 v0, 0x6

    #@10
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    #@13
    .line 331
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 11
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 340
    iget-object v10, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@5
    check-cast v10, [Ljava/lang/Object;

    #@7
    .line 341
    .local v10, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList;

    #@9
    .line 342
    aget-object v1, v10, v3

    #@b
    if-nez v1, :cond_0

    #@d
    move v1, v2

    #@e
    .line 345
    :goto_0
    aget-object v2, v10, v2

    #@10
    check-cast v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@12
    .line 346
    const/4 v3, 0x2

    #@13
    aget-object v3, v10, v3

    #@15
    check-cast v3, Lorg/apache/harmony/security/x501/Name;

    #@17
    .line 347
    const/4 v4, 0x3

    #@18
    aget-object v4, v10, v4

    #@1a
    check-cast v4, Ljava/util/Date;

    #@1c
    .line 348
    const/4 v5, 0x4

    #@1d
    aget-object v5, v10, v5

    #@1f
    check-cast v5, Ljava/util/Date;

    #@21
    .line 349
    const/4 v6, 0x5

    #@22
    aget-object v6, v10, v6

    #@24
    check-cast v6, Ljava/util/List;

    #@26
    .line 350
    const/4 v7, 0x6

    #@27
    aget-object v7, v10, v7

    #@29
    check-cast v7, Lorg/apache/harmony/security/x509/Extensions;

    #@2b
    .line 351
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@2e
    move-result-object v8

    #@2f
    .line 341
    invoke-direct/range {v0 .. v9}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList;)V

    #@32
    return-object v0

    #@33
    .line 344
    :cond_0
    aget-object v1, v10, v3

    #@35
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@38
    move-result v1

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    move-object v0, p1

    #@2
    .line 356
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    #@4
    .line 357
    .local v0, "tbs":Lorg/apache/harmony/security/x509/TBSCertList;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get6(Lorg/apache/harmony/security/x509/TBSCertList;)I

    #@7
    move-result v1

    #@8
    if-le v1, v3, :cond_0

    #@a
    .line 358
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get6(Lorg/apache/harmony/security/x509/TBSCertList;)I

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 357
    :goto_0
    const/4 v2, 0x0

    #@15
    aput-object v1, p2, v2

    #@17
    .line 359
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get4(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@1a
    move-result-object v1

    #@1b
    aput-object v1, p2, v3

    #@1d
    .line 360
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get1(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x2

    #@22
    aput-object v1, p2, v2

    #@24
    .line 361
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get5(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x3

    #@29
    aput-object v1, p2, v2

    #@2b
    .line 362
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get2(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput-object v1, p2, v2

    #@32
    .line 363
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get3(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;

    #@35
    move-result-object v1

    #@36
    const/4 v2, 0x5

    #@37
    aput-object v1, p2, v2

    #@39
    .line 364
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->-get0(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;

    #@3c
    move-result-object v1

    #@3d
    const/4 v2, 0x6

    #@3e
    aput-object v1, p2, v2

    #@40
    .line 355
    return-void

    #@41
    .line 358
    :cond_0
    const/4 v1, 0x0

    #@42
    goto :goto_0
.end method
