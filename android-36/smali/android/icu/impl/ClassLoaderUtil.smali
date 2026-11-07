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
.field private static volatile blacklist BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getBootstrapClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .line 53
    sget-object v0, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2a

    .line 54
    const-class v0, Landroid/icu/impl/ClassLoaderUtil;

    monitor-enter v0

    .line 55
    :try_start_7
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v1, :cond_25

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 58
    new-instance v2, Landroid/icu/impl/ClassLoaderUtil$1;

    invoke-direct {v2}, Landroid/icu/impl/ClassLoaderUtil$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .local v2, "cl":Ljava/lang/ClassLoader;
    goto :goto_23

    .line 65
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    :cond_1e
    new-instance v2, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    invoke-direct {v2}, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V

    .line 67
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    :goto_23
    sput-object v2, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 69
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    .line 71
    :cond_2a
    :goto_2a
    sget-object v0, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static blacklist getClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 94
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_14

    .line 95
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 96
    if-nez v0, :cond_14

    .line 100
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    :cond_14
    return-object v0
.end method

.method public static blacklist getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 81
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 82
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_a

    .line 83
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 85
    :cond_a
    return-object v0
.end method
