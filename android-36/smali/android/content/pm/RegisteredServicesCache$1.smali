.class Landroid/content/pm/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache;)V
    .registers 2
    .param p1, "this$0"    # Landroid/content/pm/RegisteredServicesCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$1;, "Landroid/content/pm/RegisteredServicesCache$1;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 244
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$1;, "Landroid/content/pm/RegisteredServicesCache$1;"
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, "uid":I
    if-eq v0, v1, :cond_12

    .line 246
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, p2, v2}, Landroid/content/pm/RegisteredServicesCache;->-$$Nest$mhandlePackageEvent(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 248
    :cond_12
    return-void
.end method
