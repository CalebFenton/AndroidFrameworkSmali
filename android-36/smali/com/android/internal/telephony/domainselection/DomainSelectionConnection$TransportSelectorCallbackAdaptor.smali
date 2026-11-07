.class final Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;
.super Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;
.source "DomainSelectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransportSelectorCallbackAdaptor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$dv79IhTUC_1g0XnXbKbtXfz1pPs(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->lambda$onWwanSelectedAsync$0(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWwanSelectedAsyncInternal(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->onWwanSelectedAsyncInternal(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

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

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$onWwanSelectedAsync$0(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->onWwanSelectedAsyncInternal(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    return-void
.end method

.method private blacklist onWwanSelectedAsyncInternal(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 168
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 169
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_4d

    .line 171
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_12

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onWwanSelected()V

    .line 174
    :try_start_1a
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmWwanSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/IWwanSelectorCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/ITransportSelectorResultCallback;->onCompleted(Lcom/android/internal/telephony/IWwanSelectorCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWwanSelectedAsync executor exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 180
    :try_start_42
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mwaitForServiceBinding(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 181
    monitor-exit p1

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw p0

    .line 171
    :goto_4d
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_12

    throw p0
.end method


# virtual methods
.method public blacklist onCreated(Lcom/android/internal/telephony/IDomainSelector;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fputmDomainSelector(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/IDomainSelector;)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    if-eqz v1, :cond_1d

    .line 117
    :try_start_15
    invoke-interface {p1}, Lcom/android/internal/telephony/IDomainSelector;->finishSelection()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_24

    .line 121
    :catch_1b
    :goto_1b
    :try_start_1b
    monitor-exit v0

    return-void

    .line 123
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onCreated()V

    .line 124
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_19

    throw p0
.end method

.method public blacklist onSelectionTerminated(I)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 188
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 189
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_31

    .line 191
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onSelectionTerminated(I)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v1, 0x2

    .line 193
    invoke-static {p1, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 194
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mdispose(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    .line 196
    :cond_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_12

    throw p0
.end method

.method public blacklist onWlanSelected(Z)V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 131
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_21

    .line 133
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$msetState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)V

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onWlanSelected(Z)V

    .line 135
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_12

    throw p0
.end method

.method public blacklist onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 142
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_63

    .line 144
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmWwanSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/IWwanSelectorCallback;

    move-result-object v1

    if-nez v1, :cond_29

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    new-instance v3, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;

    iget-object v4, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$WwanSelectorCallbackAdaptor;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection-IA;)V

    invoke-static {v1, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fputmWwanSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Lcom/android/internal/telephony/IWwanSelectorCallback;)V

    .line 147
    :cond_29
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmIsTestMode(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmSelectorType(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)I

    move-result v1

    if-eq v1, v2, :cond_42

    goto :goto_50

    .line 154
    :cond_42
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_61

    .line 149
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->initHandler()V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    new-instance v2, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    :goto_61
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_12

    throw p0
.end method
