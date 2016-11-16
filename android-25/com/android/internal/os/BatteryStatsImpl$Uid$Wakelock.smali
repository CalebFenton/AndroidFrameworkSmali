.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wakelock"
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

.field mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field protected mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 0
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@0
    .prologue
    .line 6719
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    #@3
    .line 6720
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    .line 6721
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    .line 6719
    return-void
.end method

.method private readDurationTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    .locals 7
    .param p1, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;"
        }
    .end annotation

    #@0
    .prologue
    .line 6749
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 6750
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 6753
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@10
    move v3, p1

    #@11
    move-object v4, p2

    #@12
    move-object v5, p3

    #@13
    move-object v6, p4

    #@14
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@17
    return-object v0
.end method

.method private readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .param p1, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;"
        }
    .end annotation

    #@0
    .prologue
    .line 6733
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 6734
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 6737
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@10
    move v3, p1

    #@11
    move-object v4, p2

    #@12
    move-object v5, p3

    #@13
    move-object v6, p4

    #@14
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@17
    return-object v0
.end method


# virtual methods
.method public getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .param p1, "type"    # I

    #@0
    .prologue
    .line 6821
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 6859
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "type="

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 6823
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@1f
    .line 6824
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    if-nez v0, :cond_0

    #@21
    .line 6825
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@23
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@25
    iget-object v1, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@27
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@29
    .line 6826
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2b
    iget-object v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@2d
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2f
    iget-object v5, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@31
    .line 6825
    const/4 v3, 0x0

    #@32
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@35
    .line 6827
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@37
    .line 6829
    :cond_0
    return-object v0

    #@38
    .line 6832
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3a
    .line 6833
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_1

    #@3c
    .line 6834
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3e
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@40
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@42
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@44
    .line 6835
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@46
    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    #@48
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@4a
    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4c
    .line 6834
    const/4 v4, 0x1

    #@4d
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@50
    .line 6836
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@52
    .line 6838
    :cond_1
    return-object v1

    #@53
    .line 6841
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@55
    .line 6842
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_2

    #@57
    .line 6843
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@59
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5b
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@5d
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5f
    .line 6844
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@61
    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    #@63
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@65
    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@67
    .line 6843
    const/4 v4, 0x2

    #@68
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@6b
    .line 6845
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6d
    .line 6847
    :cond_2
    return-object v1

    #@6e
    .line 6850
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@70
    .line 6851
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_3

    #@72
    .line 6852
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@74
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@76
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@78
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7a
    .line 6853
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@7c
    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    #@7e
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@80
    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@82
    .line 6852
    const/16 v4, 0x12

    #@84
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@87
    .line 6854
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@89
    .line 6856
    :cond_3
    return-object v1

    #@8a
    .line 6821
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 6810
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 6811
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 6816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "type = "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 6812
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1f
    return-object v0

    #@20
    .line 6813
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@22
    return-object v0

    #@23
    .line 6814
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25
    return-object v0

    #@26
    .line 6815
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@28
    return-object v0

    #@29
    .line 6811
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6793
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@4
    .line 6792
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readDurationTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@b
    .line 6795
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    #@f
    .line 6794
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v1, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@16
    .line 6797
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@18
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    #@1a
    .line 6796
    const/4 v1, 0x2

    #@1b
    invoke-direct {p0, v1, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@21
    .line 6799
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@23
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    #@25
    .line 6798
    const/16 v1, 0x12

    #@27
    invoke-direct {p0, v1, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2d
    .line 6791
    return-void
.end method

.method reset()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 6757
    const/4 v0, 0x0

    #@4
    .line 6758
    .local v0, "wlactive":Z
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 6759
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_8

    #@10
    move v0, v1

    #@11
    .line 6761
    .end local v0    # "wlactive":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 6762
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@17
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->reset(Z)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_9

    #@1d
    move v3, v1

    #@1e
    :goto_1
    or-int/2addr v0, v3

    #@1f
    .line 6764
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 6765
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_a

    #@2b
    move v3, v1

    #@2c
    :goto_2
    or-int/2addr v0, v3

    #@2d
    .line 6767
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 6768
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@33
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_b

    #@39
    move v3, v1

    #@3a
    :goto_3
    or-int/2addr v0, v3

    #@3b
    .line 6770
    :cond_3
    if-nez v0, :cond_7

    #@3d
    .line 6771
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3f
    if-eqz v3, :cond_4

    #@41
    .line 6772
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@43
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@46
    .line 6773
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@48
    .line 6775
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@4a
    if-eqz v3, :cond_5

    #@4c
    .line 6776
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@4e
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->detach()V

    #@51
    .line 6777
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@53
    .line 6779
    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@55
    if-eqz v3, :cond_6

    #@57
    .line 6780
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@59
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@5c
    .line 6781
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5e
    .line 6783
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@60
    if-eqz v3, :cond_7

    #@62
    .line 6784
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@64
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@67
    .line 6785
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@69
    .line 6788
    :cond_7
    if-eqz v0, :cond_c

    #@6b
    :goto_4
    return v1

    #@6c
    .restart local v0    # "wlactive":Z
    :cond_8
    move v0, v2

    #@6d
    .line 6759
    goto :goto_0

    #@6e
    .end local v0    # "wlactive":Z
    :cond_9
    move v3, v2

    #@6f
    .line 6762
    goto :goto_1

    #@70
    :cond_a
    move v3, v2

    #@71
    .line 6765
    goto :goto_2

    #@72
    :cond_b
    move v3, v2

    #@73
    .line 6768
    goto :goto_3

    #@74
    :cond_c
    move v1, v2

    #@75
    .line 6788
    goto :goto_4
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 6803
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    #@2
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@5
    .line 6804
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@a
    .line 6805
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@f
    .line 6806
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@14
    .line 6802
    return-void
.end method
