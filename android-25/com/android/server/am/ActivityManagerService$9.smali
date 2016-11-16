.class Lcom/android/server/am/ActivityManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 6788
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6791
    const-string/jumbo v1, "android.intent.extra.PACKAGES"

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v11

    #@9
    .line 6792
    .local v11, "pkgs":[Ljava/lang/String;
    if-eqz v11, :cond_1

    #@b
    .line 6793
    const/4 v1, 0x0

    #@c
    array-length v13, v11

    #@d
    move v12, v1

    #@e
    :goto_0
    if-ge v12, v13, :cond_1

    #@10
    aget-object v2, v11, v12

    #@12
    .line 6794
    .local v2, "pkg":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@14
    monitor-enter v14

    #@15
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@18
    .line 6795
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1a
    .line 6796
    const-string/jumbo v10, "query restart"

    #@1d
    .line 6795
    const/4 v3, -0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    const/4 v6, 0x0

    #@21
    const/4 v7, 0x0

    #@22
    const/4 v8, 0x0

    #@23
    .line 6796
    const/4 v9, 0x0

    #@24
    .line 6795
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 6797
    const/4 v1, -0x1

    #@2b
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$9;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v14

    #@2f
    .line 6794
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@32
    .line 6798
    return-void

    #@33
    :cond_0
    monitor-exit v14

    #@34
    .line 6794
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@37
    .line 6793
    add-int/lit8 v1, v12, 0x1

    #@39
    move v12, v1

    #@3a
    goto :goto_0

    #@3b
    .line 6794
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v14

    #@3d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@40
    throw v1

    #@41
    .line 6790
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method
