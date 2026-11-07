.class Landroid/service/appprediction/AppPredictionService$1;
.super Landroid/service/appprediction/IPredictionService$Stub;
.source "AppPredictionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/AppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/appprediction/AppPredictionService;


# direct methods
.method public static synthetic blacklist $r8$lambda$6jiocxmfpkMhouurJIFDr1RsclQ(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoDestroyPredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6junSzeymRd_a1n7cKejGU6kYng(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoUnregisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8CvUGdcr1h_Hjak41c0jqvo3Fx8(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoCreatePredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NLxfEh0EGXiVFJFEuYHL6BieY8w(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoRegisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TTb3be2-7_ua2AJsyfBD4uMRZpw(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoRequestPredictionUpdate(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/appprediction/AppPredictionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/appprediction/AppPredictionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-direct {p0}, Landroid/service/appprediction/IPredictionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 89
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 90
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method

.method public blacklist notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 8
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "launchLocation"    # Ljava/lang/String;
    .param p3, "targetIds"    # Landroid/content/pm/ParceledListSlice;

    .line 97
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 100
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public blacklist onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 6
    .param p1, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 82
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda8;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 83
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public blacklist onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 5
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 137
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 138
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public blacklist registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 115
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 116
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method public blacklist requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 5
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 130
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 131
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public blacklist requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V
    .registers 8
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;

    .line 146
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    new-instance v3, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Landroid/service/appprediction/AppPredictionService$RemoteCallbackWrapper;-><init>(Landroid/os/IRemoteCallback;Ljava/util/function/Consumer;)V

    .line 147
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void
.end method

.method public blacklist sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .registers 11
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 106
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 108
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    new-instance v6, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    const/4 v3, 0x0

    invoke-direct {v6, p3, v3}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;-><init>(Landroid/app/prediction/IPredictionCallback;Ljava/util/function/Consumer;)V

    .line 107
    const/4 v5, 0x0

    move-object v3, p1

    .end local p1    # "sessionId":Landroid/app/prediction/AppPredictionSessionId;
    .local v3, "sessionId":Landroid/app/prediction/AppPredictionSessionId;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public blacklist unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 123
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    .line 124
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method
