.class Lcom/android/server/wifi/WifiNative$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1246
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNative$MonitorThread;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1248
    const-string/jumbo v0, "WifiNative-HAL"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Waiting for HAL events mWifiHalHandle="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-get0()J

    #@12
    move-result-wide v2

    #@13
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1249
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-wrap0()V

    #@25
    .line 1247
    return-void
.end method
