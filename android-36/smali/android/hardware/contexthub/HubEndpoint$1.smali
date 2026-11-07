.class Landroid/hardware/contexthub/HubEndpoint$1;
.super Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/contexthub/HubEndpoint;


# direct methods
.method public static synthetic blacklist $r8$lambda$WDKl2F8IpddfwlxwBCm8X8FXrt0(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wgr7HfV80R43MKHm3AygViFSD-M(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YEFeKd02U6OLgKkDFA207DPz-qo(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fcciXbBnQxMabvDoOIyXX7spePM(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gIE-glYnkToYq9p5Ej6kxJdMhQ4(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpoint;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/contexthub/HubEndpoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 12
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 276
    :try_start_7
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointSession;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_71

    .line 278
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-eqz v0, :cond_34

    .line 279
    :try_start_15
    const-string v2, "HubEndpoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionOpenRequestResult: session already exists, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    return-void

    .line 297
    .end local v0    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    :catchall_2f
    move-exception v0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    goto :goto_75

    .line 286
    .restart local v0    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    :cond_34
    :try_start_34
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v3}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v5
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_71

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "sessionId":I
    .end local p2    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p3    # "serviceDescriptor":Ljava/lang/String;
    .local v3, "sessionId":I
    .local v6, "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .local v7, "serviceDescriptor":Ljava/lang/String;
    :try_start_41
    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 294
    .end local v0    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    .local v2, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    new-instance p1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, v3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 296
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_77

    .line 300
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    .line 301
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 302
    move-object p1, v2

    .line 303
    .local p1, "finalActiveSession":Landroid/hardware/contexthub/HubEndpointSession;
    iget-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    .end local p1    # "finalActiveSession":Landroid/hardware/contexthub/HubEndpointSession;
    :cond_70
    return-void

    .line 297
    .end local v2    # "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    .end local v3    # "sessionId":I
    .end local v6    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .local p1, "sessionId":I
    .restart local p2    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p3    # "serviceDescriptor":Ljava/lang/String;
    :catchall_71
    move-exception v0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "sessionId":I
    .end local p2    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p3    # "serviceDescriptor":Ljava/lang/String;
    .restart local v3    # "sessionId":I
    .restart local v6    # "initiator":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    :goto_75
    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_77

    throw v0

    :catchall_77
    move-exception v0

    goto :goto_75
.end method

.method private blacklist getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;
    .registers 4
    .param p1, "sessionId"    # I

    .line 224
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_7
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubEndpointSession;

    monitor-exit v0

    return-object v1

    .line 226
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V
    .registers 5
    .param p1, "consumer"    # Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;

    .line 322
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_17

    .line 328
    :catch_a
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_18

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "HubEndpoint"

    const-string v2, "IllegalStateException while calling callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_17
    nop

    .line 331
    :goto_18
    return-void
.end method

.method private blacklist invokeCallbackFinished()V
    .registers 2

    .line 317
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 318
    return-void
.end method

.method static synthetic blacklist lambda$acceptSession$5(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 2
    .param p0, "sessionId"    # I
    .param p1, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSessionRequestComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 3
    .param p1, "finalActiveSession"    # Landroid/hardware/contexthub/HubEndpointSession;

    .line 304
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$invokeCallbackFinished$8(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 1
    .param p0, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->onCallbackFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .registers 5
    .param p1, "activeSession"    # Landroid/hardware/contexthub/HubEndpointSession;
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "sessionId"    # I

    .line 217
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointMessageCallback;->onMessageReceived(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;)V

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    .line 219
    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;II)V
    .registers 6
    .param p1, "activeSession"    # Landroid/hardware/contexthub/HubEndpointSession;
    .param p2, "reason"    # I
    .param p3, "sessionId"    # I

    .line 189
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionClosed(Landroid/hardware/contexthub/HubEndpointSession;I)V

    .line 192
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 193
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_13
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 196
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 197
    return-void

    .line 195
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private synthetic blacklist lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 3
    .param p1, "activeSession"    # Landroid/hardware/contexthub/HubEndpointSession;

    .line 170
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    .line 171
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 172
    return-void
.end method

.method private synthetic blacklist lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    .line 148
    invoke-interface {v0, p2, p3}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpenRequest(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;

    move-result-object v0

    .line 144
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$rejectSession$7(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 3
    .param p0, "sessionId"    # I
    .param p1, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMessageDeliveryStatus$4(ILandroid/hardware/contexthub/HubMessage;BLandroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 5
    .param p0, "sessionId"    # I
    .param p1, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p2, "errorCode"    # B
    .param p3, "callback"    # Landroid/hardware/contexthub/IContextHubEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    nop

    .line 236
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v0

    .line 234
    invoke-interface {p3, p0, v0, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessageDeliveryStatus(IIB)V

    return-void
.end method

.method private blacklist processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/hardware/contexthub/HubEndpointSessionResult;

    .line 247
    if-eqz p4, :cond_43

    .line 252
    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 253
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    goto :goto_3f

    .line 255
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was rejected, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "HubEndpoint"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    .line 266
    :goto_3f
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 267
    return-void

    .line 248
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HubEndpointSessionResult shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist rejectSession(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 309
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 314
    return-void
.end method

.method private blacklist sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "errorCode"    # B

    .line 231
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 232
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;-><init>(ILandroid/hardware/contexthub/HubMessage;B)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 239
    :cond_e
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 240
    return-void
.end method


# virtual methods
.method public blacklist onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 207
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-nez v0, :cond_1e

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: session not active, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1e
    if-eqz v0, :cond_38

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_38

    .line 215
    :cond_29
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3c

    .line 212
    :cond_38
    :goto_38
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    .line 221
    :goto_3c
    return-void
.end method

.method public blacklist onSessionClosed(II)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 181
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-nez v0, :cond_1e

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionClosed: session not active, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1e
    if-eqz v0, :cond_37

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 187
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 199
    :cond_37
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 201
    :goto_3a
    return-void
.end method

.method public blacklist onSessionOpenComplete(I)V
    .registers 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 158
    .local v0, "activeSession":Landroid/hardware/contexthub/HubEndpointSession;
    if-nez v0, :cond_1f

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionOpenComplete: no pending session open request? id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 164
    :cond_1f
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    .line 167
    :goto_22
    if-eqz v0, :cond_3b

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 168
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 174
    :cond_3b
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 176
    :goto_3e
    return-void
.end method

.method public blacklist onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 126
    .local v0, "sessionExists":Z
    :goto_9
    const-string v1, "HubEndpoint"

    if-eqz v0, :cond_23

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionOpenRequest: session already exists, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_23
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v2

    if-nez v2, :cond_38

    .line 133
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "onSessionOpenRequest: failed to open session, no lifecycle callback attached"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    .line 141
    :cond_38
    if-nez v0, :cond_51

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 142
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_54

    .line 151
    :cond_51
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 153
    :goto_54
    return-void
.end method
