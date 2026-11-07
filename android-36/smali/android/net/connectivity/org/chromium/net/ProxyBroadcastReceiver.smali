.class final Landroid/net/connectivity/org/chromium/net/ProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProxyBroadcastReceiver.java"


# instance fields
.field private final blacklist mListener:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/ProxyBroadcastReceiver;->mListener:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyBroadcastReceiver;->mListener:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    invoke-virtual {v0, p2}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->updateProxyConfigFromConnectivityManager(Landroid/content/Intent;)V

    .line 28
    :cond_11
    return-void
.end method
