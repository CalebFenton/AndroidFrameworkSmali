.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    #@0
    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 728
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 729
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.extra.user_handle"

    #@9
    const/4 v11, -0x1

    #@a
    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@d
    move-result v5

    #@e
    .line 730
    .local v5, "userId":I
    if-ltz v5, :cond_1

    #@10
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@13
    .line 733
    :try_start_0
    const-string/jumbo v8, "android.intent.action.USER_ADDED"

    #@16
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_2

    #@1c
    .line 734
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@1e
    invoke-static {v8}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@21
    move-result-object v8

    #@22
    const-class v9, Landroid/os/UserManager;

    #@24
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroid/os/UserManager;

    #@2a
    .line 735
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    #@2d
    move-result v6

    #@2e
    .line 736
    .local v6, "userSerialNumber":I
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@30
    invoke-static {v8}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@33
    move-result-object v8

    #@34
    const-string/jumbo v9, "volume"

    #@37
    const/4 v10, 0x3

    #@38
    new-array v10, v10, [Ljava/lang/Object;

    #@3a
    const-string/jumbo v11, "user_added"

    #@3d
    const/4 v12, 0x0

    #@3e
    aput-object v11, v10, v12

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v11

    #@44
    const/4 v12, 0x1

    #@45
    aput-object v11, v10, v12

    #@47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v11

    #@4b
    const/4 v12, 0x2

    #@4c
    aput-object v11, v10, v12

    #@4e
    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@51
    .line 727
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v6    # "userSerialNumber":I
    :cond_0
    :goto_1
    return-void

    #@52
    :cond_1
    move v8, v9

    #@53
    .line 730
    goto :goto_0

    #@54
    .line 737
    :cond_2
    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    #@57
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v8

    #@5b
    if-eqz v8, :cond_0

    #@5d
    .line 738
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@5f
    invoke-static {v8}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/util/ArrayMap;

    #@62
    move-result-object v9

    #@63
    monitor-enter v9
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 739
    :try_start_1
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@66
    invoke-static {v8}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/util/ArrayMap;

    #@69
    move-result-object v8

    #@6a
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@6d
    move-result v3

    #@6e
    .line 740
    .local v3, "size":I
    const/4 v2, 0x0

    #@6f
    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_4

    #@71
    .line 741
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@73
    invoke-static {v8}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/util/ArrayMap;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@7a
    move-result-object v7

    #@7b
    check-cast v7, Landroid/os/storage/VolumeInfo;

    #@7d
    .line 742
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    iget v8, v7, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@7f
    if-ne v8, v5, :cond_3

    #@81
    .line 743
    const/16 v8, -0x2710

    #@83
    iput v8, v7, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@85
    .line 744
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@87
    invoke-static {v8}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)Landroid/os/Handler;

    #@8a
    move-result-object v8

    #@8b
    const/16 v10, 0x8

    #@8d
    invoke-virtual {v8, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@94
    .line 740
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@96
    goto :goto_2

    #@97
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4
    :try_start_2
    monitor-exit v9

    #@98
    .line 748
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@9a
    invoke-static {v8}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@9d
    move-result-object v8

    #@9e
    const-string/jumbo v9, "volume"

    #@a1
    const/4 v10, 0x2

    #@a2
    new-array v10, v10, [Ljava/lang/Object;

    #@a4
    const-string/jumbo v11, "user_removed"

    #@a7
    const/4 v12, 0x0

    #@a8
    aput-object v11, v10, v12

    #@aa
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v11

    #@ae
    const/4 v12, 0x1

    #@af
    aput-object v11, v10, v12

    #@b1
    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    #@b4
    goto :goto_1

    #@b5
    .line 750
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    #@b6
    .line 751
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v8, "MountService"

    #@b9
    const-string/jumbo v9, "Failed to send user details to vold"

    #@bc
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bf
    goto :goto_1

    #@c0
    .line 738
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v8

    #@c1
    :try_start_3
    monitor-exit v9

    #@c2
    throw v8
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0
.end method
