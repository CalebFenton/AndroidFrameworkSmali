.class Lcom/android/server/location/GpsLocationProvider$9;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;

    #@0
    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    const-wide/32 v6, 0x5265c00

    #@3
    .line 824
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@5
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    #@c
    move-result-wide v0

    #@d
    cmp-long v0, v0, v6

    #@f
    if-ltz v0, :cond_0

    #@11
    .line 825
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@13
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    #@1a
    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@1c
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    #@23
    move-result-wide v0

    #@24
    cmp-long v0, v0, v6

    #@26
    if-gez v0, :cond_2

    #@28
    .line 830
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2a
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    #@31
    move-result-wide v2

    #@32
    .line 831
    .local v2, "time":J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@34
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    #@3b
    move-result-wide v4

    #@3c
    .line 832
    .local v4, "timeReference":J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@3e
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    #@45
    move-result-wide v8

    #@46
    .line 833
    .local v8, "certainty":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@49
    move-result-wide v12

    #@4a
    .line 835
    .local v12, "now":J
    const-string/jumbo v0, "GpsLocationProvider"

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v6, "NTP server returned: "

    #@55
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 836
    const-string/jumbo v6, " ("

    #@60
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 836
    new-instance v6, Ljava/util/Date;

    #@66
    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@69
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 837
    const-string/jumbo v6, ") reference: "

    #@70
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 838
    const-string/jumbo v6, " certainty: "

    #@7b
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    .line 839
    const-string/jumbo v6, " system time offset: "

    #@86
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    .line 839
    sub-long v6, v2, v12

    #@8c
    .line 835
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 841
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@99
    long-to-int v6, v8

    #@9a
    invoke-static/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->-wrap22(Lcom/android/server/location/GpsLocationProvider;JJI)V

    #@9d
    .line 842
    const-wide/32 v10, 0x5265c00

    #@a0
    .line 843
    .local v10, "delay":J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@a2
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get5(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$BackOff;->reset()V

    #@a9
    .line 849
    .end local v2    # "time":J
    .end local v4    # "timeReference":J
    .end local v8    # "certainty":J
    .end local v12    # "now":J
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@ab
    const/16 v1, 0xa

    #@ad
    const/4 v6, 0x0

    #@ae
    const/4 v7, 0x0

    #@af
    invoke-static {v0, v1, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->-wrap26(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    #@b2
    .line 851
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@b4
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get8(Lcom/android/server/location/GpsLocationProvider;)Z

    #@b7
    move-result v0

    #@b8
    if-eqz v0, :cond_1

    #@ba
    .line 854
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@bc
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get3(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    #@bf
    move-result-object v0

    #@c0
    const/4 v1, 0x5

    #@c1
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@c4
    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@c6
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get11(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@cd
    .line 820
    return-void

    #@ce
    .line 845
    .end local v10    # "delay":J
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-get0()Z

    #@d1
    move-result v0

    #@d2
    if-eqz v0, :cond_3

    #@d4
    const-string/jumbo v0, "GpsLocationProvider"

    #@d7
    const-string/jumbo v1, "requestTime failed"

    #@da
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 846
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@df
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-get5(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$BackOff;->nextBackoffMillis()J

    #@e6
    move-result-wide v10

    #@e7
    .restart local v10    # "delay":J
    goto :goto_0
.end method
