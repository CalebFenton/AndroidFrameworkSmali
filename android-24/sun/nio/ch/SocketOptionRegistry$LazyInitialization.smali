.class Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketOptionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyInitialization"
.end annotation


# static fields
.field static final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/nio/ch/SocketOptionRegistry$RegistryKey;",
            "Lsun/nio/ch/OptionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-static {}, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options:Ljava/util/Map;

    #@6
    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static options()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lsun/nio/ch/SocketOptionRegistry$RegistryKey;",
            "Lsun/nio/ch/OptionKey;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    const/16 v6, 0x29

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x1

    #@5
    .line 60
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 61
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lsun/nio/ch/SocketOptionRegistry$RegistryKey;Lsun/nio/ch/OptionKey;>;"
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@c
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    #@e
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@10
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@13
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@15
    invoke-direct {v2, v4, v7}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 62
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@1d
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    #@1f
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@21
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@24
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@26
    const/16 v3, 0x9

    #@28
    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@2b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 63
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@30
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    #@32
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@34
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@37
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@39
    const/16 v3, 0xd

    #@3b
    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@3e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 64
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@43
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    #@45
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@47
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@4a
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@4c
    const/4 v3, 0x7

    #@4d
    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 65
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@55
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@57
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@59
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@5c
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@5e
    const/16 v3, 0x8

    #@60
    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 66
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@68
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@6a
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@6c
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@6f
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@71
    const/4 v3, 0x2

    #@72
    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 67
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@7a
    sget-object v2, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    #@7c
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@7e
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@81
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@83
    invoke-direct {v2, v7, v4}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 68
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@8b
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@8d
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@8f
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@92
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@94
    invoke-direct {v2, v5, v4}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 69
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@9c
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    #@9e
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@a0
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@a3
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@a5
    const/16 v3, 0x20

    #@a7
    invoke-direct {v2, v5, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@aa
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    .line 70
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@af
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    #@b1
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@b3
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@b6
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@b8
    const/16 v3, 0x21

    #@ba
    invoke-direct {v2, v5, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@bd
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 71
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@c2
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    #@c4
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@c6
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@c9
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@cb
    const/16 v3, 0x22

    #@cd
    invoke-direct {v2, v5, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@d0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    .line 72
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@d5
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    #@d7
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@d9
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@dc
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@de
    const/16 v3, 0x11

    #@e0
    invoke-direct {v2, v6, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@e3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    .line 73
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@e8
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    #@ea
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@ec
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@ef
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@f1
    const/16 v3, 0x12

    #@f3
    invoke-direct {v2, v6, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@f6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f9
    .line 74
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@fb
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    #@fd
    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@ff
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@102
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@104
    const/16 v3, 0x13

    #@106
    invoke-direct {v2, v6, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10c
    .line 75
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    #@10e
    sget-object v2, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    #@110
    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@112
    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    #@115
    new-instance v2, Lsun/nio/ch/OptionKey;

    #@117
    const/16 v3, 0xa

    #@119
    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    #@11c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 76
    return-object v0
.end method
