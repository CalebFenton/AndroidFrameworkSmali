.class final Lorg/apache/harmony/security/x509/Extension$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extension;
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
    .line 363
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 376
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;->setDefault(Ljava/lang/Object;I)V

    #@9
    .line 374
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 380
    iget-object v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@5
    check-cast v9, [Ljava/lang/Object;

    #@7
    .line 382
    .local v9, "values":[Ljava/lang/Object;
    aget-object v8, v9, v1

    #@9
    check-cast v8, [I

    #@b
    .line 383
    .local v8, "oid":[I
    aget-object v0, v9, v5

    #@d
    check-cast v0, [Ljava/lang/Object;

    #@f
    aget-object v3, v0, v1

    #@11
    check-cast v3, [B

    #@13
    .line 384
    .local v3, "extnValue":[B
    aget-object v0, v9, v5

    #@15
    check-cast v0, [Ljava/lang/Object;

    #@17
    aget-object v4, v0, v2

    #@19
    check-cast v4, [B

    #@1b
    .line 386
    .local v4, "rawExtnValue":[B
    const/4 v6, 0x0

    #@1c
    .line 388
    .local v6, "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    #@1e
    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 389
    new-instance v6, Lorg/apache/harmony/security/x509/KeyUsage;

    #@26
    .end local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    #@29
    .line 394
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/harmony/security/x509/Extension;

    #@2b
    aget-object v1, v9, v1

    #@2d
    check-cast v1, [I

    #@2f
    aget-object v2, v9, v2

    #@31
    check-cast v2, Ljava/lang/Boolean;

    #@33
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@36
    move-result v2

    #@37
    .line 395
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@3a
    move-result-object v5

    #@3b
    .line 394
    const/4 v7, 0x0

    #@3c
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension;)V

    #@3f
    return-object v0

    #@40
    .line 390
    .restart local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    :cond_1
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    #@42
    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_0

    #@48
    .line 391
    new-instance v6, Lorg/apache/harmony/security/x509/BasicConstraints;

    #@4a
    .end local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    #@4d
    .local v6, "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 399
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    #@3
    .line 400
    .local v0, "ext":Lorg/apache/harmony/security/x509/Extension;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->-get1(Lorg/apache/harmony/security/x509/Extension;)[I

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 401
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->-get0(Lorg/apache/harmony/security/x509/Extension;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@12
    :goto_0
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 402
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->-get2(Lorg/apache/harmony/security/x509/Extension;)[B

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, p2, v2

    #@1c
    .line 398
    return-void

    #@1d
    .line 401
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1f
    goto :goto_0
.end method
