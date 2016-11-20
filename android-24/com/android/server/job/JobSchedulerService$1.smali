.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 402
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v10

    #@7
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v9

    #@b
    if-eqz v9, :cond_4

    #@d
    .line 405
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@f
    invoke-static {v9, p2}, Lcom/android/server/job/JobSchedulerService;->-wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 406
    .local v3, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.extra.UID"

    #@16
    const/4 v10, -0x1

    #@17
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1a
    move-result v4

    #@1b
    .line 407
    .local v4, "pkgUid":I
    if-eqz v3, :cond_3

    #@1d
    const/4 v9, -0x1

    #@1e
    if-eq v4, v9, :cond_3

    #@20
    .line 409
    const-string/jumbo v9, "android.intent.extra.changed_component_name_list"

    #@23
    .line 408
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 410
    .local v0, "changedComponents":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@29
    .line 411
    const/4 v9, 0x0

    #@2a
    array-length v10, v0

    #@2b
    :goto_0
    if-ge v9, v10, :cond_1

    #@2d
    aget-object v1, v0, v9

    #@2f
    .line 412
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v11

    #@33
    if-eqz v11, :cond_2

    #@35
    .line 417
    :try_start_0
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@38
    move-result v8

    #@39
    .line 418
    .local v8, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3c
    move-result-object v5

    #@3d
    .line 419
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v5, v3, v8}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    #@40
    move-result v6

    #@41
    .line 420
    .local v6, "state":I
    const/4 v9, 0x2

    #@42
    if-eq v6, v9, :cond_0

    #@44
    .line 421
    const/4 v9, 0x3

    #@45
    if-ne v6, v9, :cond_1

    #@47
    .line 426
    :cond_0
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@49
    const/4 v10, 0x1

    #@4a
    invoke-virtual {v9, v4, v10}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 398
    .end local v0    # "changedComponents":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgUid":I
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v6    # "state":I
    .end local v8    # "userId":I
    :cond_1
    :goto_1
    return-void

    #@4e
    .line 411
    .restart local v0    # "changedComponents":[Ljava/lang/String;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "pkgUid":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@50
    goto :goto_0

    #@51
    .line 434
    .end local v0    # "changedComponents":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "JobSchedulerService"

    #@54
    new-instance v10, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v11, "PACKAGE_CHANGED for "

    #@5c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    const-string/jumbo v11, " / uid "

    #@67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v10

    #@6f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v10

    #@73
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    goto :goto_1

    #@77
    .line 436
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgUid":I
    :cond_4
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    #@7a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v9

    #@82
    if-eqz v9, :cond_5

    #@84
    .line 439
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    #@87
    const/4 v10, 0x0

    #@88
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@8b
    move-result v9

    #@8c
    if-nez v9, :cond_1

    #@8e
    .line 440
    const-string/jumbo v9, "android.intent.extra.UID"

    #@91
    const/4 v10, -0x1

    #@92
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@95
    move-result v7

    #@96
    .line 444
    .local v7, "uidRemoved":I
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@98
    const/4 v10, 0x1

    #@99
    invoke-virtual {v9, v7, v10}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    #@9c
    goto :goto_1

    #@9d
    .line 446
    .end local v7    # "uidRemoved":I
    :cond_5
    const-string/jumbo v9, "android.intent.action.USER_REMOVED"

    #@a0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@a3
    move-result-object v10

    #@a4
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v9

    #@a8
    if-eqz v9, :cond_1

    #@aa
    .line 447
    const-string/jumbo v9, "android.intent.extra.user_handle"

    #@ad
    const/4 v10, 0x0

    #@ae
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@b1
    move-result v8

    #@b2
    .line 451
    .restart local v8    # "userId":I
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@b4
    invoke-virtual {v9, v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    #@b7
    goto :goto_1

    #@b8
    .line 428
    .end local v8    # "userId":I
    .restart local v0    # "changedComponents":[Ljava/lang/String;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "pkgUid":I
    :catch_0
    move-exception v2

    #@b9
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
