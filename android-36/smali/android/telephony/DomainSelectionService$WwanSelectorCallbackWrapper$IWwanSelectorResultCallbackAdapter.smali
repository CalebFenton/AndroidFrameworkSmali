.class Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;
.super Lcom/android/internal/telephony/IWwanSelectorResultCallback$Stub;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWwanSelectorResultCallbackAdapter"
.end annotation


# instance fields
.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/EmergencyRegistrationResult;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$1:Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$8shMOQAeZRytg9YA2G-78Av0J98(Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;Landroid/telephony/EmergencyRegistrationResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->lambda$onComplete$0(Landroid/telephony/EmergencyRegistrationResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
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
            "Landroid/telephony/EmergencyRegistrationResult;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 733
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/telephony/EmergencyRegistrationResult;>;"
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->this$1:Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;

    invoke-direct {p0}, Lcom/android/internal/telephony/IWwanSelectorResultCallback$Stub;-><init>()V

    .line 734
    iput-object p2, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->mConsumer:Ljava/util/function/Consumer;

    .line 735
    iput-object p3, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 736
    return-void
.end method

.method private synthetic blacklist lambda$onComplete$0(Landroid/telephony/EmergencyRegistrationResult;)V
    .registers 3
    .param p1, "result"    # Landroid/telephony/EmergencyRegistrationResult;

    .line 743
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(Landroid/telephony/EmergencyRegistrationResult;)V
    .registers 7
    .param p1, "result"    # Landroid/telephony/EmergencyRegistrationResult;

    .line 740
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->mConsumer:Ljava/util/function/Consumer;

    if-nez v0, :cond_5

    return-void

    .line 742
    :cond_5
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->this$1:Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;

    iget-object v0, v0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;Landroid/telephony/EmergencyRegistrationResult;)V

    const-string v3, "WwanSelectorCallbackWrapper"

    const-string/jumbo v4, "onScanComplete"

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    return-void
.end method
