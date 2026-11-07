.class final Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DefaultNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->-$$Nest$fputmNetwork(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Landroid/net/Network;)V

    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->-$$Nest$fgetmNetwork(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;)Landroid/net/Network;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->-$$Nest$fputmNetworkCapabilities(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Landroid/net/NetworkCapabilities;)V

    :cond_d
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 3

    .line 60
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->-$$Nest$fputmNetwork(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Landroid/net/Network;)V

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->-$$Nest$fputmNetworkCapabilities(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Landroid/net/NetworkCapabilities;)V

    return-void
.end method
