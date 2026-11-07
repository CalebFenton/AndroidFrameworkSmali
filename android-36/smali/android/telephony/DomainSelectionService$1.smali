.class Landroid/telephony/DomainSelectionService$1;
.super Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/DomainSelectionService;


# direct methods
.method public static synthetic blacklist $r8$lambda$DPN0qZLaABA8Ko8nJM0nfoJHoGY(Landroid/telephony/DomainSelectionService$1;Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/DomainSelectionService$1;->lambda$selectDomain$0(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PXCiU_5b3xBLPZsTB2J_5ra88j8(Landroid/telephony/DomainSelectionService$1;IILandroid/telephony/ServiceState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/DomainSelectionService$1;->lambda$updateServiceState$1(IILandroid/telephony/ServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PZXfGCzJ0va8Zi325jnKRLzxMKo(Landroid/telephony/DomainSelectionService$1;IILandroid/telephony/BarringInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/DomainSelectionService$1;->lambda$updateBarringInfo$2(IILandroid/telephony/BarringInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/DomainSelectionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/DomainSelectionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 792
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-direct {p0}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$selectDomain$0(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    .registers 7
    .param p1, "attr"    # Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .param p2, "callback"    # Lcom/android/internal/telephony/ITransportSelectorCallback;

    .line 797
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    new-instance v1, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v3, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    .line 798
    invoke-virtual {v3}, Landroid/telephony/DomainSelectionService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;-><init>(Landroid/telephony/DomainSelectionService;Lcom/android/internal/telephony/ITransportSelectorCallback;Ljava/util/concurrent/Executor;)V

    .line 797
    invoke-virtual {v0, p1, v1}, Landroid/telephony/DomainSelectionService;->onDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Landroid/telephony/TransportSelectorCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateBarringInfo$2(IILandroid/telephony/BarringInfo;)V
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "info"    # Landroid/telephony/BarringInfo;

    .line 814
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/DomainSelectionService;->onBarringInfoUpdated(IILandroid/telephony/BarringInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateServiceState$1(IILandroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "serviceState"    # Landroid/telephony/ServiceState;

    .line 806
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/DomainSelectionService;->onServiceStateUpdated(IILandroid/telephony/ServiceState;)V

    return-void
.end method


# virtual methods
.method public blacklist selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    .registers 7
    .param p1, "attr"    # Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .param p2, "callback"    # Lcom/android/internal/telephony/ITransportSelectorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-virtual {v0}, Landroid/telephony/DomainSelectionService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/DomainSelectionService$1;Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V

    const-string v2, "DomainSelectionService"

    const-string/jumbo v3, "onDomainSelection"

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/DomainSelectionService;->-$$Nest$smexecuteMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public blacklist updateBarringInfo(IILandroid/telephony/BarringInfo;)V
    .registers 9
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "info"    # Landroid/telephony/BarringInfo;

    .line 813
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-virtual {v1}, Landroid/telephony/DomainSelectionService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/DomainSelectionService$1;IILandroid/telephony/BarringInfo;)V

    const-string v3, "DomainSelectionService"

    const-string/jumbo v4, "onBarringInfoUpdated"

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public blacklist updateServiceState(IILandroid/telephony/ServiceState;)V
    .registers 9
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "serviceState"    # Landroid/telephony/ServiceState;

    .line 805
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$1;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-virtual {v1}, Landroid/telephony/DomainSelectionService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/DomainSelectionService$1;IILandroid/telephony/ServiceState;)V

    const-string v3, "DomainSelectionService"

    const-string/jumbo v4, "onServiceStateUpdated"

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method
