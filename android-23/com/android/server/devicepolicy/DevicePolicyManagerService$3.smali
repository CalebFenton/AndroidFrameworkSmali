.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$response:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$response"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3268
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$response:Landroid/os/IBinder;

    #@4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3271
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->getResultData()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3272
    .local v0, "chosenAlias":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$response:Landroid/os/IBinder;

    #@8
    invoke-static {v1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap8(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V

    #@b
    .line 3270
    return-void
.end method
