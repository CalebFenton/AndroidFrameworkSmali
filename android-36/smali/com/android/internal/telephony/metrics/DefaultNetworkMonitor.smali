.class public Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;
.super Landroid/os/Handler;
.source "DefaultNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DefaultNetworkMonitor"


# instance fields
.field private blacklist mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNetwork:Landroid/net/Network;

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNetwork(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;)Landroid/net/Network;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetwork(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Landroid/net/Network;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkCapabilities(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 3

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->registerSystemDefaultNetworkCallback(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist registerSystemDefaultNetworkCallback(Landroid/content/Context;)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_5

    return-void

    .line 74
    :cond_5
    const-class v0, Landroid/net/ConnectivityManager;

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_1b

    .line 77
    new-instance v0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 78
    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void

    .line 81
    :cond_1b
    sget-object p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->TAG:Ljava/lang/String;

    const-string p1, "registerSystemDefaultNetworkCallback: ConnectivityManager is null!"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method
