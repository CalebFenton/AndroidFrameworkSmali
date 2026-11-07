.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;->onPnoRequestFailed()V

    return-void
.end method
