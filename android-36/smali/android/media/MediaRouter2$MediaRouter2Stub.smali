.class Landroid/media/MediaRouter2$MediaRouter2Stub;
.super Landroid/media/IMediaRouter2$Stub;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRouter2Stub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic blacklist $r8$lambda$TWm5w28hKZZDi83errLgPqcKrD4(Landroid/media/MediaRouter2;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyDeviceSuggestionsUpdated(Landroid/media/MediaRouter2;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2534
    iput-object p1, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Landroid/media/IMediaRouter2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "suggestingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 2583
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2584
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2583
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2589
    return-void
.end method

.method public blacklist notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p2, "currentSystemSessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2538
    .local p1, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2539
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2538
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2544
    return-void
.end method

.method public blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2548
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2549
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2548
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2550
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 2554
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2558
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2555
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2554
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2560
    return-void
.end method

.method public blacklist notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 2564
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2565
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2564
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2569
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 2573
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2574
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2573
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2578
    return-void
.end method

.method public blacklist requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 9
    .param p1, "managerRequestId"    # J
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 2594
    iget-object v0, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$MediaRouter2Stub;->this$0:Landroid/media/MediaRouter2;

    .line 2600
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2595
    invoke-static {v1, v2, p3, p4, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2594
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2601
    return-void
.end method
