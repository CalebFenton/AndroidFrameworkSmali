.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile bugLevel:Ljava/lang/String;

.field private static volatile cache1:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultCharset:Ljava/nio/charset/Charset;

.field private static gate:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ThreadLocal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aliasSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aliases:[Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Ljava/util/Iterator;
    .locals 1

    #@0
    invoke-static {}, Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 0
    .param p0, "i"    # Ljava/util/Iterator;
    .param p1, "m"    # Ljava/util/Map;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/nio/charset/Charset;->put(Ljava/util/Iterator;Ljava/util/Map;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 283
    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    #@3
    .line 334
    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    #@5
    .line 335
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    sput-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@c
    .line 408
    new-instance v0, Ljava/lang/ThreadLocal;

    #@e
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@11
    sput-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    #@13
    .line 277
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 675
    iput-object v2, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    #@6
    .line 691
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    #@9
    .line 692
    if-nez p2, :cond_0

    #@b
    const/4 v2, 0x0

    #@c
    new-array v0, v2, [Ljava/lang/String;

    #@e
    .line 693
    .local v0, "as":[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_1
    array-length v2, v0

    #@10
    if-ge v1, v2, :cond_1

    #@12
    .line 694
    aget-object v2, v0, v1

    #@14
    invoke-static {v2}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    #@17
    .line 693
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 692
    .end local v0    # "as":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    move-object v0, p2

    #@1b
    .restart local v0    # "as":[Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 695
    .restart local v1    # "i":I
    :cond_1
    iput-object p1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@1e
    .line 696
    iput-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    #@20
    .line 690
    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .locals 4
    .param p0, "bl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 286
    sget-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    #@2
    .line 287
    .local v0, "level":Ljava/lang/String;
    if-nez v0, :cond_1

    #@4
    .line 288
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 289
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 291
    :cond_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@e
    const-string/jumbo v2, "sun.nio.cs.bugLevel"

    #@11
    const-string/jumbo v3, ""

    #@14
    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 290
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "level":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@1d
    .restart local v0    # "level":Ljava/lang/String;
    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    #@1f
    .line 293
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    return v1
.end method

.method public static availableCharsets()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 628
    new-instance v0, Ljava/nio/charset/Charset$3;

    #@2
    invoke-direct {v0}, Ljava/nio/charset/Charset$3;-><init>()V

    #@5
    .line 627
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/SortedMap;

    #@b
    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 6
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 338
    sget-object v5, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 339
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 340
    .local v3, "canonicalName":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@9
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/nio/charset/Charset;

    #@f
    .line 342
    .local v2, "canonicalCharset":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_1

    #@11
    .line 343
    move-object p1, v2

    #@12
    .line 352
    :cond_0
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@14
    invoke-virtual {v4, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v5

    #@18
    .line 355
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@1a
    invoke-direct {v4, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1d
    sput-object v4, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    #@1f
    .line 337
    return-void

    #@20
    .line 345
    :cond_1
    :try_start_1
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@22
    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 347
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/lang/String;

    #@39
    .line 348
    .local v0, "alias":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@3b
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 338
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    .end local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    .end local v3    # "canonicalName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@40
    monitor-exit v5

    #@41
    throw v4
.end method

.method private static checkName(Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 307
    .local v2, "n":I
    const-string/jumbo v3, "1.4"

    #@7
    invoke-static {v3}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 308
    if-nez v2, :cond_0

    #@f
    .line 309
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    #@11
    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 311
    :cond_0
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_a

    #@18
    .line 312
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 313
    .local v0, "c":C
    const/16 v3, 0x41

    #@1e
    if-lt v0, v3, :cond_2

    #@20
    const/16 v3, 0x5a

    #@22
    if-gt v0, v3, :cond_2

    #@24
    .line 311
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 314
    :cond_2
    const/16 v3, 0x61

    #@29
    if-lt v0, v3, :cond_3

    #@2b
    const/16 v3, 0x7a

    #@2d
    if-le v0, v3, :cond_1

    #@2f
    .line 315
    :cond_3
    const/16 v3, 0x30

    #@31
    if-lt v0, v3, :cond_4

    #@33
    const/16 v3, 0x39

    #@35
    if-le v0, v3, :cond_1

    #@37
    .line 316
    :cond_4
    const/16 v3, 0x2d

    #@39
    if-ne v0, v3, :cond_5

    #@3b
    if-nez v1, :cond_1

    #@3d
    .line 317
    :cond_5
    const/16 v3, 0x2b

    #@3f
    if-ne v0, v3, :cond_6

    #@41
    if-nez v1, :cond_1

    #@43
    .line 318
    :cond_6
    const/16 v3, 0x3a

    #@45
    if-ne v0, v3, :cond_7

    #@47
    if-nez v1, :cond_1

    #@49
    .line 319
    :cond_7
    const/16 v3, 0x5f

    #@4b
    if-ne v0, v3, :cond_8

    #@4d
    if-nez v1, :cond_1

    #@4f
    .line 320
    :cond_8
    const/16 v3, 0x2e

    #@51
    if-ne v0, v3, :cond_9

    #@53
    if-nez v1, :cond_1

    #@55
    .line 321
    :cond_9
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    #@57
    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3

    #@5b
    .line 305
    .end local v0    # "c":C
    :cond_a
    return-void
.end method

.method public static defaultCharset()Ljava/nio/charset/Charset;
    .locals 2

    #@0
    .prologue
    .line 661
    const-class v1, Ljava/nio/charset/Charset;

    #@2
    monitor-enter v1

    #@3
    .line 662
    :try_start_0
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 663
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    sput-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    #@b
    .line 666
    :cond_0
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 661
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    .line 566
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    #@6
    .line 567
    return-object v0

    #@7
    .line 568
    :cond_0
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    #@9
    invoke-direct {v1, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1
.end method

.method public static forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 581
    :catch_0
    move-exception v0

    #@6
    .line 582
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@8
    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@b
    .line 583
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@e
    .line 584
    throw v1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 542
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 492
    if-nez p0, :cond_0

    #@2
    .line 493
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Null charset name"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 496
    :cond_0
    sget-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    #@d
    .line 497
    .local v0, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    if-eqz v0, :cond_1

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/nio/charset/Charset;

    #@1f
    return-object v1

    #@20
    .line 499
    :cond_1
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method private static lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 4
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 504
    sget-object v2, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    .line 505
    :try_start_0
    sget-object v1, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/nio/charset/Charset;

    #@c
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    #@e
    .line 506
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@10
    invoke-direct {v1, p0, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@13
    sput-object v1, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v2

    #@16
    .line 507
    return-object v0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 513
    invoke-static {p0}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1b
    move-result-object v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 514
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 516
    :cond_1
    invoke-static {p0, v0}, Ljava/nio/charset/Charset;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    #@27
    .line 517
    return-object v0

    #@28
    .line 504
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1

    #@2b
    .line 521
    .restart local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_2
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    #@2e
    .line 522
    return-object v3
.end method

.method private static lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 420
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 421
    return-object v2

    #@8
    .line 423
    :cond_0
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    #@a
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 425
    return-object v2

    #@11
    .line 427
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    #@13
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@18
    .line 430
    new-instance v0, Ljava/nio/charset/Charset$2;

    #@1a
    invoke-direct {v0, p0}, Ljava/nio/charset/Charset$2;-><init>(Ljava/lang/String;)V

    #@1d
    .line 429
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 443
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@28
    .line 429
    return-object v0

    #@29
    .line 442
    :catchall_0
    move-exception v0

    #@2a
    .line 443
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@2f
    .line 442
    throw v0
.end method

.method private static providers()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 363
    new-instance v0, Ljava/nio/charset/Charset$1;

    #@2
    invoke-direct {v0}, Ljava/nio/charset/Charset$1;-><init>()V

    #@5
    return-object v0
.end method

.method private static put(Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 593
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 594
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/nio/charset/Charset;

    #@c
    .line 595
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 596
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    goto :goto_0

    #@1e
    .line 592
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_1
    return-void
.end method


# virtual methods
.method public final aliases()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 714
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 715
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    #@6
    return-object v3

    #@7
    .line 716
    :cond_0
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    #@9
    array-length v2, v3

    #@a
    .line 717
    .local v2, "n":I
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    #@f
    .line 718
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@12
    .line 719
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    #@14
    aget-object v3, v3, v1

    #@16
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@19
    .line 718
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 720
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    #@22
    .line 721
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    #@24
    return-object v3
.end method

.method public canEncode()Z
    .locals 1

    #@0
    .prologue
    .line 822
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 926
    check-cast p1, Ljava/nio/charset/Charset;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final compareTo(Ljava/nio/charset/Charset;)I
    .locals 2
    .param p1, "that"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 927
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public abstract contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 852
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    #@3
    move-result-object v1

    #@4
    .line 853
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 852
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v1

    #@a
    .line 854
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 852
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 856
    :catch_0
    move-exception v0

    #@16
    .line 857
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 911
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 888
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    #@3
    move-result-object v1

    #@4
    .line 889
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 888
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@9
    move-result-object v1

    #@a
    .line 890
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 888
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 892
    :catch_0
    move-exception v0

    #@16
    .line 893
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "ob"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 949
    instance-of v0, p1, Ljava/nio/charset/Charset;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 950
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 951
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    .line 952
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 953
    :cond_1
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@c
    check-cast p1, Ljava/nio/charset/Charset;

    #@e
    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 936
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final isRegistered()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 746
    iget-object v1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@3
    const-string/jumbo v2, "X-"

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    iget-object v1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "x-"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    const/4 v0, 0x1

    #@19
    goto :goto_0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 962
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
