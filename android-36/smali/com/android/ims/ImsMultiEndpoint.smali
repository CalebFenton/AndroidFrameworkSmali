.class public Lcom/android/ims/ImsMultiEndpoint;
.super Ljava/lang/Object;
.source "ImsMultiEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "ImsMultiEndpoint"


# instance fields
.field private final blacklist mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V
    .registers 4
    .param p1, "iImsMultiEndpoint"    # Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "ImsMultiEndpoint"

    const-string v1, "ImsMultiEndpoint created"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist isBinderAlive()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMultiEndpoint;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 4
    .param p1, "externalCallStateListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "ImsMultiEndpoint"

    const-string v1, "setExternalCallStateListener"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    if-eqz p1, :cond_11

    .line 76
    new-instance v1, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;-><init>(Lcom/android/ims/ImsMultiEndpoint;Lcom/android/ims/ImsExternalCallStateListener;)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 75
    :goto_12
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsMultiEndpoint;->setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    .line 77
    return-void
.end method
