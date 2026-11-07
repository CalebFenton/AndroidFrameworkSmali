.class public abstract Landroid/service/games/GameSessionService;
.super Landroid/app/Service;
.source "GameSessionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_GAME_SESSION_SERVICE:Ljava/lang/String; = "android.service.games.action.GAME_SESSION_SERVICE"


# instance fields
.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final blacklist mInterface:Landroid/service/games/IGameSessionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoCreate(Landroid/service/games/GameSessionService;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/games/GameSessionService;->doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/service/games/GameSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSessionService$1;-><init>(Landroid/service/games/GameSessionService;)V

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    return-void
.end method

.method private blacklist doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 13
    .param p1, "gameSessionController"    # Landroid/service/games/IGameSessionController;
    .param p2, "createGameSessionRequest"    # Landroid/service/games/CreateGameSessionRequest;
    .param p3, "gameSessionViewHostConfiguration"    # Landroid/service/games/GameSessionViewHostConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/games/IGameSessionController;",
            "Landroid/service/games/CreateGameSessionRequest;",
            "Landroid/service/games/GameSessionViewHostConfiguration;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/CreateGameSessionResult;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p4, "createGameSessionResultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/CreateGameSessionResult;>;"
    invoke-virtual {p0, p2}, Landroid/service/games/GameSessionService;->onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;

    move-result-object v0

    .line 111
    .local v0, "gameSession":Landroid/service/games/GameSession;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v2, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    .line 114
    .local v7, "display":Landroid/view/Display;
    if-nez v7, :cond_2f

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 118
    return-void

    .line 123
    :cond_2f
    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p0, v7, v1, v2}, Landroid/service/games/GameSessionService;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    .line 125
    .local v3, "windowContext":Landroid/content/Context;
    new-instance v4, Landroid/view/SurfaceControlViewHost;

    new-instance v1, Landroid/window/InputTransferToken;

    invoke-direct {v1}, Landroid/window/InputTransferToken;-><init>()V

    const-string v2, "GameSessionService"

    invoke-direct {v4, v3, v7, v1, v2}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 129
    .local v4, "surfaceControlViewHost":Landroid/view/SurfaceControlViewHost;
    nop

    .line 131
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionRequest;->getTaskId()I

    move-result v2

    iget v5, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iget v6, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    .line 129
    move-object v1, p1

    .end local p1    # "gameSessionController":Landroid/service/games/IGameSessionController;
    .local v1, "gameSessionController":Landroid/service/games/IGameSessionController;
    invoke-virtual/range {v0 .. v6}, Landroid/service/games/GameSession;->attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V

    .line 137
    new-instance p1, Landroid/service/games/CreateGameSessionResult;

    iget-object v2, v0, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    .line 139
    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v5

    invoke-direct {p1, v2, v5}, Landroid/service/games/CreateGameSessionResult;-><init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 141
    .local p1, "createGameSessionResult":Landroid/service/games/CreateGameSessionResult;
    invoke-virtual {p4, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0}, Landroid/service/games/GameSession;->doCreate()V

    .line 144
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 95
    return-object v0

    .line 98
    :cond_4
    const-string v1, "android.service.games.action.GAME_SESSION_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 99
    return-object v0

    .line 102
    :cond_11
    iget-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    invoke-interface {v0}, Landroid/service/games/IGameSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSessionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 89
    return-void
.end method

.method public abstract whitelist onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;
.end method
