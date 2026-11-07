.class public Landroid/net/IpSecManager;
.super Ljava/lang/Object;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecManager$SecurityParameterIndex;,
        Landroid/net/IpSecManager$SpiUnavailableException;,
        Landroid/net/IpSecManager$ResourceUnavailableException;,
        Landroid/net/IpSecManager$UdpEncapsulationSocket;,
        Landroid/net/IpSecManager$IpSecTunnelInterface;,
        Landroid/net/IpSecManager$Status;,
        Landroid/net/IpSecManager$PolicyDirection;
    }
.end annotation


# static fields
.field public static final blacklist DIRECTION_FWD:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist DIRECTION_IN:I = 0x0

.field public static final whitelist DIRECTION_OUT:I = 0x1

.field public static final blacklist FEATURE_IPSEC_TUNNEL_MIGRATION:Ljava/lang/String; = "android.software.ipsec_tunnel_migration"

.field public static final greylist-max-o INVALID_RESOURCE_ID:I = -0x1

.field public static final blacklist INVALID_SECURITY_PARAMETER_INDEX:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/net/IIpSecService;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/IIpSecService;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IIpSecService;

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput-object p1, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    .line 1101
    const-string v0, "missing service"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IIpSecService;

    iput-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 1102
    return-void
.end method

.method private static greylist-max-o maybeHandleServiceSpecificException(Landroid/os/ServiceSpecificException;)V
    .registers 3
    .param p0, "sse"    # Landroid/os/ServiceSpecificException;

    .line 1106
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    if-eq v0, v1, :cond_25

    .line 1108
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_1f

    .line 1110
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EPROTONOSUPPORT:I

    if-eq v0, v1, :cond_19

    .line 1114
    return-void

    .line 1112
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1109
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1107
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static greylist-max-o rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;
    .registers 4
    .param p0, "sse"    # Landroid/os/ServiceSpecificException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1139
    invoke-static {p0}, Landroid/net/IpSecManager;->maybeHandleServiceSpecificException(Landroid/os/ServiceSpecificException;)V

    .line 1141
    new-instance v0, Landroid/system/ErrnoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpSec encountered errno="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 1142
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static greylist-max-o rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "sse"    # Landroid/os/ServiceSpecificException;

    .line 1124
    invoke-static {p0}, Landroid/net/IpSecManager;->maybeHandleServiceSpecificException(Landroid/os/ServiceSpecificException;)V

    .line 1125
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist allocateSecurityParameterIndex(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 6
    .param p1, "destinationAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 313
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager-IA;)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_13
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 319
    :catch_a
    move-exception v0

    .line 322
    .local v0, "unlikely":Landroid/net/IpSecManager$SpiUnavailableException;
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No SPIs available"

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v0    # "unlikely":Landroid/net/IpSecManager$SpiUnavailableException;
    :catch_13
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist allocateSecurityParameterIndex(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 6
    .param p1, "destinationAddress"    # Ljava/net/InetAddress;
    .param p2, "requestedSpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 346
    if-eqz p2, :cond_11

    .line 350
    :try_start_2
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager-IA;)V
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 351
    :catch_b
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 347
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested SPI must be a valid (non-zero) SPI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist applyTransportModeTransform(Ljava/io/FileDescriptor;ILandroid/net/IpSecTransform;)V
    .registers 7
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_20

    .line 487
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_4
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p3}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, v0, p2, v2}, Landroid/net/IIpSecService;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    .line 488
    if-eqz v0, :cond_12

    :try_start_f
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_12} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_20

    .line 492
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_12
    nop

    .line 493
    return-void

    .line 486
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/IpSecManager;
    .end local p1    # "socket":Ljava/io/FileDescriptor;
    .end local p2    # "direction":I
    .end local p3    # "transform":Landroid/net/IpSecTransform;
    :cond_1f
    :goto_1f
    throw v1
    :try_end_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_20} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_20

    .line 490
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/net/IpSecManager;
    .restart local p1    # "socket":Ljava/io/FileDescriptor;
    .restart local p2    # "direction":I
    .restart local p3    # "transform":Landroid/net/IpSecTransform;
    :catch_20
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist applyTransportModeTransform(Ljava/net/DatagramSocket;ILandroid/net/IpSecTransform;)V
    .registers 5
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/net/IpSecManager;->applyTransportModeTransform(Ljava/io/FileDescriptor;ILandroid/net/IpSecTransform;)V

    .line 438
    return-void
.end method

.method public whitelist applyTransportModeTransform(Ljava/net/Socket;ILandroid/net/IpSecTransform;)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Ljava/net/Socket;->getSoLinger()I

    .line 403
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/net/IpSecManager;->applyTransportModeTransform(Ljava/io/FileDescriptor;ILandroid/net/IpSecTransform;)V

    .line 404
    return-void
.end method

.method public whitelist applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    .registers 8
    .param p1, "tunnel"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 1001
    invoke-virtual {p1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getResourceId()I

    move-result v1

    .line 1002
    invoke-virtual {p3}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    iget-object v3, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/net/IIpSecService;->applyTunnelModeTransform(IIILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_13} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 1007
    nop

    .line 1008
    return-void

    .line 1005
    :catch_15
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1003
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .registers 11
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "underlyingNetwork"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$IpSecTunnelInterface;

    iget-object v1, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_11

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "localAddress":Ljava/net/InetAddress;
    .end local p2    # "remoteAddress":Ljava/net/InetAddress;
    .end local p3    # "underlyingNetwork":Landroid/net/Network;
    .local v3, "localAddress":Ljava/net/InetAddress;
    .local v4, "remoteAddress":Ljava/net/InetAddress;
    .local v5, "underlyingNetwork":Landroid/net/Network;
    :try_start_a
    invoke-direct/range {v0 .. v6}, Landroid/net/IpSecManager$IpSecTunnelInterface;-><init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;Landroid/net/IpSecManager-IA;)V
    :try_end_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_d} :catch_e

    return-object v0

    .line 973
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v3    # "localAddress":Ljava/net/InetAddress;
    .end local v4    # "remoteAddress":Ljava/net/InetAddress;
    .end local v5    # "underlyingNetwork":Landroid/net/Network;
    .restart local p1    # "localAddress":Ljava/net/InetAddress;
    .restart local p2    # "remoteAddress":Ljava/net/InetAddress;
    .restart local p3    # "underlyingNetwork":Landroid/net/Network;
    :catch_11
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 974
    .end local p2    # "remoteAddress":Ljava/net/InetAddress;
    .end local p3    # "underlyingNetwork":Landroid/net/Network;
    .restart local v3    # "localAddress":Ljava/net/InetAddress;
    .restart local v4    # "remoteAddress":Ljava/net/InetAddress;
    .restart local v5    # "underlyingNetwork":Landroid/net/Network;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_16
    invoke-static {p1}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object p2

    throw p2
.end method

.method public blacklist createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;
    .registers 6
    .param p1, "config"    # Landroid/net/IpSecConfig;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1070
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IIpSecService;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1071
    :catch_7
    move-exception v0

    .line 1072
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deleteTransform(I)V
    .registers 4
    .param p1, "resourceId"    # I

    .line 1081
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-interface {v0, p1}, Landroid/net/IIpSecService;->deleteTransform(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1084
    nop

    .line 1085
    return-void

    .line 1082
    :catch_7
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTransformState(I)Landroid/net/IpSecTransformState;
    .registers 3
    .param p1, "transformId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-interface {v0, p1}, Landroid/net/IIpSecService;->getTransformState(I)Landroid/net/IpSecTransformState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 740
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager-IA;)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 741
    :catch_a
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openUdpEncapsulationSocket(I)Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .registers 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 709
    if-eqz p1, :cond_11

    .line 713
    :try_start_2
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager-IA;)V
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 714
    :catch_b
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 710
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified port must be a valid port number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeTransportModeTransforms(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_1c

    .line 547
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_4
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-interface {v1, v0}, Landroid/net/IIpSecService;->removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_10

    .line 548
    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_e} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_1c

    .line 552
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_e
    nop

    .line 553
    return-void

    .line 546
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    :try_start_18
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/IpSecManager;
    .end local p1    # "socket":Ljava/io/FileDescriptor;
    :cond_1b
    :goto_1b
    throw v1
    :try_end_1c
    .catch Landroid/os/ServiceSpecificException; {:try_start_18 .. :try_end_1c} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1c

    .line 550
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/net/IpSecManager;
    .restart local p1    # "socket":Ljava/io/FileDescriptor;
    :catch_1c
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 548
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeTransportModeTransforms(Ljava/net/DatagramSocket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/IpSecManager;->removeTransportModeTransforms(Ljava/io/FileDescriptor;)V

    .line 530
    return-void
.end method

.method public whitelist removeTransportModeTransforms(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-virtual {p1}, Ljava/net/Socket;->getSoLinger()I

    .line 512
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/IpSecManager;->removeTransportModeTransforms(Ljava/io/FileDescriptor;)V

    .line 513
    return-void
.end method

.method public greylist-max-o removeTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .registers 3
    .param p1, "net"    # Landroid/net/Network;
    .param p2, "transform"    # Landroid/net/IpSecTransform;

    .line 568
    return-void
.end method

.method public whitelist startTunnelModeTransformMigration(Landroid/net/IpSecTransform;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "transform"    # Landroid/net/IpSecTransform;
    .param p2, "newSourceAddress"    # Ljava/net/InetAddress;
    .param p3, "newDestinationAddress"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1044
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1049
    const-string v0, "transform was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1050
    const-string v0, "newSourceAddress was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1051
    const-string v0, "newDestinationAddress was null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1054
    :try_start_15
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 1055
    invoke-virtual {p1}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v1

    .line 1056
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    .line 1058
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1054
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/IIpSecService;->migrateTransform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_2e

    .line 1061
    nop

    .line 1062
    return-void

    .line 1059
    :catch_2e
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1045
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transform migration only supported for Android 14+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
