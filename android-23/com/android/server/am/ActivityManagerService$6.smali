.class Lcom/android/server/am/ActivityManagerService$6;
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
    .line 6302
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

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
    .line 6305
    const-string/jumbo v1, "android.intent.extra.PACKAGES"

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v11

    #@9
    .line 6306
    .local v11, "pkgs":[Ljava/lang/String;
    if-eqz v11, :cond_1

    #@b
    .line 6307
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
    .line 6308
    .local v2, "pkg":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@14
    monitor-enter v14

    #@15
    .line 6309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@17
    .line 6310
    const-string/jumbo v10, "query restart"

    #@1a
    .line 6309
    const/4 v3, -0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    const/4 v5, 0x0

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v7, 0x0

    #@1f
    const/4 v8, 0x0

    #@20
    .line 6310
    const/4 v9, 0x0

    #@21
    .line 6309
    invoke-static/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 6311
    const/4 v1, -0x1

    #@28
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$6;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v14

    #@2c
    .line 6312
    return-void

    #@2d
    :cond_0
    monitor-exit v14

    #@2e
    .line 6307
    add-int/lit8 v1, v12, 0x1

    #@30
    move v12, v1

    #@31
    goto :goto_0

    #@32
    .line 6308
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v14

    #@34
    throw v1

    #@35
    .line 6304
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method
