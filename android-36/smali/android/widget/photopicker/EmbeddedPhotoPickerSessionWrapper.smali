.class Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerSessionWrapper.java"

# interfaces
.implements Landroid/widget/photopicker/EmbeddedPhotoPickerSession;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final blacklist mClient:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

.field private final blacklist mClientWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

.field private final blacklist mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;

.field private final blacklist mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

.field private final blacklist mSessionResponse:Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;


# direct methods
.method constructor blacklist <init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;)V
    .registers 6
    .param p1, "provider"    # Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;
    .param p2, "mSessionResponse"    # Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;
    .param p3, "mClient"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;
    .param p4, "clientWrapper"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;

    .line 56
    iput-object p2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSessionResponse:Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;

    .line 57
    invoke-virtual {p2}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->getSession()Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    .line 58
    iput-object p3, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mClient:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 59
    iput-object p4, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mClientWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    .line 61
    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->linkDeathRecipient()V

    .line 62
    return-void
.end method

.method private blacklist linkDeathRecipient()V
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 69
    goto :goto_f

    .line 67
    :catch_b
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->binderDied()V

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 133
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mClientWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    new-instance v1, Landroid/widget/photopicker/ParcelableException;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Binder object hosting this session has died. Clean up resources."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/widget/photopicker/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->onSessionError(Landroid/widget/photopicker/ParcelableException;)V

    .line 136
    return-void
.end method

.method public whitelist close()V
    .registers 3

    .line 79
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mClient:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-virtual {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;->onSessionClosed(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    .line 81
    :try_start_7
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->close()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 84
    goto :goto_11

    .line 82
    :catch_d
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public whitelist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSessionResponse:Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    return-object v0
.end method

.method public whitelist notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 110
    goto :goto_a

    .line 108
    :catch_6
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist notifyPhotoPickerExpanded(Z)V
    .registers 3
    .param p1, "isExpanded"    # Z

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->notifyPhotopickerExpanded(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 119
    goto :goto_a

    .line 117
    :catch_6
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist notifyResized(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0, p1, p2}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->notifyResized(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 101
    goto :goto_a

    .line 99
    :catch_6
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist notifyVisibilityChanged(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->notifyVisibilityChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 92
    goto :goto_a

    .line 90
    :catch_6
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist requestRevokeUriPermission(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->requestRevokeUriPermission(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 128
    goto :goto_a

    .line 126
    :catch_6
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
