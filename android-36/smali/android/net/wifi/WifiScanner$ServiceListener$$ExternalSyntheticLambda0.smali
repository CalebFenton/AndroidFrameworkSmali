.class public final synthetic Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiScanner$ScanListener;

.field public final synthetic blacklist f$1:Landroid/net/wifi/ScanResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiScanner$ScanListener;Landroid/net/wifi/ScanResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiScanner$ScanListener;

    iput-object p2, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/ScanResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/WifiScanner$ScanListener;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner$ServiceListener;->lambda$onFullResult$2(Landroid/net/wifi/WifiScanner$ScanListener;Landroid/net/wifi/ScanResult;)V

    return-void
.end method
