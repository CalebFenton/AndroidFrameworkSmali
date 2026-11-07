.class Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;
.super Lcom/android/internal/telephony/ITransportSelectorResultCallback$Stub;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ITransportSelectorResultCallbackAdapter"
.end annotation


# instance fields
.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/WwanSelectorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$1:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$JI8W9zcryOk7qNqdUQ7dRpy5Hjg(Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;Landroid/telephony/WwanSelectorCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->lambda$onCompleted$0(Landroid/telephony/WwanSelectorCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/WwanSelectorCallback;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 610
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/telephony/WwanSelectorCallback;>;"
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->this$1:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;

    invoke-direct {p0}, Lcom/android/internal/telephony/ITransportSelectorResultCallback$Stub;-><init>()V

    .line 611
    iput-object p2, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->mConsumer:Ljava/util/function/Consumer;

    .line 612
    iput-object p3, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 613
    return-void
.end method

.method private synthetic blacklist lambda$onCompleted$0(Landroid/telephony/WwanSelectorCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/WwanSelectorCallback;

    .line 621
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onCompleted(Lcom/android/internal/telephony/IWwanSelectorCallback;)V
    .registers 8
    .param p1, "cb"    # Lcom/android/internal/telephony/IWwanSelectorCallback;

    .line 617
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->mConsumer:Ljava/util/function/Consumer;

    if-nez v0, :cond_5

    return-void

    .line 619
    :cond_5
    new-instance v0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->this$1:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1, v2}, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;-><init>(Landroid/telephony/DomainSelectionService;Lcom/android/internal/telephony/IWwanSelectorCallback;Ljava/util/concurrent/Executor;)V

    .line 620
    .local v0, "callback":Landroid/telephony/WwanSelectorCallback;
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->this$1:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;

    iget-object v1, v1, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;Landroid/telephony/WwanSelectorCallback;)V

    const-string v4, "TransportSelectorCallbackWrapper"

    const-string/jumbo v5, "onWwanSelectedAsync-Completed"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method
