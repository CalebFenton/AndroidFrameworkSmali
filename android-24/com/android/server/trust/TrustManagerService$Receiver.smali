.class Lcom/android/server/trust/TrustManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    #@0
    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    #@3
    return-void
.end method

.method private getUserId(Landroid/content/Intent;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/16 v4, -0x64

    #@2
    .line 983
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@5
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 984
    .local v0, "userId":I
    if-lez v0, :cond_0

    #@b
    .line 985
    return v0

    #@c
    .line 987
    :cond_0
    const-string/jumbo v1, "TrustManagerService"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "EXTRA_USER_HANDLE missing or invalid, value="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 988
    return v4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 958
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 959
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 960
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@f
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$Receiver;->getSendingUserId()I

    #@12
    move-result v3

    #@13
    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@16
    .line 961
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@18
    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService;->updateDevicePolicyFeatures()V

    #@1b
    .line 957
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 962
    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 963
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    #@28
    move-result v1

    #@29
    .line 964
    .local v1, "userId":I
    if-lez v1, :cond_0

    #@2b
    .line 965
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2f
    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3, v1}, Lcom/android/server/trust/TrustManagerService;->-wrap6(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V

    #@36
    goto :goto_0

    #@37
    .line 967
    .end local v1    # "userId":I
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@3a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_0

    #@40
    .line 968
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    #@43
    move-result v1

    #@44
    .line 969
    .restart local v1    # "userId":I
    if-lez v1, :cond_0

    #@46
    .line 970
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@48
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get9(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@4b
    move-result-object v3

    #@4c
    monitor-enter v3

    #@4d
    .line 971
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@4f
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get9(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    monitor-exit v3

    #@57
    .line 973
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@59
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get3(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@5c
    move-result-object v3

    #@5d
    monitor-enter v3

    #@5e
    .line 974
    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@60
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get3(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@67
    monitor-exit v3

    #@68
    .line 976
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6a
    invoke-virtual {v2, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@6d
    .line 977
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6f
    invoke-static {v2, v1}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;I)V

    #@72
    goto :goto_0

    #@73
    .line 970
    :catchall_0
    move-exception v2

    #@74
    monitor-exit v3

    #@75
    throw v2

    #@76
    .line 973
    :catchall_1
    move-exception v2

    #@77
    monitor-exit v3

    #@78
    throw v2
.end method

.method public register(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 993
    new-instance v3, Landroid/content/IntentFilter;

    #@3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@6
    .line 994
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@9
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c
    .line 995
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 996
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@15
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18
    .line 998
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1a
    move-object v0, p1

    #@1b
    move-object v1, p0

    #@1c
    move-object v5, v4

    #@1d
    .line 997
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@20
    .line 992
    return-void
.end method
