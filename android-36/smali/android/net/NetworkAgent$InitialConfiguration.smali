.class Landroid/net/NetworkAgent$InitialConfiguration;
.super Ljava/lang/Object;
.source "NetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitialConfiguration"
.end annotation


# instance fields
.field public final blacklist capabilities:Landroid/net/NetworkCapabilities;

.field public final blacklist config:Landroid/net/NetworkAgentConfig;

.field public final blacklist context:Landroid/content/Context;

.field public final blacklist info:Landroid/net/NetworkInfo;

.field public final blacklist localNetworkConfig:Landroid/net/connectivity/android/net/LocalNetworkConfig;

.field public final blacklist properties:Landroid/net/LinkProperties;

.field public final blacklist score:Landroid/net/NetworkScore;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkInfo;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "properties"    # Landroid/net/LinkProperties;
    .param p4, "localNetworkConfig"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p5, "score"    # Landroid/net/NetworkScore;
    .param p6, "config"    # Landroid/net/NetworkAgentConfig;
    .param p7, "info"    # Landroid/net/NetworkInfo;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Landroid/net/NetworkAgent$InitialConfiguration;->context:Landroid/content/Context;

    .line 607
    iput-object p2, p0, Landroid/net/NetworkAgent$InitialConfiguration;->capabilities:Landroid/net/NetworkCapabilities;

    .line 608
    iput-object p3, p0, Landroid/net/NetworkAgent$InitialConfiguration;->properties:Landroid/net/LinkProperties;

    .line 609
    iput-object p5, p0, Landroid/net/NetworkAgent$InitialConfiguration;->score:Landroid/net/NetworkScore;

    .line 610
    iput-object p6, p0, Landroid/net/NetworkAgent$InitialConfiguration;->config:Landroid/net/NetworkAgentConfig;

    .line 611
    iput-object p7, p0, Landroid/net/NetworkAgent$InitialConfiguration;->info:Landroid/net/NetworkInfo;

    .line 612
    iput-object p4, p0, Landroid/net/NetworkAgent$InitialConfiguration;->localNetworkConfig:Landroid/net/connectivity/android/net/LocalNetworkConfig;

    .line 613
    return-void
.end method
