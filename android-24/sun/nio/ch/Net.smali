.class Lsun/nio/ch/Net;
.super Ljava/lang/Object;
.source "Net.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Net$1;,
        Lsun/nio/ch/Net$2;
    }
.end annotation


# static fields
.field public static final SHUT_RD:I = 0x0

.field public static final SHUT_RDWR:I = 0x2

.field public static final SHUT_WR:I = 0x1

.field static final UNSPEC:Ljava/net/ProtocolFamily;

.field private static volatile checkedIPv6:Z

.field private static final exclusiveBind:Z

.field private static volatile isIPv6Available:Z

.field private static volatile propRevealLocalAddress:Z

.field private static revealLocalAddress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 45
    new-instance v3, Lsun/nio/ch/Net$1;

    #@4
    invoke-direct {v3}, Lsun/nio/ch/Net$1;-><init>()V

    #@7
    sput-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@9
    .line 61
    invoke-static {}, Lsun/nio/ch/Net;->isExclusiveBindAvailable()I

    #@c
    move-result v0

    #@d
    .line 62
    .local v0, "availLevel":I
    if-ltz v0, :cond_3

    #@f
    .line 65
    new-instance v3, Lsun/nio/ch/Net$2;

    #@11
    invoke-direct {v3}, Lsun/nio/ch/Net$2;-><init>()V

    #@14
    .line 64
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    .line 72
    .local v1, "exclBindProp":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@1c
    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_0

    #@22
    :goto_0
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    #@24
    .line 87
    .end local v1    # "exclBindProp":Ljava/lang/String;
    :goto_1
    sput-boolean v4, Lsun/nio/ch/Net;->checkedIPv6:Z

    #@26
    .line 40
    return-void

    #@27
    .line 74
    .restart local v1    # "exclBindProp":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    goto :goto_0

    #@2c
    .line 75
    :cond_1
    if-ne v0, v2, :cond_2

    #@2e
    .line 76
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    #@30
    goto :goto_1

    #@31
    .line 78
    :cond_2
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    #@33
    goto :goto_1

    #@34
    .line 81
    .end local v1    # "exclBindProp":Ljava/lang/String;
    :cond_3
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    #@36
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "interf"    # Ljava/net/NetworkInterface;

    #@0
    .prologue
    .line 259
    new-instance v0, Lsun/nio/ch/Net$4;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/Net$4;-><init>(Ljava/net/NetworkInterface;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/net/Inet4Address;

    #@b
    return-object v0
.end method

.method static asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "sa"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    .line 142
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 143
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    #@6
    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    #@9
    throw v0

    #@a
    .line 144
    :cond_0
    check-cast p0, Ljava/net/InetSocketAddress;

    #@c
    .end local p0    # "sa":Ljava/net/SocketAddress;
    return-object p0
.end method

.method static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@2
    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    .line 444
    return-void
.end method

.method static bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 453
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@8
    if-eq p0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 454
    .local v0, "preferIPv6":Z
    :goto_0
    sget-boolean v1, Lsun/nio/ch/Net;->exclusiveBind:Z

    #@d
    invoke-static {p1, v0, v1, p2, p3}, Lsun/nio/ch/Net;->bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V

    #@10
    .line 450
    return-void

    #@11
    .line 453
    .end local v0    # "preferIPv6":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "preferIPv6":Z
    goto :goto_0

    #@13
    .line 452
    .end local v0    # "preferIPv6":Z
    :cond_1
    const/4 v0, 0x0

    #@14
    .restart local v0    # "preferIPv6":Z
    goto :goto_0
.end method

.method private static native bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static block4(Ljava/io/FileDescriptor;III)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    const/4 v0, 0x1

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method static block6(Ljava/io/FileDescriptor;[BI[B)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    const/4 v0, 0x1

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static native blockOrUnblock4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static canIPv6SocketJoinIPv4Group()Z
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group0()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native canIPv6SocketJoinIPv4Group0()Z
.end method

.method static canJoin6WithIPv4Group()Z
    .locals 1

    #@0
    .prologue
    .line 120
    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group0()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native canJoin6WithIPv4Group0()Z
.end method

.method static checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "sa"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    .line 124
    if-nez p0, :cond_0

    #@2
    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "sa == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 130
    :cond_0
    instance-of v2, p0, Ljava/net/InetSocketAddress;

    #@d
    if-nez v2, :cond_1

    #@f
    .line 131
    new-instance v2, Ljava/nio/channels/UnsupportedAddressTypeException;

    #@11
    invoke-direct {v2}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    #@14
    throw v2

    #@15
    :cond_1
    move-object v1, p0

    #@16
    .line 132
    check-cast v1, Ljava/net/InetSocketAddress;

    #@18
    .line 133
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 134
    new-instance v2, Ljava/nio/channels/UnresolvedAddressException;

    #@20
    invoke-direct {v2}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    #@23
    throw v2

    #@24
    .line 135
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@27
    move-result-object v0

    #@28
    .line 136
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    #@2a
    if-nez v2, :cond_3

    #@2c
    instance-of v2, v0, Ljava/net/Inet6Address;

    #@2e
    :goto_0
    if-nez v2, :cond_4

    #@30
    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v3, "Invalid address type"

    #@35
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 136
    :cond_3
    const/4 v2, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 138
    :cond_4
    return-object v1
.end method

.method static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "remote"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@2
    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .locals 2
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "remote"    # Ljava/net/InetAddress;
    .param p3, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 473
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@4
    move-result-object v1

    #@5
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@8
    .line 475
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 476
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 477
    .local v0, "preferIPv6":Z
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lsun/nio/ch/Net;->connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method private static native connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static drop4(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    #@4
    .line 541
    return-void
.end method

.method static drop6(Ljava/io/FileDescriptor;[BI[B)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    #@4
    .line 584
    return-void
.end method

.method private static native getIntOption0(Ljava/io/FileDescriptor;ZII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getInterface4(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getInterface6(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static getLoopbackAddress(I)Ljava/net/InetSocketAddress;
    .locals 2
    .param p0, "port"    # I

    #@0
    .prologue
    .line 250
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@9
    return-object v0
.end method

.method private static getRevealLocalAddress()Z
    .locals 2

    #@0
    .prologue
    .line 230
    sget-boolean v1, Lsun/nio/ch/Net;->propRevealLocalAddress:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 234
    :try_start_0
    new-instance v1, Lsun/nio/ch/Net$3;

    #@6
    invoke-direct {v1}, Lsun/nio/ch/Net$3;-><init>()V

    #@9
    .line 233
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .line 232
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    sput-boolean v1, Lsun/nio/ch/Net;->revealLocalAddress:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    #@16
    sput-boolean v1, Lsun/nio/ch/Net;->propRevealLocalAddress:Z

    #@18
    .line 246
    :cond_0
    sget-boolean v1, Lsun/nio/ch/Net;->revealLocalAddress:Z

    #@1a
    return v1

    #@1b
    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    #@1c
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 206
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 207
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz p0, :cond_0

    #@6
    if-nez v1, :cond_1

    #@8
    .line 208
    :cond_0
    return-object p0

    #@9
    .line 210
    :cond_1
    invoke-static {}, Lsun/nio/ch/Net;->getRevealLocalAddress()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_2

    #@f
    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    const/4 v3, -0x1

    #@18
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 220
    :cond_2
    :goto_0
    return-object p0

    #@1c
    .line 215
    :catch_0
    move-exception v0

    #@1d
    .line 217
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    #@24
    move-result-object p0

    #@25
    goto :goto_0
.end method

.method static getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 224
    invoke-static {}, Lsun/nio/ch/Net;->getRevealLocalAddress()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 225
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    #@13
    move-result-object p0

    #@14
    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method static getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    .line 393
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Integer;

    #@6
    if-eq v2, v4, :cond_0

    #@8
    const-class v4, Ljava/lang/Boolean;

    #@a
    if-eq v2, v4, :cond_0

    #@c
    .line 394
    new-instance v4, Ljava/lang/AssertionError;

    #@e
    const-string/jumbo v5, "Should not reach here"

    #@11
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@14
    throw v4

    #@15
    .line 397
    :cond_0
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    #@18
    move-result-object v0

    #@19
    .line 398
    .local v0, "key":Lsun/nio/ch/OptionKey;
    if-nez v0, :cond_1

    #@1b
    .line 399
    new-instance v4, Ljava/lang/AssertionError;

    #@1d
    const-string/jumbo v5, "Option not found"

    #@20
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v4

    #@24
    .line 401
    :cond_1
    sget-object v4, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@26
    if-ne p1, v4, :cond_2

    #@28
    const/4 v1, 0x1

    #@29
    .line 402
    .local v1, "mayNeedConversion":Z
    :goto_0
    invoke-virtual {v0}, Lsun/nio/ch/OptionKey;->level()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v0}, Lsun/nio/ch/OptionKey;->name()I

    #@30
    move-result v5

    #@31
    invoke-static {p0, v1, v4, v5}, Lsun/nio/ch/Net;->getIntOption0(Ljava/io/FileDescriptor;ZII)I

    #@34
    move-result v3

    #@35
    .line 404
    .local v3, "value":I
    const-class v4, Ljava/lang/Integer;

    #@37
    if-ne v2, v4, :cond_3

    #@39
    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v4

    #@3d
    return-object v4

    #@3e
    .line 401
    .end local v1    # "mayNeedConversion":Z
    .end local v3    # "value":I
    :cond_2
    const/4 v1, 0x0

    #@3f
    .restart local v1    # "mayNeedConversion":Z
    goto :goto_0

    #@40
    .line 407
    .restart local v3    # "value":I
    :cond_3
    if-nez v3, :cond_4

    #@42
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@44
    :goto_1
    return-object v4

    #@45
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@47
    goto :goto_1
.end method

.method static inet4AsInt(Ljava/net/InetAddress;)I
    .locals 4
    .param p0, "ia"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 277
    instance-of v2, p0, Ljava/net/Inet4Address;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 278
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    #@7
    move-result-object v0

    #@8
    .line 279
    .local v0, "addr":[B
    const/4 v2, 0x3

    #@9
    aget-byte v2, v0, v2

    #@b
    and-int/lit16 v1, v2, 0xff

    #@d
    .line 280
    .local v1, "address":I
    const/4 v2, 0x2

    #@e
    aget-byte v2, v0, v2

    #@10
    shl-int/lit8 v2, v2, 0x8

    #@12
    const v3, 0xff00

    #@15
    and-int/2addr v2, v3

    #@16
    or-int/2addr v1, v2

    #@17
    .line 281
    const/4 v2, 0x1

    #@18
    aget-byte v2, v0, v2

    #@1a
    shl-int/lit8 v2, v2, 0x10

    #@1c
    const/high16 v3, 0xff0000

    #@1e
    and-int/2addr v2, v3

    #@1f
    or-int/2addr v1, v2

    #@20
    .line 282
    const/4 v2, 0x0

    #@21
    aget-byte v2, v0, v2

    #@23
    shl-int/lit8 v2, v2, 0x18

    #@25
    const/high16 v3, -0x1000000

    #@27
    and-int/2addr v2, v3

    #@28
    or-int/2addr v1, v2

    #@29
    .line 283
    return v1

    #@2a
    .line 285
    .end local v0    # "addr":[B
    .end local v1    # "address":I
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    #@2c
    const-string/jumbo v3, "Should not reach here"

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@32
    throw v2
.end method

.method static inet4FromInt(I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "address"    # I

    #@0
    .prologue
    .line 293
    const/4 v2, 0x4

    #@1
    new-array v0, v2, [B

    #@3
    .line 294
    .local v0, "addr":[B
    ushr-int/lit8 v2, p0, 0x18

    #@5
    and-int/lit16 v2, v2, 0xff

    #@7
    int-to-byte v2, v2

    #@8
    const/4 v3, 0x0

    #@9
    aput-byte v2, v0, v3

    #@b
    .line 295
    ushr-int/lit8 v2, p0, 0x10

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    int-to-byte v2, v2

    #@10
    const/4 v3, 0x1

    #@11
    aput-byte v2, v0, v3

    #@13
    .line 296
    ushr-int/lit8 v2, p0, 0x8

    #@15
    and-int/lit16 v2, v2, 0xff

    #@17
    int-to-byte v2, v2

    #@18
    const/4 v3, 0x2

    #@19
    aput-byte v2, v0, v3

    #@1b
    .line 297
    and-int/lit16 v2, p0, 0xff

    #@1d
    int-to-byte v2, v2

    #@1e
    const/4 v3, 0x3

    #@1f
    aput-byte v2, v0, v3

    #@21
    .line 299
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 300
    :catch_0
    move-exception v1

    #@27
    .line 301
    .local v1, "uhe":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    #@29
    const-string/jumbo v3, "Should not reach here"

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2f
    throw v2
.end method

.method static inet6AsByteArray(Ljava/net/InetAddress;)[B
    .locals 4
    .param p0, "ia"    # Ljava/net/InetAddress;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 309
    instance-of v2, p0, Ljava/net/Inet6Address;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 310
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    #@8
    move-result-object v2

    #@9
    return-object v2

    #@a
    .line 314
    :cond_0
    instance-of v2, p0, Ljava/net/Inet4Address;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 315
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    #@11
    move-result-object v1

    #@12
    .line 316
    .local v1, "ip4address":[B
    const/16 v2, 0x10

    #@14
    new-array v0, v2, [B

    #@16
    .line 317
    .local v0, "address":[B
    const/16 v2, 0xa

    #@18
    aput-byte v3, v0, v2

    #@1a
    .line 318
    const/16 v2, 0xb

    #@1c
    aput-byte v3, v0, v2

    #@1e
    .line 319
    const/4 v2, 0x0

    #@1f
    aget-byte v2, v1, v2

    #@21
    const/16 v3, 0xc

    #@23
    aput-byte v2, v0, v3

    #@25
    .line 320
    const/4 v2, 0x1

    #@26
    aget-byte v2, v1, v2

    #@28
    const/16 v3, 0xd

    #@2a
    aput-byte v2, v0, v3

    #@2c
    .line 321
    const/4 v2, 0x2

    #@2d
    aget-byte v2, v1, v2

    #@2f
    const/16 v3, 0xe

    #@31
    aput-byte v2, v0, v3

    #@33
    .line 322
    const/4 v2, 0x3

    #@34
    aget-byte v2, v1, v2

    #@36
    const/16 v3, 0xf

    #@38
    aput-byte v2, v0, v3

    #@3a
    .line 323
    return-object v0

    #@3b
    .line 326
    .end local v0    # "address":[B
    .end local v1    # "ip4address":[B
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    #@3d
    const-string/jumbo v3, "Should not reach here"

    #@40
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@43
    throw v2
.end method

.method private static native isExclusiveBindAvailable()I
.end method

.method static isIPv6Available()Z
    .locals 1

    #@0
    .prologue
    .line 94
    sget-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 95
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available0()Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    #@a
    .line 96
    const/4 v0, 0x1

    #@b
    sput-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    #@d
    .line 98
    :cond_0
    sget-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    #@f
    return v0
.end method

.method private static native isIPv6Available0()Z
.end method

.method static join4(Ljava/io/FileDescriptor;III)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    const/4 v0, 0x1

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method static join6(Ljava/io/FileDescriptor;[BI[B)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 577
    const/4 v0, 0x1

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static native joinOrDrop4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-static {p0}, Lsun/nio/ch/Net;->localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    #@5
    move-result-object v1

    #@6
    invoke-static {p0}, Lsun/nio/ch/Net;->localPort(Ljava/io/FileDescriptor;)I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@d
    return-object v0
.end method

.method private static native localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native localPort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static remoteAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 514
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-static {p0}, Lsun/nio/ch/Net;->remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    #@5
    move-result-object v1

    #@6
    invoke-static {p0}, Lsun/nio/ch/Net;->remotePort(Ljava/io/FileDescriptor;)I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@d
    return-object v0
.end method

.method private static native remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native remotePort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static serverSocket(Z)Ljava/io/FileDescriptor;
    .locals 2
    .param p0, "stream"    # Z

    #@0
    .prologue
    .line 437
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {v0, p0, v1}, Lsun/nio/ch/Net;->socket0(ZZZ)I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private static native setIntOption0(Ljava/io/FileDescriptor;ZIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setInterface4(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setInterface6(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    const v8, 0xffff

    #@3
    const/16 v7, 0xff

    #@5
    .line 335
    if-nez p3, :cond_0

    #@7
    .line 336
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v7, "Invalid option value"

    #@c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v6

    #@10
    .line 339
    :cond_0
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    #@13
    move-result-object v5

    #@14
    .line 340
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Integer;

    #@16
    if-eq v5, v6, :cond_1

    #@18
    const-class v6, Ljava/lang/Boolean;

    #@1a
    if-eq v5, v6, :cond_1

    #@1c
    .line 341
    new-instance v6, Ljava/lang/AssertionError;

    #@1e
    const-string/jumbo v7, "Should not reach here"

    #@21
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v6

    #@25
    .line 344
    :cond_1
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@27
    if-eq p2, v6, :cond_2

    #@29
    .line 345
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@2b
    if-ne p2, v6, :cond_3

    #@2d
    :cond_2
    move-object v6, p3

    #@2e
    .line 347
    check-cast v6, Ljava/lang/Integer;

    #@30
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v2

    #@34
    .line 348
    .local v2, "i":I
    if-gez v2, :cond_3

    #@36
    .line 349
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v7, "Invalid send/receive buffer size"

    #@3b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v6

    #@3f
    .line 351
    .end local v2    # "i":I
    :cond_3
    sget-object v6, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    #@41
    if-ne p2, v6, :cond_5

    #@43
    move-object v6, p3

    #@44
    .line 352
    check-cast v6, Ljava/lang/Integer;

    #@46
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@49
    move-result v2

    #@4a
    .line 353
    .restart local v2    # "i":I
    if-gez v2, :cond_4

    #@4c
    .line 354
    const/4 v6, -0x1

    #@4d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object p3

    #@51
    .line 355
    :cond_4
    if-le v2, v8, :cond_5

    #@53
    .line 356
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object p3

    #@57
    .line 358
    .end local v2    # "i":I
    :cond_5
    sget-object v6, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@59
    if-ne p2, v6, :cond_7

    #@5b
    move-object v6, p3

    #@5c
    .line 359
    check-cast v6, Ljava/lang/Integer;

    #@5e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v2

    #@62
    .line 360
    .restart local v2    # "i":I
    if-ltz v2, :cond_6

    #@64
    if-le v2, v7, :cond_7

    #@66
    .line 361
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v7, "Invalid IP_TOS value"

    #@6b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v6

    #@6f
    .line 363
    .end local v2    # "i":I
    :cond_7
    sget-object v6, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    #@71
    if-ne p2, v6, :cond_9

    #@73
    move-object v6, p3

    #@74
    .line 364
    check-cast v6, Ljava/lang/Integer;

    #@76
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@79
    move-result v2

    #@7a
    .line 365
    .restart local v2    # "i":I
    if-ltz v2, :cond_8

    #@7c
    if-le v2, v7, :cond_9

    #@7e
    .line 366
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@80
    const-string/jumbo v7, "Invalid TTL/hop value"

    #@83
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v6

    #@87
    .line 370
    .end local v2    # "i":I
    :cond_9
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    #@8a
    move-result-object v3

    #@8b
    .line 371
    .local v3, "key":Lsun/nio/ch/OptionKey;
    if-nez v3, :cond_a

    #@8d
    .line 372
    new-instance v6, Ljava/lang/AssertionError;

    #@8f
    const-string/jumbo v7, "Option not found"

    #@92
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@95
    throw v6

    #@96
    .line 375
    :cond_a
    const-class v6, Ljava/lang/Integer;

    #@98
    if-ne v5, v6, :cond_b

    #@9a
    .line 376
    check-cast p3, Ljava/lang/Integer;

    #@9c
    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@9f
    move-result v0

    #@a0
    .line 382
    .local v0, "arg":I
    :goto_0
    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@a2
    if-ne p1, v6, :cond_d

    #@a4
    const/4 v4, 0x1

    #@a5
    .line 383
    .local v4, "mayNeedConversion":Z
    :goto_1
    invoke-virtual {v3}, Lsun/nio/ch/OptionKey;->level()I

    #@a8
    move-result v6

    #@a9
    invoke-virtual {v3}, Lsun/nio/ch/OptionKey;->name()I

    #@ac
    move-result v7

    #@ad
    invoke-static {p0, v4, v6, v7, v0}, Lsun/nio/ch/Net;->setIntOption0(Ljava/io/FileDescriptor;ZIII)V

    #@b0
    .line 333
    return-void

    #@b1
    .line 378
    .end local v0    # "arg":I
    .end local v4    # "mayNeedConversion":Z
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_b
    check-cast p3, Ljava/lang/Boolean;

    #@b3
    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    #@b6
    move-result v1

    #@b7
    .line 379
    .local v1, "b":Z
    if-eqz v1, :cond_c

    #@b9
    const/4 v0, 0x1

    #@ba
    .restart local v0    # "arg":I
    goto :goto_0

    #@bb
    .end local v0    # "arg":I
    :cond_c
    const/4 v0, 0x0

    #@bc
    .restart local v0    # "arg":I
    goto :goto_0

    #@bd
    .line 382
    .end local v1    # "b":Z
    :cond_d
    const/4 v4, 0x0

    #@be
    .restart local v4    # "mayNeedConversion":Z
    goto :goto_1
.end method

.method static native shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;
    .locals 3
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 431
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 432
    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@9
    if-eq p0, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 433
    .local v0, "preferIPv6":Z
    :goto_0
    invoke-static {v0, p1, v1}, Lsun/nio/ch/Net;->socket0(ZZZ)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .end local v0    # "preferIPv6":Z
    :cond_0
    move v0, v1

    #@16
    .line 432
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 431
    goto :goto_0
.end method

.method static socket(Z)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@2
    invoke-static {v0, p0}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static native socket0(ZZZ)I
.end method

.method static translateException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V

    #@4
    .line 197
    return-void
.end method

.method static translateException(Ljava/lang/Exception;Z)V
    .locals 1
    .param p0, "x"    # Ljava/lang/Exception;
    .param p1, "unknownHostForUnresolved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    instance-of v0, p0, Ljava/io/IOException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 185
    check-cast p0, Ljava/io/IOException;

    #@6
    .end local p0    # "x":Ljava/lang/Exception;
    throw p0

    #@7
    .line 188
    .restart local p0    # "x":Ljava/lang/Exception;
    :cond_0
    if-eqz p1, :cond_1

    #@9
    .line 189
    instance-of v0, p0, Ljava/nio/channels/UnresolvedAddressException;

    #@b
    .line 188
    if-eqz v0, :cond_1

    #@d
    .line 191
    new-instance v0, Ljava/net/UnknownHostException;

    #@f
    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    #@12
    throw v0

    #@13
    .line 193
    :cond_1
    invoke-static {p0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    #@16
    .line 182
    return-void
.end method

.method static translateToSocketException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    instance-of v1, p0, Ljava/net/SocketException;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 151
    check-cast p0, Ljava/net/SocketException;

    #@6
    .end local p0    # "x":Ljava/lang/Exception;
    throw p0

    #@7
    .line 152
    .restart local p0    # "x":Ljava/lang/Exception;
    :cond_0
    move-object v0, p0

    #@8
    .line 153
    .local v0, "nx":Ljava/lang/Exception;
    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 154
    new-instance v0, Ljava/net/SocketException;

    #@e
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is closed"

    #@11
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@14
    .line 169
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-eq v0, p0, :cond_2

    #@16
    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@19
    .line 172
    :cond_2
    instance-of v1, v0, Ljava/net/SocketException;

    #@1b
    if-eqz v1, :cond_9

    #@1d
    .line 173
    check-cast v0, Ljava/net/SocketException;

    #@1f
    .end local v0    # "nx":Ljava/lang/Exception;
    throw v0

    #@20
    .line 155
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_3
    instance-of v1, p0, Ljava/nio/channels/NotYetConnectedException;

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 156
    new-instance v0, Ljava/net/SocketException;

    #@26
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is not connected"

    #@29
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    #@2d
    .line 157
    :cond_4
    instance-of v1, p0, Ljava/nio/channels/AlreadyBoundException;

    #@2f
    if-eqz v1, :cond_5

    #@31
    .line 158
    new-instance v0, Ljava/net/SocketException;

    #@33
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Already bound"

    #@36
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@39
    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    #@3a
    .line 159
    :cond_5
    instance-of v1, p0, Ljava/nio/channels/NotYetBoundException;

    #@3c
    if-eqz v1, :cond_6

    #@3e
    .line 160
    new-instance v0, Ljava/net/SocketException;

    #@40
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is not bound yet"

    #@43
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@46
    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    #@47
    .line 161
    :cond_6
    instance-of v1, p0, Ljava/nio/channels/UnsupportedAddressTypeException;

    #@49
    if-eqz v1, :cond_7

    #@4b
    .line 162
    new-instance v0, Ljava/net/SocketException;

    #@4d
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Unsupported address type"

    #@50
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@53
    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    #@54
    .line 163
    :cond_7
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    #@56
    if-eqz v1, :cond_8

    #@58
    .line 164
    new-instance v0, Ljava/net/SocketException;

    #@5a
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Unresolved address"

    #@5d
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@60
    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    #@61
    .line 165
    :cond_8
    instance-of v1, p0, Ljava/nio/channels/AlreadyConnectedException;

    #@63
    if-eqz v1, :cond_1

    #@65
    .line 167
    new-instance v0, Ljava/net/SocketException;

    #@67
    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Already connected"

    #@6a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@6d
    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_0

    #@6e
    .line 174
    :cond_9
    instance-of v1, v0, Ljava/lang/RuntimeException;

    #@70
    if-eqz v1, :cond_a

    #@72
    .line 175
    check-cast v0, Ljava/lang/RuntimeException;

    #@74
    .end local v0    # "nx":Ljava/lang/Exception;
    throw v0

    #@75
    .line 177
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_a
    new-instance v1, Ljava/lang/Error;

    #@77
    const-string/jumbo v2, "Untranslated exception"

    #@7a
    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7d
    throw v1
.end method

.method static unblock4(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 564
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    #@4
    .line 562
    return-void
.end method

.method static unblock6(Ljava/io/FileDescriptor;[BI[B)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    #@4
    .line 605
    return-void
.end method

.method static useExclusiveBind()Z
    .locals 1

    #@0
    .prologue
    .line 105
    sget-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    #@2
    return v0
.end method
