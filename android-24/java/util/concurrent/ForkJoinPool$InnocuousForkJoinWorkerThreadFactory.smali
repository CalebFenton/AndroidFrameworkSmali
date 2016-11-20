.class final Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnocuousForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field private static final innocuousAcc:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 3529
    new-instance v0, Ljava/security/Permissions;

    #@2
    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    #@5
    .line 3530
    .local v0, "innocuousPerms":Ljava/security/Permissions;
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    #@7
    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    #@a
    .line 3531
    new-instance v1, Ljava/lang/RuntimePermission;

    #@c
    .line 3532
    const-string/jumbo v2, "enableContextClassLoaderOverride"

    #@f
    .line 3531
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    #@15
    .line 3533
    new-instance v1, Ljava/lang/RuntimePermission;

    #@17
    .line 3534
    const-string/jumbo v2, "modifyThreadGroup"

    #@1a
    .line 3533
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    #@20
    .line 3535
    new-instance v1, Ljava/security/AccessControlContext;

    #@22
    const/4 v2, 0x1

    #@23
    new-array v2, v2, [Ljava/security/ProtectionDomain;

    #@25
    .line 3536
    new-instance v3, Ljava/security/ProtectionDomain;

    #@27
    const/4 v4, 0x0

    #@28
    invoke-direct {v3, v4, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    #@2b
    const/4 v4, 0x0

    #@2c
    aput-object v3, v2, v4

    #@2e
    .line 3535
    invoke-direct {v1, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@31
    sput-object v1, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->innocuousAcc:Ljava/security/AccessControlContext;

    #@33
    .line 3520
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .locals 2
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 3542
    new-instance v0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;-><init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava/util/concurrent/ForkJoinPool;)V

    #@5
    .line 3546
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->innocuousAcc:Ljava/security/AccessControlContext;

    #@7
    .line 3541
    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@d
    return-object v0
.end method
