.class public Lcom/android/ims/ImsEcbm;
.super Ljava/lang/Object;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "ImsEcbm"


# instance fields
.field private final blacklist miEcbm:Lcom/android/ims/internal/IImsEcbm;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsEcbm;)V
    .registers 4
    .param p1, "iEcbm"    # Lcom/android/ims/internal/IImsEcbm;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "ImsEcbm"

    const-string v1, "ImsEcbm created"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    .line 55
    return-void
.end method


# virtual methods
.method public greylist-max-r exitEmergencyCallbackMode()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 69
    nop

    .line 70
    return-void

    .line 66
    :catch_7
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "exitEmergencyCallbackMode()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist isBinderAlive()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V
    .registers 4
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    if-eqz p1, :cond_a

    .line 59
    new-instance v1, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;

    invoke-direct {v1, p1}, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;-><init>(Lcom/android/ims/ImsEcbmStateListener;)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 58
    :goto_b
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V

    .line 60
    return-void
.end method
