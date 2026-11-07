.class Lsun/nio/ch/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ST_CONNECTED:I = 0x1

.field private static final blacklist ST_KILLED:I = 0x2

.field private static final blacklist ST_UNCONNECTED:I = 0x0

.field private static final blacklist ST_UNINITIALIZED:I = -0x1

.field private static blacklist nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private blacklist cachedSenderInetAddress:Ljava/net/InetAddress;

.field private blacklist cachedSenderPort:I

.field private final blacklist family:Ljava/net/ProtocolFamily;

.field final blacklist fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist fdVal:I

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist isReuseAddress:Z

.field private blacklist localAddress:Ljava/net/InetSocketAddress;

.field private final blacklist readLock:Ljava/lang/Object;

.field private volatile blacklist readerThread:J

.field private blacklist registry:Lsun/nio/ch/MembershipRegistry;

.field private blacklist remoteAddress:Ljava/net/InetSocketAddress;

.field private blacklist reuseAddressEmulated:Z

.field private blacklist sender:Ljava/net/SocketAddress;

.field private blacklist socket:Ljava/net/DatagramSocket;

.field private blacklist state:I

.field private final blacklist stateLock:Ljava/lang/Object;

.field private final blacklist writeLock:Ljava/lang/Object;

.field private volatile blacklist writerThread:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    nop

    .line 53
    new-instance v0, Lsun/nio/ch/DatagramDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/DatagramDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 1212
    invoke-static {}, Lsun/nio/ch/DatagramChannelImpl;->initIDs()V

    .line 1213
    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 71
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 116
    nop

    .line 117
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 123
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    .line 125
    :try_start_2b
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 126
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_36

    :cond_34
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    :goto_36
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 127
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 128
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 129
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 131
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 132
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5e} :catch_60

    .line 137
    :cond_5e
    nop

    .line 138
    return-void

    .line 134
    :catch_60
    move-exception v0

    .line 135
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 136
    throw v0
.end method

.method public constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 71
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 116
    nop

    .line 117
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 171
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 172
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_33

    :cond_31
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    :goto_33
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 173
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 174
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 176
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 178
    if-eqz p2, :cond_55

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 179
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 181
    :cond_55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 71
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 116
    nop

    .line 117
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 144
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_42

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_42

    .line 147
    if-nez p2, :cond_3a

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'family\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Protocol family not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_42
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne p2, v0, :cond_55

    .line 153
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_55

    .line 154
    :cond_4d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPv6 not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_55
    :goto_55
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 158
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 159
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 160
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 162
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 163
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 165
    :cond_7b
    return-void
.end method

.method private static native blacklist disconnect0(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    return-void

    .line 356
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private static native blacklist initIDs()V
.end method

.method private blacklist innerJoin(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 16
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 850
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1f

    .line 851
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v0, v3, :cond_29

    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_29

    .line 852
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "IPv6 socket cannot join IPv4 multicast group"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_1f
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_11c

    .line 854
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v0, v3, :cond_114

    .line 861
    :cond_29
    :goto_29
    if-eqz p3, :cond_5a

    .line 862
    invoke-virtual {p3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_52

    .line 864
    invoke-virtual {p3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 866
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_42

    goto :goto_5a

    .line 867
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source address is different type to group"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source address is multicast address"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source address is a wildcard address"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_5a
    :goto_5a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    .line 871
    .local v8, "sm":Ljava/lang/SecurityManager;
    if-eqz v8, :cond_63

    .line 872
    invoke-virtual {v8, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 874
    :cond_63
    iget-object v9, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9

    .line 875
    :try_start_66
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 879
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    if-nez v0, :cond_78

    .line 880
    new-instance v0, Lsun/nio/ch/MembershipRegistry;

    invoke-direct {v0}, Lsun/nio/ch/MembershipRegistry;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    goto :goto_82

    .line 883
    :cond_78
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/ch/MembershipRegistry;->checkMembership(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    .line 884
    .local v0, "key":Ljava/nio/channels/MembershipKey;
    if-eqz v0, :cond_82

    .line 885
    monitor-exit v9

    return-object v0

    .line 889
    .end local v0    # "key":Ljava/nio/channels/MembershipKey;
    :cond_82
    :goto_82
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    const/4 v6, -0x2

    if-ne v0, v5, :cond_ca

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-nez v0, :cond_93

    .line 890
    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 892
    :cond_93
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    .line 893
    .local v0, "index":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_c1

    .line 897
    invoke-static {p1}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v5

    .line 898
    .local v5, "groupAddress":[B
    if-nez p3, :cond_a2

    const/4 v7, 0x0

    goto :goto_a6

    .line 899
    :cond_a2
    invoke-static {p3}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v7

    :goto_a6
    nop

    .line 902
    .local v7, "sourceAddress":[B
    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v10, v5, v0, v7}, Lsun/nio/ch/Net;->join6(Ljava/io/FileDescriptor;[BI[B)I

    move-result v10

    .line 903
    .local v10, "n":I
    if-eq v10, v6, :cond_ba

    .line 906
    move v6, v0

    .end local v0    # "index":I
    .local v6, "index":I
    new-instance v0, Lsun/nio/ch/MembershipKeyImpl$Type6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lsun/nio/ch/MembershipKeyImpl$Type6;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;[BI[B)V

    .line 909
    .end local v5    # "groupAddress":[B
    .end local v6    # "index":I
    .end local v7    # "sourceAddress":[B
    .end local v10    # "n":I
    .local v0, "key":Lsun/nio/ch/MembershipKeyImpl;
    goto :goto_f5

    .line 904
    .local v0, "index":I
    .restart local v5    # "groupAddress":[B
    .restart local v7    # "sourceAddress":[B
    .restart local v10    # "n":I
    :cond_ba
    move v6, v0

    .end local v0    # "index":I
    .restart local v6    # "index":I
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v8    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "group":Ljava/net/InetAddress;
    .end local p2    # "interf":Ljava/net/NetworkInterface;
    .end local p3    # "source":Ljava/net/InetAddress;
    throw v0

    .line 894
    .end local v5    # "groupAddress":[B
    .end local v6    # "index":I
    .end local v7    # "sourceAddress":[B
    .end local v10    # "n":I
    .restart local v0    # "index":I
    .restart local v8    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "group":Ljava/net/InetAddress;
    .restart local p2    # "interf":Ljava/net/NetworkInterface;
    .restart local p3    # "source":Ljava/net/InetAddress;
    :cond_c1
    move v6, v0

    .end local v0    # "index":I
    .restart local v6    # "index":I
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Network interface cannot be identified"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v8    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "group":Ljava/net/InetAddress;
    .end local p2    # "interf":Ljava/net/NetworkInterface;
    .end local p3    # "source":Ljava/net/InetAddress;
    throw v0

    .line 911
    .end local v6    # "index":I
    .restart local v8    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "group":Ljava/net/InetAddress;
    .restart local p2    # "interf":Ljava/net/NetworkInterface;
    .restart local p3    # "source":Ljava/net/InetAddress;
    :cond_ca
    invoke-static {p2}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v0

    move-object v10, v0

    .line 912
    .local v10, "target":Ljava/net/Inet4Address;
    if-eqz v10, :cond_103

    .line 915
    invoke-static {p1}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v5

    .line 916
    .local v5, "groupAddress":I
    invoke-static {v10}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v0

    .line 917
    .local v0, "targetAddress":I
    if-nez p3, :cond_dd

    const/4 v2, 0x0

    goto :goto_e1

    :cond_dd
    invoke-static {p3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v2

    :goto_e1
    move v7, v2

    .line 920
    .local v7, "sourceAddress":I
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v5, v0, v7}, Lsun/nio/ch/Net;->join4(Ljava/io/FileDescriptor;III)I

    move-result v2

    move v11, v2

    .line 921
    .local v11, "n":I
    if-eq v11, v6, :cond_fc

    .line 924
    move v6, v0

    .end local v0    # "targetAddress":I
    .local v6, "targetAddress":I
    new-instance v0, Lsun/nio/ch/MembershipKeyImpl$Type4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lsun/nio/ch/MembershipKeyImpl$Type4;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;III)V

    .line 928
    .end local v5    # "groupAddress":I
    .end local v6    # "targetAddress":I
    .end local v7    # "sourceAddress":I
    .end local v10    # "target":Ljava/net/Inet4Address;
    .end local v11    # "n":I
    .local v0, "key":Lsun/nio/ch/MembershipKeyImpl;
    :goto_f5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v2, v0}, Lsun/nio/ch/MembershipRegistry;->add(Lsun/nio/ch/MembershipKeyImpl;)V

    .line 929
    monitor-exit v9

    return-object v0

    .line 922
    .local v0, "targetAddress":I
    .restart local v5    # "groupAddress":I
    .restart local v7    # "sourceAddress":I
    .restart local v10    # "target":Ljava/net/Inet4Address;
    .restart local v11    # "n":I
    :cond_fc
    move v6, v0

    .end local v0    # "targetAddress":I
    .restart local v6    # "targetAddress":I
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v8    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "group":Ljava/net/InetAddress;
    .end local p2    # "interf":Ljava/net/NetworkInterface;
    .end local p3    # "source":Ljava/net/InetAddress;
    throw v0

    .line 913
    .end local v5    # "groupAddress":I
    .end local v6    # "targetAddress":I
    .end local v7    # "sourceAddress":I
    .end local v11    # "n":I
    .restart local v8    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "group":Ljava/net/InetAddress;
    .restart local p2    # "interf":Ljava/net/NetworkInterface;
    .restart local p3    # "source":Ljava/net/InetAddress;
    :cond_103
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Network interface not configured for IPv4"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v8    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "group":Ljava/net/InetAddress;
    .end local p2    # "interf":Ljava/net/NetworkInterface;
    .end local p3    # "source":Ljava/net/InetAddress;
    throw v0

    .line 876
    .end local v10    # "target":Ljava/net/Inet4Address;
    .restart local v8    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "group":Ljava/net/InetAddress;
    .restart local p2    # "interf":Ljava/net/NetworkInterface;
    .restart local p3    # "source":Ljava/net/InetAddress;
    :cond_10b
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local v8    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "group":Ljava/net/InetAddress;
    .end local p2    # "interf":Ljava/net/NetworkInterface;
    .end local p3    # "source":Ljava/net/InetAddress;
    throw v0

    .line 930
    .restart local v8    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "group":Ljava/net/InetAddress;
    .restart local p2    # "interf":Ljava/net/NetworkInterface;
    .restart local p3    # "source":Ljava/net/InetAddress;
    :catchall_111
    move-exception v0

    monitor-exit v9
    :try_end_113
    .catchall {:try_start_66 .. :try_end_113} :catchall_111

    throw v0

    .line 855
    .end local v8    # "sm":Ljava/lang/SecurityManager;
    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only IPv6 sockets can join IPv6 multicast group"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_11c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address type not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Group not a multicast address"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 426
    .local v0, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 427
    .local v1, "lim":I
    nop

    .line 428
    const/4 v2, 0x0

    if-gt v0, v1, :cond_f

    sub-int v3, v1, v0

    goto :goto_10

    :cond_f
    move v3, v2

    .line 429
    .local v3, "rem":I
    :goto_10
    instance-of v4, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v4, :cond_1b

    if-lez v3, :cond_1b

    .line 430
    invoke-direct {p0, p1, p2, v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v2

    return v2

    .line 435
    :cond_1b
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 436
    .local v4, "newSize":I
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 439
    .local v5, "bb":Ljava/nio/ByteBuffer;
    :try_start_24
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 441
    invoke-direct {p0, p1, v5, v4, v2}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 442
    .local v2, "n":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 443
    if-lez v2, :cond_39

    if-lez v3, :cond_39

    .line 444
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3e

    .line 445
    :cond_39
    nop

    .line 447
    invoke-static {v5}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 445
    return v2

    .line 447
    .end local v2    # "n":I
    :catchall_3e
    move-exception v2

    invoke-static {v5}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 448
    throw v2
.end method

.method private native blacklist receive0(Ljava/io/FileDescriptor;JIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "rem"    # I
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    move-object v0, p2

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, p4

    add-long v6, v0, v2

    .line 456
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v9

    .line 455
    move-object v4, p0

    move-object v5, p1

    move v8, p3

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "rem":I
    .local v5, "fd":Ljava/io/FileDescriptor;
    .local v8, "rem":I
    invoke-direct/range {v4 .. v9}, Lsun/nio/ch/DatagramChannelImpl;->receive0(Ljava/io/FileDescriptor;JIZ)I

    move-result p1

    .line 457
    .local p1, "n":I
    if-lez p1, :cond_1c

    .line 458
    add-int p3, p4, p1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    :cond_1c
    return p1
.end method

.method private blacklist send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    instance-of v0, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_9

    .line 527
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v0

    return v0

    .line 530
    :cond_9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 531
    .local v0, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 532
    .local v1, "lim":I
    nop

    .line 533
    if-gt v0, v1, :cond_17

    sub-int v2, v1, v0

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 535
    .local v2, "rem":I
    :goto_18
    invoke-static {v2}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 537
    .local v3, "bb":Ljava/nio/ByteBuffer;
    :try_start_1c
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 538
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 540
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 542
    invoke-direct {p0, p1, v3, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v4

    .line 543
    .local v4, "n":I
    if-lez v4, :cond_30

    .line 545
    add-int v5, v0, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_35

    .line 547
    :cond_30
    nop

    .line 549
    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 547
    return v4

    .line 549
    .end local v4    # "n":I
    :catchall_35
    move-exception v4

    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 550
    throw v4
.end method

.method private native blacklist send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 558
    .local v1, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 559
    .local v2, "lim":I
    nop

    .line 560
    const/4 v0, 0x0

    if-gt v1, v2, :cond_f

    sub-int v3, v2, v1

    goto :goto_10

    :cond_f
    move v3, v0

    :goto_10
    move v9, v3

    .line 562
    .local v9, "rem":I
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v4, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq v3, v4, :cond_18

    const/4 v0, 0x1

    :cond_18
    move v5, v0

    .line 565
    .local v5, "preferIPv6":Z
    :try_start_19
    move-object v0, p2

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v3

    int-to-long v6, v1

    add-long v7, v3, v6

    .line 566
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11
    :try_end_2b
    .catch Ljava/net/PortUnreachableException; {:try_start_19 .. :try_end_2b} :catch_35

    .line 565
    move-object v4, p0

    move-object v6, p1

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .local v6, "fd":Ljava/io/FileDescriptor;
    :try_start_2d
    invoke-direct/range {v4 .. v11}, Lsun/nio/ch/DatagramChannelImpl;->send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I

    move-result p1
    :try_end_31
    .catch Ljava/net/PortUnreachableException; {:try_start_2d .. :try_end_31} :catch_32

    .line 571
    .local p1, "written":I
    goto :goto_40

    .line 567
    .end local p1    # "written":I
    :catch_32
    move-exception v0

    move-object p1, v0

    goto :goto_38

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .local p1, "fd":Ljava/io/FileDescriptor;
    :catch_35
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 568
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .local p1, "pue":Ljava/net/PortUnreachableException;
    :goto_38
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_48

    .line 570
    move v0, v9

    move p1, v0

    .line 572
    .local p1, "written":I
    :goto_40
    if-lez p1, :cond_47

    .line 573
    add-int v0, v1, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 574
    :cond_47
    return p1

    .line 569
    .local p1, "pue":Ljava/net/PortUnreachableException;
    :cond_48
    throw p1
.end method


# virtual methods
.method public whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 11
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_78

    .line 709
    :try_start_6
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_75

    .line 710
    :try_start_9
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 711
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_6c

    .line 714
    if-nez p1, :cond_2b

    .line 716
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v4, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_25

    .line 717
    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "0.0.0.0"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .local v3, "isa":Ljava/net/InetSocketAddress;
    goto :goto_44

    .line 719
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    :cond_25
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .restart local v3    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_44

    .line 722
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    :cond_2b
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 725
    .restart local v3    # "isa":Ljava/net/InetSocketAddress;
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v4, v5, :cond_44

    .line 726
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 727
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_3e

    goto :goto_44

    .line 728
    :cond_3e
    new-instance v5, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v5}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v5

    .line 731
    .end local v4    # "addr":Ljava/net/InetAddress;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_44
    :goto_44
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 732
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_51

    .line 733
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 735
    :cond_51
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 736
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v5

    iput-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 737
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_72

    .line 738
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_75

    .line 739
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_78

    .line 740
    return-object p0

    .line 712
    :cond_6c
    :try_start_6c
    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v3

    .line 737
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_72
    move-exception v3

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_72

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    :try_start_74
    throw v3

    .line 738
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_75
    move-exception v2

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_75

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    :try_start_77
    throw v2

    .line 739
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public bridge synthetic whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method blacklist block(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;
    .param p2, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    nop

    .line 988
    nop

    .line 990
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_5
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 993
    invoke-virtual {p2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 995
    invoke-virtual {p2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_67

    .line 997
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_5f

    .line 1001
    instance-of v1, p1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    if-eqz v1, :cond_3f

    .line 1002
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    .line 1004
    .local v1, "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress()[B

    move-result-object v3

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->index()I

    move-result v4

    .line 1005
    invoke-static {p2}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v5

    .line 1004
    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/Net;->block6(Ljava/io/FileDescriptor;[BI[B)I

    move-result v2

    .line 1006
    .end local v1    # "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    .local v2, "n":I
    goto :goto_54

    .line 1007
    .end local v2    # "n":I
    :cond_3f
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/MembershipKeyImpl$Type4;

    .line 1009
    .local v1, "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress()I

    move-result v3

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfaceAddress()I

    move-result v4

    .line 1010
    invoke-static {p2}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v5

    .line 1009
    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/Net;->block4(Ljava/io/FileDescriptor;III)I

    move-result v2

    .line 1012
    .end local v1    # "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    .restart local v2    # "n":I
    :goto_54
    const/4 v1, -0x2

    if-eq v2, v1, :cond_59

    .line 1016
    .end local v2    # "n":I
    monitor-exit v0

    .line 1017
    return-void

    .line 1014
    .restart local v2    # "n":I
    :cond_59
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v1

    .line 998
    .end local v2    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :cond_5f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source address is different type to group"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v1

    .line 996
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source address is multicast address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v1

    .line 994
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source address is a wildcard address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v1

    .line 992
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "key is no longer valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v1

    .line 1016
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 14
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    const/4 v0, 0x0

    .line 762
    .local v0, "localPort":I
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_4
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_92

    .line 764
    :try_start_7
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_8f

    .line 765
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpenAndUnconnected()V

    .line 766
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 767
    .local v4, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 768
    .local v5, "sm":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_26

    .line 769
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 770
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 769
    invoke-virtual {v5, v6, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 771
    :cond_26
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 773
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 774
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 771
    invoke-static {v6, v7, v8, v9}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v6

    .line 775
    .local v6, "n":I
    if-lez v6, :cond_86

    .line 779
    const/4 v7, 0x1

    iput v7, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 780
    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 781
    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    .line 782
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderInetAddress:Ljava/net/InetAddress;

    .line 783
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    iput v8, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderPort:I

    .line 786
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v8}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v8

    iput-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 789
    const/4 v8, 0x0

    .line 790
    .local v8, "blocking":Z
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_8c

    .line 792
    :try_start_59
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isBlocking()Z

    move-result v10

    move v8, v10

    .line 794
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 795
    .local v10, "tmpBuf":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_68

    .line 796
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 799
    :cond_68
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 800
    invoke-virtual {p0, v10}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v11
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_7b

    if-nez v11, :cond_68

    .line 802
    .end local v10    # "tmpBuf":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_76

    .line 803
    :try_start_73
    invoke-virtual {p0, v7}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 806
    :cond_76
    monitor-exit v9
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_83

    .line 807
    .end local v4    # "isa":Ljava/net/InetSocketAddress;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    .end local v6    # "n":I
    .end local v8    # "blocking":Z
    :try_start_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_8c

    .line 808
    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_8f

    .line 809
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_92

    .line 810
    return-object p0

    .line 802
    .restart local v4    # "isa":Ljava/net/InetSocketAddress;
    .restart local v5    # "sm":Ljava/lang/SecurityManager;
    .restart local v6    # "n":I
    .restart local v8    # "blocking":Z
    :catchall_7b
    move-exception v10

    if-eqz v8, :cond_81

    .line 803
    :try_start_7e
    invoke-virtual {p0, v7}, Lsun/nio/ch/DatagramChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 805
    :cond_81
    nop

    .end local v0    # "localPort":I
    .end local v4    # "isa":Ljava/net/InetSocketAddress;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    .end local v6    # "n":I
    .end local v8    # "blocking":Z
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    throw v10

    .line 806
    .restart local v0    # "localPort":I
    .restart local v4    # "isa":Ljava/net/InetSocketAddress;
    .restart local v5    # "sm":Ljava/lang/SecurityManager;
    .restart local v6    # "n":I
    .restart local v8    # "blocking":Z
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_83
    move-exception v7

    monitor-exit v9
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_83

    .end local v0    # "localPort":I
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_85
    throw v7

    .line 776
    .end local v8    # "blocking":Z
    .restart local v0    # "localPort":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :cond_86
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    .end local v0    # "localPort":I
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    throw v7

    .line 807
    .end local v4    # "isa":Ljava/net/InetSocketAddress;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    .end local v6    # "n":I
    .restart local v0    # "localPort":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_8c
    move-exception v4

    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    .end local v0    # "localPort":I
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_8e
    throw v4

    .line 808
    .restart local v0    # "localPort":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_8f
    move-exception v3

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_8f

    .end local v0    # "localPort":I
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_91
    throw v3

    .line 809
    .restart local v0    # "localPort":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_92
    move-exception v2

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_92

    throw v2
.end method

.method public whitelist test-api disconnect()Ljava/nio/channels/DatagramChannel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_57

    .line 816
    :try_start_6
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_54

    .line 817
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_4d

    .line 819
    :cond_16
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 820
    .local v3, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 821
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_2d

    .line 822
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 823
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 822
    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 824
    :cond_2d
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v6, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    move v5, v7

    .line 825
    .local v5, "isIPv6":Z
    :goto_37
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6, v5}, Lsun/nio/ch/DatagramChannelImpl;->disconnect0(Ljava/io/FileDescriptor;Z)V

    .line 826
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 827
    iput v7, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 830
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 831
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .end local v5    # "isIPv6":Z
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_51

    .line 832
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_54

    .line 833
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_57

    .line 834
    return-object p0

    .line 818
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_51

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_54

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_57

    return-object p0

    .line 831
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :try_start_53
    throw v3

    .line 832
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_54

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :try_start_56
    throw v2

    .line 833
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_57

    throw v1
.end method

.method blacklist drop(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 8
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .line 954
    nop

    .line 956
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_4
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->isValid()Z

    move-result v1

    if-nez v1, :cond_c

    .line 958
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_4b

    return-void

    .line 961
    :cond_c
    :try_start_c
    instance-of v1, p1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    if-eqz v1, :cond_25

    .line 962
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    .line 964
    .local v1, "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress()[B

    move-result-object v3

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->index()I

    move-result v4

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->source()[B

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/Net;->drop6(Ljava/io/FileDescriptor;[BI[B)V

    .line 965
    .end local v1    # "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    goto :goto_39

    .line 966
    :cond_25
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/MembershipKeyImpl$Type4;

    .line 967
    .local v1, "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress()I

    move-result v3

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfaceAddress()I

    move-result v4

    .line 968
    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->source()I

    move-result v5

    .line 967
    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/Net;->drop4(Ljava/io/FileDescriptor;III)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_39} :catch_44
    .catchall {:try_start_c .. :try_end_39} :catchall_4b

    .line 973
    .end local v1    # "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    :goto_39
    nop

    .line 975
    :try_start_3a
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->invalidate()V

    .line 976
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v1, p1}, Lsun/nio/ch/MembershipRegistry;->remove(Lsun/nio/ch/MembershipKeyImpl;)V

    .line 977
    monitor-exit v0

    .line 978
    return-void

    .line 970
    :catch_44
    move-exception v1

    .line 972
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    throw v2

    .line 977
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method blacklist ensureOpenAndUnconnected()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 753
    iget v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    if-nez v1, :cond_f

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 754
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Connect already invoked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    throw v1

    .line 752
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :cond_17
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    throw v1

    .line 755
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1094
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1095
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1098
    :cond_9
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_10

    .line 1099
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->close()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    .line 1101
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1102
    nop

    .line 1104
    return-void

    .line 1101
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1102
    throw v0
.end method

.method public blacklist getFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 1186
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getFDVal()I
    .registers 2

    .line 1190
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    return v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 197
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 195
    :cond_11
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    throw v1

    .line 198
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-eqz p1, :cond_a8

    .line 282
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 285
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 288
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-eq p1, v1, :cond_7c

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-eq p1, v1, :cond_7c

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_1f

    goto :goto_7c

    .line 295
    :cond_1f
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_62

    .line 296
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_48

    .line 297
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/Net;->getInterface4(Ljava/io/FileDescriptor;)I

    move-result v1

    .line 298
    .local v1, "address":I
    if-nez v1, :cond_34

    .line 299
    monitor-exit v0

    return-object v3

    .line 301
    :cond_34
    invoke-static {v1}, Lsun/nio/ch/Net;->inet4FromInt(I)Ljava/net/InetAddress;

    move-result-object v2

    .line 302
    .local v2, "ia":Ljava/net/InetAddress;
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 303
    .local v3, "ni":Ljava/net/NetworkInterface;
    if-eqz v3, :cond_40

    .line 305
    monitor-exit v0

    return-object v3

    .line 304
    :cond_40
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to map address to interface"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    throw v4

    .line 307
    .end local v1    # "address":I
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    :cond_48
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/Net;->getInterface6(Ljava/io/FileDescriptor;)I

    move-result v1

    .line 308
    .local v1, "index":I
    if-nez v1, :cond_52

    .line 309
    monitor-exit v0

    return-object v3

    .line 311
    :cond_52
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 312
    .local v2, "ni":Ljava/net/NetworkInterface;
    if-eqz v2, :cond_5a

    .line 314
    monitor-exit v0

    return-object v2

    .line 313
    :cond_5a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to map index to interface"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    throw v3

    .line 318
    .end local v1    # "index":I
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    :cond_62
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_72

    iget-boolean v1, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    if-eqz v1, :cond_72

    .line 321
    iget-boolean v1, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 325
    :cond_72
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 292
    :cond_7c
    :goto_7c
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 326
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_f .. :try_end_88} :catchall_86

    throw v1

    .line 283
    :cond_89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_a8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getRemoteAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 206
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 205
    :cond_d
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    throw v1

    .line 207
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected whitelist test-api implCloseSelectableChannel()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 1053
    iget v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    .line 1054
    sget-object v1, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 1055
    :cond_14
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 1058
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    if-eqz v1, :cond_20

    .line 1059
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->registry:Lsun/nio/ch/MembershipRegistry;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipRegistry;->invalidateAll()V

    .line 1062
    :cond_20
    iget-wide v1, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    move-wide v3, v1

    .local v3, "th":J
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2c

    .line 1063
    invoke-static {v3, v4}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 1064
    :cond_2c
    iget-wide v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    move-wide v3, v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_36

    .line 1065
    invoke-static {v3, v4}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 1066
    :cond_36
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1067
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V

    .line 1068
    .end local v3    # "th":J
    :cond_3f
    monitor-exit v0

    .line 1069
    return-void

    .line 1068
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method protected whitelist test-api implConfigureBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 691
    return-void
.end method

.method public whitelist test-api isConnected()Z
    .registers 4

    .line 744
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_3
    iget v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    monitor-exit v0

    return v2

    .line 746
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Ljava/nio/channels/MembershipKey;
    .registers 4
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/nio/ch/DatagramChannelImpl;->innerJoin(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 6
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    if-eqz p3, :cond_7

    .line 949
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->innerJoin(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;

    move-result-object v0

    return-object v0

    .line 948
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source address is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist kill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_3
    iget v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1074
    monitor-exit v0

    return-void

    .line 1075
    :cond_a
    iget v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 1076
    iput v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 1077
    monitor-exit v0

    return-void

    .line 1079
    :cond_13
    nop

    .line 1080
    sget-object v1, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v3}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 1081
    iput v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 1082
    monitor-exit v0

    .line 1083
    return-void

    .line 1082
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist localAddress()Ljava/net/SocketAddress;
    .registers 3

    .line 694
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 696
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist poll(IJ)I
    .registers 13
    .param p1, "events"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    nop

    .line 1152
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    const/4 v1, 0x0

    .line 1155
    .local v1, "n":I
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 1156
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3d

    .line 1157
    :try_start_f
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_21

    .line 1158
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3a

    .line 1163
    :try_start_16
    iput-wide v3, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1164
    if-lez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v5

    :goto_1c
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_49

    .line 1158
    return v5

    .line 1159
    :cond_21
    :try_start_21
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1160
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_3a

    .line 1161
    :try_start_28
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I

    move-result v6
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3d

    .line 1163
    .end local v1    # "n":I
    .local v6, "n":I
    :try_start_2e
    iput-wide v3, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1164
    if-lez v6, :cond_33

    goto :goto_34

    :cond_33
    move v2, v5

    :goto_34
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 1165
    nop

    .line 1166
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_49

    return v6

    .line 1160
    .end local v6    # "n":I
    .restart local v1    # "n":I
    :catchall_3a
    move-exception v7

    :try_start_3b
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "timeout":J
    :try_start_3c
    throw v7
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 1163
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":J
    :catchall_3d
    move-exception v6

    :try_start_3e
    iput-wide v3, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 1164
    if-lez v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v5

    :goto_44
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 1165
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "timeout":J
    throw v6

    .line 1167
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":J
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    if-eqz p1, :cond_75

    .line 580
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_5
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_72

    .line 582
    :try_start_8
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 583
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 585
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_6f

    .line 586
    const/4 v1, 0x0

    .line 588
    .local v1, "n":I
    const/4 v2, -0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 589
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v7
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5a

    if-nez v7, :cond_2f

    .line 590
    nop

    .line 597
    :try_start_22
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 598
    if-gtz v1, :cond_2a

    if-ne v1, v2, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v6

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 599
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_72

    .line 590
    return v6

    .line 591
    :cond_2f
    :try_start_2f
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 593
    :cond_35
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v8, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v9, -0x1

    invoke-static {v7, p1, v9, v10, v8}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v7

    move v1, v7

    .line 594
    const/4 v7, -0x3

    if-ne v1, v7, :cond_49

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_35

    .line 595
    :cond_49
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v7
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_5a

    .line 597
    :try_start_4d
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 598
    if-gtz v1, :cond_55

    if-ne v1, v2, :cond_54

    goto :goto_55

    :cond_54
    move v3, v6

    :cond_55
    :goto_55
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 599
    monitor-exit v0

    .line 595
    return v7

    .line 597
    :catchall_5a
    move-exception v7

    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 598
    if-gtz v1, :cond_63

    if-ne v1, v2, :cond_62

    goto :goto_63

    :cond_62
    move v3, v6

    :cond_63
    :goto_63
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 599
    nop

    .line 600
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v7
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_72

    .line 584
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_69
    :try_start_69
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v2

    .line 585
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_6f

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_71
    throw v2

    .line 601
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_72

    throw v1

    .line 579
    :cond_75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .registers 15
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    if-ltz p2, :cond_87

    if-ltz p3, :cond_87

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_87

    .line 609
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_b
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_84

    .line 611
    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 612
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 614
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_81

    .line 615
    const-wide/16 v1, 0x0

    .line 617
    .local v1, "n":J
    const/4 v3, 0x0

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    :try_start_20
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 618
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_69

    if-nez v9, :cond_3a

    .line 619
    nop

    .line 626
    :try_start_2a
    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 627
    cmp-long v9, v1, v7

    if-gtz v9, :cond_34

    cmp-long v4, v1, v4

    if-nez v4, :cond_35

    :cond_34
    move v3, v6

    :cond_35
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 628
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_84

    .line 619
    return-wide v7

    .line 620
    :cond_3a
    :try_start_3a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 622
    :cond_40
    iget-object v9, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, p1, p2, p3, v10}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v9

    move-wide v1, v9

    .line 623
    const-wide/16 v9, -0x3

    cmp-long v9, v1, v9

    if-nez v9, :cond_55

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_40

    .line 624
    :cond_55
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v9
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_69

    .line 626
    :try_start_59
    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 627
    cmp-long v7, v1, v7

    if-gtz v7, :cond_63

    cmp-long v4, v1, v4

    if-nez v4, :cond_64

    :cond_63
    move v3, v6

    :cond_64
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 628
    monitor-exit v0

    .line 624
    return-wide v9

    .line 626
    :catchall_69
    move-exception v9

    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 627
    cmp-long v7, v1, v7

    if-gtz v7, :cond_74

    cmp-long v4, v1, v4

    if-nez v4, :cond_75

    :cond_74
    move v3, v6

    :cond_75
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 628
    nop

    .line 629
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v9
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_84

    .line 613
    .end local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_7b
    :try_start_7b
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v2

    .line 614
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_81
    move-exception v2

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_81

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_83
    throw v2

    .line 630
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_84

    throw v1

    .line 608
    :cond_87
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .registers 16
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 364
    if-eqz p1, :cond_e7

    .line 366
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 370
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 372
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_e4

    return-object v2

    .line 373
    :cond_17
    const/4 v1, 0x0

    .line 374
    .local v1, "n":I
    const/4 v3, 0x0

    .line 376
    .local v3, "bb":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, -0x2

    :try_start_1e
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 377
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_d1

    if-nez v9, :cond_39

    .line 378
    nop

    .line 413
    if-eqz v3, :cond_2d

    .line 414
    :try_start_2a
    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 415
    :cond_2d
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 416
    if-gtz v1, :cond_33

    if-ne v1, v8, :cond_34

    :cond_33
    move v4, v5

    :cond_34
    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 417
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_e4

    .line 378
    return-object v2

    .line 379
    :cond_39
    :try_start_39
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 380
    .local v9, "security":Ljava/lang/SecurityManager;
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 381
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v10

    const/4 v11, -0x3

    if-nez v10, :cond_9b

    if-nez v9, :cond_4d

    goto :goto_9b

    .line 388
    :cond_4d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v10}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v3, v10

    .line 391
    :cond_56
    :goto_56
    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v10, v3}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v10

    move v1, v10

    .line 392
    if-ne v1, v11, :cond_65

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v10
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_d1

    if-nez v10, :cond_56

    .line 393
    :cond_65
    if-ne v1, v8, :cond_79

    .line 394
    nop

    .line 413
    if-eqz v3, :cond_6d

    .line 414
    :try_start_6a
    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 415
    :cond_6d
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 416
    if-gtz v1, :cond_73

    if-ne v1, v8, :cond_74

    :cond_73
    move v4, v5

    :cond_74
    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 417
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_e4

    .line 394
    return-object v2

    .line 395
    :cond_79
    :try_start_79
    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    check-cast v10, Ljava/net/InetSocketAddress;
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_d1

    .line 397
    .local v10, "isa":Ljava/net/InetSocketAddress;
    nop

    .line 398
    :try_start_7e
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 399
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    .line 397
    invoke-virtual {v9, v12, v13}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_8d
    .catch Ljava/lang/SecurityException; {:try_start_7e .. :try_end_8d} :catch_95
    .catchall {:try_start_7e .. :try_end_8d} :catchall_d1

    .line 405
    nop

    .line 406
    :try_start_8e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 407
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 408
    goto :goto_be

    .line 400
    :catch_95
    move-exception v12

    .line 402
    .local v12, "se":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 403
    const/4 v1, 0x0

    .line 404
    goto :goto_56

    .line 383
    .end local v10    # "isa":Ljava/net/InetSocketAddress;
    .end local v12    # "se":Ljava/lang/SecurityException;
    :cond_9b
    :goto_9b
    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v10, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v10

    move v1, v10

    .line 384
    if-ne v1, v11, :cond_aa

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v10
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_d1

    if-nez v10, :cond_9b

    .line 385
    :cond_aa
    if-ne v1, v8, :cond_be

    .line 386
    nop

    .line 413
    if-eqz v3, :cond_b2

    .line 414
    :try_start_af
    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 415
    :cond_b2
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 416
    if-gtz v1, :cond_b8

    if-ne v1, v8, :cond_b9

    :cond_b8
    move v4, v5

    :cond_b9
    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 417
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_af .. :try_end_bd} :catchall_e4

    .line 386
    return-object v2

    .line 411
    :cond_be
    :goto_be
    :try_start_be
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;
    :try_end_c0
    .catchall {:try_start_be .. :try_end_c0} :catchall_d1

    .line 413
    if-eqz v3, :cond_c5

    .line 414
    :try_start_c2
    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 415
    :cond_c5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 416
    if-gtz v1, :cond_cb

    if-ne v1, v8, :cond_cc

    :cond_cb
    move v4, v5

    :cond_cc
    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 417
    monitor-exit v0

    .line 411
    return-object v2

    .line 413
    .end local v9    # "security":Ljava/lang/SecurityManager;
    :catchall_d1
    move-exception v2

    if-eqz v3, :cond_d7

    .line 414
    invoke-static {v3}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 415
    :cond_d7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 416
    if-gtz v1, :cond_dd

    if-ne v1, v8, :cond_de

    :cond_dd
    move v4, v5

    :cond_de
    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 417
    nop

    .line 418
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 419
    .end local v1    # "n":I
    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_e4
    move-exception v1

    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_c2 .. :try_end_e6} :catchall_e4

    throw v1

    .line 365
    :cond_e7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 363
    :cond_ed
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist remoteAddress()Ljava/net/SocketAddress;
    .registers 3

    .line 700
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 702
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .registers 14
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    if-eqz p1, :cond_d8

    .line 468
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 470
    invoke-static {p2}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 471
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 472
    .local v2, "ia":Ljava/net/InetAddress;
    if-eqz v2, :cond_cd

    .line 474
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_d5

    .line 475
    :try_start_15
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 476
    if-eqz p2, :cond_ad

    .line 478
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 479
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_38

    .line 480
    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 481
    invoke-virtual {v4, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_38

    .line 483
    :cond_2d
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 483
    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 487
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_38
    :goto_38
    nop

    .line 494
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_ca

    .line 496
    const/4 v3, 0x0

    .line 498
    .local v3, "n":I
    const/4 v4, -0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :try_start_40
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 499
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_9e

    if-nez v9, :cond_57

    .line 500
    nop

    .line 516
    :try_start_4a
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 517
    if-gtz v3, :cond_52

    if-ne v3, v4, :cond_51

    goto :goto_52

    :cond_51
    move v5, v8

    :cond_52
    :goto_52
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 518
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_d5

    .line 500
    return v8

    .line 501
    :cond_57
    :try_start_57
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 503
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v9

    invoke-interface {v9}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 506
    :cond_64
    iget-object v9, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v9, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v9

    move v3, v9

    .line 507
    const/4 v9, -0x3

    if-ne v3, v9, :cond_74

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_64

    .line 509
    :cond_74
    iget-object v9, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_77
    .catchall {:try_start_57 .. :try_end_77} :catchall_9e

    .line 510
    :try_start_77
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_89

    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v10, :cond_89

    .line 511
    iget-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v10}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v10

    iput-object v10, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 513
    :cond_89
    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_77 .. :try_end_8a} :catchall_9b

    .line 514
    :try_start_8a
    invoke-static {v3}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v9
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_9e

    .line 516
    :try_start_8e
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 517
    if-gtz v3, :cond_96

    if-ne v3, v4, :cond_95

    goto :goto_96

    :cond_95
    move v5, v8

    :cond_96
    :goto_96
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 518
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_d5

    .line 514
    return v9

    .line 513
    :catchall_9b
    move-exception v10

    :try_start_9c
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local v3    # "n":I
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "target":Ljava/net/SocketAddress;
    :try_start_9d
    throw v10
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    .line 516
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "ia":Ljava/net/InetAddress;
    .restart local v3    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "target":Ljava/net/SocketAddress;
    :catchall_9e
    move-exception v9

    :try_start_9f
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 517
    if-gtz v3, :cond_a7

    if-ne v3, v4, :cond_a6

    goto :goto_a7

    :cond_a6
    move v5, v8

    :cond_a7
    :goto_a7
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 518
    nop

    .line 519
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "target":Ljava/net/SocketAddress;
    throw v9
    :try_end_ad
    .catchall {:try_start_9f .. :try_end_ad} :catchall_d5

    .line 477
    .end local v3    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "target":Ljava/net/SocketAddress;
    :cond_ad
    :try_start_ad
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "target":Ljava/net/SocketAddress;
    throw v4

    .line 488
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "ia":Ljava/net/InetAddress;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "target":Ljava/net/SocketAddress;
    :cond_b3
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 492
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_ad .. :try_end_c0} :catchall_ca

    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_d5

    return v4

    .line 489
    :cond_c2
    :try_start_c2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connected address not equal to target address"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "target":Ljava/net/SocketAddress;
    throw v4

    .line 494
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "ia":Ljava/net/InetAddress;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "target":Ljava/net/SocketAddress;
    :catchall_ca
    move-exception v4

    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_ca

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "target":Ljava/net/SocketAddress;
    :try_start_cc
    throw v4

    .line 473
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "target":Ljava/net/SocketAddress;
    :cond_cd
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Target address not resolved"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "target":Ljava/net/SocketAddress;
    throw v3

    .line 520
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "ia":Ljava/net/InetAddress;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "target":Ljava/net/SocketAddress;
    :catchall_d5
    move-exception v1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_d5

    throw v1

    .line 466
    :cond_d8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/DatagramChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_c2

    .line 216
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 219
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 222
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-eq p1, v1, :cond_97

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-eq p1, v1, :cond_97

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_20

    goto/16 :goto_97

    .line 231
    :cond_20
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_74

    .line 232
    if-eqz p2, :cond_6c

    .line 234
    move-object v1, p2

    check-cast v1, Ljava/net/NetworkInterface;

    .line 235
    .local v1, "interf":Ljava/net/NetworkInterface;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v2, v3, :cond_53

    .line 236
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    .line 237
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4b

    .line 239
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v2}, Lsun/nio/ch/Net;->setInterface6(Ljava/io/FileDescriptor;I)V

    .line 246
    invoke-static {v1}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 247
    .local v3, "target":Ljava/net/Inet4Address;
    if-eqz v3, :cond_4a

    .line 248
    invoke-static {v3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v4

    .line 249
    .local v4, "targetAddress":I
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v4}, Lsun/nio/ch/Net;->setInterface4(Ljava/io/FileDescriptor;I)V

    .line 252
    .end local v2    # "index":I
    .end local v3    # "target":Ljava/net/Inet4Address;
    .end local v4    # "targetAddress":I
    :cond_4a
    goto :goto_62

    .line 238
    .restart local v2    # "index":I
    :cond_4b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Network interface cannot be identified"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v3

    .line 254
    .end local v2    # "index":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_53
    invoke-static {v1}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 255
    .local v2, "target":Ljava/net/Inet4Address;
    if-eqz v2, :cond_64

    .line 257
    invoke-static {v2}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v3

    .line 258
    .local v3, "targetAddress":I
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4, v3}, Lsun/nio/ch/Net;->setInterface4(Ljava/io/FileDescriptor;I)V

    .line 260
    .end local v2    # "target":Ljava/net/Inet4Address;
    .end local v3    # "targetAddress":I
    :goto_62
    monitor-exit v0

    return-object p0

    .line 256
    .restart local v2    # "target":Ljava/net/Inet4Address;
    :cond_64
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Network interface not configured for IPv4"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v3

    .line 233
    .end local v1    # "interf":Ljava/net/NetworkInterface;
    .end local v2    # "target":Ljava/net/Inet4Address;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set IP_MULTICAST_IF to \'null\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v1

    .line 262
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_74
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_8e

    .line 263
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_8e

    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    .line 266
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    .line 270
    :cond_8e
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 271
    monitor-exit v0

    return-object p0

    .line 227
    :cond_97
    :goto_97
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 228
    monitor-exit v0

    return-object p0

    .line 272
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_f .. :try_end_a2} :catchall_a0

    throw v1

    .line 217
    :cond_a3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_c2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api socket()Ljava/net/DatagramSocket;
    .registers 3

    .line 184
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_d

    .line 186
    invoke-static {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 187
    :cond_d
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 351
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 5
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 1174
    const/4 v0, 0x0

    .line 1176
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 1177
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/2addr v0, v1

    .line 1178
    :cond_8
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_f

    .line 1179
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    .line 1180
    :cond_f
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_16

    .line 1181
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/2addr v0, v1

    .line 1182
    :cond_16
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 1183
    return-void
.end method

.method public blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 1141
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 10
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 1111
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 1112
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v1

    .line 1113
    .local v1, "oldOps":I
    move v2, p2

    .line 1115
    .local v2, "newOps":I
    sget-short v3, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v3, p1

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    .line 1119
    return v4

    .line 1122
    :cond_10
    sget-short v3, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v5, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v3, v5

    and-int/2addr v3, p1

    const/4 v5, 0x1

    if-eqz v3, :cond_23

    .line 1123
    move v2, v0

    .line 1124
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 1125
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_22

    move v4, v5

    :cond_22
    return v4

    .line 1128
    :cond_23
    sget-short v3, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_2e

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2e

    .line 1130
    or-int/lit8 v2, v2, 0x1

    .line 1132
    :cond_2e
    sget-short v3, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_39

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_39

    .line 1134
    or-int/lit8 v2, v2, 0x4

    .line 1136
    :cond_39
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 1137
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_41

    move v4, v5

    :cond_41
    return v4
.end method

.method blacklist unblock(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;
    .param p2, "source"    # Ljava/net/InetAddress;

    .line 1023
    nop

    .line 1024
    nop

    .line 1026
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_5
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->isValid()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_4a

    if-eqz v1, :cond_42

    .line 1031
    :try_start_b
    instance-of v1, p1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    if-eqz v1, :cond_24

    .line 1032
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/MembershipKeyImpl$Type6;

    .line 1034
    .local v1, "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress()[B

    move-result-object v3

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type6;->index()I

    move-result v4

    .line 1035
    invoke-static {p2}, Lsun/nio/ch/Net;->inet6AsByteArray(Ljava/net/InetAddress;)[B

    move-result-object v5

    .line 1034
    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/Net;->unblock6(Ljava/io/FileDescriptor;[BI[B)V

    .line 1036
    .end local v1    # "key6":Lsun/nio/ch/MembershipKeyImpl$Type6;
    goto :goto_38

    .line 1037
    :cond_24
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/MembershipKeyImpl$Type4;

    .line 1039
    .local v1, "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress()I

    move-result v3

    invoke-virtual {v1}, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfaceAddress()I

    move-result v4

    .line 1040
    invoke-static {p2}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v5

    .line 1039
    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/Net;->unblock4(Ljava/io/FileDescriptor;III)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_3b
    .catchall {:try_start_b .. :try_end_38} :catchall_4a

    .line 1045
    .end local v1    # "key4":Lsun/nio/ch/MembershipKeyImpl$Type4;
    :goto_38
    nop

    .line 1046
    :try_start_39
    monitor-exit v0

    .line 1047
    return-void

    .line 1042
    :catch_3b
    move-exception v1

    .line 1044
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v2

    .line 1028
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "key is no longer valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .end local p2    # "source":Ljava/net/InetAddress;
    throw v1

    .line 1046
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "key":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p2    # "source":Ljava/net/InetAddress;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .registers 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    if-eqz p1, :cond_75

    .line 636
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_5
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_72

    .line 638
    :try_start_8
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 639
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 641
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_6f

    .line 642
    const/4 v1, 0x0

    .line 644
    .local v1, "n":I
    const/4 v2, -0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 645
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v7
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5a

    if-nez v7, :cond_2f

    .line 646
    nop

    .line 653
    :try_start_22
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 654
    if-gtz v1, :cond_2a

    if-ne v1, v2, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v6

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 655
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_72

    .line 646
    return v6

    .line 647
    :cond_2f
    :try_start_2f
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 649
    :cond_35
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v8, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v9, -0x1

    invoke-static {v7, p1, v9, v10, v8}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v7

    move v1, v7

    .line 650
    const/4 v7, -0x3

    if-ne v1, v7, :cond_49

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_35

    .line 651
    :cond_49
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v7
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_5a

    .line 653
    :try_start_4d
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 654
    if-gtz v1, :cond_55

    if-ne v1, v2, :cond_54

    goto :goto_55

    :cond_54
    move v3, v6

    :cond_55
    :goto_55
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 655
    monitor-exit v0

    .line 651
    return v7

    .line 653
    :catchall_5a
    move-exception v7

    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 654
    if-gtz v1, :cond_63

    if-ne v1, v2, :cond_62

    goto :goto_63

    :cond_62
    move v3, v6

    :cond_63
    :goto_63
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 655
    nop

    .line 656
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v7
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_72

    .line 640
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_69
    :try_start_69
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v2

    .line 641
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_6f

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_71
    throw v2

    .line 657
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_72

    throw v1

    .line 635
    :cond_75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .registers 15
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    if-ltz p2, :cond_87

    if-ltz p3, :cond_87

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_87

    .line 665
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_b
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_84

    .line 667
    :try_start_e
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 668
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 670
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_81

    .line 671
    const-wide/16 v1, 0x0

    .line 673
    .local v1, "n":J
    const/4 v3, 0x0

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    :try_start_20
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 674
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_69

    if-nez v9, :cond_3a

    .line 675
    nop

    .line 682
    :try_start_2a
    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 683
    cmp-long v9, v1, v7

    if-gtz v9, :cond_34

    cmp-long v4, v1, v4

    if-nez v4, :cond_35

    :cond_34
    move v3, v6

    :cond_35
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 684
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_84

    .line 675
    return-wide v7

    .line 676
    :cond_3a
    :try_start_3a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v9

    iput-wide v9, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 678
    :cond_40
    iget-object v9, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, p1, p2, p3, v10}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v9

    move-wide v1, v9

    .line 679
    const-wide/16 v9, -0x3

    cmp-long v9, v1, v9

    if-nez v9, :cond_55

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_40

    .line 680
    :cond_55
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v9
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_69

    .line 682
    :try_start_59
    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 683
    cmp-long v7, v1, v7

    if-gtz v7, :cond_63

    cmp-long v4, v1, v4

    if-nez v4, :cond_64

    :cond_63
    move v3, v6

    :cond_64
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 684
    monitor-exit v0

    .line 680
    return-wide v9

    .line 682
    :catchall_69
    move-exception v9

    iput-wide v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 683
    cmp-long v7, v1, v7

    if-gtz v7, :cond_74

    cmp-long v4, v1, v4

    if-nez v4, :cond_75

    :cond_74
    move v3, v6

    :cond_75
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 684
    nop

    .line 685
    nop

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v9
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_84

    .line 669
    .end local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_7b
    :try_start_7b
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v2

    .line 670
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_81
    move-exception v2

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_81

    .end local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_83
    throw v2

    .line 686
    .restart local p0    # "this":Lsun/nio/ch/DatagramChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_84

    throw v1

    .line 664
    :cond_87
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
