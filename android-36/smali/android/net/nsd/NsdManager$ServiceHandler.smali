.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/nsd/NsdManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1032
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 1033
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1034
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "s"    # Ljava/lang/String;

    .line 1069
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$1(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;I)V
    .registers 5
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;
    .param p2, "errorCode"    # I

    .line 1073
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1074
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->-$$Nest$smgetNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-interface {v0, v1, p2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$10(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ns"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 1119
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-interface {v0, p1, p2}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$11(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1124
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    move-object v1, p1

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$12(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ns"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 1129
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-interface {v0, p1, p2}, Landroid/net/nsd/NsdManager$ResolveListener;->onStopResolutionFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$13(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ns"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1134
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolutionStopped(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$14(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "errorCode"    # I

    .line 1139
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 1140
    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$ServiceInfoCallback;->onServiceInfoCallbackRegistrationFailed(I)V

    .line 1139
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$15(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1143
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    move-object v1, p1

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    .line 1144
    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$ServiceInfoCallback;->onServiceUpdated(Landroid/net/nsd/NsdServiceInfo;)V

    .line 1143
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$16(Ljava/lang/Object;)V
    .registers 2
    .param p0, "listener"    # Ljava/lang/Object;

    .line 1147
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    invoke-interface {v0}, Landroid/net/nsd/NsdManager$ServiceInfoCallback;->onServiceLost()V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$17(Ljava/lang/Object;)V
    .registers 2
    .param p0, "listener"    # Ljava/lang/Object;

    .line 1151
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 1152
    invoke-interface {v0}, Landroid/net/nsd/NsdManager$ServiceInfoCallback;->onServiceInfoCallbackUnregistered()V

    .line 1151
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$2(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1077
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-object v1, p1

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$3(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1081
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    move-object v1, p1

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$4(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;I)V
    .registers 5
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;
    .param p2, "errorCode"    # I

    .line 1088
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1089
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->-$$Nest$smgetNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-interface {v0, v1, p2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$5(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;

    .line 1093
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1094
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->-$$Nest$smgetNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$6(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ns"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 1098
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v0, p1, p2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$7(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1102
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    move-object v1, p1

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$8(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ns"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 1107
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v0, p1, p2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$9(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ns"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1114
    move-object v0, p0

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v0, p1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .line 1040
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1041
    .local v0, "what":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1042
    .local v1, "errorCode":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1043
    .local v2, "key":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1048
    .local v3, "obj":Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmMapLock(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1049
    :try_start_f
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmListenerMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1050
    .local v5, "listener":Ljava/lang/Object;
    iget-object v6, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v6}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmServiceMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    .line 1051
    .local v6, "ns":Landroid/net/nsd/NsdServiceInfo;
    iget-object v7, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v7}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmDiscoveryMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/nsd/DiscoveryRequest;

    .line 1052
    .local v7, "discoveryRequest":Landroid/net/nsd/DiscoveryRequest;
    iget-object v8, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v8}, Landroid/net/nsd/NsdManager;->-$$Nest$fgetmExecutorMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Executor;

    .line 1053
    .local v8, "executor":Ljava/util/concurrent/Executor;
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_169

    .line 1054
    if-nez v5, :cond_5b

    .line 1055
    invoke-static {}, Landroid/net/nsd/NsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stale key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void

    .line 1066
    :cond_5b
    packed-switch v0, :pswitch_data_16c

    .line 1155
    :pswitch_5e
    invoke-static {}, Landroid/net/nsd/NsdManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignored "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_168

    .line 1150
    :pswitch_7a
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1151
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda8;

    invoke-direct {v4, v5}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1153
    goto/16 :goto_168

    .line 1147
    :pswitch_89
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda7;

    invoke-direct {v4, v5}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1148
    goto/16 :goto_168

    .line 1143
    :pswitch_93
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;

    invoke-direct {v4, v5, v3}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1145
    goto/16 :goto_168

    .line 1138
    :pswitch_9d
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1139
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda5;

    invoke-direct {v4, v5, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1141
    goto/16 :goto_168

    .line 1133
    :pswitch_ac
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1134
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda4;

    invoke-direct {v4, v5, v6}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1136
    goto/16 :goto_168

    .line 1128
    :pswitch_bb
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1129
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda3;

    invoke-direct {v4, v5, v6, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1131
    goto/16 :goto_168

    .line 1123
    :pswitch_ca
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1124
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda2;

    invoke-direct {v4, v5, v3}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1126
    goto/16 :goto_168

    .line 1118
    :pswitch_d9
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1119
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda1;

    invoke-direct {v4, v5, v6, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1121
    goto/16 :goto_168

    .line 1113
    :pswitch_e8
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1114
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda17;

    invoke-direct {v4, v5, v6}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1116
    goto/16 :goto_168

    .line 1106
    :pswitch_f7
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1107
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda16;

    invoke-direct {v4, v5, v6, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1109
    goto :goto_168

    .line 1102
    :pswitch_105
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda15;

    invoke-direct {v4, v5, v3}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1104
    goto :goto_168

    .line 1097
    :pswitch_10e
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1098
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;

    invoke-direct {v4, v5, v6, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1100
    goto :goto_168

    .line 1092
    :pswitch_11c
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1093
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;

    invoke-direct {v4, v5, v7}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1095
    goto :goto_168

    .line 1087
    :pswitch_12a
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1088
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda12;

    invoke-direct {v4, v5, v7, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1090
    goto :goto_168

    .line 1081
    :pswitch_138
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda11;

    invoke-direct {v4, v5, v3}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1083
    goto :goto_168

    .line 1077
    :pswitch_141
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda10;

    invoke-direct {v4, v5, v3}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1079
    goto :goto_168

    .line 1072
    :pswitch_14a
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->-$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V

    .line 1073
    new-instance v4, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda9;

    invoke-direct {v4, v5, v7, v1}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Landroid/net/nsd/DiscoveryRequest;I)V

    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1075
    goto :goto_168

    .line 1068
    :pswitch_158
    move-object v4, v3

    check-cast v4, Landroid/net/nsd/DiscoveryRequest;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->-$$Nest$smgetNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;

    move-result-object v4

    .line 1069
    .local v4, "s":Ljava/lang/String;
    new-instance v9, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v9, v5, v4}, Landroid/net/nsd/NsdManager$ServiceHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1070
    nop

    .line 1158
    .end local v4    # "s":Ljava/lang/String;
    :goto_168
    return-void

    .line 1053
    .end local v5    # "listener":Ljava/lang/Object;
    .end local v6    # "ns":Landroid/net/nsd/NsdServiceInfo;
    .end local v7    # "discoveryRequest":Landroid/net/nsd/DiscoveryRequest;
    .end local v8    # "executor":Ljava/util/concurrent/Executor;
    :catchall_169
    move-exception v5

    :try_start_16a
    monitor-exit v4
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    throw v5

    :pswitch_data_16c
    .packed-switch 0x2
        :pswitch_158
        :pswitch_14a
        :pswitch_141
        :pswitch_138
        :pswitch_5e
        :pswitch_12a
        :pswitch_11c
        :pswitch_5e
        :pswitch_10e
        :pswitch_105
        :pswitch_5e
        :pswitch_f7
        :pswitch_e8
        :pswitch_5e
        :pswitch_d9
        :pswitch_ca
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_bb
        :pswitch_ac
        :pswitch_5e
        :pswitch_9d
        :pswitch_93
        :pswitch_89
        :pswitch_5e
        :pswitch_7a
    .end packed-switch
.end method
