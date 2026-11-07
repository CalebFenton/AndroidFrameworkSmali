.class public Lsun/net/ExtendedOptionsImpl;
.super Ljava/lang/Object;
.source "ExtendedOptionsImpl.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkGetOptionPermission(Ljava/net/SocketOption;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "*>;)V"
        }
    .end annotation

    .line 69
    .local p0, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 70
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_7

    .line 71
    return-void

    .line 73
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "check":Ljava/lang/String;
    new-instance v2, Ljdk/net/NetworkPermission;

    invoke-direct {v2, v1}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 75
    return-void
.end method

.method public static blacklist checkSetOptionPermission(Ljava/net/SocketOption;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "*>;)V"
        }
    .end annotation

    .line 60
    .local p0, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 61
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_7

    .line 62
    return-void

    .line 64
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "check":Ljava/lang/String;
    new-instance v2, Ljdk/net/NetworkPermission;

    invoke-direct {v2, v1}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 66
    return-void
.end method

.method public static blacklist checkValueType(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 78
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    return-void

    .line 79
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist flowSupported()Z
    .registers 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "f"    # Ljdk/net/SocketFlow;

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported socket option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "f"    # Ljdk/net/SocketFlow;

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported socket option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
