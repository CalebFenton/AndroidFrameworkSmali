.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalOnlyHotspotObserver"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 7459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onRegistered(Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;)V
    .registers 2
    .param p1, "subscription"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;

    .line 7464
    return-void
.end method

.method public blacklist onStarted(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 7469
    return-void
.end method

.method public greylist-max-o onStopped()V
    .registers 1

    .line 7474
    return-void
.end method
