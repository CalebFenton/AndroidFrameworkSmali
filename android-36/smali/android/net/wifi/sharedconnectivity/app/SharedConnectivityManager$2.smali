.class Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SharedConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 299
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$fgetmBroadcastReceiver(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;->this$0:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->-$$Nest$mbind(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V

    .line 304
    return-void
.end method
