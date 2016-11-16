.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;
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

.field final synthetic val$newScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
    .param p2, "val$newScanSettings"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@2
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;->val$newScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;->val$newScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 459
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;->val$newScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@8
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@a
    .line 460
    const/4 v1, 0x3

    #@b
    .line 459
    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@e
    .line 457
    :cond_0
    return-void
.end method
