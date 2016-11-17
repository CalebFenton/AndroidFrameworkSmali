.class Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    .line 3482
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 3487
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 3488
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@7
    const/4 v2, 0x1

    #@8
    const/4 v3, 0x1

    #@9
    invoke-static {v0, p2, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap1(Lcom/android/server/net/NetworkPolicyManagerService;IZZ)Z

    #@c
    .line 3489
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@e
    invoke-static {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 3485
    return-void

    #@13
    .line 3487
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
