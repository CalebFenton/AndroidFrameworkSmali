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
.field private packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/ClassLoader;

.field public final proxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    invoke-static {}, Ljava/lang/ClassLoader;->createSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 190
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    #@8
    .line 189
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parentLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    #@4
    .line 201
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 2
    .param p1, "parentLoader"    # Ljava/lang/ClassLoader;
    .param p2, "nullAllowed"    # Z

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@a
    .line 104
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 103
    iput-object v0, p0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@11
    .line 209
    if-nez p1, :cond_0

    #@13
    if-eqz p2, :cond_1

    #@15
    .line 212
    :cond_0
    iput-object p1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@17
    .line 208
    return-void

    #@18
    .line 210
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "parentLoader == null && !nullAllowed"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method private static createSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    #@0
    .prologue
    .line 112
    const-string/jumbo v1, "java.class.path"

    #@3
    const-string/jumbo v2, "."

    #@6
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 128
    .local v0, "classPath":Ljava/lang/String;
    new-instance v1, Ldalvik/system/PathClassLoader;

    #@c
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v1, v0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@13
    return-object v1
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 137
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public static getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 0

    #@0
    .prologue
    .line 721
    return-void
.end method

.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 6
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
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    new-array v2, v0, [B

    #@6
    .line 328
    .local v2, "temp":[B
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@9
    .line 329
    array-length v4, v2

    #@a
    const/4 v3, 0x0

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-object v5, p3

    #@e
    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method protected final defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classRep"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "can\'t load this type of class file"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classRep"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "can\'t load this type of class file"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected final defineClass([BII)Ljava/lang/Class;
    .locals 2
    .param p1, "classRep"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "can\'t load this type of class file"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 11
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

    #@0
    .prologue
    .line 644
    iget-object v10, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@2
    monitor-enter v10

    #@3
    .line 645
    :try_start_0
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 646
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Package "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " already defined"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 644
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v10

    #@2e
    throw v1

    #@2f
    .line 649
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Package;

    #@31
    move-object v1, p0

    #@32
    move-object v2, p1

    #@33
    move-object v3, p2

    #@34
    move-object v4, p3

    #@35
    move-object v5, p4

    #@36
    move-object/from16 v6, p5

    #@38
    move-object/from16 v7, p6

    #@3a
    move-object/from16 v8, p7

    #@3c
    move-object/from16 v9, p8

    #@3e
    invoke-direct/range {v0 .. v9}, Ljava/lang/Package;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    #@41
    .line 652
    .local v0, "newPackage":Ljava/lang/Package;
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@43
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit v10

    #@47
    .line 654
    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    new-instance v0, Ljava/lang/ClassNotFoundException;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "libName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 582
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    #@3
    move-result-object v1

    #@4
    if-ne p0, v1, :cond_0

    #@6
    .line 359
    const/4 v0, 0x0

    #@7
    .line 362
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/VMClassLoader;->findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 361
    :cond_0
    move-object v0, p0

    #@d
    .local v0, "loader":Ljava/lang/ClassLoader;
    goto :goto_0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 547
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected final findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 376
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 595
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 596
    :try_start_0
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 595
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method protected getPackages()[Ljava/lang/Package;
    .locals 4

    #@0
    .prologue
    .line 606
    iget-object v3, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@2
    monitor-enter v3

    #@3
    .line 607
    :try_start_0
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/Map;

    #@5
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    .line 608
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Package;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@c
    move-result v2

    #@d
    new-array v1, v2, [Ljava/lang/Package;

    #@f
    .line 609
    .local v1, "result":[Ljava/lang/Package;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v3

    #@13
    .line 610
    return-object v1

    #@14
    .line 606
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Package;>;"
    .end local v1    # "result":[Ljava/lang/Package;
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2
.end method

.method public final getParent()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    .line 402
    .local v0, "resource":Ljava/net/URL;
    if-nez v0, :cond_0

    #@8
    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@b
    move-result-object v0

    #@c
    .line 405
    :cond_0
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@4
    move-result-object v1

    #@5
    .line 443
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@7
    .line 444
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 446
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    #@d
    .line 450
    :cond_0
    return-object v2
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    iget-object v2, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@2
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .line 425
    .local v0, "first":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@9
    move-result-object v1

    #@a
    .line 427
    .local v1, "second":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v2, Ljava/lang/TwoEnumerationsInOne;

    #@c
    invoke-direct {v2, v0, v1}, Ljava/lang/TwoEnumerationsInOne;-><init>(Ljava/util/Enumeration;Ljava/util/Enumeration;)V

    #@f
    return-object v2
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 501
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    #@6
    .line 502
    const/4 v2, 0x0

    #@7
    .line 504
    .local v2, "suppressed":Ljava/lang/ClassNotFoundException;
    :try_start_0
    iget-object v3, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@9
    const/4 v4, 0x0

    #@a
    invoke-virtual {v3, p1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v0

    #@e
    .line 509
    .end local v2    # "suppressed":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v0, :cond_0

    #@10
    .line 511
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    move-result-object v0

    #@14
    .line 519
    :cond_0
    return-object v0

    #@15
    .line 505
    .restart local v2    # "suppressed":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v1

    #@16
    .line 506
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    #@17
    .local v2, "suppressed":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    #@18
    .line 512
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "suppressed":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@19
    .line 513
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1, v2}, Ljava/lang/ClassNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    #@1c
    .line 514
    throw v1
.end method

.method protected final resolveClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 533
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 682
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 710
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 697
    return-void
.end method

.method protected final setSigners(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "signers"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 667
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
