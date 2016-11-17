.class Lcom/android/server/location/GnssLocationProvider$12;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    #@0
    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 978
    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    #@3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@5
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get11(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    #@c
    .line 979
    .local v1, "xtraDownloader":Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    #@f
    move-result-object v0

    #@10
    .line 980
    .local v0, "data":[B
    if-eqz v0, :cond_1

    #@12
    .line 981
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    const-string/jumbo v2, "GnssLocationProvider"

    #@1b
    const-string/jumbo v3, "calling native_inject_xtra_data"

    #@1e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 982
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@23
    array-length v3, v0

    #@24
    invoke-static {v2, v0, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap25(Lcom/android/server/location/GnssLocationProvider;[BI)V

    #@27
    .line 983
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@29
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    #@30
    .line 986
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@32
    const/16 v3, 0xb

    #@34
    const/4 v4, 0x0

    #@35
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    #@38
    .line 988
    if-nez v0, :cond_2

    #@3a
    .line 991
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@3c
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get4(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    #@3f
    move-result-object v2

    #@40
    .line 992
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@42
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get14(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->nextBackoffMillis()J

    #@49
    move-result-wide v4

    #@4a
    .line 991
    const/4 v3, 0x6

    #@4b
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@4e
    .line 996
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$12;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@50
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get13(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@57
    .line 997
    const-string/jumbo v2, "GnssLocationProvider"

    #@5a
    const-string/jumbo v3, "WakeLock released by handleDownloadXtraData()"

    #@5d
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 977
    return-void
.end method
