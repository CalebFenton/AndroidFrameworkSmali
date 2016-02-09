.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->unhideAllInstalledAppsForUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$userHandle"    # I

    #@0
    .prologue
    .line 1590
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 1594
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    #@5
    move-result-object v3

    #@6
    .line 1595
    iget v6, p0, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    #@8
    .line 1594
    const/16 v7, 0x2000

    #@a
    invoke-virtual {v3, v7, v6}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 1596
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v4

    #@16
    .line 1598
    .local v4, "ident":J
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "appInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@26
    .line 1599
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@28
    const/high16 v6, 0x800000

    #@2a
    and-int/2addr v3, v6

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 1600
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@2f
    and-int/lit8 v3, v3, 0x1

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 1602
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@35
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    #@38
    move-result-object v3

    #@39
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3b
    .line 1603
    iget v7, p0, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    #@3d
    .line 1602
    const/4 v8, 0x0

    #@3e
    invoke-virtual {v3, v6, v8, v7}, Lcom/android/server/pm/PackageManagerService;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1606
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@43
    .line 1607
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 1606
    throw v3

    #@47
    .line 1607
    .restart local v1    # "appInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 1592
    return-void
.end method
