.class public final Landroid/net/QosSocketInfo;
.super Ljava/lang/Object;
.source "QosSocketInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/QosSocketInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocalSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mRemoteSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mSocketType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 239
    new-instance v0, Landroid/net/QosSocketInfo$1;

    invoke-direct {v0}, Landroid/net/QosSocketInfo$1;-><init>()V

    sput-object v0, Landroid/net/QosSocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Network;Ljava/net/DatagramSocket;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-string v0, "socket cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    const-string v0, "network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mNetwork:Landroid/net/Network;

    .line 153
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 154
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 155
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mLocalSocketAddress:Ljava/net/InetSocketAddress;

    .line 156
    sget v0, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iput v0, p0, Landroid/net/QosSocketInfo;->mSocketType:I

    .line 158
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 159
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    goto :goto_3d

    .line 161
    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    .line 163
    :goto_3d
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Network;Ljava/net/Socket;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "socket cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const-string v0, "network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mNetwork:Landroid/net/Network;

    .line 129
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 130
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 131
    invoke-virtual {p2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mLocalSocketAddress:Ljava/net/InetSocketAddress;

    .line 132
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v0, p0, Landroid/net/QosSocketInfo;->mSocketType:I

    .line 134
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 135
    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    goto :goto_3d

    .line 137
    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    .line 139
    :goto_3d
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/QosSocketInfo;->mNetwork:Landroid/net/Network;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 169
    .local v0, "withFd":Z
    if-eqz v0, :cond_24

    .line 170
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/net/QosSocketInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_27

    .line 172
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/QosSocketInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 175
    :goto_27
    invoke-direct {p0, p1}, Landroid/net/QosSocketInfo;->readSocketAddress(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/QosSocketInfo;->mLocalSocketAddress:Ljava/net/InetSocketAddress;

    .line 176
    invoke-direct {p0, p1}, Landroid/net/QosSocketInfo;->readSocketAddress(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/QosSocketInfo;->mSocketType:I

    .line 179
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/QosSocketInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/QosSocketInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readSocketAddress(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 183
    .local v0, "addrBytes":[B
    if-nez v0, :cond_8

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 186
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "port":I
    :try_start_c
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_15
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_15} :catch_16

    return-object v2

    .line 190
    :catch_16
    move-exception v2

    .line 193
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "UnknownHostException on numeric address"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;IZ)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "includeFd"    # Z

    .line 217
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    if-eqz p3, :cond_12

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 221
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 223
    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    :goto_15
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mLocalSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 227
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mLocalSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_34

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_4a

    .line 232
    :cond_34
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 233
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    :goto_4a
    iget v0, p0, Landroid/net/QosSocketInfo;->mSocketType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mLocalSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/net/QosSocketInfo;->mRemoteSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public blacklist getSocketType()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/net/QosSocketInfo;->mSocketType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/net/QosSocketInfo;->writeToParcelInternal(Landroid/os/Parcel;IZ)V

    .line 205
    return-void
.end method

.method public blacklist writeToParcelWithoutFd(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/QosSocketInfo;->writeToParcelInternal(Landroid/os/Parcel;IZ)V

    .line 213
    return-void
.end method
