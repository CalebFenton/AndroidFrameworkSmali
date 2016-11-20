.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastScanSettings"
.end annotation


# instance fields
.field public backgroundScanActive:Z

.field public hwPnoScanActive:Z

.field public maxAps:I

.field public pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field public reportEvents:I

.field public reportNumScansThreshold:I

.field public reportPercentThreshold:I

.field public reportSingleScanFullResults:Z

.field public scanId:I

.field public singleScanActive:Z

.field public singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field public startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "startTime"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 787
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@6
    .line 805
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@8
    .line 819
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@a
    .line 783
    iput-wide p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->startTime:J

    #@c
    .line 782
    return-void
.end method


# virtual methods
.method public setBackgroundScan(IIIII)V
    .locals 1
    .param p1, "scanId"    # I
    .param p2, "maxAps"    # I
    .param p3, "reportEvents"    # I
    .param p4, "reportNumScansThreshold"    # I
    .param p5, "reportPercentThreshold"    # I

    #@0
    .prologue
    .line 796
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@3
    .line 797
    iput p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    #@5
    .line 798
    iput p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->maxAps:I

    #@7
    .line 799
    iput p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@9
    .line 800
    iput p4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    #@b
    .line 801
    iput p5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportPercentThreshold:I

    #@d
    .line 795
    return-void
.end method

.method public setHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V
    .locals 1
    .param p1, "pnoScanEventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@0
    .prologue
    .line 823
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@3
    .line 824
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@5
    .line 822
    return-void
.end method

.method public setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V
    .locals 1
    .param p1, "reportSingleScanFullResults"    # Z
    .param p2, "singleScanFreqs"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .param p3, "singleScanEventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@0
    .prologue
    .line 813
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@3
    .line 814
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    #@5
    .line 815
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@7
    .line 816
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@9
    .line 812
    return-void
.end method
