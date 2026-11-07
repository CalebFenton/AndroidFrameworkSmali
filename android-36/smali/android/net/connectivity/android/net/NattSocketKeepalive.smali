.class public final Landroid/net/connectivity/android/net/NattSocketKeepalive;
.super Landroid/net/SocketKeepalive;
.source "NattSocketKeepalive.java"


# static fields
.field public static final blacklist NATT_PORT:I = 0x1194


# instance fields
.field private final blacklist mDestination:Ljava/net/InetAddress;

.field private final blacklist mResourceId:I

.field private final blacklist mSource:Ljava/net/InetAddress;


# direct methods
.method public static synthetic blacklist $r8$lambda$23YkgGSK00abDs2Shu8GEAIosxM(Landroid/net/connectivity/android/net/NattSocketKeepalive;IZLandroid/net/Network;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/android/net/NattSocketKeepalive;->lambda$startImpl$0(IZLandroid/net/Network;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IfQ-KDbjKbuIu9i0VJtzo-SV7X8(Landroid/net/connectivity/android/net/NattSocketKeepalive;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/android/net/NattSocketKeepalive;->lambda$stopImpl$1()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V
    .registers 15
    .param p1, "service"    # Landroid/net/IConnectivityManager;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "resourceId"    # I
    .param p5, "source"    # Ljava/net/InetAddress;
    .param p6, "destination"    # Ljava/net/InetAddress;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p7

    move-object v5, p8

    .end local p1    # "service":Landroid/net/IConnectivityManager;
    .end local p2    # "network":Landroid/net/Network;
    .end local p3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p7    # "executor":Ljava/util/concurrent/Executor;
    .end local p8    # "callback":Landroid/net/SocketKeepalive$Callback;
    .local v1, "service":Landroid/net/IConnectivityManager;
    .local v2, "network":Landroid/net/Network;
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/net/SocketKeepalive$Callback;
    invoke-direct/range {v0 .. v5}, Landroid/net/SocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V

    .line 45
    iput-object p5, v0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mSource:Ljava/net/InetAddress;

    .line 46
    iput-object p6, v0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mDestination:Ljava/net/InetAddress;

    .line 47
    iput p4, v0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mResourceId:I

    .line 48
    return-void
.end method

.method private synthetic blacklist lambda$startImpl$0(IZLandroid/net/Network;)V
    .registers 14
    .param p1, "intervalSec"    # I
    .param p2, "automaticOnOffKeepalives"    # Z
    .param p3, "underpinnedNetwork"    # Landroid/net/Network;

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    iget v3, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mResourceId:I

    iget-object v5, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    iget-object v4, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mSource:Ljava/net/InetAddress;

    .line 83
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mDestination:Ljava/net/InetAddress;

    .line 84
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_21

    .line 82
    move v4, p1

    move v8, p2

    move-object v9, p3

    .end local p1    # "intervalSec":I
    .end local p2    # "automaticOnOffKeepalives":Z
    .end local p3    # "underpinnedNetwork":Landroid/net/Network;
    .local v4, "intervalSec":I
    .local v8, "automaticOnOffKeepalives":Z
    .local v9, "underpinnedNetwork":Landroid/net/Network;
    :try_start_19
    invoke-interface/range {v0 .. v9}, Landroid/net/IConnectivityManager;->startNattKeepaliveWithFd(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;IILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1e

    .line 89
    nop

    .line 90
    return-void

    .line 86
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .end local v4    # "intervalSec":I
    .end local v8    # "automaticOnOffKeepalives":Z
    .end local v9    # "underpinnedNetwork":Landroid/net/Network;
    .restart local p1    # "intervalSec":I
    .restart local p2    # "automaticOnOffKeepalives":Z
    .restart local p3    # "underpinnedNetwork":Landroid/net/Network;
    :catch_21
    move-exception v0

    move v4, p1

    move v8, p2

    move-object v9, p3

    move-object p1, v0

    .line 87
    .end local p2    # "automaticOnOffKeepalives":Z
    .end local p3    # "underpinnedNetwork":Landroid/net/Network;
    .restart local v4    # "intervalSec":I
    .restart local v8    # "automaticOnOffKeepalives":Z
    .restart local v9    # "underpinnedNetwork":Landroid/net/Network;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_26
    const-string p2, "SocketKeepalive"

    const-string p3, "Error starting socket keepalive: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method private synthetic blacklist lambda$stopImpl$1()V
    .registers 4

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mCallback:Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 101
    nop

    .line 102
    return-void

    .line 98
    :catch_9
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SocketKeepalive"

    const-string v2, "Error stopping socket keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected blacklist startImpl(IILandroid/net/Network;)V
    .registers 7
    .param p1, "intervalSec"    # I
    .param p2, "flags"    # I
    .param p3, "underpinnedNetwork"    # Landroid/net/Network;

    .line 75
    and-int/lit8 v0, p2, -0x2

    if-nez v0, :cond_16

    .line 79
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 80
    .local v0, "automaticOnOffKeepalives":Z
    :goto_b
    iget-object v1, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/android/net/NattSocketKeepalive;IZLandroid/net/Network;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void

    .line 76
    .end local v0    # "automaticOnOffKeepalives":Z
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal flag value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist stopImpl()V
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/android/net/NattSocketKeepalive;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
