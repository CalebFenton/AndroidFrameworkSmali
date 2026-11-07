.class public final Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;
.super Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.source "IkeUdp4Socket.java"


# static fields
.field private static final blacklist INADDR_ANY:Ljava/net/InetAddress;

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sConfigToSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;",
            "Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->INADDR_ANY:Ljava/net/InetAddress;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->sConfigToSocketMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
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

.method public static blacklist getInstance(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;
    .registers 7
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
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;

    .line 69
    .local v0, "ikeSocket":Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;
    if-nez v0, :cond_2e

    .line 70
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 71
    .local v1, "sock":Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 72
    sget-object v2, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 73
    invoke-static {p0, v1, v3}, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->applySocketConfig(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Ljava/io/FileDescriptor;Z)V

    .line 75
    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;

    invoke-direct {v2, v1, p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    move-object v0, v2

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->start()V

    .line 80
    sget-object v2, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v1    # "sock":Ljava/io/FileDescriptor;
    :cond_2e
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 89
    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;->getIkeSocketConfig()Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->close()V

    .line 92
    return-void
.end method
