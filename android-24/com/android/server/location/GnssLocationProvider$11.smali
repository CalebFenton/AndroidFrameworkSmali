.class Lcom/android/server/location/GnssLocationProvider$11;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleInjectNtpTime()V
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
    .line 903
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    #@0
    .prologue
    .line 909
    const/4 v9, 0x1

    #@1
    .line 910
    .local v9, "refreshSuccess":Z
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@5
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    #@c
    move-result-wide v16

    #@d
    const-wide/32 v18, 0x5265c00

    #@10
    cmp-long v3, v16, v18

    #@12
    if-ltz v3, :cond_0

    #@14
    .line 911
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@18
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    #@1f
    move-result v9

    #@20
    .line 915
    .end local v9    # "refreshSuccess":Z
    :cond_0
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@24
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    #@2b
    move-result-wide v16

    #@2c
    const-wide/32 v18, 0x5265c00

    #@2f
    cmp-long v3, v16, v18

    #@31
    if-gez v3, :cond_3

    #@33
    .line 916
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@37
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    #@3e
    move-result-wide v4

    #@3f
    .line 917
    .local v4, "time":J
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@43
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    #@4a
    move-result-wide v6

    #@4b
    .line 918
    .local v6, "timeReference":J
    move-object/from16 v0, p0

    #@4d
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@4f
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    #@56
    move-result-wide v10

    #@57
    .line 919
    .local v10, "certainty":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5a
    move-result-wide v14

    #@5b
    .line 921
    .local v14, "now":J
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_1

    #@61
    .line 922
    const-string/jumbo v3, "GnssLocationProvider"

    #@64
    new-instance v8, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v16, "NTP server returned: "

    #@6c
    move-object/from16 v0, v16

    #@6e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@75
    move-result-object v8

    #@76
    .line 923
    const-string/jumbo v16, " ("

    #@79
    .line 922
    move-object/from16 v0, v16

    #@7b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    .line 923
    new-instance v16, Ljava/util/Date;

    #@81
    move-object/from16 v0, v16

    #@83
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@86
    .line 922
    move-object/from16 v0, v16

    #@88
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v8

    #@8c
    .line 924
    const-string/jumbo v16, ") reference: "

    #@8f
    .line 922
    move-object/from16 v0, v16

    #@91
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    .line 925
    const-string/jumbo v16, " certainty: "

    #@9c
    .line 922
    move-object/from16 v0, v16

    #@9e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    .line 926
    const-string/jumbo v16, " system time offset: "

    #@a9
    .line 922
    move-object/from16 v0, v16

    #@ab
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    .line 926
    sub-long v16, v4, v14

    #@b1
    .line 922
    move-wide/from16 v0, v16

    #@b3
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v8

    #@b7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v8

    #@bb
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 929
    :cond_1
    move-object/from16 v0, p0

    #@c0
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@c2
    long-to-int v8, v10

    #@c3
    invoke-static/range {v3 .. v8}, Lcom/android/server/location/GnssLocationProvider;->-wrap24(Lcom/android/server/location/GnssLocationProvider;JJI)V

    #@c6
    .line 930
    const-wide/32 v12, 0x5265c00

    #@c9
    .line 931
    .local v12, "delay":J
    move-object/from16 v0, p0

    #@cb
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@cd
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    #@d4
    .line 937
    .end local v4    # "time":J
    .end local v6    # "timeReference":J
    .end local v10    # "certainty":J
    .end local v14    # "now":J
    :goto_0
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@d8
    const/16 v8, 0xa

    #@da
    const/16 v16, 0x0

    #@dc
    const/16 v17, 0x0

    #@de
    move/from16 v0, v16

    #@e0
    move-object/from16 v1, v17

    #@e2
    invoke-static {v3, v8, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    #@e5
    .line 939
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    #@e8
    move-result v3

    #@e9
    if-eqz v3, :cond_2

    #@eb
    .line 941
    const-string/jumbo v3, "onDemandTimeInjection=%s, refreshSuccess=%s, delay=%s"

    #@ee
    .line 940
    const/4 v8, 0x3

    #@ef
    new-array v8, v8, [Ljava/lang/Object;

    #@f1
    .line 942
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@f5
    move-object/from16 v16, v0

    #@f7
    invoke-static/range {v16 .. v16}, Lcom/android/server/location/GnssLocationProvider;->-get9(Lcom/android/server/location/GnssLocationProvider;)Z

    #@fa
    move-result v16

    #@fb
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@fe
    move-result-object v16

    #@ff
    const/16 v17, 0x0

    #@101
    aput-object v16, v8, v17

    #@103
    .line 943
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@106
    move-result-object v16

    #@107
    const/16 v17, 0x1

    #@109
    aput-object v16, v8, v17

    #@10b
    .line 944
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10e
    move-result-object v16

    #@10f
    const/16 v17, 0x2

    #@111
    aput-object v16, v8, v17

    #@113
    .line 940
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@116
    move-result-object v2

    #@117
    .line 945
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v3, "GnssLocationProvider"

    #@11a
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11d
    .line 947
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    #@11f
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@121
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get9(Lcom/android/server/location/GnssLocationProvider;)Z

    #@124
    move-result v3

    #@125
    if-nez v3, :cond_4

    #@127
    if-eqz v9, :cond_4

    #@129
    .line 954
    :goto_1
    move-object/from16 v0, p0

    #@12b
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@12d
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get13(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    #@130
    move-result-object v3

    #@131
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@134
    .line 955
    const-string/jumbo v3, "GnssLocationProvider"

    #@137
    const-string/jumbo v8, "WakeLock released by handleInjectNtpTime()"

    #@13a
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13d
    .line 905
    return-void

    #@13e
    .line 933
    .end local v12    # "delay":J
    :cond_3
    const-string/jumbo v3, "GnssLocationProvider"

    #@141
    const-string/jumbo v8, "requestTime failed"

    #@144
    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    .line 934
    move-object/from16 v0, p0

    #@149
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@14b
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    #@14e
    move-result-object v3

    #@14f
    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->nextBackoffMillis()J

    #@152
    move-result-wide v12

    #@153
    .restart local v12    # "delay":J
    goto :goto_0

    #@154
    .line 950
    :cond_4
    move-object/from16 v0, p0

    #@156
    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider$11;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@158
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get4(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    #@15b
    move-result-object v3

    #@15c
    const/4 v8, 0x5

    #@15d
    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@160
    goto :goto_1
.end method
