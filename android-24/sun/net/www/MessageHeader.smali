.class public Lsun/net/www/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/MessageHeader$HeaderIterator;
    }
.end annotation


# instance fields
.field private keys:[Ljava/lang/String;

.field private nkeys:I

.field private values:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/net/www/MessageHeader;)I
    .locals 1

    #@0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    #@6
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    #@6
    .line 59
    return-void
.end method

.method public static canonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    .line 412
    if-nez p0, :cond_0

    #@4
    .line 413
    const-string/jumbo v4, ""

    #@7
    return-object v4

    #@8
    .line 414
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 415
    .local v2, "st":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    .line 416
    .local v1, "len":I
    const/4 v3, 0x0

    #@e
    .line 418
    .local v3, "substr":Z
    :goto_0
    if-ge v2, v1, :cond_2

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .local v0, "c":I
    const/16 v4, 0x3c

    #@16
    if-eq v0, v4, :cond_1

    #@18
    .line 419
    if-gt v0, v5, :cond_2

    #@1a
    .line 420
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    .line 421
    const/4 v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 423
    .end local v0    # "c":I
    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    #@20
    add-int/lit8 v4, v1, -0x1

    #@22
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v0

    #@26
    .restart local v0    # "c":I
    const/16 v4, 0x3e

    #@28
    if-eq v0, v4, :cond_3

    #@2a
    .line 424
    if-gt v0, v5, :cond_4

    #@2c
    .line 425
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@2e
    .line 426
    const/4 v3, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 428
    .end local v0    # "c":I
    :cond_4
    if-eqz v3, :cond_5

    #@32
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    .end local p0    # "id":Ljava/lang/String;
    :cond_5
    return-object p0
.end method

.method private grow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 343
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@7
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@9
    array-length v3, v3

    #@a
    if-lt v2, v3, :cond_3

    #@c
    .line 344
    :cond_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@e
    add-int/lit8 v2, v2, 0x4

    #@10
    new-array v0, v2, [Ljava/lang/String;

    #@12
    .line 345
    .local v0, "nk":[Ljava/lang/String;
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@14
    add-int/lit8 v2, v2, 0x4

    #@16
    new-array v1, v2, [Ljava/lang/String;

    #@18
    .line 346
    .local v1, "nv":[Ljava/lang/String;
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 347
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@1e
    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@20
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 348
    :cond_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 349
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@29
    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@2b
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 350
    :cond_2
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@30
    .line 351
    iput-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@32
    .line 342
    .end local v0    # "nk":[Ljava/lang/String;
    .end local v1    # "nv":[Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 303
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    #@4
    .line 304
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@6
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@8
    aput-object p1, v0, v1

    #@a
    .line 305
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@c
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@e
    aput-object p2, v0, v1

    #@10
    .line 306
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 302
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public declared-synchronized filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .param p1, "excludeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "include":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    #@1
    .line 240
    const/4 v9, 0x0

    #@2
    .line 241
    .local v9, "skipIt":Z
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    #@4
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@7
    .line 242
    .local v8, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@9
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@b
    if-ltz v2, :cond_4

    #@d
    .line 243
    if-eqz p1, :cond_0

    #@f
    .line 246
    const/4 v3, 0x0

    #@10
    .local v3, "j":I
    :goto_1
    array-length v10, p1

    #@11
    if-ge v3, v10, :cond_0

    #@13
    .line 247
    aget-object v10, p1, v3

    #@15
    if-eqz v10, :cond_2

    #@17
    .line 248
    aget-object v10, p1, v3

    #@19
    iget-object v11, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@1b
    aget-object v11, v11, v2

    #@1d
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v10

    #@21
    .line 247
    if-eqz v10, :cond_2

    #@23
    .line 249
    const/4 v9, 0x1

    #@24
    .line 254
    .end local v3    # "j":I
    :cond_0
    if-nez v9, :cond_3

    #@26
    .line 255
    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@28
    aget-object v10, v10, v2

    #@2a
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v7

    #@2e
    check-cast v7, Ljava/util/List;

    #@30
    .line 256
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    #@32
    .line 257
    new-instance v7, Ljava/util/ArrayList;

    #@34
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@37
    .line 258
    .restart local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@39
    aget-object v10, v10, v2

    #@3b
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 260
    :cond_1
    iget-object v10, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@40
    aget-object v10, v10, v2

    #@42
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    goto :goto_0

    #@46
    .end local v2    # "i":I
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v10

    #@47
    monitor-exit p0

    #@48
    throw v10

    #@49
    .line 246
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v8    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 263
    .end local v3    # "j":I
    :cond_3
    const/4 v9, 0x0

    #@4d
    goto :goto_0

    #@4e
    .line 267
    :cond_4
    if-eqz p2, :cond_6

    #@50
    .line 268
    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@53
    move-result-object v10

    #@54
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v0

    #@58
    .line 269
    .local v0, "entries":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v10

    #@5c
    if-eqz v10, :cond_6

    #@5e
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v1

    #@62
    check-cast v1, Ljava/util/Map$Entry;

    #@64
    .line 271
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@67
    move-result-object v10

    #@68
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v6

    #@6c
    check-cast v6, Ljava/util/List;

    #@6e
    .line 272
    .local v6, "l":Ljava/util/List;
    if-nez v6, :cond_5

    #@70
    .line 273
    new-instance v6, Ljava/util/ArrayList;

    #@72
    .end local v6    # "l":Ljava/util/List;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@75
    .line 274
    .restart local v6    # "l":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@78
    move-result-object v10

    #@79
    check-cast v10, Ljava/lang/String;

    #@7b
    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 276
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@81
    move-result-object v10

    #@82
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@85
    goto :goto_2

    #@86
    .line 280
    .end local v0    # "entries":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "l":Ljava/util/List;
    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@89
    move-result-object v10

    #@8a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v5

    #@8e
    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v10

    #@92
    if-eqz v10, :cond_7

    #@94
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v4

    #@98
    check-cast v4, Ljava/lang/String;

    #@9a
    .line 281
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    move-result-object v10

    #@9e
    check-cast v10, Ljava/util/List;

    #@a0
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@a3
    move-result-object v10

    #@a4
    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    goto :goto_3

    #@a8
    .line 284
    .end local v4    # "key":Ljava/lang/String;
    :cond_7
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ab
    move-result-object v10

    #@ac
    monitor-exit p0

    #@ad
    return-object v10
.end method

.method public filterNTLMResponses(Ljava/lang/String;)Z
    .locals 9
    .param p1, "k"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 147
    const/4 v6, 0x0

    #@4
    .line 148
    .local v6, "found":Z
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    :goto_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@7
    if-ge v7, v0, :cond_0

    #@9
    .line 149
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@b
    aget-object v0, v0, v7

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 150
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@15
    aget-object v0, v0, v7

    #@17
    if-eqz v0, :cond_2

    #@19
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@1b
    aget-object v0, v0, v7

    #@1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v0

    #@21
    if-le v0, v5, :cond_2

    #@23
    .line 151
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@25
    aget-object v0, v0, v7

    #@27
    const-string/jumbo v3, "NTLM "

    #@2a
    move v4, v2

    #@2b
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@2e
    move-result v0

    #@2f
    .line 149
    if-eqz v0, :cond_2

    #@31
    .line 152
    const/4 v6, 0x1

    #@32
    .line 156
    :cond_0
    if-eqz v6, :cond_6

    #@34
    .line 157
    const/4 v8, 0x0

    #@35
    .line 158
    .local v8, "j":I
    const/4 v7, 0x0

    #@36
    :goto_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@38
    if-ge v7, v0, :cond_5

    #@3a
    .line 159
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@3c
    aget-object v0, v0, v7

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_3

    #@44
    .line 160
    const-string/jumbo v0, "Negotiate"

    #@47
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@49
    aget-object v3, v3, v7

    #@4b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_1

    #@51
    .line 161
    const-string/jumbo v0, "Kerberos"

    #@54
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@56
    aget-object v3, v3, v7

    #@58
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5b
    move-result v0

    #@5c
    .line 159
    if-eqz v0, :cond_3

    #@5e
    .line 158
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@60
    goto :goto_1

    #@61
    .line 148
    .end local v8    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@63
    goto :goto_0

    #@64
    .line 164
    .restart local v8    # "j":I
    :cond_3
    if-eq v7, v8, :cond_4

    #@66
    .line 165
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@68
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@6a
    aget-object v3, v3, v7

    #@6c
    aput-object v3, v0, v8

    #@6e
    .line 166
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@70
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@72
    aget-object v3, v3, v7

    #@74
    aput-object v3, v0, v8

    #@76
    .line 168
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@78
    goto :goto_2

    #@79
    .line 170
    :cond_5
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@7b
    if-eq v8, v0, :cond_6

    #@7d
    .line 171
    iput v8, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@7f
    .line 172
    return v1

    #@80
    .line 175
    .end local v8    # "j":I
    :cond_6
    return v2
.end method

.method public declared-synchronized findNextValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 123
    const/4 v0, 0x0

    #@3
    .line 124
    .local v0, "foundV":Z
    if-nez p1, :cond_2

    #@5
    .line 125
    :try_start_0
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@7
    .local v1, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_5

    #@b
    .line 126
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@d
    aget-object v2, v2, v1

    #@f
    if-nez v2, :cond_0

    #@11
    .line 127
    if-eqz v0, :cond_1

    #@13
    .line 128
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@15
    aget-object v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    return-object v2

    #@19
    .line 129
    :cond_1
    :try_start_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@1b
    aget-object v2, v2, v1

    #@1d
    if-ne v2, p2, :cond_0

    #@1f
    .line 130
    const/4 v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 132
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@23
    .restart local v1    # "i":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@25
    if-ltz v1, :cond_5

    #@27
    .line 133
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@29
    aget-object v2, v2, v1

    #@2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 134
    if-eqz v0, :cond_4

    #@33
    .line 135
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@35
    aget-object v2, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    return-object v2

    #@39
    .line 136
    :cond_4
    :try_start_2
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@3b
    aget-object v2, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    if-ne v2, p2, :cond_3

    #@3f
    .line 137
    const/4 v0, 0x1

    #@40
    goto :goto_1

    #@41
    :cond_5
    monitor-exit p0

    #@42
    .line 138
    return-object v3

    #@43
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@44
    monitor-exit p0

    #@45
    throw v2
.end method

.method public declared-synchronized findValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 80
    if-nez p1, :cond_1

    #@4
    .line 81
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@6
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@8
    if-ltz v0, :cond_3

    #@a
    .line 82
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@c
    aget-object v1, v1, v0

    #@e
    if-nez v1, :cond_0

    #@10
    .line 83
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@12
    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v1

    #@16
    .line 85
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@18
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@1a
    if-ltz v0, :cond_3

    #@1c
    .line 86
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@1e
    aget-object v1, v1, v0

    #@20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 87
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@28
    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    return-object v1

    #@2c
    :cond_3
    monitor-exit p0

    #@2d
    .line 89
    return-object v2

    #@2e
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1
.end method

.method public declared-synchronized getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, v0}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getHeaders([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "excludeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 236
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lsun/net/www/MessageHeader;->filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getKey(Ljava/lang/String;)I
    .locals 2
    .param p1, "k"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 94
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@3
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@5
    if-ltz v0, :cond_2

    #@7
    .line 95
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@9
    aget-object v1, v1, v0

    #@b
    if-eq v1, p1, :cond_1

    #@d
    .line 96
    if-eqz p1, :cond_0

    #@f
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    .line 95
    if-eqz v1, :cond_0

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 97
    return v0

    #@1b
    .line 98
    :cond_2
    const/4 v1, -0x1

    #@1c
    monitor-exit p0

    #@1d
    return v1

    #@1e
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method

.method public declared-synchronized getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    if-ltz p1, :cond_0

    #@3
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@c
    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 107
    if-ltz p1, :cond_0

    #@3
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@c
    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public mergeHeader(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    if-nez p1, :cond_0

    #@2
    .line 442
    return-void

    #@3
    .line 443
    :cond_0
    const/16 v10, 0xa

    #@5
    new-array v8, v10, [C

    #@7
    .line 444
    .local v8, "s":[C
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@a
    move-result v1

    #@b
    .line 445
    .local v1, "firstc":I
    :goto_0
    const/16 v10, 0xa

    #@d
    if-eq v1, v10, :cond_d

    #@f
    const/16 v10, 0xd

    #@11
    if-eq v1, v10, :cond_d

    #@13
    if-ltz v1, :cond_d

    #@15
    .line 447
    const/4 v4, -0x1

    #@16
    .line 449
    .local v4, "keyend":I
    const/16 v10, 0x20

    #@18
    if-le v1, v10, :cond_2

    #@1a
    const/4 v2, 0x1

    #@1b
    .line 446
    .local v2, "inKey":Z
    :goto_1
    const/4 v10, 0x0

    #@1c
    .line 450
    const/4 v5, 0x1

    #@1d
    .local v5, "len":I
    int-to-char v11, v1

    #@1e
    aput-char v11, v8, v10

    #@20
    .line 452
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@23
    move-result v0

    #@24
    .local v0, "c":I
    if-ltz v0, :cond_7

    #@26
    .line 453
    sparse-switch v0, :sswitch_data_0

    #@29
    .line 478
    :goto_3
    array-length v10, v8

    #@2a
    if-lt v5, v10, :cond_1

    #@2c
    .line 479
    array-length v10, v8

    #@2d
    mul-int/lit8 v10, v10, 0x2

    #@2f
    new-array v7, v10, [C

    #@31
    .line 480
    .local v7, "ns":[C
    const/4 v10, 0x0

    #@32
    const/4 v11, 0x0

    #@33
    invoke-static {v8, v10, v7, v11, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@36
    .line 481
    move-object v8, v7

    #@37
    .line 483
    .end local v7    # "ns":[C
    :cond_1
    add-int/lit8 v6, v5, 0x1

    #@39
    .end local v5    # "len":I
    .local v6, "len":I
    int-to-char v10, v0

    #@3a
    aput-char v10, v8, v5

    #@3c
    move v5, v6

    #@3d
    .end local v6    # "len":I
    .restart local v5    # "len":I
    goto :goto_2

    #@3e
    .line 449
    .end local v0    # "c":I
    .end local v2    # "inKey":Z
    .end local v5    # "len":I
    :cond_2
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "inKey":Z
    goto :goto_1

    #@40
    .line 455
    .restart local v0    # "c":I
    .restart local v5    # "len":I
    :sswitch_0
    if-eqz v2, :cond_3

    #@42
    if-lez v5, :cond_3

    #@44
    .line 456
    move v4, v5

    #@45
    .line 457
    :cond_3
    const/4 v2, 0x0

    #@46
    .line 458
    goto :goto_3

    #@47
    .line 460
    :sswitch_1
    const/16 v0, 0x20

    #@49
    .line 462
    :sswitch_2
    const/4 v2, 0x0

    #@4a
    .line 463
    goto :goto_3

    #@4b
    .line 466
    :sswitch_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@4e
    move-result v1

    #@4f
    .line 467
    const/16 v10, 0xd

    #@51
    if-ne v0, v10, :cond_4

    #@53
    const/16 v10, 0xa

    #@55
    if-ne v1, v10, :cond_4

    #@57
    .line 468
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@5a
    move-result v1

    #@5b
    .line 469
    const/16 v10, 0xd

    #@5d
    if-ne v1, v10, :cond_4

    #@5f
    .line 470
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@62
    move-result v1

    #@63
    .line 472
    :cond_4
    const/16 v10, 0xa

    #@65
    if-eq v1, v10, :cond_5

    #@67
    const/16 v10, 0xd

    #@69
    if-ne v1, v10, :cond_6

    #@6b
    .line 487
    :cond_5
    :goto_4
    if-lez v5, :cond_8

    #@6d
    add-int/lit8 v10, v5, -0x1

    #@6f
    aget-char v10, v8, v10

    #@71
    const/16 v11, 0x20

    #@73
    if-gt v10, v11, :cond_8

    #@75
    .line 488
    add-int/lit8 v5, v5, -0x1

    #@77
    goto :goto_4

    #@78
    .line 472
    :cond_6
    const/16 v10, 0x20

    #@7a
    if-gt v1, v10, :cond_5

    #@7c
    .line 475
    const/16 v0, 0x20

    #@7e
    .line 476
    goto :goto_3

    #@7f
    .line 485
    :cond_7
    const/4 v1, -0x1

    #@80
    goto :goto_4

    #@81
    .line 490
    :cond_8
    if-gtz v4, :cond_a

    #@83
    .line 491
    const/4 v3, 0x0

    #@84
    .line 492
    .local v3, "k":Ljava/lang/String;
    const/4 v4, 0x0

    #@85
    .line 501
    .end local v3    # "k":Ljava/lang/String;
    :cond_9
    if-lt v4, v5, :cond_c

    #@87
    .line 502
    new-instance v9, Ljava/lang/String;

    #@89
    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    #@8c
    .line 505
    .local v9, "v":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v3, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8f
    goto/16 :goto_0

    #@91
    .line 494
    .end local v9    # "v":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    #@92
    invoke-static {v8, v10, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    .line 495
    .local v3, "k":Ljava/lang/String;
    if-ge v4, v5, :cond_b

    #@98
    aget-char v10, v8, v4

    #@9a
    const/16 v11, 0x3a

    #@9c
    if-ne v10, v11, :cond_b

    #@9e
    .line 496
    add-int/lit8 v4, v4, 0x1

    #@a0
    .line 497
    :cond_b
    :goto_6
    if-ge v4, v5, :cond_9

    #@a2
    aget-char v10, v8, v4

    #@a4
    const/16 v11, 0x20

    #@a6
    if-gt v10, v11, :cond_9

    #@a8
    .line 498
    add-int/lit8 v4, v4, 0x1

    #@aa
    goto :goto_6

    #@ab
    .line 504
    .end local v3    # "k":Ljava/lang/String;
    :cond_c
    sub-int v10, v5, v4

    #@ad
    invoke-static {v8, v4, v10}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    .restart local v9    # "v":Ljava/lang/String;
    goto :goto_5

    #@b2
    .line 440
    .end local v0    # "c":I
    .end local v2    # "inKey":Z
    .end local v4    # "keyend":I
    .end local v5    # "len":I
    .end local v9    # "v":Ljava/lang/String;
    :cond_d
    return-void

    #@b3
    .line 453
    nop

    #@b4
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x20 -> :sswitch_2
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    new-instance v0, Lsun/net/www/MessageHeader$HeaderIterator;

    #@2
    invoke-direct {v0, p0, p1, p0}, Lsun/net/www/MessageHeader$HeaderIterator;-><init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public parseHeader(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    monitor-enter p0

    #@1
    .line 434
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 436
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->mergeHeader(Ljava/io/InputStream;)V

    #@8
    .line 432
    return-void

    #@9
    .line 433
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized prepend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 312
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    #@4
    .line 313
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@6
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@8
    .line 314
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@a
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@c
    add-int/lit8 v3, v0, -0x1

    #@e
    aget-object v2, v2, v3

    #@10
    aput-object v2, v1, v0

    #@12
    .line 315
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@14
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@16
    add-int/lit8 v3, v0, -0x1

    #@18
    aget-object v2, v2, v3

    #@1a
    aput-object v2, v1, v0

    #@1c
    .line 313
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 317
    :cond_0
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@21
    const/4 v2, 0x0

    #@22
    aput-object p1, v1, v2

    #@24
    .line 318
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@26
    const/4 v2, 0x0

    #@27
    aput-object p2, v1, v2

    #@29
    .line 319
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    .line 311
    return-void

    #@31
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@32
    monitor-exit p0

    #@33
    throw v1
.end method

.method public declared-synchronized print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "p"    # Ljava/io/PrintStream;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 291
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@4
    if-ge v0, v1, :cond_2

    #@6
    .line 292
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@8
    aget-object v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@13
    aget-object v2, v2, v0

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 294
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@1b
    aget-object v1, v1, v0

    #@1d
    if-eqz v1, :cond_1

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, ": "

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@2d
    aget-object v3, v3, v0

    #@2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 293
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 294
    const-string/jumbo v2, "\r\n"

    #@3e
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@49
    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 294
    :cond_1
    const-string/jumbo v1, ""

    #@4f
    goto :goto_1

    #@50
    .line 296
    :cond_2
    const-string/jumbo v1, "\r\n"

    #@53
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@56
    .line 297
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 290
    return-void

    #@5b
    :catchall_0
    move-exception v1

    #@5c
    monitor-exit p0

    #@5d
    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "k"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 363
    if-nez p1, :cond_2

    #@3
    .line 364
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@6
    if-ge v0, v2, :cond_5

    #@8
    .line 365
    :goto_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@a
    aget-object v2, v2, v0

    #@c
    if-nez v2, :cond_1

    #@e
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@10
    if-ge v0, v2, :cond_1

    #@12
    .line 366
    move v1, v0

    #@13
    .local v1, "j":I
    :goto_2
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    if-ge v1, v2, :cond_0

    #@19
    .line 367
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@1b
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@1d
    add-int/lit8 v4, v1, 0x1

    #@1f
    aget-object v3, v3, v4

    #@21
    aput-object v3, v2, v1

    #@23
    .line 368
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@25
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@27
    add-int/lit8 v4, v1, 0x1

    #@29
    aget-object v3, v3, v4

    #@2b
    aput-object v3, v2, v1

    #@2d
    .line 366
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_2

    #@30
    .line 370
    :cond_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@32
    add-int/lit8 v2, v2, -0x1

    #@34
    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    goto :goto_1

    #@37
    .end local v1    # "j":I
    :catchall_0
    move-exception v2

    #@38
    monitor-exit p0

    #@39
    throw v2

    #@3a
    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 374
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    #@3e
    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@40
    if-ge v0, v2, :cond_5

    #@42
    .line 375
    :goto_4
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@44
    aget-object v2, v2, v0

    #@46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_4

    #@4c
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@4e
    if-ge v0, v2, :cond_4

    #@50
    .line 376
    move v1, v0

    #@51
    .restart local v1    # "j":I
    :goto_5
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@53
    add-int/lit8 v2, v2, -0x1

    #@55
    if-ge v1, v2, :cond_3

    #@57
    .line 377
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@59
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@5b
    add-int/lit8 v4, v1, 0x1

    #@5d
    aget-object v3, v3, v4

    #@5f
    aput-object v3, v2, v1

    #@61
    .line 378
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@63
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@65
    add-int/lit8 v4, v1, 0x1

    #@67
    aget-object v3, v3, v4

    #@69
    aput-object v3, v2, v1

    #@6b
    .line 376
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_5

    #@6e
    .line 380
    :cond_3
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@70
    add-int/lit8 v2, v2, -0x1

    #@72
    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    goto :goto_4

    #@75
    .line 374
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@77
    goto :goto_3

    #@78
    :cond_5
    monitor-exit p0

    #@79
    .line 362
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 67
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@4
    .line 68
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@7
    .line 69
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@a
    .line 70
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 66
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 328
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 329
    if-gez p1, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 330
    return-void

    #@8
    .line 331
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@a
    if-lt p1, v0, :cond_1

    #@c
    .line 332
    invoke-virtual {p0, p2, p3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    :goto_0
    monitor-exit p0

    #@10
    .line 327
    return-void

    #@11
    .line 334
    :cond_1
    :try_start_2
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@13
    aput-object p2, v0, p1

    #@15
    .line 335
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@17
    aput-object p3, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    goto :goto_0

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 391
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@3
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@5
    if-ltz v0, :cond_1

    #@7
    .line 392
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@9
    aget-object v1, v1, v0

    #@b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 393
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@13
    aput-object p2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 394
    return-void

    #@17
    .line 396
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 390
    return-void

    #@1c
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public declared-synchronized setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 404
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 405
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 403
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 510
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, " pairs: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 511
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@22
    array-length v2, v2

    #@23
    if-ge v0, v2, :cond_0

    #@25
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    #@27
    if-ge v0, v2, :cond_0

    #@29
    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, "{"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    #@3b
    aget-object v3, v3, v0

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, ": "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    #@4a
    aget-object v3, v3, v0

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, "}"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    move-result-object v1

    #@5b
    .line 511
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_0

    #@5e
    :cond_0
    monitor-exit p0

    #@5f
    .line 514
    return-object v1

    #@60
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@61
    monitor-exit p0

    #@62
    throw v2
.end method
