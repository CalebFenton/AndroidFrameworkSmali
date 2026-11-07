.class Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProxyChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$26CVA0txRESoCRgSjkgmd_rqhxk(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;->this$0:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/net/connectivity/org/chromium/net/ProxyChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;-><init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$0(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;->this$0:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->-$$Nest$smextractNewProxy(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->-$$Nest$mproxySettingsChanged(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 167
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;->this$0:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->-$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Ljava/lang/Runnable;)V

    .line 169
    :cond_16
    return-void
.end method
