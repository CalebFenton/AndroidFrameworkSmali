.class Landroid/service/search/SearchUiService$1;
.super Landroid/service/search/ISearchUiService$Stub;
.source "SearchUiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/SearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/search/SearchUiService;


# direct methods
.method public static synthetic blacklist $r8$lambda$DgDdDD0v_6ADkOaF0zArX5Cajdw(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/search/SearchUiService;->-$$Nest$mdoRegisterEmptyQueryResultUpdateCallback(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VKEQnd2qSLkBnC-kj55OgoYB_8E(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/search/SearchUiService;->-$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lvYcGQ90obahZ92enhqiHDQJ5S4(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/search/SearchUiService;->-$$Nest$mdoUnregisterEmptyQueryResultUpdateCallback(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/search/SearchUiService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/search/SearchUiService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-direct {p0}, Landroid/service/search/ISearchUiService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 6
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 81
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 82
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 86
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method

.method public blacklist onDestroy(Landroid/app/search/SearchSessionId;)V
    .registers 5
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 124
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 125
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method public blacklist onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 7
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "query"    # Landroid/app/search/Query;
    .param p3, "event"    # Landroid/app/search/SearchTargetEvent;

    .line 101
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 102
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method

.method public blacklist onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 9
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "callback"    # Landroid/app/search/ISearchCallback;

    .line 93
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    new-instance v3, Landroid/service/search/SearchUiService$CallbackWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v4}, Landroid/service/search/SearchUiService$CallbackWrapper;-><init>(Landroid/app/search/ISearchCallback;Ljava/util/function/Consumer;)V

    .line 94
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public blacklist onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;

    .line 109
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 110
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method public blacklist onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;

    .line 117
    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    .line 118
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method
