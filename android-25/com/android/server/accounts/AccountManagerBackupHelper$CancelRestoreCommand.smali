.class final Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelRestoreCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@0
    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@2
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get2(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set2(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;

    #@d
    .line 308
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@f
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 309
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@17
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get4(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->unregister()V

    #@1e
    .line 310
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-set1(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v1

    #@25
    .line 305
    return-void

    #@26
    .line 306
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method
