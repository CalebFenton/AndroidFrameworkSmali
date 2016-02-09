.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p3, "val$adminReceiver"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@4
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    #@6
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1366
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    monitor-enter v4

    #@3
    .line 1367
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@5
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@c
    move-result v2

    #@d
    .line 1368
    .local v2, "userHandle":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@f
    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@12
    move-result-object v1

    #@13
    .line 1369
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@15
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    #@17
    .line 1370
    const/4 v5, 0x5

    #@18
    .line 1369
    invoke-virtual {v3, v5}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@1b
    move-result v0

    #@1c
    .line 1371
    .local v0, "doProxyCleanup":Z
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #@1e
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    #@20
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@23
    .line 1372
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    #@25
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1373
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2c
    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@2f
    .line 1374
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@31
    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@34
    .line 1375
    if-eqz v0, :cond_0

    #@36
    .line 1376
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@38
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@3a
    invoke-virtual {v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap6(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@41
    .line 1378
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@43
    invoke-static {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    #@46
    .line 1379
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@48
    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    #@4b
    .line 1380
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    #@4d
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    #@4f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    monitor-exit v4

    #@53
    .line 1365
    return-void

    #@54
    .line 1366
    .end local v0    # "doProxyCleanup":Z
    .end local v1    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v2    # "userHandle":I
    :catchall_0
    move-exception v3

    #@55
    monitor-exit v4

    #@56
    throw v3
.end method
