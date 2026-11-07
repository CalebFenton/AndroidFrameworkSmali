.class public Landroid/app/DreamManager;
.super Ljava/lang/Object;
.source "DreamManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/service/dreams/IDreamManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    nop

    .line 51
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    .line 52
    iput-object p1, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist areDreamsSupported()Z
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist canStartDreaming(Z)Z
    .registers 3
    .param p1, "isScreenOn"    # Z

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->canStartDreaming(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 202
    :catch_7
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDreaming()Z
    .registers 2

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 220
    :catch_7
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScreensaverEnabled()Z
    .registers 5

    .line 62
    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screensaver_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    :cond_12
    return v3
.end method

.method public blacklist setActiveDream(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "dreamComponent"    # Landroid/content/ComponentName;

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 148
    .local v0, "dreams":[Landroid/content/ComponentName;
    :try_start_6
    iget-object v1, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 149
    if-eqz p1, :cond_12

    move-object v3, v0

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 148
    :goto_13
    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 152
    goto :goto_1b

    .line 150
    :catch_17
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 153
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public blacklist setDevicePostured(Z)V
    .registers 4
    .param p1, "isPostured"    # Z

    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->setDevicePostured(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 253
    nop

    .line 254
    return-void

    .line 251
    :catch_7
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDreamIsObscured(Z)V
    .registers 4
    .param p1, "isObscured"    # Z

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->setDreamIsObscured(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 238
    nop

    .line 239
    return-void

    .line 236
    :catch_7
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDreamOverlay(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "dreamOverlayComponent"    # Landroid/content/ComponentName;

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->registerDreamOverlayService(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 189
    goto :goto_a

    .line 187
    :catch_6
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setScreensaverEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->setScreensaverEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 78
    goto :goto_a

    .line 76
    :catch_6
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setSystemDreamComponent(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "dreamComponent"    # Landroid/content/ComponentName;

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->setSystemDreamComponent(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_7
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startDream()V
    .registers 2

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 114
    goto :goto_a

    .line 112
    :catch_6
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist stopDream()V
    .registers 2

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 131
    goto :goto_a

    .line 129
    :catch_6
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
