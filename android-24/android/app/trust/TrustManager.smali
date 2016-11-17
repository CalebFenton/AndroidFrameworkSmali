.class public Landroid/app/trust/TrustManager;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/TrustManager$1;,
        Landroid/app/trust/TrustManager$TrustListener;
    }
.end annotation


# static fields
.field private static final DATA_FLAGS:Ljava/lang/String; = "initiatedByUser"

.field private static final MSG_TRUST_CHANGED:I = 0x1

.field private static final MSG_TRUST_MANAGED_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrustManager"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/trust/ITrustManager;

.field private final mTrustListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/trust/TrustManager$TrustListener;",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/app/trust/TrustManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "b"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 169
    new-instance v0, Landroid/app/trust/TrustManager$1;

    #@5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1}, Landroid/app/trust/TrustManager$1;-><init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    #@e
    .line 46
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@14
    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    #@16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@19
    iput-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    #@1b
    .line 45
    return-void
.end method


# virtual methods
.method public isTrustUsuallyManaged(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isTrustUsuallyManaged(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 164
    :catch_0
    move-exception v0

    #@8
    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 3
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    #@0
    .prologue
    .line 116
    :try_start_0
    new-instance v1, Landroid/app/trust/TrustManager$2;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/app/trust/TrustManager$2;-><init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V

    #@5
    .line 133
    .local v1, "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@7
    invoke-interface {v2, v1}, Landroid/app/trust/ITrustManager;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    #@a
    .line 134
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 114
    return-void

    #@10
    .line 135
    .end local v1    # "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    :catch_0
    move-exception v0

    #@11
    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v2

    #@15
    throw v2
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->reportEnabledTrustAgentsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 88
    return-void

    #@6
    .line 91
    :catch_0
    move-exception v0

    #@7
    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public reportKeyguardShowingChanged()V
    .locals 2

    #@0
    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1}, Landroid/app/trust/ITrustManager;->reportKeyguardShowingChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 101
    return-void

    #@6
    .line 104
    :catch_0
    move-exception v0

    #@7
    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 2
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockAttempt(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 75
    return-void

    #@6
    .line 78
    :catch_0
    move-exception v0

    #@7
    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setDeviceLockedForUser(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    #@0
    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 60
    return-void

    #@6
    .line 63
    :catch_0
    move-exception v0

    #@7
    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 3
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    #@0
    .prologue
    .line 146
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/trust/ITrustListener;

    #@8
    .line 147
    .local v1, "iTrustListener":Landroid/app/trust/ITrustListener;
    if-eqz v1, :cond_0

    #@a
    .line 149
    :try_start_0
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@c
    invoke-interface {v2, v1}, Landroid/app/trust/ITrustManager;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 145
    :cond_0
    return-void

    #@10
    .line 150
    :catch_0
    move-exception v0

    #@11
    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v2

    #@15
    throw v2
.end method
