.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$result:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$result"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    .line 3444
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->val$result:Landroid/os/RemoteCallback;

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
    .line 3448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->val$result:Landroid/os/RemoteCallback;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->getResultExtras(Z)Landroid/os/Bundle;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3446
    :goto_0
    return-void

    #@b
    .line 3449
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
