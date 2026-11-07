.class Lcom/android/internal/app/SuspendedAppActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SuspendedAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuspendedAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SuspendedAppActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/SuspendedAppActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/SuspendedAppActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    const-string v0, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 85
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "modified":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-static {v1}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-static {v2}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$misPackageSuspended(Lcom/android/internal/app/SuspendedAppActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 89
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/SuspendedAppActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 90
    invoke-static {}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-static {v3}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has modified suspension conditions while dialog was visible. Finishing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    .line 97
    .end local v0    # "modified":[Ljava/lang/String;
    :cond_5f
    return-void
.end method
