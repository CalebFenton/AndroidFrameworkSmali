.class Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;
.super Landroid/os/Handler;
.source "UceRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UceRequestHandler"
.end annotation


# static fields
.field private static final blacklist EVENT_COORDINATOR_FINISHED:I = 0x5

.field private static blacklist EVENT_DESCRIPTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EVENT_EXECUTE_REQUEST:I = 0x1

.field private static final blacklist EVENT_REQUEST_FINISHED:I = 0x4

.field private static final blacklist EVENT_REQUEST_TIMEOUT:I = 0x3

.field private static final blacklist EVENT_REQUEST_UPDATED:I = 0x2


# instance fields
.field private final blacklist mRequestTimeoutTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUceRequestMgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1015
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    .line 1017
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXECUTE_REQUEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_FINISHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REMOVE_COORDINATOR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;Landroid/os/Looper;)V
    .registers 4
    .param p1, "requestManager"    # Lcom/android/ims/rcs/uce/request/UceRequestManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 836
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    .line 838
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mUceRequestMgrRef:Ljava/lang/ref/WeakReference;

    .line 839
    return-void
.end method

.method static synthetic blacklist lambda$onDestroy$0(Ljava/lang/Long;Lcom/android/ims/SomeArgs;)V
    .registers 3
    .param p0, "taskId"    # Ljava/lang/Long;
    .param p1, "args"    # Lcom/android/ims/SomeArgs;

    .line 939
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/SomeArgs;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 940
    :goto_3
    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    .line 941
    :goto_6
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 948
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mUceRequestMgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;

    .line 949
    .local v0, "requestManager":Lcom/android/ims/rcs/uce/request/UceRequestManager;
    if-nez v0, :cond_b

    .line 950
    return-void

    .line 952
    :cond_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 953
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 954
    .local v2, "coordinatorId":Ljava/lang/Long;
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 955
    .local v3, "taskId":Ljava/lang/Long;
    iget v4, v1, Lcom/android/ims/SomeArgs;->argi1:I

    .line 956
    .local v4, "requestEvent":I
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", coordinatorId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 960
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_d2

    goto :goto_d0

    .line 1002
    :pswitch_68
    nop

    .line 1003
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mremoveRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v5

    .line 1004
    .local v5, "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-eqz v5, :cond_d0

    .line 1005
    invoke-virtual {v5}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    goto :goto_d0

    .line 998
    .end local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :pswitch_73
    invoke-static {v0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mnotifyRepositoryRequestFinished(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)V

    .line 999
    goto :goto_d0

    .line 981
    :pswitch_77
    nop

    .line 982
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mgetRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v5

    .line 983
    .restart local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-nez v5, :cond_84

    .line 984
    const-string v6, "handleMessage: cannot find UceRequestCoordinator"

    invoke-static {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 985
    return-void

    .line 988
    :cond_84
    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v6

    .line 989
    :try_start_87
    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_97

    .line 992
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onRequestUpdated(JI)V

    .line 994
    goto :goto_d0

    .line 990
    :catchall_97
    move-exception v7

    :try_start_98
    monitor-exit v6
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v7

    .line 971
    .end local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :pswitch_9a
    nop

    .line 972
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mgetRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v5

    .line 973
    .restart local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-nez v5, :cond_a7

    .line 974
    const-string v6, "handleMessage: cannot find UceRequestCoordinator"

    invoke-static {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 975
    return-void

    .line 977
    :cond_a7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onRequestUpdated(JI)V

    .line 978
    goto :goto_d0

    .line 962
    .end local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :pswitch_af
    invoke-static {v0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mgetUceRequest(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v5

    .line 963
    .local v5, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    if-nez v5, :cond_cc

    .line 964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: cannot find request, taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 965
    return-void

    .line 967
    :cond_cc
    invoke-interface {v5}, Lcom/android/ims/rcs/uce/request/UceRequest;->executeRequest()V

    .line 968
    nop

    .line 1013
    .end local v5    # "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    :cond_d0
    :goto_d0
    return-void

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_af
        :pswitch_9a
        :pswitch_77
        :pswitch_73
        :pswitch_68
    .end packed-switch
.end method

.method public blacklist onDestroy()V
    .registers 4

    .line 934
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 936
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v0

    .line 937
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    new-instance v2, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 942
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 943
    monitor-exit v0

    .line 944
    return-void

    .line 943
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist removeRequestTimeoutTimer(Ljava/lang/Long;)V
    .registers 7
    .param p1, "taskId"    # Ljava/lang/Long;

    .line 895
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v0

    .line 896
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 897
    .local v1, "args":Lcom/android/ims/SomeArgs;
    if-nez v1, :cond_f

    .line 898
    monitor-exit v0

    return-void

    .line 900
    :cond_f
    invoke-static {}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRequestTimeoutTimer: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->removeMessages(ILjava/lang/Object;)V

    .line 902
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 903
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    monitor-exit v0

    .line 904
    return-void

    .line 903
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist sendRequestCoordinatorFinishedMessage(Ljava/lang/Long;)V
    .registers 5
    .param p1, "coordinatorId"    # Ljava/lang/Long;

    .line 921
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 922
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 924
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 925
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 926
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 927
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 928
    return-void
.end method

.method public blacklist sendRequestFinishedMessage(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 6
    .param p1, "coordinatorId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;

    .line 907
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 908
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 909
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 911
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 912
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 913
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 914
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    return-void
.end method

.method public blacklist sendRequestMessage(Ljava/lang/Long;Ljava/lang/Long;J)V
    .registers 8
    .param p1, "coordinatorId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;
    .param p3, "delayTimeMs"    # J

    .line 845
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 846
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 847
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 849
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 850
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 851
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 852
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 853
    return-void
.end method

.method public blacklist sendRequestTimeoutTimerMessage(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 9
    .param p1, "coordId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;
    .param p3, "timeoutAfterMs"    # Ljava/lang/Long;

    .line 875
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v0

    .line 876
    :try_start_3
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 877
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 878
    iput-object p2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 882
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 885
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 886
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 887
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 888
    nop

    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "message":Landroid/os/Message;
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V
    .registers 7
    .param p1, "coordinatorId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;
    .param p3, "requestEvent"    # I

    .line 860
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 861
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 862
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 863
    iput p3, v0, Lcom/android/ims/SomeArgs;->argi1:I

    .line 865
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 866
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 867
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 868
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 869
    return-void
.end method
