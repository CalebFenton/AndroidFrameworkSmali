.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@0
    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    #@12
    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@14
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-set1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@17
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@19
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-set0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@1c
    .line 482
    return-void
.end method
