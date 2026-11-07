.class public final synthetic Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

.field public final synthetic blacklist f$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;->f$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda0;->f$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->$r8$lambda$sFqsCS2uZnXi7q_kAL1hWr7x9nE(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V

    return-void
.end method
