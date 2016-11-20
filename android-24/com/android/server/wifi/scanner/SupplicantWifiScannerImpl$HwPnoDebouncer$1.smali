.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@0
    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    #@0
    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@4
    invoke-static {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->-get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)Z

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->-wrap0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;Z)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1061
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@10
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->-get1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1062
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@18
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->-get1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;)Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;->onPnoScanFailed()V

    #@1f
    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$1;->this$1:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@21
    const/4 v1, 0x0

    #@22
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->-set0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;Z)Z

    #@25
    .line 1058
    return-void
.end method
