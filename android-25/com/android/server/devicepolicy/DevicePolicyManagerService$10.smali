.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$disabled:Z

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$userHandle"    # I
    .param p3, "val$disabled"    # Z

    #@0
    .prologue
    .line 5346
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userHandle:I

    #@4
    iput-boolean p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$disabled:Z

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 5350
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@4
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIWindowManager()Landroid/view/IWindowManager;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userHandle:I

    #@a
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$disabled:Z

    #@c
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 5348
    :goto_0
    return-void

    #@10
    .line 5351
    :catch_0
    move-exception v0

    #@11
    .line 5352
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@14
    const-string/jumbo v2, "Unable to notify WindowManager."

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method
