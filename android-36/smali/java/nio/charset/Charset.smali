.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile greylist-max-o cache1:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o cache2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-r defaultCharset:Ljava/nio/charset/Charset;

.field private static greylist-max-o gate:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ThreadLocal<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist zeroAliases:[Ljava/lang/String;


# instance fields
.field private greylist-max-o aliasSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o aliases:[Ljava/lang/String;

.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smproviders()Ljava/util/Iterator;
    .registers 1

    invoke-static {}, Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smput(Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/charset/Charset;->put(Ljava/util/Iterator;Ljava/util/Map;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 323
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ljava/nio/charset/Charset;->zeroAliases:[Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    .line 402
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 702
    sget-object v0, Ljava/nio/charset/Charset;->zeroAliases:[Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 706
    .local v0, "as":[Ljava/lang/String;
    const-string v1, "ISO-8859-1"

    if-eq p1, v1, :cond_29

    const-string v1, "US-ASCII"

    if-eq p1, v1, :cond_29

    const-string v1, "UTF-8"

    if-eq p1, v1, :cond_29

    .line 709
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 710
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 711
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 714
    .end local v1    # "i":I
    :cond_29
    iput-object p1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    .line 715
    iput-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    .line 716
    return-void
.end method

.method public static whitelist test-api availableCharsets()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/nio/charset/Charset$3;

    invoke-direct {v0}, Ljava/nio/charset/Charset$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private static greylist-max-o cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 8
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 334
    sget-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v0

    .line 335
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "canonicalName":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    .line 338
    .local v2, "canonicalCharset":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_13

    .line 339
    move-object p1, v2

    goto :goto_33

    .line 341
    :cond_13
    sget-object v3, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    .local v4, "alias":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    nop

    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_20

    .line 348
    :cond_33
    :goto_33
    sget-object v3, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    nop

    .end local v1    # "canonicalName":Ljava/lang/String;
    .end local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_42

    .line 351
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 352
    return-void

    .line 349
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private static greylist-max-o checkName(Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    .local v0, "n":I
    if-eqz v0, :cond_54

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_53

    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 306
    .local v2, "c":C
    const/16 v3, 0x41

    if-lt v2, v3, :cond_16

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_16

    goto :goto_4a

    .line 307
    :cond_16
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1f

    goto :goto_4a

    .line 308
    :cond_1f
    const/16 v3, 0x30

    if-lt v2, v3, :cond_28

    const/16 v3, 0x39

    if-gt v2, v3, :cond_28

    goto :goto_4a

    .line 309
    :cond_28
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2f

    if-eqz v1, :cond_2f

    goto :goto_4a

    .line 310
    :cond_2f
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_36

    if-eqz v1, :cond_36

    goto :goto_4a

    .line 311
    :cond_36
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3d

    if-eqz v1, :cond_3d

    goto :goto_4a

    .line 312
    :cond_3d
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_44

    if-eqz v1, :cond_44

    goto :goto_4a

    .line 313
    :cond_44
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4d

    if-eqz v1, :cond_4d

    .line 304
    .end local v2    # "c":C
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 314
    .restart local v2    # "c":C
    :cond_4d
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_53
    return-void

    .line 302
    :cond_54
    new-instance v1, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v1, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api defaultCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 673
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_10

    .line 674
    const-class v0, Ljava/nio/charset/Charset;

    monitor-enter v0

    .line 675
    :try_start_7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v1, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    .line 676
    monitor-exit v0

    goto :goto_10

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1

    .line 678
    :cond_10
    :goto_10
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static whitelist test-api forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 560
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 561
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_7

    .line 562
    return-object v0

    .line 563
    :cond_7
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v1, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 575
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 576
    :catch_5
    move-exception v0

    .line 577
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 579
    throw v1
.end method

.method public static whitelist test-api isSupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 537
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 487
    if-eqz p0, :cond_1c

    .line 491
    sget-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 492
    .local v0, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 493
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    return-object v1

    .line 494
    :cond_17
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1

    .line 488
    .end local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null charset name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 499
    sget-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v0

    .line 500
    :try_start_3
    sget-object v1, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    move-object v2, v1

    .local v2, "cs":Ljava/nio/charset/Charset;
    if-eqz v1, :cond_17

    .line 501
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 502
    monitor-exit v0

    return-object v2

    .line 504
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_30

    .line 508
    invoke-static {p0}, Lcom/android/icu/charset/CharsetFactory;->create(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v1, v0

    .end local v2    # "cs":Ljava/nio/charset/Charset;
    .local v1, "cs":Ljava/nio/charset/Charset;
    if-nez v0, :cond_2c

    .line 509
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_27

    goto :goto_2c

    .line 516
    :cond_27
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_2c
    :goto_2c
    invoke-static {p0, v1}, Ljava/nio/charset/Charset;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 512
    return-object v1

    .line 504
    .end local v1    # "cs":Ljava/nio/charset/Charset;
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static greylist-max-o lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 415
    invoke-static {}, Ljdk/internal/misc/VM;->isBooted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 416
    return-object v1

    .line 418
    :cond_8
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 420
    return-object v1

    .line 422
    :cond_11
    :try_start_11
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 424
    new-instance v0, Ljava/nio/charset/Charset$2;

    invoke-direct {v0, p0}, Ljava/nio/charset/Charset$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_29

    .line 439
    sget-object v2, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 424
    return-object v0

    .line 439
    :catchall_29
    move-exception v0

    sget-object v2, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 440
    throw v0
.end method

.method private static greylist-max-o providers()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/nio/charset/Charset$1;

    invoke-direct {v0}, Ljava/nio/charset/Charset$1;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o put(Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 589
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 590
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 591
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_1e
    goto :goto_1

    .line 593
    :cond_1f
    return-void
.end method


# virtual methods
.method public final whitelist test-api aliases()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 734
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    return-object v0

    .line 735
    :cond_7
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    array-length v0, v0

    .line 736
    .local v0, "n":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 737
    .local v1, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_1c

    .line 738
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 739
    .end local v2    # "i":I
    :cond_1c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 740
    iget-object v2, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    return-object v2
.end method

.method public whitelist test-api canEncode()Z
    .registers 2

    .line 844
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 283
    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public final whitelist test-api compareTo(Ljava/nio/charset/Charset;)I
    .registers 4
    .param p1, "that"    # Ljava/nio/charset/Charset;

    .line 949
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final whitelist test-api decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 874
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 875
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 876
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 877
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0
    :try_end_14
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_14} :catch_15

    .line 874
    return-object v0

    .line 878
    :catch_15
    move-exception v0

    .line 879
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api displayName()Ljava/lang/String;
    .registers 2

    .line 753
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api displayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 781
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 933
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .line 910
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 911
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 912
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 913
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_14
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_14} :catch_15

    .line 910
    return-object v0

    .line 914
    :catch_15
    move-exception v0

    .line 915
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;

    .line 971
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-nez v0, :cond_6

    .line 972
    const/4 v0, 0x0

    return v0

    .line 973
    :cond_6
    if-ne p0, p1, :cond_a

    .line 974
    const/4 v0, 0x1

    return v0

    .line 975
    :cond_a
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 958
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api isRegistered()Z
    .registers 3

    .line 765
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public final whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 724
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist test-api newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract whitelist test-api newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 984
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
