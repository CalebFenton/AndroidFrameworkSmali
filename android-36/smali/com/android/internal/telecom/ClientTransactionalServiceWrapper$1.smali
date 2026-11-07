.class Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;
.super Lcom/android/internal/telecom/ICallEventCallback$Stub;
.source "ClientTransactionalServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist ON_ANSWER:Ljava/lang/String; = "onAnswer"

.field private static final blacklist ON_AVAILABLE_CALL_ENDPOINTS:Ljava/lang/String; = "onAvailableCallEndpointsChanged"

.field private static final blacklist ON_CALL_STREAMING_FAILED:Ljava/lang/String; = "onCallStreamingFailed"

.field private static final blacklist ON_DISCONNECT:Ljava/lang/String; = "onDisconnect"

.field private static final blacklist ON_EVENT:Ljava/lang/String; = "onEvent"

.field private static final blacklist ON_MUTE_STATE_CHANGED:Ljava/lang/String; = "onMuteStateChanged"

.field private static final blacklist ON_REQ_ENDPOINT_CHANGE:Ljava/lang/String; = "onRequestEndpointChange"

.field private static final blacklist ON_SET_ACTIVE:Ljava/lang/String; = "onSetActive"

.field private static final blacklist ON_SET_INACTIVE:Ljava/lang/String; = "onSetInactive"

.field private static final blacklist ON_STREAMING_STARTED:Ljava/lang/String; = "onStreamingStarted"

.field private static final blacklist ON_VIDEO_STATE_CHANGED:Ljava/lang/String; = "onVideoStateChanged"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$k8LeACEhoFu8n-DH0iIyKlZX1eI(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V
    .registers 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ackResultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hCEC: id=[%s], action=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/TransactionalCall;

    .line 163
    .local v1, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v1, :cond_74

    .line 165
    invoke-virtual {v1}, Lcom/android/internal/telecom/TransactionalCall;->getCallControlCallback()Landroid/telecom/CallControlCallback;

    move-result-object v5

    .line 167
    .local v5, "callback":Landroid/telecom/CallControlCallback;
    new-instance v6, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;

    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {v6, v0, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;Landroid/os/ResultReceiver;)V

    .line 170
    .local v6, "outcomeReceiverWrapper":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 172
    .local v9, "identity":J
    :try_start_2f
    invoke-virtual {v1}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_4d
    .catchall {:try_start_2f .. :try_end_35} :catchall_47

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v7, p4

    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "callId":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    .local v4, "action":Ljava/lang/String;
    .local v7, "args":[Ljava/lang/Object;
    .local v8, "callId":Ljava/lang/String;
    :try_start_39
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_44
    .catchall {:try_start_39 .. :try_end_3f} :catchall_6e

    .line 196
    nop

    :goto_40
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    goto :goto_77

    .line 193
    :catch_44
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .line 196
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v8    # "callId":Ljava/lang/String;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p4    # "args":[Ljava/lang/Object;
    :catchall_47
    move-exception v0

    move-object v4, p1

    move-object v8, p2

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "callId":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v7    # "args":[Ljava/lang/Object;
    .restart local v8    # "callId":Ljava/lang/String;
    goto :goto_70

    .line 193
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v8    # "callId":Ljava/lang/String;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p4    # "args":[Ljava/lang/Object;
    :catch_4d
    move-exception v0

    move-object v4, p1

    move-object v8, p2

    move-object v7, p4

    move-object p1, v0

    .line 194
    .end local p2    # "callId":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v7    # "args":[Ljava/lang/Object;
    .restart local v8    # "callId":Ljava/lang/String;
    .local p1, "e":Ljava/lang/Exception;
    :goto_52
    :try_start_52
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Telecom hit an exception while handling a CallEventCallback on an executor: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_6e

    .line 196
    nop

    .end local p1    # "e":Ljava/lang/Exception;
    goto :goto_40

    :catchall_6e
    move-exception v0

    move-object p1, v0

    :goto_70
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw p1

    .line 163
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "callback":Landroid/telecom/CallControlCallback;
    .end local v6    # "outcomeReceiverWrapper":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v8    # "callId":Ljava/lang/String;
    .end local v9    # "identity":J
    .local p1, "action":Ljava/lang/String;
    .restart local p2    # "callId":Ljava/lang/String;
    .restart local p4    # "args":[Ljava/lang/Object;
    :cond_74
    move-object v4, p1

    move-object v8, p2

    move-object v7, p4

    .line 199
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "callId":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v7    # "args":[Ljava/lang/Object;
    .restart local v8    # "callId":Ljava/lang/String;
    :goto_77
    return-void
.end method

.method private synthetic blacklist lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/telecom/CallControlCallback;
    .param p3, "outcomeReceiverWrapper"    # Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "callId"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_66

    :cond_8
    goto :goto_3b

    :sswitch_9
    const-string v0, "onStreamingStarted"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_3c

    :sswitch_13
    const-string v0, "onAnswer"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_3c

    :sswitch_1d
    const-string v0, "onSetActive"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_3c

    :sswitch_27
    const-string v0, "onDisconnect"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_3c

    :sswitch_31
    const-string v0, "onSetInactive"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3c

    :goto_3b
    const/4 v0, -0x1

    :goto_3c
    packed-switch v0, :pswitch_data_7c

    goto :goto_65

    .line 189
    :pswitch_40
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onCallStreamingStarted(Ljava/util/function/Consumer;)V

    goto :goto_65

    .line 186
    :pswitch_44
    aget-object v0, p4, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0, p3}, Landroid/telecom/CallControlCallback;->onAnswer(ILjava/util/function/Consumer;)V

    .line 187
    goto :goto_65

    .line 181
    :pswitch_50
    aget-object v0, p4, v1

    check-cast v0, Landroid/telecom/DisconnectCause;

    invoke-interface {p2, v0, p3}, Landroid/telecom/CallControlCallback;->onDisconnect(Landroid/telecom/DisconnectCause;Ljava/util/function/Consumer;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0, p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 184
    goto :goto_65

    .line 178
    :pswitch_5d
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetInactive(Ljava/util/function/Consumer;)V

    .line 179
    goto :goto_65

    .line 175
    :pswitch_61
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetActive(Ljava/util/function/Consumer;)V

    .line 176
    nop

    .line 192
    :goto_65
    return-void

    :sswitch_data_66
    .sparse-switch
        -0x6b667c72 -> :sswitch_31
        -0x19454825 -> :sswitch_27
        0x1a612e9 -> :sswitch_1d
        0x3abf167d -> :sswitch_13
        0x615ea1be -> :sswitch_9
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5d
        :pswitch_50
        :pswitch_44
        :pswitch_40
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleEventCallback$1(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/telecom/CallEventCallback;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "onRequestEndpointChange"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3b

    :sswitch_12
    const-string v0, "onVideoStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_1c
    const-string v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_26
    const-string v0, "onCallStreamingFailed"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3b

    :sswitch_30
    const-string v0, "onMuteStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_8c

    goto :goto_74

    .line 298
    :pswitch_3f
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onCallStreamingFailed(I)V

    goto :goto_74

    .line 293
    :pswitch_4a
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->transactionalVideoState()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 294
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onVideoStateChanged(I)V

    goto :goto_74

    .line 290
    :pswitch_5b
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onMuteStateChanged(Z)V

    .line 291
    goto :goto_74

    .line 287
    :pswitch_66
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 288
    goto :goto_74

    .line 284
    :pswitch_6d
    move-object v0, p2

    check-cast v0, Landroid/telecom/CallEndpoint;

    invoke-interface {p1, v0}, Landroid/telecom/CallEventCallback;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 285
    nop

    .line 301
    :cond_74
    :goto_74
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        -0x7f3ee265 -> :sswitch_30
        -0x21a2eb5e -> :sswitch_26
        -0x62d5f62 -> :sswitch_1c
        0x22a474df -> :sswitch_12
        0x34696575 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_66
        :pswitch_5b
        :pswitch_4a
        :pswitch_3f
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onEvent$2(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/CallEventCallback;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 334
    invoke-interface {p0, p1, p2}, Landroid/telecom/CallEventCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method


# virtual methods
.method public blacklist handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 273
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hEC: [%s], callId=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 276
    .local v0, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v0, :cond_3c

    .line 277
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object v1

    .line 278
    .local v1, "callback":Landroid/telecom/CallEventCallback;
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 279
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 281
    .local v3, "identity":J
    :try_start_2b
    new-instance v5, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2, v1, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_37

    .line 303
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    goto :goto_3c

    .line 303
    :catchall_37
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    throw v5

    .line 306
    .end local v1    # "callback":Landroid/telecom/CallEventCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    :cond_3c
    :goto_3c
    return-void
.end method

.method public blacklist onAddCallControl(Ljava/lang/String;ILcom/android/internal/telecom/ICallControl;Landroid/telecom/CallException;)V
    .registers 9
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "callControl"    # Lcom/android/internal/telecom/ICallControl;
    .param p4, "transactionalException"    # Landroid/telecom/CallException;

    .line 204
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "oACC: id=[%s], code=[%d]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 207
    .local v0, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v0, :cond_43

    .line 208
    nop

    .line 209
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getPendingControl()Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 211
    .local v1, "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    if-nez p2, :cond_36

    .line 214
    new-instance v2, Landroid/telecom/CallControl;

    invoke-direct {v2, p1, p3}, Landroid/telecom/CallControl;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/ICallControl;)V

    .line 216
    .local v2, "control":Landroid/telecom/CallControl;
    invoke-interface {v1, v2}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/TransactionalCall;->setCallControl(Landroid/telecom/CallControl;)V

    .line 220
    .end local v2    # "control":Landroid/telecom/CallControl;
    goto :goto_42

    .line 221
    :cond_36
    invoke-interface {v1, p4}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 222
    iget-object v2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v1    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    :goto_42
    goto :goto_62

    .line 226
    :cond_43
    iget-object v1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oACC: TransactionalCall object not found for call w/ id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_62
    return-void
.end method

.method public blacklist onAnswer(Ljava/lang/String;ILandroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onAnswer"

    invoke-direct {p0, v1, p1, p3, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public blacklist onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p2, "endpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    const-string v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public blacklist onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "endpoint"    # Landroid/telecom/CallEndpoint;

    .line 254
    const-string v0, "onRequestEndpointChange"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public blacklist onCallStreamingFailed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 320
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "oCSF: id=[%s], reason=[%s]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "onCallStreamingFailed"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public blacklist onCallStreamingStarted(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStreamingStarted"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public blacklist onDisconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 249
    const-string v0, "onDisconnect"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public blacklist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 327
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 328
    .local v0, "call":Lcom/android/internal/telecom/TransactionalCall;
    if-eqz v0, :cond_2b

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object v1

    .line 330
    .local v1, "callback":Landroid/telecom/CallEventCallback;
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 331
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 333
    .local v3, "identity":J
    :try_start_1a
    new-instance v5, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p2, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 337
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    goto :goto_2b

    .line 337
    :catchall_26
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw v5

    .line 340
    .end local v1    # "callback":Landroid/telecom/CallEventCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "identity":J
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist onMuteStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isMuted"    # Z

    .line 264
    const-string v0, "onMuteStateChanged"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public blacklist onSetActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 233
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSetActive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public blacklist onSetInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 238
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSetInactive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public blacklist onVideoStateChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 269
    const-string v0, "onVideoStateChanged"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public blacklist removeCallFromTransactionalServiceWrapper(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 311
    return-void
.end method
