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
    .line 672
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 675
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 676
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.extra.user_handle"

    #@7
    const/4 v6, -0x1

    #@8
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@b
    move-result v3

    #@c
    .line 679
    .local v3, "userId":I
    :try_start_0
    const-string/jumbo v5, "android.intent.action.USER_ADDED"

    #@f
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 680
    iget-object v5, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@17
    invoke-static {v5}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    #@1a
    move-result-object v5

    #@1b
    const-class v6, Landroid/os/UserManager;

    #@1d
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/os/UserManager;

    #@23
    .line 681
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    #@26
    move-result v4

    #@27
    .line 682
    .local v4, "userSerialNumber":I
    iget-object v5, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@29
    invoke-static {v5}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@2c
    move-result-object v5

    #@2d
    const-string/jumbo v6, "volume"

    #@30
    const/4 v7, 0x3

    #@31
    new-array v7, v7, [Ljava/lang/Object;

    #@33
    const-string/jumbo v8, "user_added"

    #@36
    const/4 v9, 0x0

    #@37
    aput-object v8, v7, v9

    #@39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v8

    #@3d
    const/4 v9, 0x1

    #@3e
    aput-object v8, v7, v9

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v8

    #@44
    const/4 v9, 0x2

    #@45
    aput-object v8, v7, v9

    #@47
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@4a
    .line 674
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v4    # "userSerialNumber":I
    :cond_0
    :goto_0
    return-void

    #@4b
    .line 683
    :cond_1
    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    #@4e
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_0

    #@54
    .line 684
    iget-object v5, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #@56
    invoke-static {v5}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@59
    move-result-object v5

    #@5a
    const-string/jumbo v6, "volume"

    #@5d
    const/4 v7, 0x2

    #@5e
    new-array v7, v7, [Ljava/lang/Object;

    #@60
    const-string/jumbo v8, "user_removed"

    #@63
    const/4 v9, 0x0

    #@64
    aput-object v8, v7, v9

    #@66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v8

    #@6a
    const/4 v9, 0x1

    #@6b
    aput-object v8, v7, v9

    #@6d
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    goto :goto_0

    #@71
    .line 686
    :catch_0
    move-exception v1

    #@72
    .line 687
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v5, "MountService"

    #@75
    const-string/jumbo v6, "Failed to send user details to vold"

    #@78
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    goto :goto_0
.end method
