.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    #@0
    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 641
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #@7
    .line 642
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    #@a
    move-result-object v0

    #@b
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    #@12
    .line 643
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    #@15
    move-result-object v0

    #@16
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@1d
    .line 644
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@24
    .line 640
    return-void
.end method

.method private delay(J)V
    .locals 9
    .param p1, "duration"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 648
    cmp-long v3, p1, v6

    #@4
    if-lez v3, :cond_0

    #@6
    .line 649
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v4

    #@a
    add-long v0, p1, v4

    #@c
    .line 652
    .local v0, "bedtime":J
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 656
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 647
    .end local v0    # "bedtime":J
    :cond_0
    return-void

    #@14
    .line 654
    .restart local v0    # "bedtime":J
    :catch_0
    move-exception v2

    #@15
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@16
    .line 659
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19
    move-result-wide v4

    #@1a
    sub-long p1, v0, v4

    #@1c
    .line 660
    cmp-long v3, p1, v6

    #@1e
    if-lez v3, :cond_0

    #@20
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    .line 665
    const/4 v9, -0x8

    #@1
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    #@4
    .line 666
    monitor-enter p0

    #@5
    .line 667
    :try_start_0
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #@7
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[J

    #@a
    move-result-object v5

    #@b
    .line 668
    .local v5, "pattern":[J
    array-length v4, v5

    #@c
    .line 669
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #@e
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    #@11
    move-result v6

    #@12
    .line 670
    .local v6, "repeat":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #@14
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@17
    move-result v7

    #@18
    .line 671
    .local v7, "uid":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #@1a
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    #@1d
    move-result v8

    #@1e
    .line 672
    .local v8, "usageHint":I
    const/4 v2, 0x0

    #@1f
    .line 673
    .local v2, "index":I
    const-wide/16 v0, 0x0

    #@21
    .local v0, "duration":J
    move v3, v2

    #@22
    .line 675
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    #@24
    if-nez v9, :cond_7

    #@26
    .line 677
    if-ge v3, v4, :cond_0

    #@28
    .line 678
    add-int/lit8 v2, v3, 0x1

    #@2a
    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v10, v5, v3

    #@2c
    add-long/2addr v0, v10

    #@2d
    move v3, v2

    #@2e
    .line 682
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    #@31
    .line 683
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    #@33
    if-eqz v9, :cond_3

    #@35
    move v2, v3

    #@36
    .line 703
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@38
    invoke-static {v9}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    .line 705
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@42
    invoke-static {v9}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    #@45
    move-result-object v10

    #@46
    monitor-enter v10

    #@47
    .line 706
    :try_start_1
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@49
    iget-object v9, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@4b
    if-ne v9, p0, :cond_1

    #@4d
    .line 707
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@4f
    const/4 v11, 0x0

    #@50
    iput-object v11, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@52
    .line 709
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    #@54
    if-nez v9, :cond_2

    #@56
    .line 712
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@58
    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #@5a
    invoke-static {v9, v11}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    #@5d
    .line 713
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@5f
    invoke-static {v9}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@62
    :cond_2
    monitor-exit v10

    #@63
    .line 664
    return-void

    #@64
    .line 687
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_3
    if-ge v3, v4, :cond_5

    #@66
    .line 690
    add-int/lit8 v2, v3, 0x1

    #@68
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    aget-wide v0, v5, v3

    #@6a
    .line 691
    const-wide/16 v10, 0x0

    #@6c
    cmp-long v9, v0, v10

    #@6e
    if-lez v9, :cond_4

    #@70
    .line 692
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #@72
    invoke-static {v9, v0, v1, v7, v8}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@75
    :cond_4
    :goto_2
    move v3, v2

    #@76
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@77
    .line 695
    :cond_5
    if-gez v6, :cond_6

    #@79
    move v2, v3

    #@7a
    .line 696
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    #@7b
    .line 698
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_6
    move v2, v6

    #@7c
    .line 699
    .end local v3    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v0, 0x0

    #@7e
    goto :goto_2

    #@7f
    .line 666
    .end local v0    # "duration":J
    .end local v2    # "index":I
    .end local v4    # "len":I
    .end local v5    # "pattern":[J
    .end local v6    # "repeat":I
    .end local v7    # "uid":I
    .end local v8    # "usageHint":I
    :catchall_0
    move-exception v9

    #@80
    monitor-exit p0

    #@81
    throw v9

    #@82
    .line 705
    .restart local v0    # "duration":J
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "pattern":[J
    .restart local v6    # "repeat":I
    .restart local v7    # "uid":I
    .restart local v8    # "usageHint":I
    :catchall_1
    move-exception v9

    #@83
    monitor-exit v10

    #@84
    throw v9

    #@85
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_7
    move v2, v3

    #@86
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method
