.class public Landroid/net/rtp/RtpStream;
.super Ljava/lang/Object;
.source "RtpStream.java"


# static fields
.field private static final greylist-max-o MODE_LAST:I = 0x2

.field public static final whitelist MODE_NORMAL:I = 0x0

.field public static final whitelist MODE_RECEIVE_ONLY:I = 0x2

.field public static final whitelist MODE_SEND_ONLY:I = 0x1


# instance fields
.field private final greylist-max-o mLocalAddress:Ljava/net/InetAddress;

.field private final greylist-max-o mLocalPort:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mRemoteAddress:Ljava/net/InetAddress;

.field private greylist-max-o mRemotePort:I

.field private greylist-max-o mSocket:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const-string v0, "rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/rtp/RtpStream;->mMode:I

    .line 59
    iput v0, p0, Landroid/net/rtp/RtpStream;->mSocket:I

    .line 73
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/rtp/RtpStream;->create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/rtp/RtpStream;->mLocalPort:I

    .line 74
    iput-object p1, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    .line 75
    return-void
.end method

.method private native greylist-max-o close()V
.end method

.method private native greylist-max-o create(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist associate(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 156
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-nez v0, :cond_36

    .line 159
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_1a

    :cond_10
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2e

    .line 163
    :cond_1a
    if-ltz p2, :cond_26

    const v0, 0xffff

    if-gt p2, v0, :cond_26

    .line 166
    iput-object p1, p0, Landroid/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    .line 167
    iput p2, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    .line 168
    return-void

    .line 164
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Landroid/net/rtp/RtpStream;->close()V

    .line 195
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 196
    return-void
.end method

.method public whitelist getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getLocalPort()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/net/rtp/RtpStream;->mLocalPort:I

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/net/rtp/RtpStream;->mMode:I

    return v0
.end method

.method public whitelist getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getRemotePort()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    return v0
.end method

.method greylist-max-o getSocket()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/net/rtp/RtpStream;->mSocket:I

    return v0
.end method

.method public whitelist isBusy()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist release()V
    .registers 3

    .line 182
    monitor-enter p0

    .line 183
    :try_start_1
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-nez v0, :cond_c

    .line 186
    invoke-direct {p0}, Landroid/net/rtp/RtpStream;->close()V

    .line 187
    monitor-exit p0

    .line 188
    return-void

    .line 184
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/rtp/RtpStream;
    throw v0

    .line 187
    .restart local p0    # "this":Landroid/net/rtp/RtpStream;
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public whitelist setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 135
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-nez v0, :cond_16

    .line 138
    if-ltz p1, :cond_e

    const/4 v0, 0x2

    if-gt p1, v0, :cond_e

    .line 141
    iput p1, p0, Landroid/net/rtp/RtpStream;->mMode:I

    .line 142
    return-void

    .line 139
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
