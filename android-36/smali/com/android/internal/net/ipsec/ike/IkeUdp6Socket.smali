.class public Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
.super Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.source "IkeUdp6Socket.java"


# static fields
.field private static final blacklist INADDR_ANY:Ljava/net/InetAddress;

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sConfigToSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;",
            "Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "::"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->INADDR_ANY:Ljava/net/InetAddress;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .registers 5
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 51
    if-nez p3, :cond_8

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p3

    :goto_9
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    .line 52
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
    .registers 6
    .param p0, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .param p1, "callback"    # Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    .line 69
    .local v0, "ikeSocket":Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
    if-nez v0, :cond_1c

    .line 70
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->openUdp6Sock(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    move-object v0, v1

    .line 73
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->start()V

    .line 75
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1c
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method protected static blacklist openUdp6Sock(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "sockConfig"    # Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 84
    .local v0, "sock":Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 85
    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 86
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->applySocketConfig(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Ljava/io/FileDescriptor;Z)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 94
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->getIkeSocketConfig()Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->close()V

    .line 97
    return-void
.end method
