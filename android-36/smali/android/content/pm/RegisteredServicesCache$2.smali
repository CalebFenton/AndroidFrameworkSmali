.class Landroid/content/pm/RegisteredServicesCache$2;
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

    .line 251
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$2;, "Landroid/content/pm/RegisteredServicesCache$2;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 255
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$2;, "Landroid/content/pm/RegisteredServicesCache$2;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/content/pm/RegisteredServicesCache;->-$$Nest$mhandlePackageEvent(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 256
    return-void
.end method
