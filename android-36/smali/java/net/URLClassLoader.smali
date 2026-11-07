.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final greylist acc:Ljava/security/AccessControlContext;

.field private greylist-max-o closeables:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/io/Closeable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist ucp:Lsun/misc/URLClassPath;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetacc(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;
    .registers 1

    iget-object p0, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetucp(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;
    .registers 1

    iget-object p0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdefineClass(Ljava/net/URLClassLoader;Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 786
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    .line 787
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/net/URL;)V
    .registers 5
    .param p1, "urls"    # [Ljava/net/URL;

    .line 144
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 146
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 147
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 148
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 150
    :cond_13
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 151
    new-instance v1, Lsun/misc/URLClassPath;

    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-direct {v1, p1, v2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 152
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 100
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 102
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 103
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 106
    :cond_13
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 107
    new-instance v1, Lsun/misc/URLClassPath;

    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-direct {v1, p1, v2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 108
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .registers 7
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .line 188
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 190
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 191
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 192
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 194
    :cond_13
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 195
    new-instance v1, Lsun/misc/URLClassPath;

    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-direct {v1, p1, p3, v2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 196
    return-void
.end method

.method constructor greylist-max-o <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .registers 6
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .line 112
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 114
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 115
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 116
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 118
    :cond_13
    iput-object p3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 119
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1, p3}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 120
    return-void
.end method

.method constructor greylist-max-o <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .registers 5
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .line 155
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 157
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 158
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 159
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 161
    :cond_13
    iput-object p2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 162
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1, p2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 163
    return-void
.end method

.method private greylist-max-o defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsun/misc/Resource;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 445
    .local v6, "t0":J
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 446
    .local v8, "i":I
    invoke-virtual {p2}, Lsun/misc/Resource;->getCodeSourceURL()Ljava/net/URL;

    move-result-object v9

    .line 447
    .local v9, "url":Ljava/net/URL;
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1d

    .line 448
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "pkgname":Ljava/lang/String;
    invoke-virtual {p2}, Lsun/misc/Resource;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v3

    .line 451
    .local v3, "man":Ljava/util/jar/Manifest;
    invoke-direct {p0, v2, v3, v9}, Ljava/net/URLClassLoader;->definePackageInternal(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)V

    .line 454
    .end local v2    # "pkgname":Ljava/lang/String;
    .end local v3    # "man":Ljava/util/jar/Manifest;
    :cond_1d
    invoke-virtual {p2}, Lsun/misc/Resource;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 455
    .local v10, "bb":Ljava/nio/ByteBuffer;
    if-eqz v10, :cond_31

    .line 457
    invoke-virtual {p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v2

    .line 458
    .local v2, "signers":[Ljava/security/CodeSigner;
    new-instance v3, Ljava/security/CodeSource;

    invoke-direct {v3, v9, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 461
    .local v3, "cs":Ljava/security/CodeSource;
    invoke-virtual {p0, p1, v10, v3}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .line 463
    .end local v2    # "signers":[Ljava/security/CodeSigner;
    .end local v3    # "cs":Ljava/security/CodeSource;
    :cond_31
    invoke-virtual {p2}, Lsun/misc/Resource;->getBytes()[B

    move-result-object v2

    .line 465
    .local v2, "b":[B
    invoke-virtual {p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v11

    .line 466
    .local v11, "signers":[Ljava/security/CodeSigner;
    new-instance v5, Ljava/security/CodeSource;

    invoke-direct {v5, v9, v11}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 469
    .local v5, "cs":Ljava/security/CodeSource;
    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o definePackageInternal(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)V
    .registers 14
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;

    .line 419
    invoke-direct {p0, p1, p2, p3}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 421
    if-eqz p2, :cond_10

    .line 422
    :try_start_8
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_d

    move-object v2, p1

    goto :goto_1c

    .line 426
    :catch_d
    move-exception v0

    move-object v2, p1

    goto :goto_1e

    .line 424
    :cond_10
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "pkgname":Ljava/lang/String;
    .local v2, "pkgname":Ljava/lang/String;
    :try_start_19
    invoke-virtual/range {v1 .. v9}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 434
    :goto_1c
    goto :goto_3f

    .line 426
    :catch_1d
    move-exception v0

    .line 429
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :goto_1e
    invoke-direct {p0, v2, p2, p3}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object p1

    if-eqz p1, :cond_25

    goto :goto_3f

    .line 431
    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 419
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v2    # "pkgname":Ljava/lang/String;
    .restart local p1    # "pkgname":Ljava/lang/String;
    :cond_3e
    move-object v2, p1

    .line 436
    .end local p1    # "pkgname":Ljava/lang/String;
    .restart local v2    # "pkgname":Ljava/lang/String;
    :goto_3f
    return-void
.end method

.method private greylist-max-o getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .registers 8
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;

    .line 393
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 394
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_5a

    .line 396
    invoke-virtual {v0}, Ljava/lang/Package;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 398
    invoke-virtual {v0, p3}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_5a

    .line 399
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sealing violation: package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is sealed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_32
    if-eqz p2, :cond_5a

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_5a

    .line 406
    :cond_3b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sealing violation: can\'t seal package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": already loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private greylist-max-o isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;

    .line 543
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    .line 545
    .local v1, "attr":Ljava/util/jar/Attributes;
    const/4 v2, 0x0

    .line 546
    .local v2, "sealed":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 547
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 549
    :cond_1b
    if-nez v2, :cond_2a

    .line 550
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_2a

    .line 551
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 554
    :cond_2a
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static whitelist test-api newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .registers 3
    .param p0, "urls"    # [Ljava/net/URL;

    .line 762
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 764
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v1, Ljava/net/URLClassLoader$6;

    invoke-direct {v1, p0, v0}, Ljava/net/URLClassLoader$6;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    .line 770
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method

.method public static whitelist test-api newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .registers 4
    .param p0, "urls"    # [Ljava/net/URL;
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 737
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 739
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v1, Ljava/net/URLClassLoader$5;

    invoke-direct {v1, p0, p1, v0}, Ljava/net/URLClassLoader$5;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    .line 745
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method


# virtual methods
.method protected whitelist test-api addURL(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 332
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0, p1}, Lsun/misc/URLClassPath;->addURL(Ljava/net/URL;)V

    .line 333
    return-void
.end method

.method public whitelist test-api close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 288
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 289
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "closeClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 291
    :cond_10
    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v1}, Lsun/misc/URLClassPath;->closeLoaders()Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v2, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 296
    :try_start_19
    iget-object v3, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 297
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_61

    .line 299
    .local v5, "c":Ljava/io/Closeable;
    :try_start_2f
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_61

    .line 302
    goto :goto_37

    .line 300
    :catch_33
    move-exception v6

    .line 301
    .local v6, "ioex":Ljava/io/IOException;
    :try_start_34
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v5    # "c":Ljava/io/Closeable;
    .end local v6    # "ioex":Ljava/io/IOException;
    :goto_37
    goto :goto_23

    .line 304
    :cond_38
    iget-object v4, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 305
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_61

    .line 307
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 308
    return-void

    .line 311
    :cond_45
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .line 315
    .local v2, "firstex":Ljava/io/IOException;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    .line 316
    .local v4, "error":Ljava/io/IOException;
    invoke-virtual {v2, v4}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 317
    .end local v4    # "error":Ljava/io/IOException;
    goto :goto_50

    .line 318
    :cond_60
    throw v2

    .line 305
    .end local v2    # "firstex":Ljava/io/IOException;
    :catchall_61
    move-exception v3

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v3
.end method

.method protected whitelist test-api definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 491
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "specTitle":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "specVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 493
    .local v4, "specVendor":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "implTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "implVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 494
    .local v7, "implVendor":Ljava/lang/String;
    const/4 v8, 0x0

    .line 495
    .local v8, "sealed":Ljava/lang/String;
    const/4 v9, 0x0

    .line 497
    .local v9, "sealBase":Ljava/net/URL;
    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v10

    .line 498
    .local v10, "attr":Ljava/util/jar/Attributes;
    if-eqz v10, :cond_4a

    .line 499
    sget-object v12, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 500
    sget-object v12, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 501
    sget-object v12, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 502
    sget-object v12, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 503
    sget-object v12, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 504
    sget-object v12, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 505
    sget-object v12, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    .line 507
    :cond_4a
    invoke-virtual {v11}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v12

    .line 508
    .end local v10    # "attr":Ljava/util/jar/Attributes;
    .local v12, "attr":Ljava/util/jar/Attributes;
    if-eqz v12, :cond_9e

    .line 509
    if-nez v1, :cond_58

    .line 510
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 512
    :cond_58
    if-nez v2, :cond_60

    .line 513
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 515
    :cond_60
    if-nez v4, :cond_68

    .line 516
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 518
    :cond_68
    if-nez v5, :cond_70

    .line 519
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 521
    :cond_70
    if-nez v6, :cond_78

    .line 522
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 524
    :cond_78
    if-nez v7, :cond_80

    .line 525
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 527
    :cond_80
    if-nez v8, :cond_93

    .line 528
    sget-object v10, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v4

    move-object v4, v1

    move-object v1, v8

    move-object v8, v6

    move-object v6, v14

    move-object v14, v5

    move-object v5, v2

    move-object v2, v9

    move-object v9, v7

    move-object v7, v14

    goto :goto_a8

    .line 527
    :cond_93
    move-object v14, v4

    move-object v4, v1

    move-object v1, v8

    move-object v8, v6

    move-object v6, v14

    move-object v14, v5

    move-object v5, v2

    move-object v2, v9

    move-object v9, v7

    move-object v7, v14

    goto :goto_a8

    .line 508
    :cond_9e
    move-object v14, v4

    move-object v4, v1

    move-object v1, v8

    move-object v8, v6

    move-object v6, v14

    move-object v14, v5

    move-object v5, v2

    move-object v2, v9

    move-object v9, v7

    move-object v7, v14

    .line 531
    .local v1, "sealed":Ljava/lang/String;
    .local v2, "sealBase":Ljava/net/URL;
    .local v4, "specTitle":Ljava/lang/String;
    .local v5, "specVersion":Ljava/lang/String;
    .local v6, "specVendor":Ljava/lang/String;
    .local v7, "implTitle":Ljava/lang/String;
    .local v8, "implVersion":Ljava/lang/String;
    .local v9, "implVendor":Ljava/lang/String;
    :goto_a8
    const-string v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 532
    move-object/from16 v2, p3

    move-object v10, v2

    goto :goto_b5

    .line 531
    :cond_b4
    move-object v10, v2

    .line 534
    .end local v2    # "sealBase":Ljava/net/URL;
    .local v10, "sealBase":Ljava/net/URL;
    :goto_b5
    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v13

    return-object v13
.end method

.method protected whitelist test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
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

    .line 361
    :try_start_0
    new-instance v0, Ljava/net/URLClassLoader$1;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_d} :catch_17

    .line 379
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 380
    if-eqz v0, :cond_11

    .line 383
    return-object v0

    .line 381
    :cond_11
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    .end local v0    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_17
    move-exception v0

    .line 378
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassNotFoundException;

    throw v1
.end method

.method public whitelist test-api findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 568
    new-instance v0, Ljava/net/URLClassLoader$2;

    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$2;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 575
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_16

    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v1, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method

.method public whitelist test-api findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 4
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

    .line 590
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    .line 592
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v1, Ljava/net/URLClassLoader$3;

    invoke-direct {v1, p0, v0}, Ljava/net/URLClassLoader$3;-><init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method protected whitelist test-api getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 11
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .line 656
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 658
    .local v0, "perms":Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v1

    .line 664
    .local v1, "url":Ljava/net/URL;
    :try_start_8
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 665
    .local v2, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    .line 669
    .local v3, "p":Ljava/security/Permission;
    goto :goto_15

    .line 666
    .end local v2    # "urlConnection":Ljava/net/URLConnection;
    .end local v3    # "p":Ljava/security/Permission;
    :catch_11
    move-exception v2

    .line 667
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 668
    .restart local v3    # "p":Ljava/security/Permission;
    const/4 v4, 0x0

    move-object v2, v4

    .line 671
    .local v2, "urlConnection":Ljava/net/URLConnection;
    :goto_15
    instance-of v4, v3, Ljava/io/FilePermission;

    const-string v5, "read"

    const-string v6, "-"

    if-eqz v4, :cond_41

    .line 675
    invoke-virtual {v3}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "path":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 677
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    new-instance v6, Ljava/io/FilePermission;

    invoke-direct {v6, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 680
    .end local v4    # "path":Ljava/lang/String;
    :cond_40
    goto :goto_9f

    :cond_41
    if-nez v3, :cond_7f

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v7, "file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 681
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 682
    .restart local v4    # "path":Ljava/lang/String;
    invoke-static {v4}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 683
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 684
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    :cond_78
    new-instance v6, Ljava/io/FilePermission;

    invoke-direct {v6, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 686
    .end local v4    # "path":Ljava/lang/String;
    goto :goto_9f

    .line 692
    :cond_7f
    move-object v4, v1

    .line 693
    .local v4, "locUrl":Ljava/net/URL;
    instance-of v5, v2, Ljava/net/JarURLConnection;

    if-eqz v5, :cond_8b

    .line 694
    move-object v5, v2

    check-cast v5, Ljava/net/JarURLConnection;

    invoke-virtual {v5}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v4

    .line 696
    :cond_8b
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 697
    .local v5, "host":Ljava/lang/String;
    if-eqz v5, :cond_9f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9f

    .line 698
    new-instance v6, Ljava/net/SocketPermission;

    const-string v7, "connect,accept"

    invoke-direct {v6, v5, v7}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 705
    .end local v4    # "locUrl":Ljava/net/URL;
    .end local v5    # "host":Ljava/lang/String;
    :cond_9f
    :goto_9f
    if-eqz v3, :cond_b5

    .line 706
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 707
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_b2

    .line 708
    move-object v5, v3

    .line 709
    .local v5, "fp":Ljava/security/Permission;
    new-instance v6, Ljava/net/URLClassLoader$4;

    invoke-direct {v6, p0, v4, v5}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    iget-object v7, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 716
    .end local v5    # "fp":Ljava/security/Permission;
    :cond_b2
    invoke-virtual {v0, v3}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 718
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_b5
    return-object v0
.end method

.method public whitelist test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 234
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 235
    return-object v1

    .line 237
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 238
    .local v2, "urlc":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 239
    .local v3, "is":Ljava/io/InputStream;
    instance-of v4, v2, Ljava/net/JarURLConnection;

    if-eqz v4, :cond_30

    .line 240
    move-object v4, v2

    check-cast v4, Ljava/net/JarURLConnection;

    .line 241
    .local v4, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v5

    .line 242
    .local v5, "jar":Ljava/util/jar/JarFile;
    iget-object v6, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v6
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_43

    .line 243
    :try_start_1e
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 244
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2b
    monitor-exit v6

    goto :goto_41

    :catchall_2d
    move-exception v7

    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    .end local v0    # "url":Ljava/net/URL;
    .end local p0    # "this":Ljava/net/URLClassLoader;
    .end local p1    # "name":Ljava/lang/String;
    :try_start_2f
    throw v7

    .line 247
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    .end local v5    # "jar":Ljava/util/jar/JarFile;
    .restart local v0    # "url":Ljava/net/URL;
    .restart local p0    # "this":Ljava/net/URLClassLoader;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_30
    instance-of v4, v2, Lsun/net/www/protocol/file/FileURLConnection;

    if-eqz v4, :cond_41

    .line 248
    iget-object v4, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v4
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_43

    .line 249
    :try_start_37
    iget-object v5, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-exit v4

    goto :goto_42

    :catchall_3e
    move-exception v5

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    .end local v0    # "url":Ljava/net/URL;
    .end local p0    # "this":Ljava/net/URLClassLoader;
    .end local p1    # "name":Ljava/lang/String;
    :try_start_40
    throw v5
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_41} :catch_43

    .line 247
    .restart local v0    # "url":Ljava/net/URL;
    .restart local p0    # "this":Ljava/net/URLClassLoader;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_41
    :goto_41
    nop

    .line 252
    :goto_42
    return-object v3

    .line 253
    .end local v2    # "urlc":Ljava/net/URLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_43
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public whitelist test-api getURLs()[Ljava/net/URL;
    .registers 2

    .line 342
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0}, Lsun/misc/URLClassPath;->getURLs()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
