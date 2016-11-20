.class final Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;
.super Landroid/accounts/AccountManagerInternal;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountManagerInternalImpl"
.end annotation


# instance fields
.field private mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    #@0
    .prologue
    .line 5988
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    invoke-direct {p0}, Landroid/accounts/AccountManagerInternal;-><init>()V

    #@5
    .line 5989
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    #@c
    .line 5988
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    #@0
    .prologue
    .line 6041
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 6039
    return-void
.end method

.method public backupAccountAccessPermissions(I)[B
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 6051
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6052
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6053
    new-instance v0, Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@9
    .line 6054
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@b
    .line 6053
    invoke-direct {v0, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    #@e
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@10
    .line 6056
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@12
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->backupAccountAccessPermissions(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 6051
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public hasAccountAccess(Landroid/accounts/Account;I)Z
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 6046
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->-wrap2(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5997
    if-nez p1, :cond_0

    #@3
    .line 5998
    const-string/jumbo v0, "AccountManagerService"

    #@6
    const-string/jumbo v2, "account cannot be null"

    #@9
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 5999
    return-void

    #@d
    .line 6001
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 6002
    const-string/jumbo v0, "AccountManagerService"

    #@12
    const-string/jumbo v2, "packageName cannot be null"

    #@15
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 6003
    return-void

    #@19
    .line 6005
    :cond_1
    if-gez p3, :cond_2

    #@1b
    .line 6006
    const-string/jumbo v0, "AccountManagerService"

    #@1e
    const-string/jumbo v2, "user id must be concrete"

    #@21
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 6007
    return-void

    #@25
    .line 6009
    :cond_2
    if-nez p4, :cond_3

    #@27
    .line 6010
    const-string/jumbo v0, "AccountManagerService"

    #@2a
    const-string/jumbo v2, "callback cannot be null"

    #@2d
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 6011
    return-void

    #@31
    .line 6014
    :cond_3
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@33
    .line 6015
    new-instance v2, Landroid/os/UserHandle;

    #@35
    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    #@38
    .line 6014
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4

    #@3e
    .line 6016
    new-instance v8, Landroid/os/Bundle;

    #@40
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@43
    .line 6017
    .local v8, "result":Landroid/os/Bundle;
    const-string/jumbo v0, "booleanResult"

    #@46
    const/4 v2, 0x1

    #@47
    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4a
    .line 6018
    invoke-virtual {p4, v8}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@4d
    .line 6019
    return-void

    #@4e
    .line 6024
    .end local v8    # "result":Landroid/os/Bundle;
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@50
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result v9

    #@58
    .line 6030
    .local v9, "uid":I
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@5a
    invoke-static {v0, p1, p2, v9, p4}, Lcom/android/server/accounts/AccountManagerService;->-wrap1(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    #@5d
    move-result-object v4

    #@5e
    .line 6032
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@60
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get5(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    #@63
    move-result-object v2

    #@64
    monitor-enter v2

    #@65
    .line 6033
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@67
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get5(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .local v1, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    monitor-exit v2

    #@72
    .line 6035
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@74
    move-object v2, p1

    #@75
    move-object v5, p2

    #@76
    move v6, p3

    #@77
    invoke-static/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->-wrap15(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    #@7a
    .line 5996
    return-void

    #@7b
    .line 6025
    .end local v1    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "uid":I
    :catch_0
    move-exception v7

    #@7c
    .line 6026
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "AccountManagerService"

    #@7f
    new-instance v2, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v3, "Unknown package "

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 6027
    return-void

    #@97
    .line 6032
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v9    # "uid":I
    :catchall_0
    move-exception v0

    #@98
    monitor-exit v2

    #@99
    throw v0
.end method

.method public restoreAccountAccessPermissions([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 6062
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6063
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6064
    new-instance v0, Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@9
    .line 6065
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@b
    .line 6064
    invoke-direct {v0, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    #@e
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@10
    .line 6067
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@12
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->restoreAccountAccessPermissions([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 6061
    return-void

    #@17
    .line 6062
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
