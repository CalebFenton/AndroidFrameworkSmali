.class public final synthetic Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiScanner$ScanListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda6;->f$0:Landroid/net/wifi/WifiScanner$ScanListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda6;->f$0:Landroid/net/wifi/WifiScanner$ScanListener;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method
