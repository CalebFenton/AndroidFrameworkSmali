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
    .line 909
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
    .line 941
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@5
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 942
    .local v0, "userId":I
    if-lez v0, :cond_0

    #@b
    .line 943
    return v0

    #@c
    .line 945
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
    .line 946
    return v4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 913
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 914
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 915
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@f
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$Receiver;->getSendingUserId()I

    #@12
    move-result v3

    #@13
    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@16
    .line 916
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@18
    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService;->updateDevicePolicyFeatures()V

    #@1b
    .line 912
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 917
    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 918
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@27
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$Receiver;->getSendingUserId()I

    #@2a
    move-result v3

    #@2b
    invoke-static {v2, v3}, Lcom/android/server/trust/TrustManagerService;->-wrap12(Lcom/android/server/trust/TrustManagerService;I)V

    #@2e
    goto :goto_0

    #@2f
    .line 919
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_3

    #@38
    .line 920
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    #@3b
    move-result v1

    #@3c
    .line 921
    .local v1, "userId":I
    if-lez v1, :cond_0

    #@3e
    .line 922
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@40
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@42
    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    #@45
    move-result-object v3

    #@46
    invoke-static {v2, v3, v1}, Lcom/android/server/trust/TrustManagerService;->-wrap7(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V

    #@49
    goto :goto_0

    #@4a
    .line 924
    .end local v1    # "userId":I
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@4d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_0

    #@53
    .line 925
    invoke-direct {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    #@56
    move-result v1

    #@57
    .line 926
    .restart local v1    # "userId":I
    if-lez v1, :cond_0

    #@59
    .line 927
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@5b
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get7(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@62
    .line 928
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@64
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@67
    move-result-object v3

    #@68
    monitor-enter v3

    #@69
    .line 929
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@6b
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@72
    monitor-exit v3

    #@73
    .line 931
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@75
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get3(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@78
    move-result-object v3

    #@79
    monitor-enter v3

    #@7a
    .line 932
    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@7c
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-get3(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@83
    monitor-exit v3

    #@84
    .line 934
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@86
    invoke-virtual {v2, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@89
    .line 935
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@8b
    invoke-static {v2, v1}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    #@8e
    goto :goto_0

    #@8f
    .line 928
    :catchall_0
    move-exception v2

    #@90
    monitor-exit v3

    #@91
    throw v2

    #@92
    .line 931
    :catchall_1
    move-exception v2

    #@93
    monitor-exit v3

    #@94
    throw v2
.end method

.method public register(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 951
    new-instance v3, Landroid/content/IntentFilter;

    #@3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@6
    .line 952
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@9
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c
    .line 953
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 954
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@15
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18
    .line 955
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@1b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 957
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@20
    move-object v0, p1

    #@21
    move-object v1, p0

    #@22
    move-object v5, v4

    #@23
    .line 956
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@26
    .line 950
    return-void
.end method
