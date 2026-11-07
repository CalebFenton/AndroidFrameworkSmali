.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;
.super Landroid/content/IntentFilter;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkConnectivityIntentFilter"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1408
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 1409
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    return-void
.end method
