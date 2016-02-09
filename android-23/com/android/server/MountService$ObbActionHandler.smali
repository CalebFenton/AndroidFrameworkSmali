.class Lcom/android/server/MountService$ObbActionHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "l"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2771
    iput-object p1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@2
    .line 2772
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2768
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    #@8
    .line 2769
    new-instance v0, Ljava/util/LinkedList;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@f
    .line 2771
    return-void
.end method

.method private connectToService()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2910
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@6
    sget-object v2, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    #@8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    move-result-object v0

    #@c
    .line 2911
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@e
    invoke-static {v1}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@14
    invoke-static {v2}, Lcom/android/server/MountService;->-get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    #@17
    move-result-object v2

    #@18
    .line 2912
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@1a
    .line 2911
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 2913
    iput-boolean v4, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    #@22
    .line 2914
    return v4

    #@23
    .line 2916
    :cond_0
    const/4 v1, 0x0

    #@24
    return v1
.end method

.method private disconnectService()V
    .locals 2

    #@0
    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/server/MountService;->-set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    #@6
    .line 2921
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    #@9
    .line 2922
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@b
    invoke-static {v0}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@11
    invoke-static {v1}, Lcom/android/server/MountService;->-get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@18
    .line 2919
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v11, 0x0

    #@2
    .line 2777
    iget v9, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v9, :pswitch_data_0

    #@7
    .line 2776
    :cond_0
    :goto_0
    return-void

    #@8
    .line 2779
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/MountService$ObbAction;

    #@c
    .line 2787
    .local v0, "action":Lcom/android/server/MountService$ObbAction;
    iget-boolean v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    #@e
    if-nez v9, :cond_1

    #@10
    .line 2790
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    #@13
    move-result v9

    #@14
    if-nez v9, :cond_1

    #@16
    .line 2791
    const-string/jumbo v9, "MountService"

    #@19
    const-string/jumbo v10, "Failed to bind to media container service"

    #@1c
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 2792
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    #@22
    .line 2793
    return-void

    #@23
    .line 2797
    :cond_1
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@25
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 2803
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    if-eqz v9, :cond_2

    #@2d
    .line 2804
    iget-object v10, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@2f
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    check-cast v9, Lcom/android/internal/app/IMediaContainerService;

    #@33
    invoke-static {v10, v9}, Lcom/android/server/MountService;->-set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    #@36
    .line 2806
    :cond_2
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@38
    invoke-static {v9}, Lcom/android/server/MountService;->-get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    #@3b
    move-result-object v9

    #@3c
    if-nez v9, :cond_4

    #@3e
    .line 2808
    const-string/jumbo v9, "MountService"

    #@41
    const-string/jumbo v10, "Cannot bind to media container service"

    #@44
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2809
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@49
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v1

    #@4d
    .local v1, "action$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_3

    #@53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Lcom/android/server/MountService$ObbAction;

    #@59
    .line 2811
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    #@5c
    goto :goto_1

    #@5d
    .line 2813
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_3
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@5f
    invoke-interface {v9}, Ljava/util/List;->clear()V

    #@62
    goto :goto_0

    #@63
    .line 2814
    .end local v1    # "action$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@65
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@68
    move-result v9

    #@69
    if-lez v9, :cond_5

    #@6b
    .line 2815
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@6d
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Lcom/android/server/MountService$ObbAction;

    #@73
    .line 2816
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    if-eqz v0, :cond_0

    #@75
    .line 2817
    invoke-virtual {v0, p0}, Lcom/android/server/MountService$ObbAction;->execute(Lcom/android/server/MountService$ObbActionHandler;)V

    #@78
    goto :goto_0

    #@79
    .line 2821
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_5
    const-string/jumbo v9, "MountService"

    #@7c
    const-string/jumbo v10, "Empty queue"

    #@7f
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    goto :goto_0

    #@83
    .line 2828
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@85
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@88
    move-result v9

    #@89
    if-lez v9, :cond_0

    #@8b
    .line 2829
    iget-boolean v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    #@8d
    if-eqz v9, :cond_6

    #@8f
    .line 2830
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    #@92
    .line 2832
    :cond_6
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    #@95
    move-result v9

    #@96
    if-nez v9, :cond_0

    #@98
    .line 2833
    const-string/jumbo v9, "MountService"

    #@9b
    const-string/jumbo v10, "Failed to bind to media container service"

    #@9e
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 2834
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@a3
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a6
    move-result-object v1

    #@a7
    .restart local v1    # "action$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@aa
    move-result v9

    #@ab
    if-eqz v9, :cond_7

    #@ad
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b0
    move-result-object v0

    #@b1
    check-cast v0, Lcom/android/server/MountService$ObbAction;

    #@b3
    .line 2836
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    #@b6
    goto :goto_2

    #@b7
    .line 2838
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_7
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@b9
    invoke-interface {v9}, Ljava/util/List;->clear()V

    #@bc
    goto/16 :goto_0

    #@be
    .line 2848
    .end local v1    # "action$iterator":Ljava/util/Iterator;
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@c0
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@c3
    move-result v9

    #@c4
    if-lez v9, :cond_8

    #@c6
    .line 2849
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@c8
    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@cb
    .line 2851
    :cond_8
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    #@cd
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@d0
    move-result v9

    #@d1
    if-nez v9, :cond_9

    #@d3
    .line 2852
    iget-boolean v9, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    #@d5
    if-eqz v9, :cond_0

    #@d7
    .line 2853
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    #@da
    goto/16 :goto_0

    #@dc
    .line 2859
    :cond_9
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@de
    invoke-static {v9}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@e1
    move-result-object v9

    #@e2
    invoke-virtual {v9, v10}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    #@e5
    goto/16 :goto_0

    #@e7
    .line 2864
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e9
    check-cast v7, Ljava/lang/String;

    #@eb
    .line 2869
    .local v7, "path":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@ed
    invoke-static {v9}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Ljava/util/Map;

    #@f0
    move-result-object v10

    #@f1
    monitor-enter v10

    #@f2
    .line 2870
    :try_start_0
    new-instance v6, Ljava/util/LinkedList;

    #@f4
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@f7
    .line 2872
    .local v6, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@f9
    invoke-static {v9}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    #@fc
    move-result-object v9

    #@fd
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@100
    move-result-object v9

    #@101
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@104
    move-result-object v3

    #@105
    .line 2873
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@108
    move-result v9

    #@109
    if-eqz v9, :cond_b

    #@10b
    .line 2874
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10e
    move-result-object v8

    #@10f
    check-cast v8, Lcom/android/server/MountService$ObbState;

    #@111
    .line 2881
    .local v8, "state":Lcom/android/server/MountService$ObbState;
    iget-object v9, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@113
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@116
    move-result v9

    #@117
    if-eqz v9, :cond_a

    #@119
    .line 2882
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11c
    goto :goto_3

    #@11d
    .line 2869
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .end local v6    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local v8    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v9

    #@11e
    monitor-exit v10

    #@11f
    throw v9

    #@120
    .line 2886
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .restart local v6    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_b
    :try_start_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@123
    move-result-object v5

    #@124
    .local v5, "obbState$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@127
    move-result v9

    #@128
    if-eqz v9, :cond_c

    #@12a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12d
    move-result-object v4

    #@12e
    check-cast v4, Lcom/android/server/MountService$ObbState;

    #@130
    .line 2890
    .local v4, "obbState":Lcom/android/server/MountService$ObbState;
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    #@132
    invoke-static {v9, v4}, Lcom/android/server/MountService;->-wrap10(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@135
    .line 2893
    :try_start_2
    iget-object v9, v4, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    #@137
    iget-object v11, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@139
    iget v12, v4, Lcom/android/server/MountService$ObbState;->nonce:I

    #@13b
    .line 2894
    const/4 v13, 0x2

    #@13c
    .line 2893
    invoke-interface {v9, v11, v12, v13}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@13f
    goto :goto_4

    #@140
    .line 2895
    :catch_0
    move-exception v2

    #@141
    .line 2896
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v9, "MountService"

    #@144
    new-instance v11, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v12, "Couldn\'t send unmount notification for  OBB: "

    #@14c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v11

    #@150
    .line 2897
    iget-object v12, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@152
    .line 2896
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v11

    #@156
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v11

    #@15a
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@15d
    goto :goto_4

    #@15e
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "obbState":Lcom/android/server/MountService$ObbState;
    :cond_c
    monitor-exit v10

    #@15f
    goto/16 :goto_0

    #@161
    .line 2777
    nop

    #@162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
