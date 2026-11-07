.class Landroid/content/pm/RegisteredServicesCache$3;
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

    .line 259
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$3;, "Landroid/content/pm/RegisteredServicesCache$3;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$3;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 262
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$3;, "Landroid/content/pm/RegisteredServicesCache$3;"
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "userId":I
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$3;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-virtual {v1, v0}, Landroid/content/pm/RegisteredServicesCache;->onUserRemoved(I)V

    .line 267
    return-void
.end method
