.class public Lsun/nio/ch/Net;
.super Ljava/lang/Object;
.source "Net.java"


# static fields
.field public static final blacklist POLLCONN:S

.field public static final blacklist POLLERR:S

.field public static final blacklist POLLHUP:S

.field public static final blacklist POLLIN:S

.field public static final blacklist POLLNVAL:S

.field public static final blacklist POLLOUT:S

.field public static final blacklist SHUT_RD:I = 0x0

.field public static final blacklist SHUT_RDWR:I = 0x2

.field public static final blacklist SHUT_WR:I = 0x1

.field static final blacklist UNSPEC:Ljava/net/ProtocolFamily;

.field private static volatile blacklist checkedIPv6:Z

.field private static final blacklist exclusiveBind:Z

.field private static final blacklist fastLoopback:Z

.field private static volatile blacklist isIPv6Available:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lsun/nio/ch/Net$1;

    invoke-direct {v0}, Lsun/nio/ch/Net$1;-><init>()V

    sput-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    .line 641
    invoke-static {}, Lsun/nio/ch/Net;->pollinValue()S

    move-result v1

    sput-short v1, Lsun/nio/ch/Net;->POLLIN:S

    .line 642
    invoke-static {}, Lsun/nio/ch/Net;->polloutValue()S

    move-result v1

    sput-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    .line 643
    invoke-static {}, Lsun/nio/ch/Net;->pollerrValue()S

    move-result v1

    sput-short v1, Lsun/nio/ch/Net;->POLLERR:S

    .line 644
    invoke-static {}, Lsun/nio/ch/Net;->pollhupValue()S

    move-result v1

    sput-short v1, Lsun/nio/ch/Net;->POLLHUP:S

    .line 645
    invoke-static {}, Lsun/nio/ch/Net;->pollnvalValue()S

    move-result v1

    sput-short v1, Lsun/nio/ch/Net;->POLLNVAL:S

    .line 646
    invoke-static {}, Lsun/nio/ch/Net;->pollconnValue()S

    move-result v1

    sput-short v1, Lsun/nio/ch/Net;->POLLCONN:S

    .line 650
    invoke-static {}, Lsun/nio/ch/Net;->isExclusiveBindAvailable()I

    move-result v1

    .line 651
    .local v1, "availLevel":I
    if-ltz v1, :cond_58

    .line 652
    new-instance v2, Lsun/nio/ch/Net$4;

    invoke-direct {v2}, Lsun/nio/ch/Net$4;-><init>()V

    .line 653
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 661
    .local v2, "exclBindProp":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 662
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_49

    .line 663
    goto :goto_4d

    :cond_49
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_4d
    sput-boolean v3, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_57

    .line 664
    :cond_50
    if-ne v1, v3, :cond_55

    .line 665
    sput-boolean v3, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_57

    .line 667
    :cond_55
    sput-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    .line 669
    .end local v2    # "exclBindProp":Ljava/lang/String;
    :goto_57
    goto :goto_5a

    .line 670
    :cond_58
    sput-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    .line 673
    :goto_5a
    invoke-static {}, Lsun/nio/ch/Net;->isFastTcpLoopbackRequested()Z

    move-result v0

    sput-boolean v0, Lsun/nio/ch/Net;->fastLoopback:Z

    .line 674
    .end local v1    # "availLevel":I
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
    .registers 2
    .param p0, "interf"    # Ljava/net/NetworkInterface;

    .line 208
    new-instance v0, Lsun/nio/ch/Net$2;

    invoke-direct {v0, p0}, Lsun/nio/ch/Net$2;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method static blacklist asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 2
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .line 115
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_8

    .line 117
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 116
    :cond_8
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0
.end method

.method public static blacklist bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 435
    return-void
.end method

.method static blacklist bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 6
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 442
    .local v0, "preferIPv6":Z
    :goto_d
    sget-boolean v1, Lsun/nio/ch/Net;->exclusiveBind:Z

    invoke-static {p1, v0, v1, p2, p3}, Lsun/nio/ch/Net;->bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V

    .line 443
    return-void
.end method

.method private static native blacklist bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist block4(Ljava/io/FileDescriptor;III)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static blacklist block6(Ljava/io/FileDescriptor;[BI[B)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    move-result v0

    return v0
.end method

.method private static native blacklist blockOrUnblock4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist canIPv6SocketJoinIPv4Group()Z
    .registers 1

    .line 85
    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native blacklist canIPv6SocketJoinIPv4Group0()Z
.end method

.method static blacklist canJoin6WithIPv4Group()Z
    .registers 1

    .line 93
    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native blacklist canJoin6WithIPv4Group0()Z
.end method

.method public static blacklist checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 5
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .line 97
    if-eqz p0, :cond_31

    .line 103
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2b

    .line 105
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 106
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_25

    .line 108
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 109
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-nez v2, :cond_24

    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1c

    goto :goto_24

    .line 110
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid address type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_24
    :goto_24
    return-object v0

    .line 107
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_25
    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v1

    .line 104
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_2b
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0

    .line 100
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sa == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "remote"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method static blacklist connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .registers 6
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "remote"    # Ljava/net/InetAddress;
    .param p3, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 464
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 466
    .local v0, "preferIPv6":Z
    :goto_14
    invoke-static {v0, p1, p2, p3}, Lsun/nio/ch/Net;->connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v1

    return v1
.end method

.method private static native blacklist connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist drop4(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    .line 536
    return-void
.end method

.method static blacklist drop6(Ljava/io/FileDescriptor;[BI[B)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    .line 579
    return-void
.end method

.method private static native blacklist getIntOption0(Ljava/io/FileDescriptor;ZII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist getInterface4(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist getInterface6(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static blacklist getLoopbackAddress(I)Ljava/net/InetSocketAddress;
    .registers 3
    .param p0, "port"    # I

    .line 199
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method static blacklist getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .registers 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 179
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 180
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz p0, :cond_20

    if-nez v0, :cond_9

    goto :goto_20

    .line 184
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_15} :catch_16

    .line 189
    goto :goto_1f

    .line 186
    :catch_16
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v2}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object p0

    .line 190
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1f
    return-object p0

    .line 181
    :cond_20
    :goto_20
    return-object p0
.end method

.method static blacklist getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 194
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 195
    :cond_b
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_17
    return-object v0
.end method

.method static blacklist getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v0

    .line 352
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljdk/net/SocketFlow;

    if-ne v0, v1, :cond_20

    .line 353
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 354
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_18

    .line 355
    new-instance v2, Ljdk/net/NetworkPermission;

    const-string v3, "getOption.SO_FLOW_SLA"

    invoke-direct {v2, v3}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 357
    :cond_18
    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v2

    .line 358
    .local v2, "flow":Ljdk/net/SocketFlow;
    invoke-static {p0, v2}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 359
    return-object v2

    .line 363
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local v2    # "flow":Ljdk/net/SocketFlow;
    :cond_20
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_31

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_29

    goto :goto_31

    .line 364
    :cond_29
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 367
    :cond_31
    :goto_31
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v1

    .line 368
    .local v1, "key":Lsun/nio/ch/OptionKey;
    if-eqz v1, :cond_5b

    .line 371
    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    .line 372
    .local v2, "mayNeedConversion":Z
    :goto_3e
    invoke-virtual {v1}, Lsun/nio/ch/OptionKey;->level()I

    move-result v3

    invoke-virtual {v1}, Lsun/nio/ch/OptionKey;->name()I

    move-result v4

    invoke-static {p0, v2, v3, v4}, Lsun/nio/ch/Net;->getIntOption0(Ljava/io/FileDescriptor;ZII)I

    move-result v3

    .line 374
    .local v3, "value":I
    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_53

    .line 375
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 377
    :cond_53
    if-nez v3, :cond_58

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5a

    :cond_58
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5a
    return-object v4

    .line 369
    .end local v2    # "mayNeedConversion":Z
    .end local v3    # "value":I
    :cond_5b
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Option not found"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static blacklist inet4AsInt(Ljava/net/InetAddress;)I
    .registers 5
    .param p0, "ia"    # Ljava/net/InetAddress;

    .line 226
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2a

    .line 227
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 228
    .local v0, "addr":[B
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 229
    .local v1, "address":I
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 230
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 231
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 232
    return v1

    .line 234
    .end local v0    # "addr":[B
    .end local v1    # "address":I
    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static blacklist inet4FromInt(I)Ljava/net/InetAddress;
    .registers 5
    .param p0, "address"    # I

    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 243
    .local v0, "addr":[B
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 244
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 245
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 246
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 248
    :try_start_21
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_25} :catch_26

    return-object v1

    .line 249
    :catch_26
    move-exception v1

    .line 250
    .local v1, "uhe":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static blacklist inet6AsByteArray(Ljava/net/InetAddress;)[B
    .registers 5
    .param p0, "ia"    # Ljava/net/InetAddress;

    .line 258
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_9

    .line 259
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0

    .line 263
    :cond_9
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_3b

    .line 264
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 265
    .local v0, "ip4address":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 266
    .local v1, "address":[B
    const/16 v2, 0xa

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 267
    const/16 v2, 0xb

    aput-byte v3, v1, v2

    .line 268
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0xc

    aput-byte v2, v1, v3

    .line 269
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0xd

    aput-byte v2, v1, v3

    .line 270
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    .line 271
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    .line 272
    return-object v1

    .line 275
    .end local v0    # "ip4address":[B
    .end local v1    # "address":[B
    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static native blacklist isExclusiveBindAvailable()I
.end method

.method public static blacklist isFastTcpLoopbackRequested()Z
    .registers 2

    .line 382
    new-instance v0, Lsun/nio/ch/Net$3;

    invoke-direct {v0}, Lsun/nio/ch/Net$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    .local v0, "loopbackProp":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 391
    const/4 v1, 0x1

    .local v1, "enable":Z
    goto :goto_19

    .line 393
    .end local v1    # "enable":Z
    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 395
    .restart local v1    # "enable":Z
    :goto_19
    return v1
.end method

.method static blacklist isIPv6Available()Z
    .registers 1

    .line 67
    sget-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    if-nez v0, :cond_d

    .line 68
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available0()Z

    move-result v0

    sput-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    .line 71
    :cond_d
    sget-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    return v0
.end method

.method private static native blacklist isIPv6Available0()Z
.end method

.method static blacklist join4(Ljava/io/FileDescriptor;III)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static blacklist join6(Ljava/io/FileDescriptor;[BI[B)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    move-result v0

    return v0
.end method

.method private static native blacklist joinOrDrop4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static blacklist localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Lsun/nio/ch/Net;->localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {p0}, Lsun/nio/ch/Net;->localPort(Ljava/io/FileDescriptor;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static native blacklist localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist localPort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist poll(Ljava/io/FileDescriptor;IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist pollconnValue()S
.end method

.method static native blacklist pollerrValue()S
.end method

.method static native blacklist pollhupValue()S
.end method

.method static native blacklist pollinValue()S
.end method

.method static native blacklist pollnvalValue()S
.end method

.method static native blacklist polloutValue()S
.end method

.method static blacklist remoteAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Lsun/nio/ch/Net;->remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {p0}, Lsun/nio/ch/Net;->remotePort(Ljava/io/FileDescriptor;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static native blacklist remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist remotePort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist serverSocket(Z)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "stream"    # Z

    .line 424
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    const/4 v1, 0x1

    sget-boolean v2, Lsun/nio/ch/Net;->fastLoopback:Z

    invoke-static {v0, p0, v1, v2}, Lsun/nio/ch/Net;->socket0(ZZZZ)I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist setIntOption0(Ljava/io/FileDescriptor;ZIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist setInterface4(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist setInterface6(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    if-eqz p3, :cond_db

    .line 288
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v0

    .line 290
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljdk/net/SocketFlow;

    if-ne v0, v1, :cond_21

    .line 291
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 292
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1a

    .line 293
    new-instance v2, Ljdk/net/NetworkPermission;

    const-string v3, "setOption.SO_FLOW_SLA"

    invoke-direct {v2, v3}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 295
    :cond_1a
    move-object v2, p3

    check-cast v2, Ljdk/net/SocketFlow;

    invoke-static {p0, v2}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 296
    return-void

    .line 299
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_21
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_32

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2a

    goto :goto_32

    .line 300
    :cond_2a
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 303
    :cond_32
    :goto_32
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-eq p2, v1, :cond_3a

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_43

    .line 306
    :cond_3a
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 307
    .local v1, "i":I
    if-ltz v1, :cond_d2

    .line 310
    .end local v1    # "i":I
    :cond_43
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_5e

    .line 311
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 312
    .restart local v1    # "i":I
    if-gez v1, :cond_55

    .line 313
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 314
    :cond_55
    const v2, 0xffff

    if-le v1, v2, :cond_5e

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 317
    .end local v1    # "i":I
    :cond_5e
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    const/16 v2, 0xff

    if-ne p2, v1, :cond_78

    .line 318
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 319
    .restart local v1    # "i":I
    if-ltz v1, :cond_70

    if-gt v1, v2, :cond_70

    goto :goto_78

    .line 320
    :cond_70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid IP_TOS value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v1    # "i":I
    :cond_78
    :goto_78
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p2, v1, :cond_90

    .line 323
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 324
    .restart local v1    # "i":I
    if-ltz v1, :cond_88

    if-gt v1, v2, :cond_88

    goto :goto_90

    .line 325
    :cond_88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid TTL/hop value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    .end local v1    # "i":I
    :cond_90
    :goto_90
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v1

    .line 330
    .local v1, "key":Lsun/nio/ch/OptionKey;
    if-eqz v1, :cond_c9

    .line 334
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_a3

    .line 335
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v8, v2

    .local v2, "arg":I
    goto :goto_ac

    .line 337
    .end local v2    # "arg":I
    :cond_a3
    move-object v2, p3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 338
    .local v2, "b":Z
    move v3, v2

    move v8, v3

    .line 341
    .end local v2    # "b":Z
    .local v8, "arg":I
    :goto_ac
    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_b4

    move v5, v3

    goto :goto_b5

    :cond_b4
    move v5, v4

    .line 342
    .local v5, "mayNeedConversion":Z
    :goto_b5
    sget-object v2, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne p1, v2, :cond_bb

    move v9, v3

    goto :goto_bc

    :cond_bb
    move v9, v4

    .line 343
    .local v9, "isIPv6":Z
    :goto_bc
    invoke-virtual {v1}, Lsun/nio/ch/OptionKey;->level()I

    move-result v6

    invoke-virtual {v1}, Lsun/nio/ch/OptionKey;->name()I

    move-result v7

    move-object v4, p0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-static/range {v4 .. v9}, Lsun/nio/ch/Net;->setIntOption0(Ljava/io/FileDescriptor;ZIIIZ)V

    .line 344
    return-void

    .line 331
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "mayNeedConversion":Z
    .end local v8    # "arg":I
    .end local v9    # "isIPv6":Z
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_c9
    move-object v4, p0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    new-instance p0, Ljava/lang/AssertionError;

    const-string v2, "Option not found"

    invoke-direct {p0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 308
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .local v1, "i":I
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_d2
    move-object v4, p0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid send/receive buffer size"

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_db
    move-object v4, p0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid option value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static native blacklist shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;
    .registers 5
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 420
    .local v0, "preferIPv6":Z
    :goto_e
    sget-boolean v2, Lsun/nio/ch/Net;->fastLoopback:Z

    invoke-static {v0, p1, v1, v2}, Lsun/nio/ch/Net;->socket0(ZZZZ)I

    move-result v1

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method static blacklist socket(Z)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist socket0(ZZZZ)I
.end method

.method static blacklist translateException(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V

    .line 173
    return-void
.end method

.method static blacklist translateException(Ljava/lang/Exception;Z)V
    .registers 3
    .param p0, "x"    # Ljava/lang/Exception;
    .param p1, "unknownHostForUnresolved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_15

    .line 161
    if-eqz p1, :cond_11

    instance-of v0, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-nez v0, :cond_b

    goto :goto_11

    .line 164
    :cond_b
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    .line 166
    :cond_11
    :goto_11
    invoke-static {p0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 167
    return-void

    .line 158
    :cond_15
    move-object v0, p0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method static blacklist translateToSocketException(Ljava/lang/Exception;)V
    .registers 4
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 123
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_7c

    .line 125
    move-object v0, p0

    .line 126
    .local v0, "nx":Ljava/lang/Exception;
    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_12

    .line 127
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5f

    .line 128
    :cond_12
    instance-of v1, p0, Ljava/nio/channels/NotYetConnectedException;

    if-eqz v1, :cond_1f

    .line 129
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5f

    .line 130
    :cond_1f
    instance-of v1, p0, Ljava/nio/channels/AlreadyBoundException;

    if-eqz v1, :cond_2c

    .line 131
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Already bound"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5f

    .line 132
    :cond_2c
    instance-of v1, p0, Ljava/nio/channels/NotYetBoundException;

    if-eqz v1, :cond_39

    .line 133
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not bound yet"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5f

    .line 134
    :cond_39
    instance-of v1, p0, Ljava/nio/channels/UnsupportedAddressTypeException;

    if-eqz v1, :cond_46

    .line 135
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5f

    .line 136
    :cond_46
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v1, :cond_53

    .line 137
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5f

    .line 139
    :cond_53
    instance-of v1, p0, Ljava/nio/channels/AlreadyConnectedException;

    if-eqz v1, :cond_5f

    .line 140
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Already connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 142
    :cond_5f
    :goto_5f
    if-eq v0, p0, :cond_64

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    :cond_64
    instance-of v1, v0, Ljava/net/SocketException;

    if-nez v1, :cond_78

    .line 147
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_70

    .line 148
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 150
    :cond_70
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Untranslated exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_78
    move-object v1, v0

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 124
    .end local v0    # "nx":Ljava/lang/Exception;
    :cond_7c
    move-object v0, p0

    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method

.method static blacklist unblock4(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    .line 557
    return-void
.end method

.method static blacklist unblock6(Ljava/io/FileDescriptor;[BI[B)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    .line 600
    return-void
.end method

.method static blacklist useExclusiveBind()Z
    .registers 1

    .line 78
    sget-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    return v0
.end method
