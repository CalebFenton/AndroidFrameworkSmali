.class public Landroid/icu/impl/ClassLoaderUtil;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
    }
.end annotation


# static fields
.field private static volatile BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getBootstrapClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    #@0
    .prologue
    .line 49
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 50
    const-class v2, Landroid/icu/impl/ClassLoaderUtil;

    #@6
    monitor-enter v2

    #@7
    .line 51
    :try_start_0
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 52
    const/4 v0, 0x0

    #@c
    .line 53
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 54
    new-instance v1, Landroid/icu/impl/ClassLoaderUtil$1;

    #@14
    invoke-direct {v1}, Landroid/icu/impl/ClassLoaderUtil$1;-><init>()V

    #@17
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    check-cast v0, Ljava/lang/ClassLoader;

    #@1d
    .line 62
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_0
    sput-object v0, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v2

    #@20
    .line 66
    :cond_1
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    #@22
    return-object v1

    #@23
    .line 60
    .local v0, "cl":Ljava/lang/ClassLoader;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    #@25
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    invoke-direct {v0}, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .local v0, "cl":Ljava/lang/ClassLoader;
    goto :goto_0

    #@29
    .line 50
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    #@0
    .prologue
    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 89
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@a
    .line 90
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v0

    #@e
    .line 91
    if-nez v0, :cond_0

    #@10
    .line 95
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v0

    #@14
    .line 98
    :cond_0
    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 78
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 80
    :cond_0
    return-object v0
.end method
