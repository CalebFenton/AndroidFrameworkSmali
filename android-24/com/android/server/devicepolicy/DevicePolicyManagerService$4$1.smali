.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
    .param p2, "val$userHandle"    # I

    #@0
    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    #@2
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->val$userHandle:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    #@2
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@4
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;->val$userHandle:I

    #@6
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap7(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    #@9
    .line 483
    return-void
.end method
