.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupContentObserver"
.end annotation


# instance fields
.field private final mDeviceProvisioned:Landroid/net/Uri;

.field private final mUserSetupComplete:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 8196
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    .line 8197
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 8192
    const-string/jumbo v0, "user_setup_complete"

    #@8
    .line 8191
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    #@e
    .line 8194
    const-string/jumbo v0, "device_provisioned"

    #@11
    .line 8193
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    #@17
    .line 8196
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 8207
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    #@2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 8208
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@a
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    #@d
    .line 8206
    :cond_0
    :goto_0
    return-void

    #@e
    .line 8209
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    #@10
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 8210
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@18
    monitor-enter v1

    #@19
    .line 8213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1b
    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap21(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    goto :goto_0

    #@20
    .line 8210
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method register()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 8201
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@6
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    #@8
    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@b
    .line 8202
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@f
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    #@11
    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@14
    .line 8200
    return-void
.end method
