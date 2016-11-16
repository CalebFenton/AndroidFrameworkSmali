.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$packageActiveAdmins:Ljava/util/List;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p3, "val$userId"    # I
    .param p4, "val$packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9113
    .local p2, "val$packageActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$packageActiveAdmins:Ljava/util/List;

    #@4
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$packageName:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 9116
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$packageActiveAdmins:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "activeAdmin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/content/ComponentName;

    #@12
    .line 9117
    .local v0, "activeAdmin":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@14
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$userId:I

    #@16
    invoke-static {v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap14(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    #@19
    goto :goto_0

    #@1a
    .line 9119
    .end local v0    # "activeAdmin":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1c
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$packageName:Ljava/lang/String;

    #@1e
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$userId:I

    #@20
    invoke-static {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap22(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    #@23
    .line 9115
    return-void
.end method
