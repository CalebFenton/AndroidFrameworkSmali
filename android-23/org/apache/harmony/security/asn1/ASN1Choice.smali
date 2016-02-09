.class public abstract Lorg/apache/harmony/security/asn1/ASN1Choice;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Choice.java"


# instance fields
.field private final identifiers:[[I

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 14
    .param p1, "type"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 229
    const/4 v10, 0x0

    #@1
    invoke-direct {p0, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    #@4
    .line 231
    array-length v10, p1

    #@5
    if-nez v10, :cond_0

    #@7
    .line 232
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v11, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v12, "ASN.1 choice type MUST have at least one alternative: "

    #@11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v12

    #@19
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1c
    move-result-object v12

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v10

    #@29
    .line 236
    :cond_0
    new-instance v7, Ljava/util/TreeMap;

    #@2b
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    #@2e
    .line 237
    .local v7, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/math/BigInteger;Ljava/math/BigInteger;>;"
    const/4 v4, 0x0

    #@2f
    .local v4, "index":I
    :goto_0
    array-length v10, p1

    #@30
    if-ge v4, v10, :cond_5

    #@32
    .line 238
    aget-object v9, p1, v4

    #@34
    .line 240
    .local v9, "t":Lorg/apache/harmony/security/asn1/ASN1Type;
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Any;

    #@36
    if-eqz v10, :cond_1

    #@38
    .line 243
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@3a
    new-instance v11, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v12, "ASN.1 choice type MUST have alternatives with distinct tags: "

    #@42
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getClass()Ljava/lang/Class;

    #@49
    move-result-object v12

    #@4a
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4d
    move-result-object v12

    #@4e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v10

    #@5a
    .line 244
    :cond_1
    instance-of v10, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@5c
    if-eqz v10, :cond_2

    #@5e
    .line 247
    check-cast v9, Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@60
    .end local v9    # "t":Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v0, v9, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@62
    .line 248
    .local v0, "choiceToAdd":[[I
    const/4 v6, 0x0

    #@63
    .local v6, "j":I
    :goto_1
    const/4 v10, 0x0

    #@64
    aget-object v10, v0, v10

    #@66
    array-length v10, v10

    #@67
    if-ge v6, v10, :cond_4

    #@69
    .line 249
    const/4 v10, 0x0

    #@6a
    aget-object v10, v0, v10

    #@6c
    aget v10, v10, v6

    #@6e
    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    #@71
    .line 248
    add-int/lit8 v6, v6, 0x1

    #@73
    goto :goto_1

    #@74
    .line 255
    .end local v0    # "choiceToAdd":[[I
    .end local v6    # "j":I
    .restart local v9    # "t":Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_2
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@76
    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    #@79
    move-result v10

    #@7a
    if-eqz v10, :cond_3

    #@7c
    .line 256
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    #@7e
    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    #@81
    .line 260
    :cond_3
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    #@83
    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    #@86
    move-result v10

    #@87
    if-eqz v10, :cond_4

    #@89
    .line 261
    iget v10, v9, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    #@8b
    invoke-direct {p0, v7, v10, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    #@8e
    .line 237
    .end local v9    # "t":Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@90
    goto :goto_0

    #@91
    .line 266
    :cond_5
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    #@94
    move-result v8

    #@95
    .line 267
    .local v8, "size":I
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@97
    const/4 v11, 0x2

    #@98
    new-array v11, v11, [I

    #@9a
    const/4 v12, 0x2

    #@9b
    const/4 v13, 0x0

    #@9c
    aput v12, v11, v13

    #@9e
    const/4 v12, 0x1

    #@9f
    aput v8, v11, v12

    #@a1
    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@a4
    move-result-object v10

    #@a5
    check-cast v10, [[I

    #@a7
    iput-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@a9
    .line 268
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@ac
    move-result-object v10

    #@ad
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b0
    move-result-object v5

    #@b1
    .line 270
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/math/BigInteger;Ljava/math/BigInteger;>;>;"
    const/4 v2, 0x0

    #@b2
    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_6

    #@b4
    .line 271
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b7
    move-result-object v1

    #@b8
    check-cast v1, Ljava/util/Map$Entry;

    #@ba
    .line 272
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/math/BigInteger;Ljava/math/BigInteger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@bd
    move-result-object v3

    #@be
    check-cast v3, Ljava/math/BigInteger;

    #@c0
    .line 274
    .local v3, "identifier":Ljava/math/BigInteger;
    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@c2
    const/4 v11, 0x0

    #@c3
    aget-object v10, v10, v11

    #@c5
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@c8
    move-result v11

    #@c9
    aput v11, v10, v2

    #@cb
    .line 275
    iget-object v10, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@cd
    const/4 v11, 0x1

    #@ce
    aget-object v11, v10, v11

    #@d0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d3
    move-result-object v10

    #@d4
    check-cast v10, Ljava/math/BigInteger;

    #@d6
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    #@d9
    move-result v10

    #@da
    aput v10, v11, v2

    #@dc
    .line 270
    add-int/lit8 v2, v2, 0x1

    #@de
    goto :goto_2

    #@df
    .line 278
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/math/BigInteger;Ljava/math/BigInteger;>;"
    .end local v3    # "identifier":Ljava/math/BigInteger;
    :cond_6
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@e1
    .line 228
    return-void
.end method

.method private addIdentifier(Ljava/util/TreeMap;II)V
    .locals 4
    .param p2, "identifier"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    .local p1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/math/BigInteger;Ljava/math/BigInteger;>;"
    int-to-long v0, p2

    #@1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@4
    move-result-object v0

    #@5
    int-to-long v2, p3

    #@6
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "ASN.1 choice type MUST have alternatives with distinct tags: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 284
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getClass()Ljava/lang/Class;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 2
    .param p1, "identifier"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@3
    aget-object v1, v1, v0

    #@5
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    #@8
    move-result v1

    #@9
    if-ltz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@3
    aget-object v1, v1, v2

    #@5
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@7
    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    #@a
    move-result v0

    #@b
    .line 302
    .local v0, "index":I
    if-gez v0, :cond_0

    #@d
    .line 303
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Failed to decode ASN.1 choice type.  No alternatives were found for "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getClass()Ljava/lang/Class;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 306
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    #@31
    const/4 v2, 0x1

    #@32
    aget-object v1, v1, v2

    #@34
    aget v0, v1, v0

    #@36
    .line 308
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@38
    aget-object v1, v1, v0

    #@3a
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@40
    .line 311
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@42
    .line 313
    iget-boolean v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@44
    if-eqz v1, :cond_1

    #@46
    .line 314
    const/4 v1, 0x0

    #@47
    return-object v1

    #@48
    .line 316
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    return-object v1
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    #@3
    .line 319
    return-void
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 324
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    #@3
    .line 323
    return-void
.end method

.method public abstract getIndex(Ljava/lang/Object;)I
.end method

.method public abstract getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    #@0
    .prologue
    .line 332
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    #@3
    .line 331
    return-void
.end method
