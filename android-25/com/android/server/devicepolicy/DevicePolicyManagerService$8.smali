.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$userHandle"    # I

    #@0
    .prologue
    .line 4744
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 4748
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@4
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    #@7
    move-result-object v0

    #@8
    .line 4749
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@b
    move-result-object v3

    #@c
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    #@e
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 4750
    const/4 v3, 0x0

    #@13
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    #@16
    .line 4753
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@18
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    #@1a
    invoke-static {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    #@1d
    move-result v1

    #@1e
    .line 4754
    .local v1, "isManagedProfile":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@20
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@22
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    #@24
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->removeUser(I)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_2

    #@2a
    .line 4755
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Couldn\'t remove user "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 4746
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :cond_1
    :goto_0
    return-void

    #@47
    .line 4756
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "isManagedProfile":Z
    :cond_2
    if-eqz v1, :cond_1

    #@49
    .line 4757
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4b
    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap19(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    goto :goto_0

    #@4f
    .line 4759
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :catch_0
    move-exception v2

    #@50
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
