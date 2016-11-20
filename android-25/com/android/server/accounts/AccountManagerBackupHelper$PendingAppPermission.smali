.class final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingAppPermission"
.end annotation


# instance fields
.field private final accountDigest:Ljava/lang/String;

.field private final certDigest:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;
    .param p2, "accountDigest"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "certDigest"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 98
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    #@7
    .line 99
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    #@9
    .line 100
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    #@b
    .line 101
    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    #@d
    .line 97
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/pm/PackageManager;)Z
    .locals 14
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    .line 106
    .local v0, "account":Landroid/accounts/Account;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@3
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    #@6
    move-result-object v9

    #@7
    .line 107
    iget v10, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    #@9
    .line 106
    invoke-virtual {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@c
    move-result-object v2

    #@d
    .line 108
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v10, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@f
    monitor-enter v10

    #@10
    .line 109
    :try_start_0
    iget-object v9, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@12
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@15
    move-result-object v9

    #@16
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v4

    #@1a
    .end local v0    # "account":Landroid/accounts/Account;
    .local v4, "accountsPerType$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_2

    #@20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, [Landroid/accounts/Account;

    #@26
    .line 110
    .local v3, "accountsPerType":[Landroid/accounts/Account;
    const/4 v9, 0x0

    #@27
    array-length v11, v3

    #@28
    :goto_0
    if-ge v9, v11, :cond_1

    #@2a
    aget-object v1, v3, v9

    #@2c
    .line 111
    .local v1, "accountPerType":Landroid/accounts/Account;
    iget-object v12, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    #@2e
    .line 112
    iget-object v13, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@30
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    #@33
    move-result-object v13

    #@34
    .line 111
    invoke-static {v13}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    #@37
    move-result-object v13

    #@38
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_3

    #@3e
    .line 113
    move-object v0, v1

    #@3f
    .line 117
    .end local v1    # "accountPerType":Landroid/accounts/Account;
    :cond_1
    if-eqz v0, :cond_0

    #@41
    .end local v3    # "accountsPerType":[Landroid/accounts/Account;
    :cond_2
    monitor-exit v10

    #@42
    .line 122
    if-nez v0, :cond_4

    #@44
    .line 123
    const/4 v9, 0x0

    #@45
    return v9

    #@46
    .line 110
    .restart local v1    # "accountPerType":Landroid/accounts/Account;
    .restart local v3    # "accountsPerType":[Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@48
    goto :goto_0

    #@49
    .line 108
    .end local v1    # "accountPerType":Landroid/accounts/Account;
    .end local v3    # "accountsPerType":[Landroid/accounts/Account;
    .end local v4    # "accountsPerType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@4a
    monitor-exit v10

    #@4b
    throw v9

    #@4c
    .line 127
    .restart local v4    # "accountsPerType$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    #@4e
    .line 128
    iget v10, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    #@50
    const/16 v11, 0x40

    #@52
    .line 127
    invoke-virtual {p1, v9, v11, v10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@55
    move-result-object v7

    #@56
    .line 133
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@58
    const/4 v10, 0x0

    #@59
    aget-object v9, v9, v10

    #@5b
    .line 132
    invoke-static {v9}, Landroid/util/PackageUtils;->computeCertSha256Digest(Landroid/content/pm/Signature;)Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 134
    .local v5, "currentCertDigest":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    #@61
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v9

    #@65
    if-nez v9, :cond_5

    #@67
    .line 135
    const/4 v9, 0x0

    #@68
    return v9

    #@69
    .line 129
    .end local v5    # "currentCertDigest":Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    #@6a
    .line 130
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    #@6b
    return v9

    #@6c
    .line 137
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "currentCertDigest":Ljava/lang/String;
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6e
    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@70
    .line 138
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@72
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get0(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9, v0, v8}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    #@79
    move-result v9

    #@7a
    if-nez v9, :cond_6

    #@7c
    .line 139
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    #@7e
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-get1(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    #@81
    move-result-object v9

    #@82
    .line 140
    const-string/jumbo v10, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    #@85
    .line 139
    invoke-virtual {v9, v0, v10, v8}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@88
    .line 142
    :cond_6
    const/4 v9, 0x1

    #@89
    return v9
.end method
