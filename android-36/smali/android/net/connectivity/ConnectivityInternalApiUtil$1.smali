.class Landroid/net/connectivity/ConnectivityInternalApiUtil$1;
.super Landroid/net/NetworkAgent;
.source "ConnectivityInternalApiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/ConnectivityInternalApiUtil;->buildTetheringNetworkAgent(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;ILandroid/net/LinkProperties;)Landroid/net/NetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "localNetworkConfig"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p7, "score"    # Landroid/net/NetworkScore;
    .param p8, "config"    # Landroid/net/NetworkAgentConfig;
    .param p9, "provider"    # Landroid/net/NetworkProvider;

    .line 103
    invoke-direct/range {p0 .. p9}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    return-void
.end method
