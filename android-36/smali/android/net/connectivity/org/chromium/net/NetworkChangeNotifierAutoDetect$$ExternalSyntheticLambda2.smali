.class public final synthetic Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

.field public final synthetic blacklist f$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;->f$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;->f$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;->f$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$$ExternalSyntheticLambda2;->f$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->$r8$lambda$4YImEIJ9VM8hDN15UphigKZEQeM(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V

    return-void
.end method
