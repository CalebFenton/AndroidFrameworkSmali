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

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "isFullBandScan"    # Z

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 185
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    #@7
    .line 184
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    #@4
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap6(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    #@7
    .line 189
    return-void
.end method
