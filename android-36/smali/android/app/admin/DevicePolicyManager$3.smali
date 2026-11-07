.class Landroid/app/admin/DevicePolicyManager$3;
.super Landroid/app/admin/StartInstallingUpdateCallback$Stub;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/admin/DevicePolicyManager;->installSystemUpdate(Landroid/content/ComponentName;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/admin/DevicePolicyManager;

.field final synthetic blacklist val$callback:Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 16387
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$3;->this$0:Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/admin/DevicePolicyManager$3;->val$callback:Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    invoke-direct {p0}, Landroid/app/admin/StartInstallingUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onStartInstallingUpdateError(ILjava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 16391
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$3;->this$0:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$3;->val$callback:Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/admin/DevicePolicyManager;->-$$Nest$mexecuteCallback(Landroid/app/admin/DevicePolicyManager;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    .line 16392
    return-void
.end method
