.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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
    .line 126
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

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
    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-get1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-wrap1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 127
    return-void

    #@e
    .line 128
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
