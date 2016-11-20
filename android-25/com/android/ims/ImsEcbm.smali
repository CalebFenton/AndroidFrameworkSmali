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
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsEcbm"


# instance fields
.field private final miEcbm:Lcom/android/ims/internal/IImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsEcbm;)V
    .locals 2
    .param p1, "iEcbm"    # Lcom/android/ims/internal/IImsEcbm;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const-string/jumbo v0, "ImsEcbm"

    #@6
    const-string/jumbo v1, "ImsEcbm created"

    #@9
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 60
    iput-object p1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    #@e
    .line 58
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    #@2
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 72
    return-void

    #@6
    .line 75
    :catch_0
    move-exception v0

    #@7
    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v2, "exitEmergencyCallbackMode()"

    #@c
    .line 77
    const/16 v3, 0x6a

    #@e
    .line 76
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@11
    throw v1
.end method

.method public setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 4
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    #@2
    new-instance v2, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;

    #@4
    invoke-direct {v2, p0, p1}, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;-><init>(Lcom/android/ims/ImsEcbm;Lcom/android/ims/ImsEcbmStateListener;)V

    #@7
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 63
    return-void

    #@b
    .line 66
    :catch_0
    move-exception v0

    #@c
    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@e
    const-string/jumbo v2, "setEcbmStateListener()"

    #@11
    .line 68
    const/16 v3, 0x6a

    #@13
    .line 67
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@16
    throw v1
.end method
