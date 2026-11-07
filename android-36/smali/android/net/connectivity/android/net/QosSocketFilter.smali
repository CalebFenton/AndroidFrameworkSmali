.class public Landroid/net/connectivity/android/net/QosSocketFilter;
.super Landroid/net/QosFilter;
.source "QosSocketFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mQosSocketInfo:Landroid/net/QosSocketInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-class v0, Landroid/net/connectivity/android/net/QosSocketFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/QosSocketFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/QosSocketInfo;)V
    .registers 3
    .param p1, "qosSocketInfo"    # Landroid/net/QosSocketInfo;

    .line 62
    invoke-direct {p0}, Landroid/net/QosFilter;-><init>()V

    .line 63
    const-string v0, "qosSocketInfo must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    .line 65
    return-void
.end method

.method private blacklist getLocalAddressFromFileDescriptor()Ljava/net/InetSocketAddress;
    .registers 7

    .line 124
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 125
    .local v0, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 129
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    :try_start_b
    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_f} :catch_19

    .line 133
    .local v3, "address":Ljava/net/SocketAddress;
    nop

    .line 134
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_18

    .line 135
    move-object v2, v3

    check-cast v2, Ljava/net/InetSocketAddress;

    return-object v2

    .line 137
    :cond_18
    return-object v2

    .line 130
    .end local v3    # "address":Ljava/net/SocketAddress;
    :catch_19
    move-exception v3

    .line 131
    .local v3, "e":Landroid/system/ErrnoException;
    sget-object v4, Landroid/net/connectivity/android/net/QosSocketFilter;->TAG:Ljava/lang/String;

    const-string v5, "getAddressFromFileDescriptor: getLocalAddress exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-object v2
.end method

.method private blacklist getRemoteAddressFromFileDescriptor()Ljava/net/InetSocketAddress;
    .registers 7

    .line 149
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 150
    .local v0, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 154
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    :try_start_b
    invoke-static {v1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_f} :catch_19

    .line 158
    .local v3, "address":Ljava/net/SocketAddress;
    nop

    .line 159
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_18

    .line 160
    move-object v2, v3

    check-cast v2, Ljava/net/InetSocketAddress;

    return-object v2

    .line 162
    :cond_18
    return-object v2

    .line 155
    .end local v3    # "address":Ljava/net/SocketAddress;
    :catch_19
    move-exception v3

    .line 156
    .local v3, "e":Landroid/system/ErrnoException;
    sget-object v4, Landroid/net/connectivity/android/net/QosSocketFilter;->TAG:Ljava/lang/String;

    const-string v5, "getAddressFromFileDescriptor: getRemoteAddress exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    return-object v2
.end method

.method public static blacklist matchesAddress(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;II)Z
    .registers 5
    .param p0, "filterSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "startPort"    # I
    .param p3, "endPort"    # I

    .line 231
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-gt p2, v0, :cond_1e

    .line 232
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-lt p3, v0, :cond_1e

    .line 233
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 234
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 231
    :goto_1f
    return v0
.end method


# virtual methods
.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQosSocketInfo()Landroid/net/QosSocketInfo;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    return-object v0
.end method

.method public whitelist matchesLocalAddress(Ljava/net/InetAddress;II)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "startPort"    # I
    .param p3, "endPort"    # I

    .line 182
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_a

    .line 183
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/net/connectivity/android/net/QosSocketFilter;->matchesAddress(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;II)Z

    move-result v0

    return v0
.end method

.method public whitelist matchesProtocol(I)Z
    .registers 4
    .param p1, "protocol"    # I

    .line 207
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getSocketType()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    if-ne v0, v1, :cond_e

    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-eq p1, v0, :cond_1c

    :cond_e
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    .line 208
    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getSocketType()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    if-ne v0, v1, :cond_1e

    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p1, v0, :cond_1e

    .line 209
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist matchesRemoteAddress(Ljava/net/InetAddress;II)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "startPort"    # I
    .param p3, "endPort"    # I

    .line 195
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_a

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v0}, Landroid/net/QosSocketInfo;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/net/connectivity/android/net/QosSocketFilter;->matchesAddress(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;II)Z

    move-result v0

    return v0
.end method

.method public blacklist validate()I
    .registers 4

    .line 91
    invoke-direct {p0}, Landroid/net/connectivity/android/net/QosSocketFilter;->getLocalAddressFromFileDescriptor()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 93
    .local v0, "sa":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_45

    .line 97
    :cond_17
    iget-object v1, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v1}, Landroid/net/QosSocketInfo;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 98
    const/4 v1, 0x4

    return v1

    .line 101
    :cond_25
    iget-object v1, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v1}, Landroid/net/QosSocketInfo;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 102
    invoke-direct {p0}, Landroid/net/connectivity/android/net/QosSocketFilter;->getRemoteAddressFromFileDescriptor()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 103
    .local v1, "da":Ljava/net/InetSocketAddress;
    if-nez v1, :cond_35

    .line 104
    const/4 v2, 0x5

    return v2

    .line 107
    :cond_35
    iget-object v2, p0, Landroid/net/connectivity/android/net/QosSocketFilter;->mQosSocketInfo:Landroid/net/QosSocketInfo;

    invoke-virtual {v2}, Landroid/net/QosSocketInfo;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 108
    const/4 v2, 0x6

    return v2

    .line 112
    .end local v1    # "da":Ljava/net/InetSocketAddress;
    :cond_43
    const/4 v1, 0x0

    return v1

    .line 94
    :cond_45
    :goto_45
    const/4 v1, 0x2

    return v1
.end method
