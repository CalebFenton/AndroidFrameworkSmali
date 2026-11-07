.class public Ljava/util/jar/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Attributes$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected whitelist test-api map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 72
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 83
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/jar/Attributes;)V
    .registers 3
    .param p1, "attr"    # Ljava/util/jar/Attributes;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 231
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 232
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 300
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0, p0}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Ljava/util/jar/Attributes$Name;->of(Ljava/lang/String;)Ljava/util/jar/Attributes$Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;

    .line 141
    invoke-virtual {p0, p1}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 287
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 245
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/util/jar/Attributes$Name;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 221
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-class v0, Ljava/util/jar/Attributes;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 223
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    .local v1, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 225
    .end local v1    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_28
    return-void

    .line 222
    :cond_29
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 176
    invoke-static {p1}, Ljava/util/jar/Attributes$Name;->of(Ljava/lang/String;)Ljava/util/jar/Attributes$Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method blacklist read(Ljava/util/jar/Manifest$FastInputStream;[BLjava/lang/String;I)I
    .registers 21
    .param p1, "is"    # Ljava/util/jar/Manifest$FastInputStream;
    .param p2, "lbuf"    # [B
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    .line 370
    .local v0, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v0

    move/from16 v0, p4

    .line 373
    .end local p4    # "lineNumber":I
    .local v0, "lineNumber":I
    .local v3, "fullLine":Ljava/io/ByteArrayOutputStream;
    .local v4, "name":Ljava/lang/String;
    :goto_d
    invoke-virtual/range {p1 .. p2}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_17b

    .line 374
    const/4 v5, 0x0

    .line 375
    .local v5, "lineContinued":Z
    add-int/lit8 v6, v6, -0x1

    aget-byte v7, v1, v6

    .line 376
    .local v7, "c":B
    add-int/lit8 v8, v0, 0x1

    .line 378
    .end local v0    # "lineNumber":I
    .local v8, "lineNumber":I
    const/16 v0, 0xa

    const/16 v9, 0xd

    const-string v10, ")"

    if-eq v7, v0, :cond_48

    if-ne v7, v9, :cond_27

    goto :goto_48

    .line 379
    :cond_27
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "line too long ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 380
    invoke-static {v2, v8}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_48
    :goto_48
    if-lez v6, :cond_52

    add-int/lit8 v0, v6, -0x1

    aget-byte v0, v1, v0

    if-ne v0, v9, :cond_52

    .line 383
    add-int/lit8 v6, v6, -0x1

    .line 385
    :cond_52
    if-nez v6, :cond_59

    .line 386
    move-object/from16 v12, p0

    move v0, v8

    goto/16 :goto_17d

    .line 388
    :cond_59
    const/4 v0, 0x0

    .line 389
    .local v0, "i":I
    const/4 v9, 0x0

    aget-byte v11, v1, v9

    const/16 v12, 0x20

    if-ne v11, v12, :cond_a2

    .line 391
    if-eqz v4, :cond_81

    .line 395
    const/4 v5, 0x1

    .line 396
    add-int/lit8 v9, v6, -0x1

    const/4 v11, 0x1

    invoke-virtual {v3, v1, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v9

    if-ne v9, v12, :cond_72

    .line 398
    move v0, v8

    goto :goto_d

    .line 400
    :cond_72
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object v11, v9

    move v9, v5

    move-object v5, v4

    move v4, v0

    goto/16 :goto_fd

    .line 392
    .end local v9    # "value":Ljava/lang/String;
    :cond_81
    new-instance v9, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "misplaced continuation line ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 393
    invoke-static {v2, v8}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 403
    :cond_a2
    :goto_a2
    add-int/lit8 v11, v0, 0x1

    .end local v0    # "i":I
    .local v11, "i":I
    aget-byte v0, v1, v0

    const/16 v13, 0x3a

    const-string v14, "invalid header field ("

    if-eq v0, v13, :cond_cf

    .line 404
    if-ge v11, v6, :cond_b0

    move v0, v11

    goto :goto_a2

    .line 405
    :cond_b0
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 406
    invoke-static {v2, v8}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_cf
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .restart local v0    # "i":I
    aget-byte v11, v1, v11

    if-ne v11, v12, :cond_15a

    .line 413
    new-instance v11, Ljava/lang/String;

    add-int/lit8 v13, v0, -0x2

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v1, v9, v13, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v11

    .line 414
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v9

    if-ne v9, v12, :cond_f0

    .line 415
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 416
    sub-int v9, v6, v0

    invoke-virtual {v3, v1, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 417
    move v0, v8

    goto/16 :goto_d

    .line 419
    :cond_f0
    new-instance v9, Ljava/lang/String;

    sub-int v11, v6, v0

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v0, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v11, v9

    move v9, v5

    move-object v5, v4

    move v4, v0

    .line 422
    .end local v0    # "i":I
    .local v4, "i":I
    .local v5, "name":Ljava/lang/String;
    .local v9, "lineContinued":Z
    .local v11, "value":Ljava/lang/String;
    :goto_fd
    move-object/from16 v12, p0

    :try_start_ff
    invoke-virtual {v12, v5, v11}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_129

    if-nez v9, :cond_129

    .line 423
    const-string v0, "java.util.jar"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Duplicate name in Manifest: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".\nEnsure that the manifest does not have duplicate entries, and\nthat blank lines separate individual sections in both your\nmanifest and in the META-INF/MANIFEST.MF entry in the jar file."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ff .. :try_end_129} :catch_12e

    .line 436
    :cond_129
    nop

    .line 437
    .end local v4    # "i":I
    .end local v7    # "c":B
    .end local v9    # "lineContinued":Z
    move-object v4, v5

    move v0, v8

    goto/16 :goto_d

    .line 433
    .restart local v4    # "i":I
    .restart local v7    # "c":B
    .restart local v9    # "lineContinued":Z
    :catch_12e
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid header field name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 435
    invoke-static {v2, v8}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 410
    .end local v9    # "lineContinued":Z
    .end local v11    # "value":Ljava/lang/String;
    .local v0, "i":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "lineContinued":Z
    :cond_15a
    move-object/from16 v12, p0

    new-instance v9, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 411
    invoke-static {v2, v8}, Ljava/util/jar/Manifest;->getErrorPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 373
    .end local v5    # "lineContinued":Z
    .end local v7    # "c":B
    .end local v8    # "lineNumber":I
    .local v0, "lineNumber":I
    :cond_17b
    move-object/from16 v12, p0

    .line 438
    :goto_17d
    return v0
.end method

.method greylist-max-o read(Ljava/util/jar/Manifest$FastInputStream;[B)V
    .registers 5
    .param p1, "is"    # Ljava/util/jar/Manifest$FastInputStream;
    .param p2, "lbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[BLjava/lang/String;I)I

    .line 366
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 238
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o write(Ljava/io/DataOutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 310
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 311
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/jar/Manifest;->println72(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 315
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_f

    .line 316
    :cond_3e
    invoke-static {p1}, Ljava/util/jar/Manifest;->println(Ljava/io/OutputStream;)V

    .line 317
    return-void
.end method

.method greylist-max-o writeMain(Ljava/io/DataOutputStream;)V
    .registers 10
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    .local v0, "buffer":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "vername":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "version":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 333
    sget-object v3, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {p0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    :cond_1d
    const-string v3, ": "

    if-eqz v2, :cond_3a

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 342
    invoke-static {p1}, Ljava/util/jar/Manifest;->println(Ljava/io/OutputStream;)V

    .line 347
    :cond_3a
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 348
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v6}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "name":Ljava/lang/String;
    if-eqz v2, :cond_78

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_78

    .line 350
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 351
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/jar/Manifest;->println72(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 356
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "name":Ljava/lang/String;
    :cond_78
    goto :goto_42

    .line 358
    :cond_79
    invoke-static {p1}, Ljava/util/jar/Manifest;->println(Ljava/io/OutputStream;)V

    .line 359
    return-void
.end method
