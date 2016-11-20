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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    const/16 v0, 0xb

    #@2
    invoke-direct {p0, v0}, Ljava/util/jar/Attributes;-><init>(I)V

    #@5
    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@8
    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@a
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Attributes;)V
    .locals 1
    .param p1, "attr"    # Ljava/util/jar/Attributes;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@a
    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 223
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 292
    new-instance v0, Ljava/util/jar/Attributes;

    #@2
    invoke-direct {v0, p0}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    #@5
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2
    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;

    #@0
    .prologue
    .line 134
    invoke-virtual {p0, p1}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    check-cast p1, Ljava/util/jar/Attributes$Name;

    #@4
    .end local p1    # "name":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@6
    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-class v2, Ljava/util/jar/Attributes;

    #@2
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 215
    new-instance v2, Ljava/lang/ClassCastException;

    #@a
    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    #@d
    throw v2

    #@e
    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "me$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 217
    .local v0, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {p0, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    goto :goto_0

    #@2e
    .line 212
    .end local v0    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2
    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method read(Ljava/util/jar/Manifest$FastInputStream;[B)V
    .locals 12
    .param p1, "is"    # Ljava/util/jar/Manifest$FastInputStream;
    .param p2, "lbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    const/4 v7, 0x0

    #@1
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    #@2
    .line 374
    .local v8, "value":Ljava/lang/String;
    const/4 v4, 0x0

    #@3
    .line 377
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    #@6
    move-result v5

    #@7
    .local v5, "len":I
    const/4 v9, -0x1

    #@8
    if-eq v5, v9, :cond_3

    #@a
    .line 378
    const/4 v6, 0x0

    #@b
    .line 379
    .local v6, "lineContinued":Z
    add-int/lit8 v5, v5, -0x1

    #@d
    aget-byte v9, p2, v5

    #@f
    const/16 v10, 0xa

    #@11
    if-eq v9, v10, :cond_1

    #@13
    .line 380
    new-instance v9, Ljava/io/IOException;

    #@15
    const-string/jumbo v10, "line too long"

    #@18
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v9

    #@1c
    .line 382
    :cond_1
    if-lez v5, :cond_2

    #@1e
    add-int/lit8 v9, v5, -0x1

    #@20
    aget-byte v9, p2, v9

    #@22
    const/16 v10, 0xd

    #@24
    if-ne v9, v10, :cond_2

    #@26
    .line 383
    add-int/lit8 v5, v5, -0x1

    #@28
    .line 385
    :cond_2
    if-nez v5, :cond_4

    #@2a
    .line 372
    .end local v6    # "lineContinued":Z
    :cond_3
    return-void

    #@2b
    .line 388
    .restart local v6    # "lineContinued":Z
    :cond_4
    const/4 v2, 0x0

    #@2c
    .line 389
    .local v2, "i":I
    const/4 v9, 0x0

    #@2d
    aget-byte v9, p2, v9

    #@2f
    const/16 v10, 0x20

    #@31
    if-ne v9, v10, :cond_8

    #@33
    .line 391
    if-nez v7, :cond_5

    #@35
    .line 392
    new-instance v9, Ljava/io/IOException;

    #@37
    const-string/jumbo v10, "misplaced continuation line"

    #@3a
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v9

    #@3e
    .line 394
    :cond_5
    const/4 v6, 0x1

    #@3f
    .line 395
    array-length v9, v4

    #@40
    add-int/2addr v9, v5

    #@41
    add-int/lit8 v9, v9, -0x1

    #@43
    new-array v0, v9, [B

    #@45
    .line 396
    .local v0, "buf":[B
    array-length v9, v4

    #@46
    const/4 v10, 0x0

    #@47
    const/4 v11, 0x0

    #@48
    invoke-static {v4, v10, v0, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4b
    .line 397
    array-length v9, v4

    #@4c
    add-int/lit8 v10, v5, -0x1

    #@4e
    const/4 v11, 0x1

    #@4f
    invoke-static {p2, v11, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@52
    .line 398
    invoke-virtual {p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    #@55
    move-result v9

    #@56
    const/16 v10, 0x20

    #@58
    if-ne v9, v10, :cond_6

    #@5a
    .line 399
    move-object v4, v0

    #@5b
    .line 400
    .local v4, "lastline":[B
    goto :goto_0

    #@5c
    .line 402
    .end local v4    # "lastline":[B
    :cond_6
    new-instance v8, Ljava/lang/String;

    #@5e
    array-length v9, v0

    #@5f
    const-string/jumbo v10, "UTF8"

    #@62
    const/4 v11, 0x0

    #@63
    invoke-direct {v8, v0, v11, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@66
    .line 403
    .local v8, "value":Ljava/lang/String;
    const/4 v4, 0x0

    #@67
    .line 422
    .end local v0    # "buf":[B
    :goto_1
    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v9

    #@6b
    if-eqz v9, :cond_0

    #@6d
    if-nez v6, :cond_0

    #@6f
    .line 423
    const-string/jumbo v9, "java.util.jar"

    #@72
    invoke-static {v9}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@75
    move-result-object v9

    #@76
    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v11, "Duplicate name in Manifest: "

    #@7e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v10

    #@82
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v10

    #@86
    .line 425
    const-string/jumbo v11, ".\n"

    #@89
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    .line 426
    const-string/jumbo v11, "Ensure that the manifest does not "

    #@90
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v10

    #@94
    .line 427
    const-string/jumbo v11, "have duplicate entries, and\n"

    #@97
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    .line 428
    const-string/jumbo v11, "that blank lines separate "

    #@9e
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v10

    #@a2
    .line 429
    const-string/jumbo v11, "individual sections in both your\n"

    #@a5
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    .line 430
    const-string/jumbo v11, "manifest and in the META-INF/MANIFEST.MF "

    #@ac
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v10

    #@b0
    .line 431
    const-string/jumbo v11, "entry in the jar file."

    #@b3
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v10

    #@b7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v10

    #@bb
    .line 423
    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@be
    goto/16 :goto_0

    #@c0
    .line 433
    :catch_0
    move-exception v1

    #@c1
    .line 434
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/io/IOException;

    #@c3
    new-instance v10, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v11, "invalid header field name: "

    #@cb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v10

    #@cf
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v10

    #@d3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v10

    #@d7
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@da
    throw v9

    #@db
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v8    # "value":Ljava/lang/String;
    .local v3, "i":I
    :cond_7
    move v2, v3

    #@dc
    .line 405
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_8
    add-int/lit8 v3, v2, 0x1

    #@de
    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p2, v2

    #@e0
    const/16 v10, 0x3a

    #@e2
    if-eq v9, v10, :cond_9

    #@e4
    .line 406
    if-lt v3, v5, :cond_7

    #@e6
    .line 407
    new-instance v9, Ljava/io/IOException;

    #@e8
    const-string/jumbo v10, "invalid header field"

    #@eb
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v9

    #@ef
    .line 410
    :cond_9
    add-int/lit8 v2, v3, 0x1

    #@f1
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p2, v3

    #@f3
    const/16 v10, 0x20

    #@f5
    if-eq v9, v10, :cond_a

    #@f7
    .line 411
    new-instance v9, Ljava/io/IOException;

    #@f9
    const-string/jumbo v10, "invalid header field"

    #@fc
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v9

    #@100
    .line 413
    :cond_a
    new-instance v7, Ljava/lang/String;

    #@102
    add-int/lit8 v9, v2, -0x2

    #@104
    const/4 v10, 0x0

    #@105
    const/4 v11, 0x0

    #@106
    invoke-direct {v7, p2, v10, v11, v9}, Ljava/lang/String;-><init>([BIII)V

    #@109
    .line 414
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    #@10c
    move-result v9

    #@10d
    const/16 v10, 0x20

    #@10f
    if-ne v9, v10, :cond_b

    #@111
    .line 415
    sub-int v9, v5, v2

    #@113
    new-array v4, v9, [B

    #@115
    .line 416
    .restart local v4    # "lastline":[B
    sub-int v9, v5, v2

    #@117
    const/4 v10, 0x0

    #@118
    invoke-static {p2, v2, v4, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 419
    .end local v4    # "lastline":[B
    :cond_b
    new-instance v8, Ljava/lang/String;

    #@11f
    sub-int v9, v5, v2

    #@121
    const-string/jumbo v10, "UTF8"

    #@124
    invoke-direct {v8, p2, v2, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@127
    .restart local v8    # "value":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 300
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v5

    #@5
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .line 301
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/Map$Entry;

    #@15
    .line 303
    .local v1, "e":Ljava/util/Map$Entry;
    new-instance v0, Ljava/lang/StringBuffer;

    #@17
    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Ljava/util/jar/Attributes$Name;

    #@1d
    invoke-virtual {v5}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 303
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@24
    .line 305
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v5, ": "

    #@27
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    .line 308
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@32
    .line 309
    const-string/jumbo v5, "UTF8"

    #@35
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@38
    move-result-object v4

    #@39
    .line 310
    .local v4, "vb":[B
    new-instance v3, Ljava/lang/String;

    #@3b
    .end local v3    # "value":Ljava/lang/String;
    array-length v5, v4

    #@3c
    invoke-direct {v3, v4, v6, v6, v5}, Ljava/lang/String;-><init>([BIII)V

    #@3f
    .line 312
    .end local v4    # "vb":[B
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 314
    const-string/jumbo v5, "\r\n"

    #@45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    .line 315
    invoke-static {v0}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    #@4b
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@52
    goto :goto_0

    #@53
    .line 318
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "\r\n"

    #@56
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@59
    .line 299
    return-void
.end method

.method writeMain(Ljava/io/DataOutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 331
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    #@3
    invoke-virtual {v8}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    #@6
    move-result-object v6

    #@7
    .line 332
    .local v6, "vername":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    .line 333
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    #@d
    .line 334
    sget-object v8, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@f
    invoke-virtual {v8}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    .line 335
    invoke-virtual {p0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    .line 338
    :cond_0
    if-eqz v7, :cond_1

    #@19
    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    const-string/jumbo v9, ": "

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    const-string/jumbo v9, "\r\n"

    #@30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@3b
    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    #@3e
    move-result-object v8

    #@3f
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v2

    #@43
    .line 345
    .local v2, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_4

    #@49
    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Ljava/util/Map$Entry;

    #@4f
    .line 347
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@52
    move-result-object v8

    #@53
    check-cast v8, Ljava/util/jar/Attributes$Name;

    #@55
    invoke-virtual {v8}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    .line 348
    .local v3, "name":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@5b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v8

    #@5f
    if-nez v8, :cond_2

    #@61
    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    #@63
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@66
    .line 351
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v8, ": "

    #@69
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6c
    .line 353
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6f
    move-result-object v4

    #@70
    check-cast v4, Ljava/lang/String;

    #@72
    .line 354
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@74
    .line 355
    const-string/jumbo v8, "UTF8"

    #@77
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@7a
    move-result-object v5

    #@7b
    .line 356
    .local v5, "vb":[B
    new-instance v4, Ljava/lang/String;

    #@7d
    .end local v4    # "value":Ljava/lang/String;
    array-length v8, v5

    #@7e
    invoke-direct {v4, v5, v10, v10, v8}, Ljava/lang/String;-><init>([BIII)V

    #@81
    .line 358
    .end local v5    # "vb":[B
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@84
    .line 360
    const-string/jumbo v8, "\r\n"

    #@87
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8a
    .line 361
    invoke-static {v0}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    #@8d
    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@94
    goto :goto_0

    #@95
    .line 365
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "\r\n"

    #@98
    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@9b
    .line 328
    return-void
.end method
