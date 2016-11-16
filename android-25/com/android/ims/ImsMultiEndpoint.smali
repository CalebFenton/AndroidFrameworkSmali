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
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsMultiEndpoint"


# instance fields
.field private final mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V
    .locals 2
    .param p1, "iImsMultiEndpoint"    # Lcom/android/ims/internal/IImsMultiEndpoint;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const-string/jumbo v0, "ImsMultiEndpoint"

    #@6
    const-string/jumbo v1, "ImsMultiEndpoint created"

    #@9
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 67
    iput-object p1, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    #@e
    .line 65
    return-void
.end method


# virtual methods
.method public setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 4
    .param p1, "externalCallStateListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    :try_start_0
    const-string/jumbo v1, "ImsMultiEndpoint"

    #@3
    const-string/jumbo v2, "setExternalCallStateListener"

    #@6
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 74
    iget-object v1, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    #@b
    new-instance v2, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;

    #@d
    invoke-direct {v2, p0, p1}, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;-><init>(Lcom/android/ims/ImsMultiEndpoint;Lcom/android/ims/ImsExternalCallStateListener;)V

    #@10
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsMultiEndpoint;->setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 71
    return-void

    #@14
    .line 76
    :catch_0
    move-exception v0

    #@15
    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    #@17
    const-string/jumbo v2, "setExternalCallStateListener could not be set."

    #@1a
    .line 78
    const/16 v3, 0x6a

    #@1c
    .line 77
    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@1f
    throw v1
.end method
