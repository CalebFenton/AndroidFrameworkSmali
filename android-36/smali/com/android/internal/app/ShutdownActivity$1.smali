.class Lcom/android/internal/app/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ShutdownActivity;

.field final synthetic blacklist val$reason:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ShutdownActivity;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    iput-object p3, p0, Lcom/android/internal/app/ShutdownActivity$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 52
    nop

    .line 53
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 55
    .local v0, "pm":Landroid/os/IPowerManager;
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->-$$Nest$fgetmReboot(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 56
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->-$$Nest$fgetmConfirm(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    goto :goto_2a

    .line 58
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->-$$Nest$fgetmConfirm(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2a} :catch_2b

    .line 61
    :goto_2a
    goto :goto_2c

    .line 60
    :catch_2b
    move-exception v1

    .line 62
    :goto_2c
    return-void
.end method
