.class public Landroid/app/trust/TrustManager;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/TrustManager$TrustListener;,
        Landroid/app/trust/TrustManager$1;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
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
    .line 43
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@14
    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    #@16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@19
    iput-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    #@1b
    .line 42
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 168
    const-string/jumbo v0, "TrustManager"

    #@3
    const-string/jumbo v1, "Error while calling TrustManagerService"

    #@6
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9
    .line 167
    return-void
.end method


# virtual methods
.method public hasUserAuthenticatedSinceBoot(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->hasUserAuthenticatedSinceBoot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 161
    :catch_0
    move-exception v0

    #@8
    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@b
    .line 163
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 3
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    #@0
    .prologue
    .line 110
    :try_start_0
    new-instance v1, Landroid/app/trust/TrustManager$2;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/app/trust/TrustManager$2;-><init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V

    #@5
    .line 127
    .local v1, "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@7
    invoke-interface {v2, v1}, Landroid/app/trust/ITrustManager;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    #@a
    .line 128
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 108
    .end local v1    # "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    :goto_0
    return-void

    #@10
    .line 129
    :catch_0
    move-exception v0

    #@11
    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@14
    goto :goto_0
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->reportEnabledTrustAgentsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 67
    :goto_0
    return-void

    #@6
    .line 70
    :catch_0
    move-exception v0

    #@7
    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public reportKeyguardShowingChanged()V
    .locals 2

    #@0
    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1}, Landroid/app/trust/ITrustManager;->reportKeyguardShowingChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 95
    :goto_0
    return-void

    #@6
    .line 98
    :catch_0
    move-exception v0

    #@7
    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public reportRequireCredentialEntry(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->reportRequireCredentialEntry(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 82
    :goto_0
    return-void

    #@6
    .line 85
    :catch_0
    move-exception v0

    #@7
    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 2
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockAttempt(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 54
    :goto_0
    return-void

    #@6
    .line 57
    :catch_0
    move-exception v0

    #@7
    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@a
    goto :goto_0
.end method

.method public unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 3
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    #@0
    .prologue
    .line 140
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/trust/ITrustListener;

    #@8
    .line 141
    .local v1, "iTrustListener":Landroid/app/trust/ITrustListener;
    if-eqz v1, :cond_0

    #@a
    .line 143
    :try_start_0
    iget-object v2, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    #@c
    invoke-interface {v2, v1}, Landroid/app/trust/ITrustManager;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 139
    :cond_0
    :goto_0
    return-void

    #@10
    .line 144
    :catch_0
    move-exception v0

    #@11
    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/app/trust/TrustManager;->onError(Ljava/lang/Exception;)V

    #@14
    goto :goto_0
.end method
