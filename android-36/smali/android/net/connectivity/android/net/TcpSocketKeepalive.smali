.class public final Landroid/net/connectivity/android/net/TcpSocketKeepalive;
.super Landroid/net/SocketKeepalive;
.source "TcpSocketKeepalive.java"


# direct methods
.method public static synthetic blacklist $r8$lambda$5sPJR0611ZvzV8TNCnJom44xNkQ(Landroid/net/connectivity/android/net/TcpSocketKeepalive;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->lambda$startImpl$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YyiLZvsXNI7Jf0GgWt7z3qy_Aco(Landroid/net/connectivity/android/net/TcpSocketKeepalive;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->lambda$stopImpl$1()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V
    .registers 6
    .param p1, "service"    # Landroid/net/IConnectivityManager;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 34
    invoke-direct/range {p0 .. p5}, Landroid/net/SocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V

    .line 35
    return-void
.end method

.method private synthetic blacklist lambda$startImpl$0(I)V
    .registers 6
    .param p1, "intervalSec"    # I

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/net/IConnectivityManager;->startTcpKeepalive(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;ILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :catch_d
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SocketKeepalive"

    const-string v2, "Error starting packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private synthetic blacklist lambda$stopImpl$1()V
    .registers 4

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 82
    nop

    .line 83
    return-void

    .line 79
    :catch_9
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SocketKeepalive"

    const-string v2, "Error stopping packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected blacklist startImpl(IILandroid/net/Network;)V
    .registers 8
    .param p1, "intervalSec"    # I
    .param p2, "flags"    # I
    .param p3, "underpinnedNetwork"    # Landroid/net/Network;

    .line 54
    const-string v0, " : "

    if-nez p2, :cond_3a

    .line 59
    if-nez p3, :cond_11

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/android/net/TcpSocketKeepalive;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void

    .line 60
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal underpinned network for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal flag value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist stopImpl()V
    .registers 3

    .line 76
    iget-object v0, p0, Landroid/net/connectivity/android/net/TcpSocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/TcpSocketKeepalive$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/android/net/TcpSocketKeepalive;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
