.class Lcom/android/server/am/ActivityManagerService$29;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$shutdownIntent:Landroid/content/Intent;

.field final synthetic val$shutdownReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserState;ILandroid/content/Intent;Landroid/content/IIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$uss"    # Lcom/android/server/am/UserState;
    .param p3, "val$userId"    # I
    .param p4, "val$shutdownIntent"    # Landroid/content/Intent;
    .param p5, "val$shutdownReceiver"    # Landroid/content/IIntentReceiver;

    #@0
    .prologue
    .line 20250
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$uss:Lcom/android/server/am/UserState;

    #@4
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownIntent:Landroid/content/Intent;

    #@8
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    #@a
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 20255
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v2

    #@5
    .line 20256
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->val$uss:Lcom/android/server/am/UserState;

    #@9
    iget v1, v1, Lcom/android/server/am/UserState;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    const/4 v3, 0x2

    #@c
    if-eq v1, v3, :cond_0

    #@e
    monitor-exit v2

    #@f
    .line 20258
    return-void

    #@10
    .line 20260
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@12
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->val$uss:Lcom/android/server/am/UserState;

    #@14
    const/4 v3, 0x3

    #@15
    iput v3, v1, Lcom/android/server/am/UserState;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 20262
    move-object/from16 v0, p0

    #@1a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@1c
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@1e
    .line 20264
    move-object/from16 v0, p0

    #@20
    iget v2, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    move-object/from16 v0, p0

    #@28
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    #@2a
    .line 20263
    const/16 v4, 0x4007

    #@2c
    .line 20262
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    #@2f
    .line 20265
    move-object/from16 v0, p0

    #@31
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@33
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@35
    move-object/from16 v0, p0

    #@37
    iget v2, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    #@39
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    #@3c
    .line 20266
    move-object/from16 v0, p0

    #@3e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownIntent:Landroid/content/Intent;

    #@44
    .line 20267
    move-object/from16 v0, p0

    #@46
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    #@48
    .line 20268
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget v0, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    #@4e
    move/from16 v17, v0

    #@50
    .line 20266
    const/4 v2, 0x0

    #@51
    const/4 v3, 0x0

    #@52
    .line 20267
    const/4 v5, 0x0

    #@53
    const/4 v7, 0x0

    #@54
    const/4 v8, 0x0

    #@55
    const/4 v9, 0x0

    #@56
    const/4 v10, 0x0

    #@57
    const/4 v11, -0x1

    #@58
    .line 20268
    const/4 v12, 0x0

    #@59
    const/4 v13, 0x1

    #@5a
    const/4 v14, 0x0

    #@5b
    const/16 v16, 0x3e8

    #@5d
    .line 20266
    invoke-static/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    #@60
    .line 20253
    return-void

    #@61
    .line 20255
    :catchall_0
    move-exception v1

    #@62
    monitor-exit v2

    #@63
    throw v1
.end method
