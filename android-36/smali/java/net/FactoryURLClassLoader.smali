.class final Ljava/net/FactoryURLClassLoader;
.super Ljava/net/URLClassLoader;
.source "URLClassLoader.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 793
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    .line 794
    return-void
.end method

.method constructor blacklist <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .registers 4
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .line 798
    invoke-direct {p0, p1, p2, p3}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    .line 799
    return-void
.end method

.method constructor blacklist <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .registers 3
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .line 802
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    .line 803
    return-void
.end method


# virtual methods
.method public final whitelist test-api loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
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

    .line 810
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 811
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_17

    .line 812
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 813
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    .line 814
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 817
    .end local v1    # "i":I
    :cond_17
    invoke-super {p0, p1, p2}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method
