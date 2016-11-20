.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$userId"    # I
    .param p3, "val$newRestrictionsFinal"    # Landroid/os/Bundle;
    .param p4, "val$prevRestrictionsFinal"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    #@4
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    #@6
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1361
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    #@8
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    #@a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    #@c
    .line 1360
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@f
    .line 1364
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@11
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@14
    move-result-object v3

    #@15
    monitor-enter v3

    #@16
    .line 1365
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@18
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v2

    #@20
    new-array v1, v2, [Landroid/os/UserManagerInternal$UserRestrictionsListener;

    #@22
    .line 1366
    .local v1, "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    #@24
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 1368
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@2e
    if-ge v0, v2, :cond_0

    #@30
    .line 1369
    aget-object v2, v1, v0

    #@32
    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    #@34
    .line 1370
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    #@36
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    #@38
    .line 1369
    invoke-interface {v2, v3, v4, v5}, Landroid/os/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@3b
    .line 1368
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1364
    .end local v0    # "i":I
    .end local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2

    #@41
    .line 1359
    .restart local v0    # "i":I
    .restart local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :cond_0
    return-void
.end method
