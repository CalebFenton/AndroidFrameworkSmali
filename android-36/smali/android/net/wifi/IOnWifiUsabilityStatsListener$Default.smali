.class public Landroid/net/wifi/IOnWifiUsabilityStatsListener$Default;
.super Ljava/lang/Object;
.source "IOnWifiUsabilityStatsListener.java"

# interfaces
.implements Landroid/net/wifi/IOnWifiUsabilityStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IOnWifiUsabilityStatsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 4
    .param p1, "seqNum"    # I
    .param p2, "isSameBssidAndFreq"    # Z
    .param p3, "stats"    # Landroid/net/wifi/WifiUsabilityStatsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
