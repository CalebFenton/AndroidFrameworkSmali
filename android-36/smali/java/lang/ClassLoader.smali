.class public abstract Ljava/lang/ClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassLoader$SystemClassLoader;
    }
.end annotation


# instance fields
.field private transient greylist-max-o allocator:J

.field private transient greylist-max-o classTable:J

.field private final blacklist name:Ljava/lang/String;

.field private final blacklist packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist parent:Ljava/lang/ClassLoader;

.field public final greylist-max-o proxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$UsbLu6qLqYRmlhsn2LLBJGfpD4w(Ljava/lang/ClassLoader;Ljava/lang/String;I)Ljava/util/Spliterator;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/ClassLoader;->lambda$resources$0(Ljava/lang/String;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    invoke-static {}, Ljava/lang/ClassLoader;->createSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 4

    .line 527
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 528
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 508
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 509
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 482
    invoke-static {p1}, Ljava/lang/ClassLoader;->checkCreateClassLoader(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 483
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Void;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    .line 423
    iput-object p2, p0, Ljava/lang/ClassLoader;->name:Ljava/lang/String;

    .line 424
    iput-object p3, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 439
    return-void
.end method

.method private static greylist-max-o checkCreateClassLoader()Ljava/lang/Void;
    .registers 1

    .line 405
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/ClassLoader;->checkCreateClassLoader(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkCreateClassLoader(Ljava/lang/String;)Ljava/lang/Void;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 409
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 410
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must be non-empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o createSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 250
    const-string v0, "java.class.path"

    const-string v1, "."

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "classPath":Ljava/lang/String;
    const-string v1, "java.library.path"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "librarySearchPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method private greylist-max-o findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1253
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1669
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1678
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 2000
    .local p0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 2001
    const/4 v0, 0x0

    return-object v0

    .line 2006
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPlatformClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1817
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1907
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static whitelist test-api getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1620
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1621
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_b

    .line 1622
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1624
    :cond_b
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1730
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1732
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :try_start_7
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_e

    .line 1733
    :catch_c
    move-exception v2

    .line 1734
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 1732
    .end local v2    # "e":Ljava/io/IOException;
    :cond_e
    :goto_e
    return-object v1
.end method

.method public static whitelist test-api getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1658
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1659
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_b

    .line 1660
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    .line 1662
    :cond_b
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getDefinedPackages$1(I)[Ljava/lang/Package;
    .registers 2
    .param p0, "x$0"    # I

    .line 2237
    new-array v0, p0, [Ljava/lang/Package;

    return-object v0
.end method

.method static synthetic blacklist lambda$getPackages$2(I)[Ljava/lang/Package;
    .registers 2
    .param p0, "x$0"    # I

    .line 2314
    new-array v0, p0, [Ljava/lang/Package;

    return-object v0
.end method

.method private synthetic blacklist lambda$resources$0(Ljava/lang/String;I)Ljava/util/Spliterator;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "characteristics"    # I

    .line 1498
    nop

    .line 1499
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->asIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1498
    invoke-static {v0, p2}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 1500
    :catch_e
    move-exception v0

    .line 1501
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private static blacklist needsClassLoaderPermissionCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .registers 3
    .param p0, "from"    # Ljava/lang/ClassLoader;
    .param p1, "to"    # Ljava/lang/ClassLoader;

    .line 1988
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 1989
    return v0

    .line 1991
    :cond_4
    if-nez p0, :cond_7

    .line 1992
    return v0

    .line 1994
    :cond_7
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->isAncestor(Ljava/lang/ClassLoader;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static whitelist test-api registerAsParallelCapable()Z
    .registers 1
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1579
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api clearAssertionStatus()V
    .registers 1

    .line 2545
    return-void
.end method

.method protected final whitelist test-api defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/nio/ByteBuffer;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 1109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 1014
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api defineClass([BII)Ljava/lang/Class;
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 856
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "specTitle"    # Ljava/lang/String;
    .param p3, "specVersion"    # Ljava/lang/String;
    .param p4, "specVendor"    # Ljava/lang/String;
    .param p5, "implTitle"    # Ljava/lang/String;
    .param p6, "implVersion"    # Ljava/lang/String;
    .param p7, "implVendor"    # Ljava/lang/String;
    .param p8, "sealBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2175
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    new-instance v0, Ljava/lang/Package;

    move-object v9, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 2182
    .local v0, "p":Ljava/lang/Package;
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 2185
    return-object v0

    .line 2183
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "libname"    # Ljava/lang/String;

    .line 2350
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist test-api findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1272
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    if-ne p0, v0, :cond_8

    .line 1273
    const/4 v0, 0x0

    .local v0, "loader":Ljava/lang/ClassLoader;
    goto :goto_9

    .line 1275
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_8
    move-object v0, p0

    .line 1276
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    :goto_9
    invoke-static {v0, p1}, Ljava/lang/VMClassLoader;->findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1527
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist test-api findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1233
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getDefinedPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2206
    const-string v0, "name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2214
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    return-object v0
.end method

.method public final blacklist getDefinedPackages()[Ljava/lang/Package;
    .registers 3

    .line 2237
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/ClassLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/ClassLoader$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Package;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 545
    iget-object v0, p0, Ljava/lang/ClassLoader;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist test-api getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 2287
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    return-object v0
.end method

.method protected whitelist test-api getPackages()[Ljava/lang/Package;
    .registers 3

    .line 2314
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/ClassLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/ClassLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Package;

    return-object v0
.end method

.method public final whitelist test-api getParent()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1770
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1382
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_b

    .line 1383
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .local v0, "url":Ljava/net/URL;
    goto :goto_f

    .line 1387
    .end local v0    # "url":Ljava/net/URL;
    :cond_b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1389
    .restart local v0    # "url":Ljava/net/URL;
    :goto_f
    if-nez v0, :cond_15

    .line 1390
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1392
    :cond_15
    return-object v0
.end method

.method public whitelist test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1704
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1706
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :try_start_7
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_e

    .line 1707
    :catch_c
    move-exception v2

    .line 1708
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 1706
    .end local v2    # "e":Ljava/io/IOException;
    :cond_e
    :goto_e
    return-object v1
.end method

.method public whitelist test-api getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1443
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Enumeration;

    .line 1444
    .local v0, "tmp":[Ljava/util/Enumeration;, "[Ljava/util/Enumeration<Ljava/net/URL;>;"
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 1445
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_17

    .line 1448
    :cond_11
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1450
    :goto_17
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1452
    new-instance v1, Ljava/lang/CompoundEnumeration;

    invoke-direct {v1, v0}, Ljava/lang/CompoundEnumeration;-><init>([Ljava/util/Enumeration;)V

    return-object v1
.end method

.method blacklist isAncestor(Ljava/lang/ClassLoader;)Z
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 1970
    move-object v0, p0

    .line 1972
    .local v0, "acl":Ljava/lang/ClassLoader;
    :cond_1
    iget-object v0, v0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 1973
    if-ne p1, v0, :cond_7

    .line 1974
    const/4 v1, 0x1

    return v1

    .line 1976
    :cond_7
    if-nez v0, :cond_1

    .line 1977
    const/4 v1, 0x0

    return v1
.end method

.method public final blacklist isRegisteredAsParallelCapable()Z
    .registers 2

    .line 1596
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 621
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 622
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1f

    .line 624
    :try_start_6
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_12

    .line 625
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_16

    .line 627
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;->findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_16} :catch_18

    .line 632
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_16
    move-object v0, v1

    goto :goto_19

    .line 629
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_18
    move-exception v1

    .line 634
    :goto_19
    if-nez v0, :cond_1f

    .line 637
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 646
    :cond_1f
    return-object v0
.end method

.method final blacklist name()Ljava/lang/String;
    .registers 2

    .line 551
    iget-object v0, p0, Ljava/lang/ClassLoader;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected final whitelist test-api resolveClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1204
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public blacklist resources(Ljava/lang/String;)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1494
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const/16 v0, 0x500

    .line 1496
    .local v0, "characteristics":I
    new-instance v1, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1504
    .local v1, "si":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<Ljava/net/URL;>;>;"
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/Stream;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api setClassAssertionStatus(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2527
    return-void
.end method

.method public whitelist test-api setDefaultAssertionStatus(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2457
    return-void
.end method

.method public whitelist test-api setPackageAssertionStatus(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2500
    return-void
.end method

.method protected final whitelist test-api setSigners(Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 3
    .param p2, "signers"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1292
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
