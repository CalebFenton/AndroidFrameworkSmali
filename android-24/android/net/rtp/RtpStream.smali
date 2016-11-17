.class public Landroid/net/rtp/RtpStream;
.super Ljava/lang/Object;
.source "RtpStream.java"


# static fields
.field private static final MODE_LAST:I = 0x2

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RECEIVE_ONLY:I = 0x2

.field public static final MODE_SEND_ONLY:I = 0x1


# instance fields
.field private final mLocalAddress:Ljava/net/InetAddress;

.field private final mLocalPort:I

.field private mMode:I

.field private mRemoteAddress:Ljava/net/InetAddress;

.field private mRemotePort:I

.field private mSocket:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "rtp_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 31
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    iput v1, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    #@6
    .line 55
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/net/rtp/RtpStream;->mMode:I

    #@9
    .line 57
    iput v1, p0, Landroid/net/rtp/RtpStream;->mSocket:I

    #@b
    .line 71
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Landroid/net/rtp/RtpStream;->create(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/rtp/RtpStream;->mLocalPort:I

    #@15
    .line 72
    iput-object p1, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    #@17
    .line 70
    return-void
.end method

.method private native close()V
.end method

.method private native create(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public associate(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 154
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Busy"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 157
    :cond_0
    instance-of v1, p1, Ljava/net/Inet4Address;

    #@12
    if-eqz v1, :cond_1

    #@14
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    #@16
    instance-of v0, v0, Ljava/net/Inet4Address;

    #@18
    :cond_1
    if-nez v0, :cond_2

    #@1a
    .line 158
    instance-of v0, p1, Ljava/net/Inet6Address;

    #@1c
    if-eqz v0, :cond_4

    #@1e
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    #@20
    instance-of v0, v0, Ljava/net/Inet6Address;

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 161
    :cond_2
    if-ltz p2, :cond_3

    #@26
    const v0, 0xffff

    #@29
    if-le p2, v0, :cond_5

    #@2b
    .line 162
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "Invalid port"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 159
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v1, "Unsupported address"

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 164
    :cond_5
    iput-object p1, p0, Landroid/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    #@3f
    .line 165
    iput p2, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    #@41
    .line 153
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Landroid/net/rtp/RtpStream;->close()V

    #@3
    .line 193
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 191
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/net/rtp/RtpStream;->mLocalPort:I

    #@2
    return v0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Landroid/net/rtp/RtpStream;->mMode:I

    #@2
    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    #@2
    return v0
.end method

.method getSocket()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/net/rtp/RtpStream;->mSocket:I

    #@2
    return v0
.end method

.method public isBusy()Z
    .locals 1

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 180
    monitor-enter p0

    #@1
    .line 181
    :try_start_0
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Busy"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 180
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 184
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/net/rtp/RtpStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 179
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Busy"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 136
    :cond_0
    if-ltz p1, :cond_1

    #@11
    const/4 v0, 0x2

    #@12
    if-le p1, v0, :cond_2

    #@14
    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Invalid mode"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 139
    :cond_2
    iput p1, p0, Landroid/net/rtp/RtpStream;->mMode:I

    #@1f
    .line 132
    return-void
.end method
