.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    #@0
    .prologue
    .line 3097
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@2
    .line 3098
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    #@5
    .line 3099
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    #@7
    .line 3097
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    #@0
    .prologue
    .line 3159
    const/16 v0, 0x14

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@5
    .line 3158
    return-void
.end method

.method public handleExecute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    .line 3104
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@3
    invoke-static {v6}, Lcom/android/server/MountService;->-wrap12(Lcom/android/server/MountService;)V

    #@6
    .line 3105
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@8
    invoke-static {v6}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;)V

    #@b
    .line 3107
    invoke-virtual {p0}, Lcom/android/server/MountService$UnmountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    #@e
    move-result-object v4

    #@f
    .line 3110
    .local v4, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@11
    invoke-static {v6}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Ljava/util/Map;

    #@14
    move-result-object v7

    #@15
    monitor-enter v7

    #@16
    .line 3111
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@18
    invoke-static {v6}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    #@1b
    move-result-object v6

    #@1c
    iget-object v8, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@1e
    iget-object v8, v8, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@20
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .local v3, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v7

    #@27
    .line 3114
    if-nez v3, :cond_0

    #@29
    .line 3115
    const/16 v6, 0x17

    #@2b
    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@2e
    .line 3116
    return-void

    #@2f
    .line 3110
    .end local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v6

    #@30
    monitor-exit v7

    #@31
    throw v6

    #@32
    .line 3119
    .restart local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    iget v6, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@34
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@36
    iget v7, v7, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@38
    if-eq v6, v7, :cond_1

    #@3a
    .line 3120
    const-string/jumbo v6, "MountService"

    #@3d
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "Permission denied attempting to unmount OBB "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    iget-object v8, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    .line 3121
    const-string/jumbo v8, " (owned by GID "

    #@52
    .line 3120
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    .line 3121
    iget v8, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@58
    .line 3120
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    .line 3121
    const-string/jumbo v8, ")"

    #@5f
    .line 3120
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 3122
    const/16 v6, 0x19

    #@6c
    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@6f
    .line 3123
    return-void

    #@70
    .line 3126
    :cond_1
    const/4 v5, 0x0

    #@71
    .line 3128
    .local v5, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@73
    const-string/jumbo v6, "obb"

    #@76
    const/4 v7, 0x2

    #@77
    new-array v7, v7, [Ljava/lang/Object;

    #@79
    const-string/jumbo v8, "unmount"

    #@7c
    const/4 v9, 0x0

    #@7d
    aput-object v8, v7, v9

    #@7f
    iget-object v8, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@81
    iget-object v8, v8, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    #@83
    const/4 v9, 0x1

    #@84
    aput-object v8, v7, v9

    #@86
    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@89
    .line 3129
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v6, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    #@8b
    if-eqz v6, :cond_2

    #@8d
    .line 3130
    const-string/jumbo v6, "force"

    #@90
    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@93
    .line 3132
    :cond_2
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@95
    invoke-static {v6}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@9c
    .line 3145
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v5, :cond_5

    #@9e
    .line 3146
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@a0
    invoke-static {v6}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Ljava/util/Map;

    #@a3
    move-result-object v7

    #@a4
    monitor-enter v7

    #@a5
    .line 3147
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #@a7
    invoke-static {v6, v3}, Lcom/android/server/MountService;->-wrap10(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@aa
    monitor-exit v7

    #@ab
    .line 3150
    invoke-virtual {p0, v10}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@ae
    .line 3103
    :goto_1
    return-void

    #@af
    .line 3133
    :catch_0
    move-exception v2

    #@b0
    .line 3134
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@b3
    move-result v1

    #@b4
    .line 3135
    .local v1, "code":I
    const/16 v6, 0x195

    #@b6
    if-ne v1, v6, :cond_3

    #@b8
    .line 3136
    const/4 v5, -0x7

    #@b9
    goto :goto_0

    #@ba
    .line 3137
    :cond_3
    const/16 v6, 0x196

    #@bc
    if-ne v1, v6, :cond_4

    #@be
    .line 3139
    const/4 v5, 0x0

    #@bf
    goto :goto_0

    #@c0
    .line 3141
    :cond_4
    const/4 v5, -0x1

    #@c1
    goto :goto_0

    #@c2
    .line 3146
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v6

    #@c3
    monitor-exit v7

    #@c4
    throw v6

    #@c5
    .line 3152
    :cond_5
    const-string/jumbo v6, "MountService"

    #@c8
    new-instance v7, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v8, "Could not unmount OBB: "

    #@d0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v7

    #@d8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v7

    #@dc
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 3153
    const/16 v6, 0x16

    #@e1
    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    #@e4
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3164
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3165
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UnmountObbAction{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 3166
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 3167
    const-string/jumbo v1, ",force="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 3168
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    .line 3169
    const/16 v1, 0x7d

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 3170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method
