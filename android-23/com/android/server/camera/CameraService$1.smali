.class Lcom/android/server/camera/CameraService$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraService;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 81
    :cond_0
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    #@12
    invoke-static {v1}, Lcom/android/server/camera/CameraService;->-get2(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    monitor-enter v2

    #@17
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    #@19
    invoke-static {v1}, Lcom/android/server/camera/CameraService;->-get0(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    monitor-exit v2

    #@20
    return-void

    #@21
    .line 81
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_1

    #@2a
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_1

    #@33
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_1

    #@3c
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_1

    #@45
    .line 77
    :goto_0
    return-void

    #@46
    .line 90
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    #@48
    iget-object v3, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    #@4a
    invoke-static {v3}, Lcom/android/server/camera/CameraService;->-get1(Lcom/android/server/camera/CameraService;)I

    #@4d
    move-result v3

    #@4e
    invoke-static {v1, v3}, Lcom/android/server/camera/CameraService;->-wrap1(Lcom/android/server/camera/CameraService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    monitor-exit v2

    #@52
    goto :goto_0

    #@53
    .line 87
    :catchall_0
    move-exception v1

    #@54
    monitor-exit v2

    #@55
    throw v1
.end method
