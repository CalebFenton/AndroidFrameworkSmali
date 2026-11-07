.class public abstract Landroid/service/smartspace/SmartspaceService;
.super Landroid/app/Service;
.source "SmartspaceService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.smartspace.SmartspaceService"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartspaceService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/smartspace/ISmartspaceService;

.field private final blacklist mSessionCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$X2GHqjIaYN5npavClfuuWaFRXvQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$0(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$umKlkaFhpKT5zx747Db8USoKIyQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->lambda$doRegisterSmartspaceUpdates$1(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/service/smartspace/SmartspaceService$1;

    invoke-direct {v0, p0}, Landroid/service/smartspace/SmartspaceService$1;-><init>(Landroid/service/smartspace/SmartspaceService;)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    return-void
.end method

.method private blacklist doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5
    .param p1, "config"    # Landroid/app/smartspace/SmartspaceConfig;
    .param p2, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 150
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 152
    return-void
.end method

.method private blacklist doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 250
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 252
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 253
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    if-eqz v0, :cond_15

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 254
    :cond_15
    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 255
    return-void
.end method

.method private blacklist doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 7
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 178
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 179
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    if-nez v0, :cond_23

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 184
    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object v1

    .line 185
    .local v1, "wrapper":Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    if-nez v1, :cond_36

    .line 186
    new-instance v2, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    new-instance v3, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;)V

    invoke-direct {v2, p2, v3}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;-><init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_36
    return-void
.end method

.method private blacklist doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;

    .line 213
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 214
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 215
    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 217
    :cond_13
    return-void
.end method

.method private blacklist doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;

    .line 198
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 199
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    if-nez v0, :cond_23

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 204
    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object v1

    .line 205
    .local v1, "wrapper":Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    invoke-direct {p0, v0, v1}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    .line 206
    return-void
.end method

.method private blacklist findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    .registers 5
    .param p2, "callback"    # Landroid/app/smartspace/ISmartspaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ")",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;"
        }
    .end annotation

    .line 224
    .local p1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 225
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v1, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    return-object v1

    .line 224
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 229
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$doRegisterSmartspaceUpdates$0(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3
    .param p1, "callbacks"    # Ljava/util/ArrayList;
    .param p2, "callbackWrapper"    # Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method private synthetic blacklist lambda$doRegisterSmartspaceUpdates$1(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 5
    .param p1, "callbacks"    # Ljava/util/ArrayList;
    .param p2, "callbackWrapper"    # Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    .line 188
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3
    .param p2, "wrapper"    # Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    .line 234
    .local p1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    .line 237
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    .line 239
    return-void

    .line 235
    :cond_c
    :goto_c
    return-void
.end method


# virtual methods
.method public abstract whitelist notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 137
    const-string v0, "android.service.smartspace.SmartspaceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    invoke-interface {v0}, Landroid/service/smartspace/ISmartspaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 140
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.smartspace.SmartspaceService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartspaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method public abstract whitelist onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract whitelist onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public final whitelist updateSmartspaceTargets(Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/List;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/smartspace/SmartspaceSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/SmartspaceTarget;>;"
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 268
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/service/smartspace/SmartspaceService$CallbackWrapper;>;"
    if-eqz v0, :cond_1e

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    .line 270
    .local v2, "callback":Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    invoke-virtual {v2, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    .line 271
    .end local v2    # "callback":Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    goto :goto_e

    .line 273
    :cond_1e
    return-void
.end method
