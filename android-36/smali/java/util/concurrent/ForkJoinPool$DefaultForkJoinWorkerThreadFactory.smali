.class final Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field static volatile blacklist commonACC:Ljava/security/AccessControlContext;

.field static volatile blacklist regularACC:Ljava/security/AccessControlContext;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist newCommonWithACC(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .registers 7
    .param p0, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 1033
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->commonACC:Ljava/security/AccessControlContext;

    .line 1034
    .local v0, "acc":Ljava/security/AccessControlContext;
    if-nez v0, :cond_4f

    .line 1035
    new-instance v1, Ljava/security/Permissions;

    invoke-direct {v1}, Ljava/security/Permissions;-><init>()V

    .line 1036
    .local v1, "ps":Ljava/security/Permissions;
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "getClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1037
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "setContextClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1038
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "modifyThread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1039
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "enableContextClassLoaderOverride"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1040
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "modifyThreadGroup"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1041
    new-instance v2, Ljava/security/AccessControlContext;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/ProtectionDomain;

    new-instance v4, Ljava/security/ProtectionDomain;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    move-object v0, v2

    sput-object v2, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->commonACC:Ljava/security/AccessControlContext;

    .line 1045
    .end local v1    # "ps":Ljava/security/Permissions;
    :cond_4f
    new-instance v1, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$2;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$2;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    invoke-static {v1, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    return-object v1
.end method

.method static blacklist newRegularWithACC(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .registers 7
    .param p0, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 1015
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->regularACC:Ljava/security/AccessControlContext;

    .line 1016
    .local v0, "acc":Ljava/security/AccessControlContext;
    if-nez v0, :cond_31

    .line 1017
    new-instance v1, Ljava/security/Permissions;

    invoke-direct {v1}, Ljava/security/Permissions;-><init>()V

    .line 1018
    .local v1, "ps":Ljava/security/Permissions;
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "getClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1019
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "setContextClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 1020
    new-instance v2, Ljava/security/AccessControlContext;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/ProtectionDomain;

    new-instance v4, Ljava/security/ProtectionDomain;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    move-object v0, v2

    sput-object v2, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->regularACC:Ljava/security/AccessControlContext;

    .line 1024
    .end local v1    # "ps":Ljava/security/Permissions;
    :cond_31
    new-instance v1, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    invoke-static {v1, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    return-object v1
.end method


# virtual methods
.method public final whitelist test-api newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .registers 8
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 991
    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 993
    .local v0, "isCommon":Z
    :goto_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 994
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_16

    .line 995
    new-instance v4, Ljava/util/concurrent/ForkJoinWorkerThread;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1, v1, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;ZZ)V

    return-object v4

    .line 996
    :cond_16
    if-eqz v0, :cond_1d

    .line 997
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->newCommonWithACC(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v1

    return-object v1

    .line 999
    :cond_1d
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->newRegularWithACC(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v1

    return-object v1
.end method
