.class final Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.super Ljava/util/concurrent/ForkJoinWorkerThread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnocuousForkJoinWorkerThread"
.end annotation


# static fields
.field private static final blacklist innocuousACC:Ljava/security/AccessControlContext;

.field private static final greylist-max-o innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 247
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 250
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_16

    .line 251
    :cond_b
    new-instance v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;

    invoke-direct {v1}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    :goto_16
    sput-object v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    .line 256
    .local v1, "g":Ljava/lang/ThreadGroup;
    if-nez v0, :cond_1f

    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createACC()Ljava/security/AccessControlContext;

    move-result-object v2

    goto :goto_2a

    .line 257
    :cond_1f
    new-instance v2, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$2;

    invoke-direct {v2}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$2;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    :goto_2a
    sput-object v2, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousACC:Ljava/security/AccessControlContext;

    .line 260
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    .end local v1    # "g":Ljava/lang/ThreadGroup;
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 216
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;ZZ)V

    .line 217
    return-void
.end method

.method static blacklist createACC()Ljava/security/AccessControlContext;
    .registers 4

    .line 236
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    return-object v0
.end method

.method static blacklist createGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 241
    .local v0, "group":Ljava/lang/ThreadGroup;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Ljava/lang/ThreadGroup;
    if-eqz v1, :cond_11

    .line 242
    move-object v0, v2

    goto :goto_8

    .line 243
    .end local v2    # "p":Ljava/lang/ThreadGroup;
    :cond_11
    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "InnocuousForkJoinWorkerThreadGroup"

    invoke-direct {v1, v0, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected whitelist test-api onStart()V
    .registers 3

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 222
    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousACC:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 223
    return-void
.end method

.method public whitelist test-api setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 230
    if-eqz p1, :cond_11

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 231
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setContextClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist test-api setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 226
    return-void
.end method
