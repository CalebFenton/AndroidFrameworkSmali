.class public final Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;
.super Landroid/hardware/lights/LightsManager$LightsSession;
.source "SystemLightsManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/SystemLightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemLightsSession"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mClosed:Z

.field final synthetic blacklist this$0:Landroid/hardware/lights/SystemLightsManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/lights/SystemLightsManager;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/lights/SystemLightsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-direct {p0}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>()V

    .line 139
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    .line 147
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "SystemLightsSession.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/lights/SystemLightsManager;Landroid/hardware/lights/SystemLightsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;-><init>(Landroid/hardware/lights/SystemLightsManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 188
    iget-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    if-nez v0, :cond_20

    .line 190
    :try_start_4
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-static {v0}, Landroid/hardware/lights/SystemLightsManager;->-$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/lights/ILightsManager;->closeSession(Landroid/os/IBinder;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    .line 192
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 195
    goto :goto_20

    .line 193
    :catch_1a
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 205
    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 207
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    nop

    .line 209
    return-void

    .line 207
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    throw v0
.end method

.method public whitelist requestLights(Landroid/hardware/lights/LightsRequest;)V
    .registers 8
    .param p1, "request"    # Landroid/hardware/lights/LightsRequest;

    .line 162
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    if-nez v0, :cond_57

    .line 165
    :try_start_7
    invoke-virtual {p1}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "stateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 168
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 169
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 171
    .end local v3    # "i":I
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/lights/LightState;

    .line 172
    .local v3, "states":[Landroid/hardware/lights/LightState;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 173
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/LightState;

    aput-object v5, v3, v4

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 175
    .end local v4    # "i":I
    :cond_43
    iget-object v4, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-static {v4}, Landroid/hardware/lights/SystemLightsManager;->-$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/hardware/lights/ILightsManager;->setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_50} :catch_51

    .line 178
    .end local v0    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "stateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    .end local v2    # "ids":[I
    .end local v3    # "states":[Landroid/hardware/lights/LightState;
    goto :goto_57

    .line 176
    :catch_51
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    return-void
.end method
