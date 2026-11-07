.class Landroid/app/role/RoleControllerManager$1;
.super Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;
.source "RoleControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/app/role/IRoleController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/role/RoleControllerManager;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/app/role/RoleControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V
    .registers 8
    .param p1, "this$0"    # Landroid/app/role/RoleControllerManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "bindingFlags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 117
    .local p6, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;Landroid/app/role/IRoleController;>;"
    iput-object p1, p0, Landroid/app/role/RoleControllerManager$1;->this$0:Landroid/app/role/RoleControllerManager;

    iput-object p7, p0, Landroid/app/role/RoleControllerManager$1;->val$handler:Landroid/os/Handler;

    move-object p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    .end local p2    # "context":Landroid/content/Context;
    .local p3, "context":Landroid/content/Context;
    .local p4, "intent":Landroid/content/Intent;
    .local p5, "bindingFlags":I
    .local p6, "userId":I
    .local p7, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;Landroid/app/role/IRoleController;>;"
    invoke-direct/range {p2 .. p7}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method protected blacklist getJobHandler()Landroid/os/Handler;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$1;->val$handler:Landroid/os/Handler;

    return-object v0
.end method
