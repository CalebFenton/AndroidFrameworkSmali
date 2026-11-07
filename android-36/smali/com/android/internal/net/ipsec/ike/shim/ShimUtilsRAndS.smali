.class public Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsRAndS;
.super Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;
.source "ShimUtilsRAndS.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist executeOrSendFatalError(Ljava/lang/Runnable;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "cb"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    .line 66
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 67
    return-void
.end method

.method public blacklist getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getRetransmissionFailedException(Ljava/lang/String;)Ljava/lang/Exception;
    .registers 3
    .param p1, "errMsg"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getWrappedIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 39
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeException;

    if-eqz v0, :cond_8

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeException;

    return-object v0

    .line 43
    :cond_8
    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    invoke-direct {v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeInternalException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public blacklist onUnderlyingNetworkDiedWithoutMobility(Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;Landroid/net/Network;)V
    .registers 4
    .param p1, "ikeSession"    # Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;
    .param p2, "network"    # Landroid/net/Network;

    .line 59
    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    invoke-direct {v0, p2}, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;-><init>(Landroid/net/Network;)V

    invoke-interface {p1, v0}, Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;->onNonFatalError(Ljava/lang/Exception;)V

    .line 60
    return-void
.end method

.method public blacklist shouldSkipIfSameNetwork(Z)Z
    .registers 3
    .param p1, "skipIfSameNetwork"    # Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startKeepalive(Landroid/net/SocketKeepalive;IILandroid/net/Network;)V
    .registers 5
    .param p1, "keepalive"    # Landroid/net/SocketKeepalive;
    .param p2, "keepaliveDelaySeconds"    # I
    .param p3, "keepaliveOptions"    # I
    .param p4, "underpinnedNetwork"    # Landroid/net/Network;

    .line 72
    invoke-virtual {p1, p2}, Landroid/net/SocketKeepalive;->start(I)V

    .line 73
    return-void
.end method

.method public blacklist supportsSameSocketKernelMigration(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist suspendOnNetworkLossEnabled()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method
