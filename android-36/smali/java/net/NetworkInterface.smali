.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final blacklist DEFAULT_MAC_ADDRESS:[B

.field public static final blacklist RETURN_NULL_HARDWARE_ADDRESS:J = 0xa24df7cL

.field private static final greylist-max-o defaultIndex:I

.field private static final greylist-max-o defaultInterface:Ljava/net/NetworkInterface;


# instance fields
.field private greylist-max-o addrs:[Ljava/net/InetAddress;

.field private greylist-max-o bindings:[Ljava/net/InterfaceAddress;

.field private greylist-max-o childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o displayName:Ljava/lang/String;

.field private greylist-max-o hardwareAddr:[B

.field private greylist-max-o index:I

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o parent:Ljava/net/NetworkInterface;

.field private greylist-max-o virtual:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetaddrs(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;
    .registers 1

    iget-object p0, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Ljava/net/NetworkInterface;->DEFAULT_MAC_ADDRESS:[B

    .line 118
    invoke-static {}, Ljava/net/DefaultInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    sput-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    .line 119
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_1b

    .line 120
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    goto :goto_1e

    .line 122
    :cond_1b
    const/4 v0, 0x0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    .line 124
    :goto_1e
    return-void

    nop

    :array_20
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 133
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "addrs"    # [Ljava/net/InetAddress;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 136
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 137
    iput p2, p0, Ljava/net/NetworkInterface;->index:I

    .line 138
    iput-object p3, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 139
    return-void
.end method

.method private static greylist-max-o getAll()[Ljava/net/NetworkInterface;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 459
    .local v1, "inetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;

    move-result-object v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_c} :catch_12e

    .line 461
    .local v0, "ifaddrs":[Landroid/system/StructIfaddrs;
    if-eqz v0, :cond_126

    .line 466
    nop

    .line 468
    array-length v2, v0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_2f

    aget-object v5, v0, v4

    .line 469
    .local v5, "ifa":Landroid/system/StructIfaddrs;
    iget-object v6, v5, Landroid/system/StructIfaddrs;->ifa_name:Ljava/lang/String;

    .line 472
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v8, v7

    .local v8, "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    if-nez v7, :cond_29

    .line 473
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    .line 474
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_29
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v5    # "ifa":Landroid/system/StructIfaddrs;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 481
    :cond_2f
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 482
    .local v2, "nis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 483
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    .restart local v6    # "name":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result v7

    .line 485
    .local v7, "index":I
    if-nez v7, :cond_61

    .line 487
    goto :goto_40

    .line 490
    :cond_61
    new-instance v8, Ljava/net/NetworkInterface;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v7, v9}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    .line 491
    .local v8, "ni":Ljava/net/NetworkInterface;
    iput-object v6, v8, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 493
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v9, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v10, "binds":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ab

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/system/StructIfaddrs;

    .line 497
    .local v12, "ifa":Landroid/system/StructIfaddrs;
    iget-object v13, v12, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    if-eqz v13, :cond_a2

    .line 498
    iget-object v13, v12, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v13, Ljava/net/InterfaceAddress;

    iget-object v14, v12, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    iget-object v15, v12, Landroid/system/StructIfaddrs;->ifa_broadaddr:Ljava/net/InetAddress;

    check-cast v15, Ljava/net/Inet4Address;

    iget-object v3, v12, Landroid/system/StructIfaddrs;->ifa_netmask:Ljava/net/InetAddress;

    invoke-direct {v13, v14, v15, v3}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/InetAddress;Ljava/net/Inet4Address;Ljava/net/InetAddress;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_a2
    iget-object v3, v12, Landroid/system/StructIfaddrs;->hwaddr:[B

    if-eqz v3, :cond_aa

    .line 504
    iget-object v3, v12, Landroid/system/StructIfaddrs;->hwaddr:[B

    iput-object v3, v8, Ljava/net/NetworkInterface;->hardwareAddr:[B

    .line 506
    .end local v12    # "ifa":Landroid/system/StructIfaddrs;
    :cond_aa
    goto :goto_7d

    .line 508
    :cond_ab
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InetAddress;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InetAddress;

    iput-object v3, v8, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 509
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InterfaceAddress;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InterfaceAddress;

    iput-object v3, v8, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    .line 510
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v8, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    .line 511
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "ni":Ljava/net/NetworkInterface;
    .end local v9    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v10    # "binds":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    goto/16 :goto_40

    .line 515
    :cond_d4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 516
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 517
    .local v5, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "niName":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 519
    .local v7, "colonIdx":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_113

    .line 521
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "parentName":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    .line 524
    .local v9, "parent":Ljava/net/NetworkInterface;
    const/4 v10, 0x1

    iput-boolean v10, v5, Ljava/net/NetworkInterface;->virtual:Z

    .line 526
    if-eqz v9, :cond_114

    .line 527
    iput-object v9, v5, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 528
    iget-object v10, v9, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 519
    .end local v8    # "parentName":Ljava/lang/String;
    .end local v9    # "parent":Ljava/net/NetworkInterface;
    :cond_113
    const/4 v11, 0x0

    .line 531
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    .end local v6    # "niName":Ljava/lang/String;
    .end local v7    # "colonIdx":I
    :cond_114
    :goto_114
    goto :goto_dc

    .line 533
    :cond_115
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/net/NetworkInterface;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/NetworkInterface;

    return-object v3

    .line 462
    .end local v2    # "nis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    :cond_126
    :try_start_126
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Failed to query network interfaces."

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v1    # "inetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    throw v2
    :try_end_12e
    .catch Landroid/system/ErrnoException; {:try_start_126 .. :try_end_12e} :catch_12e

    .line 464
    .end local v0    # "ifaddrs":[Landroid/system/StructIfaddrs;
    .restart local v1    # "inetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    :catch_12e
    move-exception v0

    .line 465
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist test-api getByIndex(I)Ljava/net/NetworkInterface;
    .registers 6
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 342
    if-ltz p0, :cond_18

    .line 346
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 347
    .local v0, "nis":[Ljava/net/NetworkInterface;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 348
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_13

    .line 349
    return-object v3

    .line 347
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 352
    :cond_16
    const/4 v1, 0x0

    return-object v1

    .line 343
    .end local v0    # "nis":[Ljava/net/NetworkInterface;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interface index can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .registers 8
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 378
    if-eqz p0, :cond_42

    .line 381
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_b

    goto :goto_13

    .line 382
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_13
    :goto_13
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 387
    .local v0, "nis":[Ljava/net/NetworkInterface;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_40

    aget-object v3, v0, v2

    .line 388
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 389
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v5, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 390
    return-object v3

    .line 392
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    :cond_3c
    goto :goto_29

    .line 387
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 394
    :cond_40
    const/4 v1, 0x0

    return-object v1

    .line 379
    .end local v0    # "nis":[Ljava/net/NetworkInterface;
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 315
    if-eqz p0, :cond_1c

    .line 319
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 320
    .local v0, "nis":[Ljava/net/NetworkInterface;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 321
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 322
    return-object v3

    .line 320
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 325
    :cond_1a
    const/4 v1, 0x0

    return-object v1

    .line 316
    .end local v0    # "nis":[Ljava/net/NetworkInterface;
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o getDefault()Ljava/net/NetworkInterface;
    .registers 1

    .line 783
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method private greylist-max-o getFlags()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 691
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llibcore/io/Os;->ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v1
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1b
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    .line 697
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 691
    return v1

    .line 697
    :catchall_19
    move-exception v1

    goto :goto_28

    .line 694
    :catch_1b
    move-exception v1

    .line 695
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1c
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2

    .line 692
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :catch_22
    move-exception v1

    .line 693
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    .line 697
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 698
    throw v1
.end method

.method public static whitelist test-api getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 422
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 426
    .local v0, "netifs":[Ljava/net/NetworkInterface;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 427
    const/4 v1, 0x0

    return-object v1

    .line 447
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 717
    instance-of v0, p1, Ljava/net/NetworkInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 718
    return v1

    .line 720
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/net/NetworkInterface;

    .line 721
    .local v0, "that":Ljava/net/NetworkInterface;
    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 722
    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v3, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 723
    return v1

    .line 726
    :cond_18
    iget-object v2, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 727
    return v1

    .line 731
    :cond_1d
    iget-object v2, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    const/4 v3, 0x1

    if-nez v2, :cond_28

    .line 732
    iget-object v2, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v2, :cond_27

    move v1, v3

    :cond_27
    return v1

    .line 733
    :cond_28
    iget-object v2, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v2, :cond_2d

    .line 734
    return v1

    .line 739
    :cond_2d
    iget-object v2, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v2, v2

    iget-object v4, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v4, v4

    if-eq v2, v4, :cond_36

    .line 740
    return v1

    .line 743
    :cond_36
    iget-object v2, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 744
    .local v2, "thatAddrs":[Ljava/net/InetAddress;
    array-length v4, v2

    .line 746
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    if-ge v5, v4, :cond_57

    .line 747
    const/4 v6, 0x0

    .line 748
    .local v6, "found":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3e
    if-ge v7, v4, :cond_51

    .line 749
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    aget-object v8, v8, v5

    aget-object v9, v2, v7

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 750
    const/4 v6, 0x1

    .line 751
    goto :goto_51

    .line 748
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 754
    .end local v7    # "j":I
    :cond_51
    :goto_51
    if-nez v6, :cond_54

    .line 755
    return v1

    .line 746
    .end local v6    # "found":Z
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 758
    .end local v5    # "i":I
    :cond_57
    return v3
.end method

.method public whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 3

    .line 293
    const-string v0, ""

    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getHardwareAddress()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 622
    .local v0, "ni":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_2b

    .line 627
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    if-nez v1, :cond_28

    const-string v1, "lo"

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 628
    const-wide/32 v1, 0xa24df7c

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_28

    .line 629
    sget-object v1, Ljava/net/NetworkInterface;->DEFAULT_MAC_ADDRESS:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 631
    :cond_28
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    return-object v1

    .line 623
    :cond_2b
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "NetworkInterface doesn\'t exist anymore"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 280
    iget v0, p0, Ljava/net/NetworkInterface;->index:I

    return v0
.end method

.method public whitelist test-api getInetAddresses()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/net/NetworkInterface$1checkedAddresses;

    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1checkedAddresses;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public whitelist test-api getInterfaceAddresses()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    iget-object v1, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    if-eqz v1, :cond_33

    .line 227
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 228
    .local v1, "sec":Ljava/lang/SecurityManager;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    iget-object v3, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    array-length v3, v3

    if-ge v2, v3, :cond_33

    .line 230
    if-eqz v1, :cond_26

    .line 231
    :try_start_16
    iget-object v3, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 233
    :cond_26
    iget-object v3, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_2d} :catch_2e

    goto :goto_2f

    .line 234
    :catch_2e
    move-exception v3

    :goto_2f
    nop

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 238
    .end local v1    # "sec":Ljava/lang/SecurityManager;
    .end local v2    # "j":I
    :cond_33
    return-object v0
.end method

.method public whitelist test-api getMTU()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 648
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llibcore/io/Os;->ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v1
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1b
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    .line 654
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 648
    return v1

    .line 654
    :catchall_19
    move-exception v1

    goto :goto_28

    .line 651
    :catch_1b
    move-exception v1

    .line 652
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1c
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2

    .line 649
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :catch_22
    move-exception v1

    .line 650
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    .line 654
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 655
    throw v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getParent()Ljava/net/NetworkInterface;
    .registers 2

    .line 265
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public whitelist test-api getSubInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 762
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist test-api isLoopback()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IFF_LOOPBACK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api isPointToPoint()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 577
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IFF_POINTOPOINT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api isUp()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 547
    sget v0, Landroid/system/OsConstants;->IFF_UP:I

    sget v1, Landroid/system/OsConstants;->IFF_RUNNING:I

    or-int/2addr v0, v1

    .line 548
    .local v0, "mask":I
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist test-api isVirtual()Z
    .registers 2

    .line 672
    iget-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    return v0
.end method

.method public whitelist test-api supportsMulticast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 590
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IFF_MULTICAST:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 766
    const-string v0, "name:"

    .line 767
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v2, :cond_12

    const-string v2, "null"

    goto :goto_14

    :cond_12
    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    :cond_3f
    return-object v0
.end method
