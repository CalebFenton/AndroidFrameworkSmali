.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 596
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 600
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmRegistered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 601
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mconnectionTypeChanged(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 603
    :cond_d
    return-void
.end method

.method public whitelist onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 614
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$DefaultNetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 608
    return-void
.end method
