.class Landroid/adservices/topics/TopicsManager$1;
.super Landroid/adservices/topics/IGetTopicsCallback$Stub;
.source "TopicsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/topics/TopicsManager;->getTopics(Landroid/adservices/topics/GetTopicsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/topics/TopicsManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$EZoCw1C4gprGvWjQL7rOHGcdRGI(Landroid/adservices/topics/TopicsManager$1;Landroid/adservices/topics/GetTopicsResult;Landroid/os/OutcomeReceiver;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/adservices/topics/TopicsManager$1;->lambda$onResult$0(Landroid/adservices/topics/GetTopicsResult;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/topics/TopicsManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/topics/TopicsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Landroid/adservices/topics/TopicsManager$1;->this$0:Landroid/adservices/topics/TopicsManager;

    iput-object p2, p0, Landroid/adservices/topics/TopicsManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/topics/TopicsManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/topics/IGetTopicsCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onFailure$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 218
    nop

    .line 219
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 218
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Landroid/adservices/topics/GetTopicsResult;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "resultParcel"    # Landroid/adservices/topics/GetTopicsResult;
    .param p2, "callback"    # Landroid/os/OutcomeReceiver;

    .line 203
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    iget-object v0, p0, Landroid/adservices/topics/TopicsManager$1;->this$0:Landroid/adservices/topics/TopicsManager;

    invoke-static {v0, p1}, Landroid/adservices/topics/TopicsManager;->-$$Nest$mbuildGetTopicsResponse(Landroid/adservices/topics/TopicsManager;Landroid/adservices/topics/GetTopicsResult;)Landroid/adservices/topics/GetTopicsResponse;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_18

    .line 207
    :cond_10
    nop

    .line 208
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 207
    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 211
    :goto_18
    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 5
    .param p1, "resultCode"    # I

    .line 216
    iget-object v0, p0, Landroid/adservices/topics/TopicsManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/topics/TopicsManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/topics/TopicsManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/topics/TopicsManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/topics/GetTopicsResult;)V
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/topics/GetTopicsResult;

    .line 201
    iget-object v0, p0, Landroid/adservices/topics/TopicsManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/topics/TopicsManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/topics/TopicsManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Landroid/adservices/topics/TopicsManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/topics/TopicsManager$1;Landroid/adservices/topics/GetTopicsResult;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method
