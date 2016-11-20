.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private closeables:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/io/Closeable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final ucp:Lsun/misc/URLClassPath;


# direct methods
.method static synthetic -get0(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/net/URLClassLoader;Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 756
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    #@3
    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    #@3
    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@a
    .line 142
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v0

    #@e
    .line 143
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@10
    .line 144
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@13
    .line 146
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    #@15
    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    #@18
    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@1a
    .line 147
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@20
    .line 139
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@a
    .line 99
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v0

    #@e
    .line 100
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@10
    .line 101
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@13
    .line 103
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    #@15
    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    #@18
    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@1a
    .line 104
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@20
    .line 96
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "factory"    # Ljava/net/URLStreamHandlerFactory;

    #@0
    .prologue
    .line 183
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@a
    .line 185
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v0

    #@e
    .line 186
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@10
    .line 187
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@13
    .line 189
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    #@15
    invoke-direct {v1, p1, p3}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;)V

    #@18
    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@1a
    .line 190
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@20
    .line 182
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 109
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@a
    .line 111
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v0

    #@e
    .line 112
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@10
    .line 113
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@13
    .line 115
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    #@15
    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    #@18
    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@1a
    .line 116
    iput-object p3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@1c
    .line 108
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    #@3
    .line 208
    new-instance v1, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@a
    .line 153
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v0

    #@e
    .line 154
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@10
    .line 155
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    #@13
    .line 157
    :cond_0
    new-instance v1, Lsun/misc/URLClassPath;

    #@15
    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    #@18
    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@1a
    .line 158
    iput-object p2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@1c
    .line 150
    return-void
.end method

.method private defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v16

    #@4
    .line 411
    .local v16, "t0":J
    const/16 v2, 0x2e

    #@6
    move-object/from16 v0, p1

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v12

    #@c
    .line 412
    .local v12, "i":I
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSourceURL()Ljava/net/URL;

    #@f
    move-result-object v18

    #@10
    .line 413
    .local v18, "url":Ljava/net/URL;
    const/4 v2, -0x1

    #@11
    if-eq v12, v2, :cond_0

    #@13
    .line 414
    const/4 v2, 0x0

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 416
    .local v3, "pkgname":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getManifest()Ljava/util/jar/Manifest;

    #@1d
    move-result-object v14

    #@1e
    .line 417
    .local v14, "man":Ljava/util/jar/Manifest;
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v18

    #@22
    invoke-direct {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    #@25
    move-result-object v2

    #@26
    if-nez v2, :cond_0

    #@28
    .line 419
    if-eqz v14, :cond_1

    #@2a
    .line 420
    :try_start_0
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v18

    #@2e
    invoke-virtual {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 436
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v14    # "man":Ljava/util/jar/Manifest;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getByteBuffer()Ljava/nio/ByteBuffer;

    #@34
    move-result-object v11

    #@35
    .line 437
    .local v11, "bb":Ljava/nio/ByteBuffer;
    if-eqz v11, :cond_2

    #@37
    .line 439
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    #@3a
    move-result-object v15

    #@3b
    .line 440
    .local v15, "signers":[Ljava/security/CodeSigner;
    new-instance v9, Ljava/security/CodeSource;

    #@3d
    move-object/from16 v0, v18

    #@3f
    invoke-direct {v9, v0, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    #@42
    .line 441
    .local v9, "cs":Ljava/security/CodeSource;
    move-object/from16 v0, p0

    #@44
    move-object/from16 v1, p1

    #@46
    invoke-virtual {v0, v1, v11, v9}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;

    #@49
    move-result-object v2

    #@4a
    return-object v2

    #@4b
    .line 422
    .end local v9    # "cs":Ljava/security/CodeSource;
    .end local v11    # "bb":Ljava/nio/ByteBuffer;
    .end local v15    # "signers":[Ljava/security/CodeSigner;
    .restart local v3    # "pkgname":Ljava/lang/String;
    .restart local v14    # "man":Ljava/util/jar/Manifest;
    :cond_1
    const/4 v4, 0x0

    #@4c
    const/4 v5, 0x0

    #@4d
    const/4 v6, 0x0

    #@4e
    const/4 v7, 0x0

    #@4f
    const/4 v8, 0x0

    #@50
    const/4 v9, 0x0

    #@51
    const/4 v10, 0x0

    #@52
    move-object/from16 v2, p0

    #@54
    :try_start_1
    invoke-virtual/range {v2 .. v10}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    goto :goto_0

    #@58
    .line 424
    :catch_0
    move-exception v13

    #@59
    .line 427
    .local v13, "iae":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, v18

    #@5d
    invoke-direct {v0, v3, v14, v1}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    #@60
    move-result-object v2

    #@61
    if-nez v2, :cond_0

    #@63
    .line 429
    new-instance v2, Ljava/lang/AssertionError;

    #@65
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "Cannot find package "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7c
    throw v2

    #@7d
    .line 443
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v13    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v14    # "man":Ljava/util/jar/Manifest;
    .restart local v11    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getBytes()[B

    #@80
    move-result-object v6

    #@81
    .line 445
    .local v6, "b":[B
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    #@84
    move-result-object v15

    #@85
    .line 446
    .restart local v15    # "signers":[Ljava/security/CodeSigner;
    new-instance v9, Ljava/security/CodeSource;

    #@87
    move-object/from16 v0, v18

    #@89
    invoke-direct {v9, v0, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    #@8c
    .line 447
    .restart local v9    # "cs":Ljava/security/CodeSource;
    array-length v8, v6

    #@8d
    const/4 v7, 0x0

    #@8e
    move-object/from16 v4, p0

    #@90
    move-object/from16 v5, p1

    #@92
    invoke-virtual/range {v4 .. v9}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    #@95
    move-result-object v2

    #@96
    return-object v2
.end method

.method private getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 382
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    .line 383
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_1

    #@6
    .line 385
    invoke-virtual {v0}, Ljava/lang/Package;->isSealed()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 387
    invoke-virtual {v0, p3}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 388
    new-instance v1, Ljava/lang/SecurityException;

    #@14
    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "sealing violation: package "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " is sealed"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 388
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 394
    :cond_0
    if-eqz p2, :cond_1

    #@35
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 395
    new-instance v1, Ljava/lang/SecurityException;

    #@3d
    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "sealing violation: can\'t seal package "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 397
    const-string/jumbo v3, ": already loaded"

    #@50
    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 395
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v1

    #@5c
    .line 401
    :cond_1
    return-object v0
.end method

.method private isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;

    #@0
    .prologue
    .line 521
    const/16 v3, 0x2e

    #@2
    const/16 v4, 0x2f

    #@4
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    const-string/jumbo v4, "/"

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 522
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@12
    move-result-object v0

    #@13
    .line 523
    .local v0, "attr":Ljava/util/jar/Attributes;
    const/4 v2, 0x0

    #@14
    .line 524
    .local v2, "sealed":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@16
    .line 525
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@18
    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 527
    .end local v2    # "sealed":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    #@1e
    .line 528
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 529
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@26
    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 532
    :cond_1
    const-string/jumbo v3, "true"

    #@2d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v3

    #@31
    return v3
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 3
    .param p0, "urls"    # [Ljava/net/URL;

    #@0
    .prologue
    .line 737
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@3
    move-result-object v0

    #@4
    .line 740
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v2, Ljava/net/URLClassLoader$6;

    #@6
    invoke-direct {v2, p0, v0}, Ljava/net/URLClassLoader$6;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    #@9
    .line 739
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/net/URLClassLoader;

    #@f
    .line 745
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .locals 3
    .param p0, "urls"    # [Ljava/net/URL;
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 713
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@3
    move-result-object v0

    #@4
    .line 716
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v2, Ljava/net/URLClassLoader$5;

    #@6
    invoke-direct {v2, p0, p1, v0}, Ljava/net/URLClassLoader$5;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    #@9
    .line 715
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/net/URLClassLoader;

    #@f
    .line 721
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/URLClassPath;->addURL(Ljava/net/URL;)V

    #@5
    .line 326
    return-void
.end method

.method public close()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v8

    #@4
    .line 283
    .local v8, "security":Ljava/lang/SecurityManager;
    if-eqz v8, :cond_0

    #@6
    .line 284
    new-instance v9, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v10, "closeClassLoader"

    #@b
    invoke-direct {v9, v10}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 286
    :cond_0
    iget-object v9, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@13
    invoke-virtual {v9}, Lsun/misc/URLClassPath;->closeLoaders()Ljava/util/List;

    #@16
    move-result-object v4

    #@17
    .line 290
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v10, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@19
    monitor-enter v10

    #@1a
    .line 291
    :try_start_0
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@1c
    invoke-virtual {v9}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@1f
    move-result-object v7

    #@20
    .line 292
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_1

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 294
    .local v0, "c":Ljava/io/Closeable;
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 295
    :catch_0
    move-exception v6

    #@35
    .line 296
    .local v6, "ioex":Ljava/io/IOException;
    :try_start_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 290
    .end local v0    # "c":Ljava/io/Closeable;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v6    # "ioex":Ljava/io/IOException;
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    :catchall_0
    move-exception v9

    #@3a
    monitor-exit v10

    #@3b
    throw v9

    #@3c
    .line 299
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    .restart local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    :cond_1
    :try_start_3
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@3e
    invoke-virtual {v9}, Ljava/util/WeakHashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    monitor-exit v10

    #@42
    .line 302
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_2

    #@48
    .line 303
    return-void

    #@49
    .line 306
    :cond_2
    const/4 v9, 0x0

    #@4a
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Ljava/io/IOException;

    #@50
    .line 310
    .local v5, "firstex":Ljava/io/IOException;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v3

    #@54
    .local v3, "error$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v9

    #@58
    if-eqz v9, :cond_3

    #@5a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Ljava/io/IOException;

    #@60
    .line 311
    .local v2, "error":Ljava/io/IOException;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@63
    goto :goto_1

    #@64
    .line 313
    .end local v2    # "error":Ljava/io/IOException;
    :cond_3
    throw v5
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const/16 v0, 0x2e

    #@2
    const/16 v1, 0x2f

    #@4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "/"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v10

    #@f
    .line 470
    .local v10, "path":Ljava/lang/String;
    const/4 v2, 0x0

    #@10
    .local v2, "specTitle":Ljava/lang/String;
    const/4 v3, 0x0

    #@11
    .local v3, "specVersion":Ljava/lang/String;
    const/4 v4, 0x0

    #@12
    .line 471
    .local v4, "specVendor":Ljava/lang/String;
    const/4 v5, 0x0

    #@13
    .local v5, "implTitle":Ljava/lang/String;
    const/4 v6, 0x0

    #@14
    .local v6, "implVersion":Ljava/lang/String;
    const/4 v7, 0x0

    #@15
    .line 472
    .local v7, "implVendor":Ljava/lang/String;
    const/4 v11, 0x0

    #@16
    .line 473
    .local v11, "sealed":Ljava/lang/String;
    const/4 v8, 0x0

    #@17
    .line 475
    .local v8, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v10}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@1a
    move-result-object v9

    #@1b
    .line 476
    .local v9, "attr":Ljava/util/jar/Attributes;
    if-eqz v9, :cond_0

    #@1d
    .line 477
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@1f
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 478
    .local v2, "specTitle":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@25
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 479
    .local v3, "specVersion":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@2b
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 480
    .local v4, "specVendor":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@31
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 481
    .local v5, "implTitle":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@37
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 482
    .local v6, "implVersion":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@3d
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 483
    .local v7, "implVendor":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@43
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@46
    move-result-object v11

    #@47
    .line 485
    .end local v2    # "specTitle":Ljava/lang/String;
    .end local v3    # "specVersion":Ljava/lang/String;
    .end local v4    # "specVendor":Ljava/lang/String;
    .end local v5    # "implTitle":Ljava/lang/String;
    .end local v6    # "implVersion":Ljava/lang/String;
    .end local v7    # "implVendor":Ljava/lang/String;
    .end local v11    # "sealed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@4a
    move-result-object v9

    #@4b
    .line 486
    if-eqz v9, :cond_7

    #@4d
    .line 487
    if-nez v2, :cond_1

    #@4f
    .line 488
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@51
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 490
    :cond_1
    if-nez v3, :cond_2

    #@57
    .line 491
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@59
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 493
    :cond_2
    if-nez v4, :cond_3

    #@5f
    .line 494
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@61
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 496
    :cond_3
    if-nez v5, :cond_4

    #@67
    .line 497
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@69
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    .line 499
    :cond_4
    if-nez v6, :cond_5

    #@6f
    .line 500
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@71
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    .line 502
    :cond_5
    if-nez v7, :cond_6

    #@77
    .line 503
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@79
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    .line 505
    :cond_6
    if-nez v11, :cond_7

    #@7f
    .line 506
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@81
    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@84
    move-result-object v11

    #@85
    .line 509
    :cond_7
    const-string/jumbo v0, "true"

    #@88
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8b
    move-result v0

    #@8c
    if-eqz v0, :cond_8

    #@8e
    .line 510
    move-object v8, p3

    #@8f
    .end local v8    # "sealBase":Ljava/net/URL;
    :cond_8
    move-object v0, p0

    #@90
    move-object v1, p1

    #@91
    .line 512
    invoke-virtual/range {v0 .. v8}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    #@94
    move-result-object v0

    #@95
    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
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
    .line 355
    :try_start_0
    new-instance v1, Ljava/net/URLClassLoader$1;

    #@2
    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    #@5
    .line 369
    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@7
    .line 354
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-object v1

    #@e
    .line 370
    :catch_0
    move-exception v0

    #@f
    .line 371
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/ClassNotFoundException;

    #@15
    throw v1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 547
    new-instance v2, Ljava/net/URLClassLoader$2;

    #@3
    invoke-direct {v2, p0, p1}, Ljava/net/URLClassLoader$2;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    #@6
    .line 551
    iget-object v3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@8
    .line 546
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/net/URL;

    #@e
    .line 553
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    #@10
    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@12
    invoke-virtual {v1, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    #@15
    move-result-object v1

    #@16
    :cond_0
    return-object v1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
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
    .line 568
    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {v1, p1, v2}, Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 570
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v1, Ljava/net/URLClassLoader$3;

    #@9
    invoke-direct {v1, p0, v0}, Ljava/net/URLClassLoader$3;-><init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V

    #@c
    return-object v1
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 13
    .param p1, "codesource"    # Ljava/security/CodeSource;

    #@0
    .prologue
    .line 633
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    #@3
    move-result-object v6

    #@4
    .line 635
    .local v6, "perms":Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    #@7
    move-result-object v8

    #@8
    .line 641
    .local v8, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@b
    move-result-object v9

    #@c
    .line 642
    .local v9, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v4

    #@10
    .line 648
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    :goto_0
    instance-of v10, v4, Ljava/io/FilePermission;

    #@12
    if-eqz v10, :cond_3

    #@14
    .line 652
    invoke-virtual {v4}, Ljava/security/Permission;->getName()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    .line 653
    .local v5, "path":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    #@1a
    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_0

    #@20
    .line 654
    new-instance v10, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v10

    #@29
    const-string/jumbo v11, "-"

    #@2c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v10

    #@30
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    .line 655
    new-instance v4, Ljava/io/FilePermission;

    #@36
    const-string/jumbo v10, "read"

    #@39
    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 682
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    #@3e
    .line 683
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@41
    move-result-object v7

    #@42
    .line 684
    .local v7, "sm":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_1

    #@44
    .line 685
    move-object v0, v4

    #@45
    .line 686
    .local v0, "fp":Ljava/security/Permission;
    new-instance v10, Ljava/net/URLClassLoader$4;

    #@47
    invoke-direct {v10, p0, v7, v0}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    #@4a
    .line 691
    iget-object v11, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    #@4c
    .line 686
    invoke-static {v10, v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@4f
    .line 693
    .end local v0    # "fp":Ljava/security/Permission;
    :cond_1
    invoke-virtual {v6, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    #@52
    .line 695
    .end local v7    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    return-object v6

    #@53
    .line 643
    :catch_0
    move-exception v2

    #@54
    .line 644
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v4, 0x0

    #@55
    .line 645
    .local v4, "p":Ljava/security/Permission;
    const/4 v9, 0x0

    #@56
    .local v9, "urlConnection":Ljava/net/URLConnection;
    goto :goto_0

    #@57
    .line 657
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "p":Ljava/security/Permission;
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    :cond_3
    if-nez v4, :cond_5

    #@59
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@5c
    move-result-object v10

    #@5d
    const-string/jumbo v11, "file"

    #@60
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v10

    #@64
    if-eqz v10, :cond_5

    #@66
    .line 658
    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    sget-char v11, Ljava/io/File;->separatorChar:C

    #@6c
    const/16 v12, 0x2f

    #@6e
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    .line 659
    .restart local v5    # "path":Ljava/lang/String;
    invoke-static {v5}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 660
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    #@78
    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7b
    move-result v10

    #@7c
    if-eqz v10, :cond_4

    #@7e
    .line 661
    new-instance v10, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    const-string/jumbo v11, "-"

    #@8a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v10

    #@8e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    .line 662
    :cond_4
    new-instance v4, Ljava/io/FilePermission;

    #@94
    const-string/jumbo v10, "read"

    #@97
    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9a
    .local v4, "p":Ljava/security/Permission;
    goto :goto_1

    #@9b
    .line 669
    .end local v4    # "p":Ljava/security/Permission;
    .end local v5    # "path":Ljava/lang/String;
    :cond_5
    move-object v3, v8

    #@9c
    .line 670
    .local v3, "locUrl":Ljava/net/URL;
    instance-of v10, v9, Ljava/net/JarURLConnection;

    #@9e
    if-eqz v10, :cond_6

    #@a0
    .line 671
    nop

    #@a1
    nop

    #@a2
    invoke-virtual {v9}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    #@a5
    move-result-object v3

    #@a6
    .line 673
    :cond_6
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    .line 674
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@ac
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@af
    move-result v10

    #@b0
    if-lez v10, :cond_0

    #@b2
    .line 675
    new-instance v4, Ljava/net/SocketPermission;

    #@b4
    .line 676
    const-string/jumbo v10, "connect,accept"

    #@b7
    .line 675
    invoke-direct {v4, v1, v10}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ba
    .restart local v4    # "p":Ljava/security/Permission;
    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 227
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@4
    move-result-object v5

    #@5
    .line 229
    .local v5, "url":Ljava/net/URL;
    if-nez v5, :cond_0

    #@7
    .line 230
    return-object v10

    #@8
    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@b
    move-result-object v6

    #@c
    .line 233
    .local v6, "urlc":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@f
    move-result-object v2

    #@10
    .line 234
    .local v2, "is":Ljava/io/InputStream;
    instance-of v7, v6, Ljava/net/JarURLConnection;

    #@12
    if-eqz v7, :cond_3

    #@14
    .line 235
    move-object v0, v6

    #@15
    nop

    #@16
    nop

    #@17
    move-object v4, v0

    #@18
    .line 236
    .local v4, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@1b
    move-result-object v3

    #@1c
    .line 237
    .local v3, "jar":Ljava/util/jar/JarFile;
    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@1e
    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 238
    :try_start_1
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@21
    invoke-virtual {v7, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@24
    move-result v7

    #@25
    if-nez v7, :cond_1

    #@27
    .line 239
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@29
    const/4 v9, 0x0

    #@2a
    invoke-virtual {v7, v3, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :cond_1
    :try_start_2
    monitor-exit v8

    #@2e
    .line 247
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    :cond_2
    :goto_0
    return-object v2

    #@2f
    .line 237
    .restart local v3    # "jar":Ljava/util/jar/JarFile;
    .restart local v4    # "juc":Ljava/net/JarURLConnection;
    :catchall_0
    move-exception v7

    #@30
    monitor-exit v8

    #@31
    throw v7

    #@32
    .line 248
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    .end local v6    # "urlc":Ljava/net/URLConnection;
    :catch_0
    move-exception v1

    #@33
    .line 249
    .local v1, "e":Ljava/io/IOException;
    return-object v10

    #@34
    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "urlc":Ljava/net/URLConnection;
    :cond_3
    instance-of v7, v6, Lsun/net/www/protocol/file/FileURLConnection;

    #@36
    if-eqz v7, :cond_2

    #@38
    .line 243
    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@3a
    monitor-enter v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@3b
    .line 244
    :try_start_3
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    #@3d
    const/4 v9, 0x0

    #@3e
    invoke-virtual {v7, v2, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    :try_start_4
    monitor-exit v8

    #@42
    goto :goto_0

    #@43
    .line 243
    :catchall_1
    move-exception v7

    #@44
    monitor-exit v8

    #@45
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    #@2
    invoke-virtual {v0}, Lsun/misc/URLClassPath;->getURLs()[Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
