.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
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
    .line 103
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPnoScanFailed()V
    .locals 2

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@3
    const-string/jumbo v1, "Pno scan failure received"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-wrap2(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    #@e
    .line 104
    return-void
.end method
