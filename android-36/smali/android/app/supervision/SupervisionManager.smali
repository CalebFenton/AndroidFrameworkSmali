.class public Landroid/app/supervision/SupervisionManager;
.super Ljava/lang/Object;
.source "SupervisionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist ACTION_DISABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.DISABLE_SUPERVISION"

.field public static final blacklist ACTION_ENABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.ENABLE_SUPERVISION"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/supervision/ISupervisionManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/app/supervision/ISupervisionManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/supervision/ISupervisionManager;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    .line 85
    return-void
.end method


# virtual methods
.method public blacklist createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_1e

    .line 108
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "result":Landroid/content/Intent;
    if-eqz v0, :cond_17

    .line 110
    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 110
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 113
    :cond_17
    return-object v0

    .line 114
    .end local v0    # "result":Landroid/content/Intent;
    :catch_18
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveSupervisionAppPackage()Ljava/lang/String;
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_17

    .line 190
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/supervision/ISupervisionManager;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 191
    :catch_11
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isSupervisionEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupervisionEnabledForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 142
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_11

    .line 144
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1}, Landroid/app/supervision/ISupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 145
    :catch_b
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSupervisionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 160
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/supervision/SupervisionManager;->setSupervisionEnabledForUser(IZ)V

    .line 161
    return-void
.end method

.method public blacklist setSupervisionEnabledForUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 170
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_10

    .line 172
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1, p2}, Landroid/app/supervision/ISupervisionManager;->setSupervisionEnabledForUser(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 175
    goto :goto_10

    .line 173
    :catch_a
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist shouldAllowBypassingSupervisionRoleQualification()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_11

    .line 211
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->shouldAllowBypassingSupervisionRoleQualification()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 212
    :catch_b
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
