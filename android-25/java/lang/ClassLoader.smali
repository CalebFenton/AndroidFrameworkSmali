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
.field private transient allocator:J

.field private transient classTable:J

.field private final packages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava/lang/ClassLoader;

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
    .line 290
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V

    #@b
    .line 289
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 271
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V

    #@7
    .line 270
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 196
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 195
    iput-object v0, p0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@a
    .line 230
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@11
    .line 248
    iput-object p2, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@13
    .line 247
    return-void
.end method

.method private static checkCreateClassLoader()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 244
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method private static createSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 4

    #@0
    .prologue
    .line 207
    const-string/jumbo v2, "java.class.path"

    #@3
    const-string/jumbo v3, "."

    #@6
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 208
    .local v0, "classPath":Ljava/lang/String;
    const-string/jumbo v2, "java.library.path"

    #@d
    const-string/jumbo v3, ""

    #@10
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 224
    .local v1, "librarySearchPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    #@16
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@1d
    return-object v2
.end method

.method private findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 719
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method private static getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 948
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method private static getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
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
    .line 957
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 1097
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public static getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 907
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 908
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 909
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 911
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public static getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 999
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    #@4
    move-result-object v1

    #@5
    .line 1001
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@7
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    :cond_0
    return-object v2

    #@c
    .line 1002
    :catch_0
    move-exception v0

    #@d
    .line 1003
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public static getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
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
    .line 937
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 938
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 939
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 941
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method protected static registerAsParallelCapable()Z
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 890
    const/4 v0, 0x1

    #@1
    return v0
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 0

    #@0
    .prologue
    .line 1318
    return-void
.end method

.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
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
    .line 663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "can\'t load this type of class file"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected final defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
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
    .line 520
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
    .line 594
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
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
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
    .line 456
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
    .line 1149
    iget-object v10, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@2
    monitor-enter v10

    #@3
    .line 1150
    :try_start_0
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Package;

    #@b
    .line 1151
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_0

    #@d
    .line 1152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1149
    .end local v0    # "pkg":Ljava/lang/Package;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v10

    #@15
    throw v1

    #@16
    .line 1154
    .restart local v0    # "pkg":Ljava/lang/Package;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Package;

    #@18
    .end local v0    # "pkg":Ljava/lang/Package;
    move-object v1, p1

    #@19
    move-object v2, p2

    #@1a
    move-object v3, p3

    #@1b
    move-object v4, p4

    #@1c
    move-object/from16 v5, p5

    #@1e
    move-object/from16 v6, p6

    #@20
    move-object/from16 v7, p7

    #@22
    move-object/from16 v8, p8

    #@24
    move-object v9, p0

    #@25
    invoke-direct/range {v0 .. v9}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    #@28
    .line 1157
    .restart local v0    # "pkg":Ljava/lang/Package;
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    monitor-exit v10

    #@2e
    .line 1158
    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
    .line 408
    new-instance v0, Ljava/lang/ClassNotFoundException;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "libname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1221
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
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
    .line 738
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    #@3
    move-result-object v1

    #@4
    if-ne p0, v1, :cond_0

    #@6
    .line 739
    const/4 v0, 0x0

    #@7
    .line 742
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/VMClassLoader;->findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 741
    :cond_0
    move-object v0, p0

    #@d
    .local v0, "loader":Ljava/lang/ClassLoader;
    goto :goto_0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 849
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
    .line 870
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected final findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
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
    .line 710
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
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1176
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1177
    :try_start_0
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "pkg":Ljava/lang/Package;
    monitor-exit v2

    #@c
    .line 1179
    return-object v0

    #@d
    .line 1176
    .end local v0    # "pkg":Ljava/lang/Package;
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1
.end method

.method protected getPackages()[Ljava/lang/Package;
    .locals 3

    #@0
    .prologue
    .line 1193
    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1194
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    #@5
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Package;>;"
    monitor-exit v2

    #@b
    .line 1197
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@12
    move-result v2

    #@13
    new-array v2, v2, [Ljava/lang/Package;

    #@15
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, [Ljava/lang/Package;

    #@1b
    return-object v1

    #@1c
    .line 1193
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Package;>;"
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public final getParent()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 1037
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 787
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 788
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@9
    move-result-object v0

    #@a
    .line 792
    .local v0, "url":Ljava/net/URL;
    :goto_0
    if-nez v0, :cond_0

    #@c
    .line 793
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@f
    move-result-object v0

    #@10
    .line 795
    :cond_0
    return-object v0

    #@11
    .line 790
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 977
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@4
    move-result-object v1

    #@5
    .line 979
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@7
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    :cond_0
    return-object v2

    #@c
    .line 980
    :catch_0
    move-exception v0

    #@d
    .line 981
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
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
    const/4 v2, 0x0

    #@1
    .line 825
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [Ljava/util/Enumeration;

    #@4
    .line 826
    .local v0, "tmp":[Ljava/util/Enumeration;
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 827
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@d
    move-result-object v1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 831
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 833
    new-instance v1, Lsun/misc/CompoundEnumeration;

    #@19
    invoke-direct {v1, v0}, Lsun/misc/CompoundEnumeration;-><init>([Ljava/util/Enumeration;)V

    #@1c
    return-object v1

    #@1d
    .line 829
    :cond_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@20
    move-result-object v1

    #@21
    aput-object v1, v0, v2

    #@23
    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
    .line 312
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
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
    .line 362
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 363
    .local v0, "c":Ljava/lang/Class;
    if-nez v0, :cond_0

    #@6
    .line 364
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@9
    move-result-wide v2

    #@a
    .line 366
    .local v2, "t0":J
    :try_start_0
    iget-object v6, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 367
    iget-object v6, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    #@10
    const/4 v7, 0x0

    #@11
    invoke-virtual {v6, p1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    .line 376
    :goto_0
    if-nez v0, :cond_0

    #@17
    .line 379
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1a
    move-result-wide v4

    #@1b
    .line 380
    .local v4, "t1":J
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1e
    move-result-object v0

    #@1f
    .line 385
    .end local v2    # "t0":J
    .end local v4    # "t1":J
    :cond_0
    return-object v0

    #@20
    .line 369
    .restart local v2    # "t0":J
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;->findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@23
    move-result-object v0

    #@24
    goto :goto_0

    #@25
    .line 371
    :catch_0
    move-exception v1

    #@26
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
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
    .line 682
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1305
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1239
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1280
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
    .line 757
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
