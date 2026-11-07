.class public final Ljava/security/AccessControlContext;
.super Ljava/lang/Object;
.source "AccessControlContext.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V
    .registers 3
    .param p1, "acc"    # Ljava/security/AccessControlContext;
    .param p2, "combiner"    # Ljava/security/DomainCombiner;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;Z)V
    .registers 4
    .param p1, "acc"    # Ljava/security/AccessControlContext;
    .param p2, "combiner"    # Ljava/security/DomainCombiner;
    .param p3, "preauthorized"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/ProtectionDomain;Ljava/security/DomainCombiner;Ljava/security/AccessControlContext;Ljava/security/AccessControlContext;[Ljava/security/Permission;)V
    .registers 6
    .param p1, "caller"    # Ljava/security/ProtectionDomain;
    .param p2, "combiner"    # Ljava/security/DomainCombiner;
    .param p3, "parent"    # Ljava/security/AccessControlContext;
    .param p4, "context"    # Ljava/security/AccessControlContext;
    .param p5, "perms"    # [Ljava/security/Permission;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/security/ProtectionDomain;)V
    .registers 2
    .param p1, "context"    # [Ljava/security/ProtectionDomain;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method constructor blacklist <init>([Ljava/security/ProtectionDomain;Ljava/security/AccessControlContext;)V
    .registers 3
    .param p1, "context"    # [Ljava/security/ProtectionDomain;
    .param p2, "privilegedContext"    # Ljava/security/AccessControlContext;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method constructor blacklist <init>([Ljava/security/ProtectionDomain;Z)V
    .registers 3
    .param p1, "context"    # [Ljava/security/ProtectionDomain;
    .param p2, "isPrivileged"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist test-api checkPermission(Ljava/security/Permission;)V
    .registers 2
    .param p1, "perm"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method blacklist getAssignedCombiner()Ljava/security/DomainCombiner;
    .registers 2

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getContext()[Ljava/security/ProtectionDomain;
    .registers 2

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getDomainCombiner()Ljava/security/DomainCombiner;
    .registers 2

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist isPrivileged()Z
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method blacklist optimize()Ljava/security/AccessControlContext;
    .registers 2

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method
