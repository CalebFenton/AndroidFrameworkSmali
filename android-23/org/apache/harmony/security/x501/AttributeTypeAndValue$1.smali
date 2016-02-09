.class final Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "$anonymous0"    # I

    #@0
    .prologue
    .line 330
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public checkTag(I)Z
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 333
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    const/4 v1, 0x0

    #@1
    .line 339
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@3
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@5
    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 341
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@d
    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@13
    .line 347
    :goto_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getOffset()I

    #@16
    move-result v2

    #@17
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    #@1a
    move-result v3

    #@1b
    sub-int/2addr v2, v3

    #@1c
    new-array v0, v2, [B

    #@1e
    .line 348
    .local v0, "bytesEncoded":[B
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getBuffer()[B

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    #@25
    move-result v3

    #@26
    .line 349
    array-length v4, v0

    #@27
    const/4 v5, 0x0

    #@28
    .line 348
    invoke-static {v2, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 351
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeValue;

    #@2d
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2f
    invoke-direct {v2, v1, v0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[BI)V

    #@32
    return-object v2

    #@33
    .line 344
    .end local v0    # "bytesEncoded":[B
    .restart local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@36
    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 363
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    #@4
    .line 365
    .local v0, "av":Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 366
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@a
    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@c
    .line 367
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    #@f
    .line 362
    :goto_0
    return-void

    #@10
    .line 369
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p1, v1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    #@17
    .line 370
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    #@19
    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@1b
    .line 371
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    #@1e
    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 395
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "AttributeValue encodeContent MUST NOT be invoked"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "AttributeValue getDecodedObject MUST NOT be invoked"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 399
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    #@4
    .line 400
    .local v0, "av":Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 401
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@a
    return v1

    #@b
    .line 403
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 376
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    #@4
    .line 378
    .local v0, "av":Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 379
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@a
    array-length v1, v1

    #@b
    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@d
    .line 375
    :goto_0
    return-void

    #@e
    .line 381
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    #@11
    move-result v1

    #@12
    const/16 v2, 0xc

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 382
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@18
    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@1a
    .line 383
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@1c
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@1f
    .line 384
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@21
    check-cast v1, [B

    #@23
    iput-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    #@25
    .line 385
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    #@27
    goto :goto_0

    #@28
    .line 387
    :cond_1
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@2a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@2f
    move-result-object v1

    #@30
    iput-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    #@32
    .line 388
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    #@34
    array-length v1, v1

    #@35
    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    #@37
    goto :goto_0
.end method
