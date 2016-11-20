.class Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartSingleScanListener"
.end annotation


# instance fields
.field private final mIsFullBandScan:Z

.field private final mIsWatchdogTriggered:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "isWatchdogTriggered"    # Z
    .param p3, "isFullBandScan"    # Z

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 182
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsWatchdogTriggered:Z

    #@7
    .line 183
    iput-boolean p3, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    #@9
    .line 181
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsWatchdogTriggered:Z

    #@4
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap6(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V

    #@9
    .line 187
    return-void
.end method
