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
.field private blacklist keys:[Ljava/lang/String;

.field private blacklist nkeys:I

.field private blacklist values:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetkeys(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnkeys(Lsun/net/www/MessageHeader;)I
    .registers 1

    iget p0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalues(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 51
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    .line 55
    return-void
.end method

.method public static blacklist canonicalID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "id"    # Ljava/lang/String;

    .line 416
    if-nez p0, :cond_5

    .line 417
    const-string v0, ""

    return-object v0

    .line 418
    :cond_5
    const/4 v0, 0x0

    .line 419
    .local v0, "st":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 420
    .local v1, "len":I
    const/4 v2, 0x0

    .line 422
    .local v2, "substr":Z
    :goto_b
    const/16 v3, 0x20

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":I
    const/16 v6, 0x3c

    if-eq v4, v6, :cond_1a

    if-gt v5, v3, :cond_1e

    .line 424
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 425
    const/4 v2, 0x1

    goto :goto_b

    .line 427
    .end local v5    # "c":I
    :cond_1e
    :goto_1e
    if-ge v0, v1, :cond_31

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .restart local v5    # "c":I
    const/16 v6, 0x3e

    if-eq v4, v6, :cond_2d

    if-gt v5, v3, :cond_31

    .line 429
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    .line 430
    const/4 v2, 0x1

    goto :goto_1e

    .line 432
    .end local v5    # "c":I
    :cond_31
    if-eqz v2, :cond_38

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_38
    move-object v3, p0

    :goto_39
    return-object v3
.end method

.method private blacklist grow()V
    .registers 6

    .line 347
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_32

    .line 348
    :cond_b
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 349
    .local v0, "nk":[Ljava/lang/String;
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 350
    .local v1, "nv":[Ljava/lang/String;
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    .line 351
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v4, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_23
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 353
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v4, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_2e
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    .line 355
    iput-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    .line 357
    .end local v0    # "nk":[Ljava/lang/String;
    .end local v1    # "nv":[Ljava/lang/String;
    :cond_32
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    monitor-enter p0

    .line 307
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 308
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p1, v0, v1

    .line 309
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p2, v0, v1

    .line 310
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 311
    monitor-exit p0

    return-void

    .line 306
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    .end local p1    # "k":Ljava/lang/String;
    .end local p2    # "v":Ljava/lang/String;
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized blacklist filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .param p1, "excludeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .local p2, "include":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "skipIt":Z
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v2, "i":I
    :goto_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4e

    .line 249
    if-eqz p1, :cond_28

    .line 252
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    array-length v4, p1

    if-ge v3, v4, :cond_28

    .line 253
    aget-object v4, p1, v3

    if-eqz v4, :cond_25

    aget-object v4, p1, v3

    iget-object v5, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 255
    const/4 v0, 0x1

    .line 256
    goto :goto_28

    .line 252
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 260
    .end local v3    # "j":I
    :cond_28
    :goto_28
    if-nez v0, :cond_4c

    .line 261
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 262
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_43

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 264
    iget-object v4, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_43
    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    nop

    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_9

    .line 269
    :cond_4c
    const/4 v0, 0x0

    goto :goto_9

    .line 273
    .end local v2    # "i":I
    :cond_4e
    if-eqz p2, :cond_8a

    .line 274
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 276
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_7f

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 278
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_7f
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_58

    .line 284
    :cond_8a
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_92

    .line 288
    :cond_ad
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2
    :try_end_b1
    .catchall {:try_start_2 .. :try_end_b1} :catchall_b3

    monitor-exit p0

    return-object v2

    .line 245
    .end local v0    # "skipIt":Z
    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p1    # "excludeList":[Ljava/lang/String;
    .end local p2    # "include":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_b3
    move-exception p1

    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p1
.end method

.method public blacklist filterNTLMResponses(Ljava/lang/String;)Z
    .registers 8
    .param p1, "k"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_37

    .line 154
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_34

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-le v2, v4, :cond_34

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 156
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NTLM "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 157
    const/4 v0, 0x1

    .line 158
    goto :goto_37

    .line 153
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    .end local v1    # "i":I
    :cond_37
    :goto_37
    if-eqz v0, :cond_81

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget v4, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v2, v4, :cond_79

    .line 164
    iget-object v4, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 165
    const-string v5, "Negotiate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 166
    const-string v5, "Kerberos"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 167
    goto :goto_76

    .line 169
    :cond_62
    if-eq v2, v1, :cond_74

    .line 170
    iget-object v4, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v5, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v4, v1

    .line 171
    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v5, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v4, v1

    .line 173
    :cond_74
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 175
    .end local v2    # "i":I
    :cond_79
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-eq v1, v2, :cond_81

    .line 176
    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 177
    const/4 v2, 0x1

    return v2

    .line 180
    .end local v1    # "j":I
    :cond_81
    return v3
.end method

.method public declared-synchronized blacklist findNextValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "foundV":Z
    if-nez p1, :cond_21

    .line 130
    :try_start_4
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v1, "i":I
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_20

    .line 131
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_6

    .line 132
    if-eqz v0, :cond_18

    .line 133
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_44

    monitor-exit p0

    return-object v2

    .line 134
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_18
    :try_start_18
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, p2, :cond_6

    .line 135
    const/4 v0, 0x1

    goto :goto_6

    .end local v1    # "i":I
    :cond_20
    goto :goto_41

    .line 137
    :cond_21
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .restart local v1    # "i":I
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_41

    .line 138
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 139
    if-eqz v0, :cond_39

    .line 140
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_44

    monitor-exit p0

    return-object v2

    .line 141
    :cond_39
    :try_start_39
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_44

    if-ne v2, p2, :cond_23

    .line 142
    const/4 v0, 0x1

    goto :goto_23

    .line 143
    .end local v1    # "i":I
    :cond_41
    :goto_41
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 127
    .end local v0    # "foundV":Z
    .end local p1    # "k":Ljava/lang/String;
    .end local p2    # "v":Ljava/lang/String;
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public declared-synchronized greylist findValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "k"    # Ljava/lang/String;

    monitor-enter p0

    .line 85
    if-nez p1, :cond_16

    .line 86
    :try_start_3
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 87
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 88
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    monitor-exit p0

    return-object v1

    .end local v0    # "i":I
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_15
    goto :goto_2c

    .line 90
    :cond_16
    :try_start_16
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2c

    .line 91
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 92
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 94
    .end local v0    # "i":I
    :cond_2c
    :goto_2c
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 84
    .end local p1    # "k":Ljava/lang/String;
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist getHeaderNamesInList()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 61
    :try_start_1
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .local v0, "joiner":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v1, v2, :cond_17

    .line 63
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 65
    .end local v1    # "i":I
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_17
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 60
    .end local v0    # "joiner":Ljava/util/StringJoiner;
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized blacklist getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 237
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist getHeaders([Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "excludeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 241
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lsun/net/www/MessageHeader;->filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 241
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    .end local p1    # "excludeList":[Ljava/lang/String;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist getKey(Ljava/lang/String;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/String;

    monitor-enter p0

    .line 99
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_3
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1b

    .line 100
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_19

    if-eqz p1, :cond_3

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    if-eqz v1, :cond_3

    .line 102
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_19
    monitor-exit p0

    return v0

    .line 103
    .end local v0    # "i":I
    :cond_1b
    monitor-exit p0

    return v1

    .line 98
    .end local p1    # "k":Ljava/lang/String;
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public declared-synchronized blacklist getKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    monitor-enter p0

    .line 107
    if-ltz p1, :cond_11

    :try_start_3
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-lt p1, v0, :cond_8

    goto :goto_11

    .line 108
    :cond_8
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 106
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    .end local p1    # "n":I
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1

    .line 107
    .restart local p1    # "n":I
    :cond_11
    :goto_11
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized blacklist getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    monitor-enter p0

    .line 112
    if-ltz p1, :cond_11

    :try_start_3
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-lt p1, v0, :cond_8

    goto :goto_11

    .line 113
    :cond_8
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 111
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    .end local p1    # "n":I
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1

    .line 112
    .restart local p1    # "n":I
    :cond_11
    :goto_11
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist mergeHeader(Ljava/io/InputStream;)V
    .registers 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    if-nez p1, :cond_3

    .line 447
    return-void

    .line 448
    :cond_3
    const/16 v0, 0xa

    new-array v1, v0, [C

    .line 449
    .local v1, "s":[C
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 450
    .local v2, "firstc":I
    :goto_b
    if-eq v2, v0, :cond_a4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a4

    if-ltz v2, :cond_a4

    .line 451
    const/4 v4, 0x0

    .line 452
    .local v4, "len":I
    const/4 v5, -0x1

    .line 454
    .local v5, "keyend":I
    const/4 v6, 0x0

    const/16 v7, 0x20

    if-le v2, v7, :cond_1c

    const/4 v8, 0x1

    goto :goto_1d

    :cond_1c
    move v8, v6

    .line 455
    .local v8, "inKey":Z
    :goto_1d
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "len":I
    .local v9, "len":I
    int-to-char v10, v2

    aput-char v10, v1, v4

    .line 457
    :goto_22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    move v10, v4

    .local v10, "c":I
    if-ltz v4, :cond_68

    .line 458
    sparse-switch v10, :sswitch_data_a6

    goto :goto_55

    .line 460
    :sswitch_2d
    if-eqz v8, :cond_32

    if-lez v9, :cond_32

    .line 461
    move v5, v9

    .line 462
    :cond_32
    const/4 v4, 0x0

    .line 463
    .end local v8    # "inKey":Z
    .local v4, "inKey":Z
    move v8, v4

    goto :goto_55

    .line 472
    .end local v4    # "inKey":Z
    .restart local v8    # "inKey":Z
    :sswitch_35
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 473
    if-ne v10, v3, :cond_47

    if-ne v2, v0, :cond_47

    .line 474
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 475
    if-ne v2, v3, :cond_47

    .line 476
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 478
    :cond_47
    if-eq v2, v0, :cond_69

    if-eq v2, v3, :cond_69

    if-le v2, v7, :cond_4e

    .line 479
    goto :goto_69

    .line 481
    :cond_4e
    const/16 v10, 0x20

    goto :goto_55

    .line 465
    :sswitch_51
    const/16 v10, 0x20

    .line 468
    :sswitch_53
    const/4 v4, 0x0

    .line 469
    .end local v8    # "inKey":Z
    .restart local v4    # "inKey":Z
    move v8, v4

    .line 484
    .end local v4    # "inKey":Z
    .restart local v8    # "inKey":Z
    :goto_55
    array-length v4, v1

    if-lt v9, v4, :cond_61

    .line 485
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 486
    .local v4, "ns":[C
    invoke-static {v1, v6, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object v1, v4

    .line 489
    .end local v4    # "ns":[C
    :cond_61
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "len":I
    .local v4, "len":I
    int-to-char v11, v10

    aput-char v11, v1, v9

    move v9, v4

    goto :goto_22

    .line 491
    .end local v4    # "len":I
    .restart local v9    # "len":I
    :cond_68
    const/4 v2, -0x1

    .line 493
    :cond_69
    :goto_69
    if-lez v9, :cond_74

    add-int/lit8 v3, v9, -0x1

    aget-char v3, v1, v3

    if-gt v3, v7, :cond_74

    .line 494
    add-int/lit8 v9, v9, -0x1

    goto :goto_69

    .line 496
    :cond_74
    if-gtz v5, :cond_79

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "k":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v5    # "keyend":I
    .local v4, "keyend":I
    goto :goto_91

    .line 500
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "keyend":I
    .restart local v5    # "keyend":I
    :cond_79
    invoke-static {v1, v6, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 501
    .restart local v3    # "k":Ljava/lang/String;
    if-ge v5, v9, :cond_87

    aget-char v4, v1, v5

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_87

    .line 502
    add-int/lit8 v5, v5, 0x1

    .line 503
    :cond_87
    :goto_87
    if-ge v5, v9, :cond_90

    aget-char v4, v1, v5

    if-gt v4, v7, :cond_90

    .line 504
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 507
    :cond_90
    move v4, v5

    .end local v5    # "keyend":I
    .restart local v4    # "keyend":I
    :goto_91
    if-lt v4, v9, :cond_99

    .line 508
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .local v5, "v":Ljava/lang/String;
    goto :goto_9f

    .line 510
    .end local v5    # "v":Ljava/lang/String;
    :cond_99
    sub-int v5, v9, v4

    invoke-static {v1, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 511
    .restart local v5    # "v":Ljava/lang/String;
    :goto_9f
    invoke-virtual {p0, v3, v5}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "keyend":I
    .end local v5    # "v":Ljava/lang/String;
    .end local v8    # "inKey":Z
    .end local v9    # "len":I
    .end local v10    # "c":I
    goto/16 :goto_b

    .line 513
    :cond_a4
    return-void

    nop

    :sswitch_data_a6
    .sparse-switch
        0x9 -> :sswitch_51
        0xa -> :sswitch_35
        0xd -> :sswitch_35
        0x20 -> :sswitch_53
        0x3a -> :sswitch_2d
    .end sparse-switch
.end method

.method public blacklist multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Lsun/net/www/MessageHeader$HeaderIterator;

    invoke-direct {v0, p0, p1, p0}, Lsun/net/www/MessageHeader$HeaderIterator;-><init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parseHeader(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    monitor-enter p0

    .line 438
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 439
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 440
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->mergeHeader(Ljava/io/InputStream;)V

    .line 441
    return-void

    .line 439
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist prepend(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    monitor-enter p0

    .line 316
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 317
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_1f

    .line 318
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 319
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 321
    .end local v0    # "i":I
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_1f
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 322
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 323
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 324
    monitor-exit p0

    return-void

    .line 315
    .end local p1    # "k":Ljava/lang/String;
    .end local p2    # "v":Ljava/lang/String;
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public declared-synchronized greylist print(Ljava/io/PrintStream;)V
    .registers 6
    .param p1, "p"    # Ljava/io/PrintStream;

    monitor-enter p0

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_4d

    .line 296
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4a

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_37
    const-string v2, ""

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 300
    .end local v0    # "i":I
    :cond_4d
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_57

    .line 302
    monitor-exit p0

    return-void

    .line 294
    .end local p1    # "p":Ljava/io/PrintStream;
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/String;)V
    .registers 7
    .param p1, "k"    # Ljava/lang/String;

    monitor-enter p0

    .line 367
    if-nez p1, :cond_3b

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_3a

    .line 369
    :goto_8
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_37

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_37

    .line 370
    move v1, v0

    .local v1, "j":I
    :goto_13
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_30

    .line 371
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 372
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 374
    .end local v1    # "j":I
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_30
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    goto :goto_8

    .line 368
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_3a
    goto :goto_76

    .line 378
    :cond_3b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3c
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_76

    .line 379
    :goto_40
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_73

    .line 380
    move v1, v0

    .restart local v1    # "j":I
    :goto_4f
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6c

    .line 381
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 382
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 384
    .end local v1    # "j":I
    :cond_6c
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_72
    .catchall {:try_start_4 .. :try_end_72} :catchall_78

    goto :goto_40

    .line 378
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 388
    .end local v0    # "i":I
    :cond_76
    :goto_76
    monitor-exit p0

    return-void

    .line 366
    .end local p1    # "k":Ljava/lang/String;
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public declared-synchronized blacklist reset()V
    .registers 2

    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 75
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 76
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized blacklist set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    monitor-enter p0

    .line 332
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    .line 333
    if-gez p1, :cond_8

    .line 334
    monitor-exit p0

    return-void

    .line 335
    :cond_8
    :try_start_8
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-lt p1, v0, :cond_10

    .line 336
    invoke-virtual {p0, p2, p3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 338
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_10
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 339
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p3, v0, p1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    .line 341
    :goto_18
    monitor-exit p0

    return-void

    .line 331
    .end local p1    # "i":I
    .end local p2    # "k":Ljava/lang/String;
    .end local p3    # "v":Ljava/lang/String;
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized greylist set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    monitor-enter p0

    .line 395
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    .line 396
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p2, v1, v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    .line 398
    monitor-exit p0

    return-void

    .line 400
    .end local v0    # "i":I
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_17
    :try_start_17
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    .line 401
    monitor-exit p0

    return-void

    .line 394
    .end local p1    # "k":Ljava/lang/String;
    .end local p2    # "v":Ljava/lang/String;
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public declared-synchronized blacklist setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    monitor-enter p0

    .line 408
    :try_start_1
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 409
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 411
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_a
    monitor-exit p0

    return-void

    .line 407
    .end local p1    # "k":Ljava/lang/String;
    .end local p2    # "v":Ljava/lang/String;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 516
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pairs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5b

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v1, v2, :cond_5b

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_5d

    move-object v0, v2

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 520
    .end local v1    # "i":I
    .end local p0    # "this":Lsun/net/www/MessageHeader;
    :cond_5b
    monitor-exit p0

    return-object v0

    .line 515
    .end local v0    # "result":Ljava/lang/String;
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method
