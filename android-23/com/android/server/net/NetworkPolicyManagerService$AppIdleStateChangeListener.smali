.class Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    .line 2304
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 2310
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    .line 2311
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@10
    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@12
    monitor-enter v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 2312
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@15
    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :try_start_2
    monitor-exit v3

    #@19
    .line 2308
    .end local v1    # "uid":I
    :goto_0
    return-void

    #@1a
    .line 2311
    .restart local v1    # "uid":I
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@1d
    .line 2314
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@1e
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public onParoleStateChanged(Z)V
    .locals 2
    .param p1, "isParoleOn"    # Z

    #@0
    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 2321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 2319
    return-void

    #@c
    .line 2320
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method
