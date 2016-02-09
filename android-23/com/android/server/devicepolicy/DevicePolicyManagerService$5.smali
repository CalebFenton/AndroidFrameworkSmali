.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
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
    .line 3383
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

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
    .line 3387
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 3388
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@7
    move-result-object v3

    #@8
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    #@a
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    #@c
    if-ne v3, v4, :cond_0

    #@e
    .line 3389
    const/4 v3, 0x0

    #@f
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    #@12
    .line 3392
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@14
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    #@16
    invoke-static {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    #@19
    move-result v1

    #@1a
    .line 3393
    .local v1, "isManagedProfile":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1c
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@1e
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    #@20
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->removeUser(I)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2

    #@26
    .line 3394
    const-string/jumbo v3, "DevicePolicyManagerService"

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Couldn\'t remove user "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 3385
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :cond_1
    :goto_0
    return-void

    #@43
    .line 3395
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "isManagedProfile":Z
    :cond_2
    if-eqz v1, :cond_1

    #@45
    .line 3396
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@47
    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap9(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    goto :goto_0

    #@4b
    .line 3398
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :catch_0
    move-exception v2

    #@4c
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
