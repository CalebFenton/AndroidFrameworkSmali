.class final Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;
.super Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;
.source "DomainSelectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WwanSelectorCallbackAdaptor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$ANokADSfIrsmk0j_9kIZeqQCrMs(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->lambda$onCancel$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kx9cJbl1RhtlTkQs9ZB3ygeFNBA(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;[IIZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->lambda$onRequestEmergencyNetworkScan$0([IIZ)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCancel$1()V
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onCancel()V

    return-void
.end method

.method private synthetic blacklist lambda$onRequestEmergencyNetworkScan$0([IIZ)V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 217
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onRequestEmergencyNetworkScan([IIZ)V

    .line 219
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method


# virtual methods
.method public blacklist onCancel()V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    if-nez v1, :cond_17

    goto :goto_23

    .line 242
    :cond_17
    new-instance v2, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 240
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    .line 245
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public blacklist onDomainSelected(IZ)V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 228
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 229
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_21

    .line 231
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$msetState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)V

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onDomainSelected(IZ)V

    .line 233
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_12

    throw p0
.end method

.method public blacklist onRequestEmergencyNetworkScan([IIZLcom/android/internal/telephony/IWwanSelectorResultCallback;)V
    .registers 8

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 211
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_2c

    .line 213
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1, p4}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fputmResultCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/IWwanSelectorResultCallback;)V

    .line 214
    iget-object p4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p4}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->initHandler()V

    .line 215
    iget-object p4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    iget-object p4, p4, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    new-instance v1, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;[IIZ)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_12

    throw p0
.end method
