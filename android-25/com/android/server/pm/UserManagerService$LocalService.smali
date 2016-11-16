.class Lcom/android/server/pm/UserManagerService$LocalService;
.super Landroid/os/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    #@0
    .prologue
    .line 3309
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/UserManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    #@0
    .prologue
    .line 3349
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3350
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3348
    return-void

    #@12
    .line 3349
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3450
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@3
    const/16 v2, -0x2710

    #@5
    invoke-static {v1, p1, p2, v2}, Lcom/android/server/pm/UserManagerService;->-wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@8
    move-result-object v0

    #@9
    .line 3452
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 3456
    :cond_0
    :goto_0
    return-object v0

    #@12
    .line 3453
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@14
    const-string/jumbo v2, "no_sms"

    #@17
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@19
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    #@1c
    .line 3454
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@1e
    const-string/jumbo v2, "no_outgoing_calls"

    #@21
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@23
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    #@26
    goto :goto_0
.end method

.method public getBaseUserRestrictions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3319
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 3319
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3344
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isUserRunning(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3461
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 3462
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@a
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@d
    move-result-object v2

    #@e
    const/4 v3, -0x1

    #@f
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v2

    #@13
    if-ltz v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    monitor-exit v1

    #@17
    return v0

    #@18
    .line 3461
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3482
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@6
    move-result-object v2

    #@7
    monitor-enter v2

    #@8
    .line 3483
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@a
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@d
    move-result-object v3

    #@e
    const/4 v4, -0x1

    #@f
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    .line 3484
    .local v0, "state":I
    const/4 v3, 0x2

    #@14
    if-eq v0, v3, :cond_0

    #@16
    .line 3485
    const/4 v3, 0x3

    #@17
    if-ne v0, v3, :cond_1

    #@19
    :cond_0
    :goto_0
    monitor-exit v2

    #@1a
    .line 3484
    return v1

    #@1b
    .line 3485
    :cond_1
    const/4 v1, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 3482
    .end local v0    # "state":I
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public onEphemeralUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3434
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    #@c
    move-result-object v0

    #@d
    .line 3436
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 3439
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@17
    or-int/lit8 v1, v1, 0x40

    #@19
    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@1b
    .line 3440
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 3442
    const/4 v1, 0x1

    #@22
    iput-boolean v1, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v2

    #@25
    .line 3433
    return-void

    #@26
    .line 3434
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public removeAllUsers()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3403
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 3405
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-wrap4(Lcom/android/server/pm/UserManagerService;)V

    #@c
    .line 3402
    :goto_0
    return-void

    #@d
    .line 3408
    :cond_0
    new-instance v2, Lcom/android/server/pm/UserManagerService$LocalService$1;

    #@f
    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    #@12
    .line 3420
    .local v2, "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    #@14
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@17
    .line 3421
    .local v1, "userSwitchedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    #@1a
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 3422
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@1f
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    #@22
    move-result-object v3

    #@23
    .line 3423
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@25
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x0

    #@2a
    .line 3422
    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2d
    .line 3427
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2f
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, "activity"

    #@36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/app/ActivityManager;

    #@3c
    .line 3428
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->switchUser(I)Z

    #@3f
    goto :goto_0
.end method

.method public removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    #@0
    .prologue
    .line 3356
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3355
    return-void

    #@12
    .line 3356
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public removeUserState(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3475
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3474
    return-void

    #@12
    .line 3475
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "baseRestrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3327
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    new-instance v3, Landroid/os/Bundle;

    #@f
    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@12
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 3329
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@17
    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap3(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 3332
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@1d
    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->-wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    #@20
    move-result-object v0

    #@21
    .line 3333
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@23
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    monitor-enter v2

    #@28
    .line 3334
    if-eqz v0, :cond_0

    #@2a
    .line 3335
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2c
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->-wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2f
    :goto_0
    monitor-exit v2

    #@30
    .line 3326
    return-void

    #@31
    .line 3327
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1

    #@34
    .line 3337
    .restart local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_0
    :try_start_2
    const-string/jumbo v1, "UserManagerService"

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "UserInfo not found for "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    goto :goto_0

    #@4f
    .line 3333
    :catchall_1
    move-exception v1

    #@50
    monitor-exit v2

    #@51
    throw v1
.end method

.method public setDeviceManaged(Z)V
    .locals 2
    .param p1, "isManaged"    # Z

    #@0
    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-set1(Lcom/android/server/pm/UserManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 3362
    return-void

    #@e
    .line 3363
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "localRestrictions"    # Landroid/os/Bundle;
    .param p3, "globalRestrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@5
    .line 3312
    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .locals 2
    .param p1, "forceEphemeralUsers"    # Z

    #@0
    .prologue
    .line 3396
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3397
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-set0(Lcom/android/server/pm/UserManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 3395
    return-void

    #@e
    .line 3396
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 3377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3379
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@6
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 3380
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@d
    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    #@10
    move-result-object v2

    #@11
    .line 3381
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_0

    #@13
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@15
    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 3382
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "setUserIcon: unknown user #"

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@34
    .line 3390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 3383
    return-void

    #@38
    .line 3385
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@3a
    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@3c
    invoke-static {v3, v5, p2}, Lcom/android/server/pm/UserManagerService;->-wrap7(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    #@3f
    .line 3386
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@41
    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->-wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    :try_start_4
    monitor-exit v4

    #@45
    .line 3388
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@47
    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-wrap6(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4a
    .line 3390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 3376
    return-void

    #@4e
    .line 3379
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    #@4f
    :try_start_5
    monitor-exit v4

    #@50
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@51
    .line 3389
    :catchall_1
    move-exception v3

    #@52
    .line 3390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 3389
    throw v3
.end method

.method public setUserManaged(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "isManaged"    # Z

    #@0
    .prologue
    .line 3370
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3369
    return-void

    #@12
    .line 3370
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public setUserState(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userState"    # I

    #@0
    .prologue
    .line 3468
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 3467
    return-void

    #@12
    .line 3468
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
