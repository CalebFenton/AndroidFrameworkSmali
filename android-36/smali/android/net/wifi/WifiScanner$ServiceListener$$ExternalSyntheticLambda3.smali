.class public final synthetic Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

.field public final synthetic blacklist f$1:Landroid/net/wifi/WifiScanner$ScanListener;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    iput-object p2, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;->f$1:Landroid/net/wifi/WifiScanner$ScanListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda3;->f$1:Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner$ServiceListener;->lambda$onFullResults$3(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/WifiScanner$ScanListener;)V

    return-void
.end method
