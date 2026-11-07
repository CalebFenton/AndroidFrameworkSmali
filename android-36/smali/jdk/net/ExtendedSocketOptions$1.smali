.class Ljdk/net/ExtendedSocketOptions$1;
.super Lsun/net/ext/ExtendedSocketOptions;
.source "ExtendedSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/net/ExtendedSocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    const-class v0, Ljdk/net/ExtendedSocketOptions;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    .line 194
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-direct {p0, p1}, Lsun/net/ext/ExtendedSocketOptions;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public blacklist getOption(Ljava/io/FileDescriptor;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/SocketOption<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 231
    .local p2, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 232
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_25

    .line 233
    new-instance v1, Ljdk/net/NetworkPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOption."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 235
    :cond_25
    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 238
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_3a

    .line 239
    nop

    .line 240
    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v1

    .line 241
    .local v1, "flow":Ljdk/net/SocketFlow;
    invoke-static {p1, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smgetFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 242
    return-object v1

    .line 243
    .end local v1    # "flow":Ljdk/net/SocketFlow;
    :cond_3a
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_QUICKACK:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_43

    .line 244
    invoke-static {p1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smgetQuickAckOption(Ljava/io/FileDescriptor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 245
    :cond_43
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPCOUNT:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_50

    .line 246
    invoke-static {p1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smgetTcpkeepAliveProbes(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 247
    :cond_50
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPIDLE:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_5d

    .line 248
    invoke-static {p1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smgetTcpKeepAliveTime(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 249
    :cond_5d
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPINTERVAL:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_6a

    .line 250
    invoke-static {p1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smgetTcpKeepAliveIntvl(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 252
    :cond_6a
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_83
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setOption(Ljava/io/FileDescriptor;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 202
    .local p2, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 203
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_25

    .line 204
    new-instance v1, Ljdk/net/NetworkPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOption."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 206
    :cond_25
    if-eqz p1, :cond_95

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 209
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_40

    .line 210
    nop

    .line 211
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smcheckValueType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdk/net/SocketFlow;

    .line 212
    .local v1, "flow":Ljdk/net/SocketFlow;
    invoke-static {p1, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smsetFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 213
    .end local v1    # "flow":Ljdk/net/SocketFlow;
    goto :goto_7b

    :cond_40
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_QUICKACK:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_4f

    .line 214
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smsetQuickAckOption(Ljava/io/FileDescriptor;Z)V

    goto :goto_7b

    .line 215
    :cond_4f
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPCOUNT:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_5e

    .line 216
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smsetTcpkeepAliveProbes(Ljava/io/FileDescriptor;I)V

    goto :goto_7b

    .line 217
    :cond_5e
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPIDLE:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_6d

    .line 218
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smsetTcpKeepAliveTime(Ljava/io/FileDescriptor;I)V

    goto :goto_7b

    .line 219
    :cond_6d
    sget-object v1, Ljdk/net/ExtendedSocketOptions;->TCP_KEEPINTERVAL:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_7c

    .line 220
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Ljdk/net/ExtendedSocketOptions;->-$$Nest$smsetTcpKeepAliveIntvl(Ljava/io/FileDescriptor;I)V

    .line 224
    :goto_7b
    return-void

    .line 222
    :cond_7c
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_95
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
