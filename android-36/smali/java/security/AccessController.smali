.class public final Ljava/security/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api checkPermission(Ljava/security/Permission;)V
    .registers 1
    .param p0, "perm"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public static whitelist test-api doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .line 62
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;[Ljava/security/Permission;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Ljava/security/AccessControlContext;
    .param p2, "perms"    # [Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            "[",
            "Ljava/security/Permission;",
            ")TT;"
        }
    .end annotation

    .line 141
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 82
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 83
    :catch_5
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/PrivilegedActionException;

    invoke-direct {v1, v0}, Ljava/security/PrivilegedActionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static whitelist test-api doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 106
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;[Ljava/security/Permission;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Ljava/security/AccessControlContext;
    .param p2, "perms"    # [Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            "[",
            "Ljava/security/Permission;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 118
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api doPrivilegedWithCombiner(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 53
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist doPrivilegedWithCombiner(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;[Ljava/security/Permission;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Ljava/security/AccessControlContext;
    .param p2, "perms"    # [Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            "[",
            "Ljava/security/Permission;",
            ")TT;"
        }
    .end annotation

    .line 72
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api doPrivilegedWithCombiner(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 95
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist doPrivilegedWithCombiner(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;[Ljava/security/Permission;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Ljava/security/AccessControlContext;
    .param p2, "perms"    # [Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            "[",
            "Ljava/security/Permission;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 131
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getContext()Ljava/security/AccessControlContext;
    .registers 2

    .line 145
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    return-object v0
.end method
