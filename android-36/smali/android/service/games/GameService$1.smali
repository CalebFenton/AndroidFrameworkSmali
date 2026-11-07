.class Landroid/service/games/GameService$1;
.super Landroid/service/games/IGameService$Stub;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/games/GameService;


# direct methods
.method public static synthetic blacklist $r8$lambda$6M6LzWANVM8wqcjVe1HJ-OTFdpA(Landroid/service/games/GameService;Landroid/service/games/IGameServiceController;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/games/GameService;->-$$Nest$mdoOnConnected(Landroid/service/games/GameService;Landroid/service/games/IGameServiceController;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/games/GameService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/games/GameService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-direct {p0}, Landroid/service/games/IGameService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist connected(Landroid/service/games/IGameServiceController;)V
    .registers 5
    .param p1, "gameServiceController"    # Landroid/service/games/IGameServiceController;

    .line 97
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method public blacklist disconnected()V
    .registers 4

    .line 103
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameService$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist gameStarted(Landroid/service/games/GameStartedEvent;)V
    .registers 5
    .param p1, "gameStartedEvent"    # Landroid/service/games/GameStartedEvent;

    .line 109
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method
