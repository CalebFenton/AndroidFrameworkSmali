.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldChargeMAh:I

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 4723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4724
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@7
    .line 4725
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@9
    .line 4726
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@b
    .line 4727
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@d
    .line 4728
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@f
    .line 4729
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@11
    .line 4730
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@13
    .line 4731
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@15
    .line 4732
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@17
    .line 4733
    const-wide/16 v0, -0x1

    #@19
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@1b
    .line 4723
    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    #@0
    .prologue
    .line 5063
    const/16 v0, 0x2f

    #@2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 5064
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    #@8
    .line 5065
    const-string/jumbo v0, ":"

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 5066
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@11
    .line 5067
    const-string/jumbo v0, ":"

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 5068
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    .line 5062
    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    #@0
    .prologue
    .line 5054
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@3
    .line 5055
    const-string/jumbo v0, "="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 5056
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@c
    .line 5057
    const-string/jumbo v0, "u+"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 5058
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@15
    .line 5059
    const-string/jumbo v0, "s"

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 5053
    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    #@0
    .prologue
    .line 4748
    if-nez p5, :cond_1

    #@2
    .line 4749
    const-string/jumbo v0, "  "

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 4750
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@a
    sub-long v0, v0, p3

    #@c
    const/16 v2, 0x13

    #@e
    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@11
    .line 4751
    const-string/jumbo v0, " ("

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 4752
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1c
    .line 4753
    const-string/jumbo v0, ") "

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 4764
    :goto_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@24
    const/4 v1, 0x4

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 4765
    if-eqz p5, :cond_0

    #@29
    .line 4766
    const-string/jumbo v0, ":"

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 4768
    :cond_0
    const-string/jumbo v0, "START"

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 4769
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    #@38
    .line 4747
    :goto_1
    return-void

    #@39
    .line 4755
    :cond_1
    const/16 v0, 0x9

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3e
    const/16 v0, 0x2c

    #@40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@43
    .line 4756
    const-string/jumbo v0, "h"

    #@46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    const/16 v0, 0x2c

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@4e
    .line 4757
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@50
    const-wide/16 v2, 0x0

    #@52
    cmp-long v0, v0, v2

    #@54
    if-gez v0, :cond_2

    #@56
    .line 4758
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@58
    sub-long v0, v0, p3

    #@5a
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@5d
    .line 4762
    :goto_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@5f
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@61
    goto :goto_0

    #@62
    .line 4760
    :cond_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@64
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@66
    sub-long/2addr v0, v2

    #@67
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@6a
    goto :goto_2

    #@6b
    .line 4770
    :cond_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6d
    const/4 v1, 0x5

    #@6e
    if-eq v0, v1, :cond_4

    #@70
    .line 4771
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@72
    const/4 v1, 0x7

    #@73
    if-ne v0, v1, :cond_8

    #@75
    .line 4772
    :cond_4
    if-eqz p5, :cond_5

    #@77
    .line 4773
    const-string/jumbo v0, ":"

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 4775
    :cond_5
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@7f
    const/4 v1, 0x7

    #@80
    if-ne v0, v1, :cond_6

    #@82
    .line 4776
    const-string/jumbo v0, "RESET:"

    #@85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    .line 4777
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    #@8b
    .line 4779
    :cond_6
    const-string/jumbo v0, "TIME:"

    #@8e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    .line 4780
    if-eqz p5, :cond_7

    #@93
    .line 4781
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@95
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    #@98
    goto :goto_1

    #@99
    .line 4783
    :cond_7
    const-string/jumbo v0, " "

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    .line 4784
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    #@a2
    .line 4785
    iget-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@a4
    .line 4784
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@a7
    move-result-object v0

    #@a8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@af
    goto :goto_1

    #@b0
    .line 4787
    :cond_8
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@b2
    const/16 v1, 0x8

    #@b4
    if-ne v0, v1, :cond_a

    #@b6
    .line 4788
    if-eqz p5, :cond_9

    #@b8
    .line 4789
    const-string/jumbo v0, ":"

    #@bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 4791
    :cond_9
    const-string/jumbo v0, "SHUTDOWN"

    #@c1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    goto/16 :goto_1

    #@c6
    .line 4792
    :cond_a
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@c8
    const/4 v1, 0x6

    #@c9
    if-ne v0, v1, :cond_c

    #@cb
    .line 4793
    if-eqz p5, :cond_b

    #@cd
    .line 4794
    const-string/jumbo v0, ":"

    #@d0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 4796
    :cond_b
    const-string/jumbo v0, "*OVERFLOW*"

    #@d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d9
    goto/16 :goto_1

    #@db
    .line 4798
    :cond_c
    if-nez p5, :cond_25

    #@dd
    .line 4799
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@df
    const/16 v1, 0xa

    #@e1
    if-ge v0, v1, :cond_1e

    #@e3
    const-string/jumbo v0, "00"

    #@e6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    .line 4801
    :cond_d
    :goto_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ee
    .line 4802
    if-eqz p6, :cond_f

    #@f0
    .line 4803
    const-string/jumbo v0, " "

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 4804
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@f8
    if-ltz v0, :cond_e

    #@fa
    .line 4805
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@fc
    const/16 v1, 0x10

    #@fe
    if-ge v0, v1, :cond_1f

    #@100
    const-string/jumbo v0, "0000000"

    #@103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@106
    .line 4812
    :cond_e
    :goto_4
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@108
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10f
    .line 4820
    :cond_f
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@111
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@113
    if-eq v0, v1, :cond_10

    #@115
    .line 4821
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@117
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@119
    .line 4822
    if-eqz p5, :cond_26

    #@11b
    const-string/jumbo v0, ",Bs="

    #@11e
    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    .line 4823
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@123
    packed-switch v0, :pswitch_data_0

    #@126
    .line 4840
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@12b
    .line 4844
    :cond_10
    :goto_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@12d
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@12f
    if-eq v0, v1, :cond_11

    #@131
    .line 4845
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@133
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@135
    .line 4846
    if-eqz p5, :cond_2c

    #@137
    const-string/jumbo v0, ",Bh="

    #@13a
    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 4847
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@13f
    packed-switch v0, :pswitch_data_1

    #@142
    .line 4870
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@147
    .line 4874
    :cond_11
    :goto_9
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@149
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@14b
    if-eq v0, v1, :cond_12

    #@14d
    .line 4875
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@14f
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@151
    .line 4876
    if-eqz p5, :cond_34

    #@153
    const-string/jumbo v0, ",Bp="

    #@156
    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    .line 4877
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@15b
    packed-switch v0, :pswitch_data_2

    #@15e
    .line 4891
    :pswitch_0
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@163
    .line 4895
    :cond_12
    :goto_b
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@165
    iget-short v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@167
    if-eq v0, v1, :cond_13

    #@169
    .line 4896
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@16b
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@16d
    .line 4897
    if-eqz p5, :cond_39

    #@16f
    const-string/jumbo v0, ",Bt="

    #@172
    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@175
    .line 4898
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@17a
    .line 4900
    :cond_13
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@17c
    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@17e
    if-eq v0, v1, :cond_14

    #@180
    .line 4901
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@182
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@184
    .line 4902
    if-eqz p5, :cond_3a

    #@186
    const-string/jumbo v0, ",Bv="

    #@189
    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    .line 4903
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@18e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@191
    .line 4905
    :cond_14
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@193
    div-int/lit16 v6, v0, 0x3e8

    #@195
    .line 4906
    .local v6, "chargeMAh":I
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@197
    if-eq v0, v6, :cond_15

    #@199
    .line 4907
    iput v6, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@19b
    .line 4908
    if-eqz p5, :cond_3b

    #@19d
    const-string/jumbo v0, ",Bcc="

    #@1a0
    :goto_e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a3
    .line 4909
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@1a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a8
    .line 4911
    :cond_15
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@1aa
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1ac
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1ae
    .line 4912
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@1b0
    if-eqz p5, :cond_3c

    #@1b2
    const/4 v5, 0x0

    #@1b3
    :goto_f
    move-object v0, p1

    #@1b4
    .line 4911
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    #@1b7
    .line 4913
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@1b9
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1bb
    .line 4914
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@1bd
    if-eqz p5, :cond_3d

    #@1bf
    const/4 v5, 0x0

    #@1c0
    .line 4913
    :goto_10
    const/4 v3, 0x0

    #@1c1
    move-object v0, p1

    #@1c2
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    #@1c5
    .line 4915
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1c7
    if-eqz v0, :cond_16

    #@1c9
    .line 4916
    if-eqz p5, :cond_3e

    #@1cb
    .line 4917
    const-string/jumbo v0, ",wr="

    #@1ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 4918
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1d3
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@1d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1d8
    .line 4927
    :cond_16
    :goto_11
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1da
    if-eqz v0, :cond_18

    #@1dc
    .line 4928
    if-eqz p5, :cond_3f

    #@1de
    const-string/jumbo v0, ","

    #@1e1
    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e4
    .line 4929
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1e6
    const v1, 0x8000

    #@1e9
    and-int/2addr v0, v1

    #@1ea
    if-eqz v0, :cond_40

    #@1ec
    .line 4930
    const-string/jumbo v0, "+"

    #@1ef
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f2
    .line 4934
    :cond_17
    :goto_13
    if-eqz p5, :cond_41

    #@1f4
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    #@1f6
    .line 4936
    .local v7, "eventNames":[Ljava/lang/String;
    :goto_14
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1f8
    const v1, -0xc001

    #@1fb
    and-int v8, v0, v1

    #@1fd
    .line 4938
    .local v8, "idx":I
    if-ltz v8, :cond_42

    #@1ff
    array-length v0, v7

    #@200
    if-ge v8, v0, :cond_42

    #@202
    .line 4939
    aget-object v0, v7, v8

    #@204
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@207
    .line 4944
    :goto_15
    const-string/jumbo v0, "="

    #@20a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20d
    .line 4945
    if-eqz p5, :cond_44

    #@20f
    .line 4946
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@211
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@213
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@216
    .line 4954
    .end local v7    # "eventNames":[Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_18
    :goto_16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@219
    .line 4955
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@21b
    if-eqz v0, :cond_1d

    #@21d
    .line 4956
    if-nez p5, :cond_45

    #@21f
    .line 4957
    const-string/jumbo v0, "                 Details: cpu="

    #@222
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@225
    .line 4958
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@227
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@229
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@22c
    .line 4959
    const-string/jumbo v0, "u+"

    #@22f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@232
    .line 4960
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@234
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@239
    .line 4961
    const-string/jumbo v0, "s"

    #@23c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23f
    .line 4962
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@241
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@243
    if-ltz v0, :cond_1b

    #@245
    .line 4963
    const-string/jumbo v0, " ("

    #@248
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24b
    .line 4964
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@24d
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@24f
    .line 4965
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@251
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@253
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@255
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@257
    .line 4964
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@25a
    .line 4966
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@25c
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@25e
    if-ltz v0, :cond_19

    #@260
    .line 4967
    const-string/jumbo v0, ", "

    #@263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@266
    .line 4968
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@268
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@26a
    .line 4969
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@26c
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@26e
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@270
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@272
    .line 4968
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@275
    .line 4971
    :cond_19
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@277
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@279
    if-ltz v0, :cond_1a

    #@27b
    .line 4972
    const-string/jumbo v0, ", "

    #@27e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@281
    .line 4973
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@283
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@285
    .line 4974
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@287
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@289
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@28b
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@28d
    .line 4973
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@290
    .line 4976
    :cond_1a
    const/16 v0, 0x29

    #@292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@295
    .line 4978
    :cond_1b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@298
    .line 4979
    const-string/jumbo v0, "                          /proc/stat="

    #@29b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29e
    .line 4980
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2a0
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@2a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2a5
    .line 4981
    const-string/jumbo v0, " usr, "

    #@2a8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ab
    .line 4982
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ad
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@2af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2b2
    .line 4983
    const-string/jumbo v0, " sys, "

    #@2b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b8
    .line 4984
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ba
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@2bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2bf
    .line 4985
    const-string/jumbo v0, " io, "

    #@2c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c5
    .line 4986
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2c7
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@2c9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2cc
    .line 4987
    const-string/jumbo v0, " irq, "

    #@2cf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d2
    .line 4988
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2d4
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@2d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2d9
    .line 4989
    const-string/jumbo v0, " sirq, "

    #@2dc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2df
    .line 4990
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2e1
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@2e3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2e6
    .line 4991
    const-string/jumbo v0, " idle"

    #@2e9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    .line 4992
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ee
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@2f0
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2f2
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@2f4
    add-int/2addr v0, v1

    #@2f5
    .line 4993
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2f7
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@2f9
    .line 4992
    add-int/2addr v0, v1

    #@2fa
    .line 4993
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2fc
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@2fe
    .line 4992
    add-int/2addr v0, v1

    #@2ff
    .line 4994
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@301
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@303
    .line 4992
    add-int v12, v0, v1

    #@305
    .line 4995
    .local v12, "totalRun":I
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@307
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@309
    add-int v11, v12, v0

    #@30b
    .line 4996
    .local v11, "total":I
    if-lez v11, :cond_1c

    #@30d
    .line 4997
    const-string/jumbo v0, " ("

    #@310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@313
    .line 4998
    int-to-float v0, v12

    #@314
    int-to-float v1, v11

    #@315
    div-float/2addr v0, v1

    #@316
    const/high16 v1, 0x42c80000    # 100.0f

    #@318
    mul-float v9, v0, v1

    #@31a
    .line 4999
    .local v9, "perc":F
    const-string/jumbo v0, "%.1f%%"

    #@31d
    const/4 v1, 0x1

    #@31e
    new-array v1, v1, [Ljava/lang/Object;

    #@320
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@323
    move-result-object v2

    #@324
    const/4 v3, 0x0

    #@325
    aput-object v2, v1, v3

    #@327
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32a
    move-result-object v0

    #@32b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32e
    .line 5000
    const-string/jumbo v0, " of "

    #@331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@334
    .line 5001
    new-instance v10, Ljava/lang/StringBuilder;

    #@336
    const/16 v0, 0x40

    #@338
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@33b
    .line 5002
    .local v10, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v0, v11, 0xa

    #@33d
    int-to-long v0, v0

    #@33e
    invoke-static {v10, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@341
    .line 5003
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@344
    .line 5004
    const-string/jumbo v0, ")"

    #@347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34a
    .line 5006
    .end local v9    # "perc":F
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_1c
    const-string/jumbo v0, ", PlatformIdleStat "

    #@34d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@350
    .line 5007
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@352
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    #@354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@357
    .line 5008
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@35a
    .line 5048
    .end local v11    # "total":I
    .end local v12    # "totalRun":I
    :cond_1d
    :goto_17
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@35c
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@35e
    .line 5049
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@360
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@362
    goto/16 :goto_1

    #@364
    .line 4800
    .end local v6    # "chargeMAh":I
    :cond_1e
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@366
    const/16 v1, 0x64

    #@368
    if-ge v0, v1, :cond_d

    #@36a
    const-string/jumbo v0, "0"

    #@36d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@370
    goto/16 :goto_3

    #@372
    .line 4806
    :cond_1f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@374
    const/16 v1, 0x100

    #@376
    if-ge v0, v1, :cond_20

    #@378
    const-string/jumbo v0, "000000"

    #@37b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37e
    goto/16 :goto_4

    #@380
    .line 4807
    :cond_20
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@382
    const/16 v1, 0x1000

    #@384
    if-ge v0, v1, :cond_21

    #@386
    const-string/jumbo v0, "00000"

    #@389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38c
    goto/16 :goto_4

    #@38e
    .line 4808
    :cond_21
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@390
    const/high16 v1, 0x10000

    #@392
    if-ge v0, v1, :cond_22

    #@394
    const-string/jumbo v0, "0000"

    #@397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39a
    goto/16 :goto_4

    #@39c
    .line 4809
    :cond_22
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@39e
    const/high16 v1, 0x100000

    #@3a0
    if-ge v0, v1, :cond_23

    #@3a2
    const-string/jumbo v0, "000"

    #@3a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a8
    goto/16 :goto_4

    #@3aa
    .line 4810
    :cond_23
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@3ac
    const/high16 v1, 0x1000000

    #@3ae
    if-ge v0, v1, :cond_24

    #@3b0
    const-string/jumbo v0, "00"

    #@3b3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b6
    goto/16 :goto_4

    #@3b8
    .line 4811
    :cond_24
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@3ba
    const/high16 v1, 0x10000000

    #@3bc
    if-ge v0, v1, :cond_e

    #@3be
    const-string/jumbo v0, "0"

    #@3c1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c4
    goto/16 :goto_4

    #@3c6
    .line 4815
    :cond_25
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@3c8
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3ca
    if-eq v0, v1, :cond_f

    #@3cc
    .line 4816
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3ce
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@3d0
    .line 4817
    const-string/jumbo v0, ",Bl="

    #@3d3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d6
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3db
    goto/16 :goto_5

    #@3dd
    .line 4822
    :cond_26
    const-string/jumbo v0, " status="

    #@3e0
    goto/16 :goto_6

    #@3e2
    .line 4825
    :pswitch_1
    if-eqz p5, :cond_27

    #@3e4
    const-string/jumbo v0, "?"

    #@3e7
    :goto_18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ea
    goto/16 :goto_7

    #@3ec
    :cond_27
    const-string/jumbo v0, "unknown"

    #@3ef
    goto :goto_18

    #@3f0
    .line 4828
    :pswitch_2
    if-eqz p5, :cond_28

    #@3f2
    const-string/jumbo v0, "c"

    #@3f5
    :goto_19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f8
    goto/16 :goto_7

    #@3fa
    :cond_28
    const-string/jumbo v0, "charging"

    #@3fd
    goto :goto_19

    #@3fe
    .line 4831
    :pswitch_3
    if-eqz p5, :cond_29

    #@400
    const-string/jumbo v0, "d"

    #@403
    :goto_1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@406
    goto/16 :goto_7

    #@408
    :cond_29
    const-string/jumbo v0, "discharging"

    #@40b
    goto :goto_1a

    #@40c
    .line 4834
    :pswitch_4
    if-eqz p5, :cond_2a

    #@40e
    const-string/jumbo v0, "n"

    #@411
    :goto_1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@414
    goto/16 :goto_7

    #@416
    :cond_2a
    const-string/jumbo v0, "not-charging"

    #@419
    goto :goto_1b

    #@41a
    .line 4837
    :pswitch_5
    if-eqz p5, :cond_2b

    #@41c
    const-string/jumbo v0, "f"

    #@41f
    :goto_1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@422
    goto/16 :goto_7

    #@424
    :cond_2b
    const-string/jumbo v0, "full"

    #@427
    goto :goto_1c

    #@428
    .line 4846
    :cond_2c
    const-string/jumbo v0, " health="

    #@42b
    goto/16 :goto_8

    #@42d
    .line 4849
    :pswitch_6
    if-eqz p5, :cond_2d

    #@42f
    const-string/jumbo v0, "?"

    #@432
    :goto_1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@435
    goto/16 :goto_9

    #@437
    :cond_2d
    const-string/jumbo v0, "unknown"

    #@43a
    goto :goto_1d

    #@43b
    .line 4852
    :pswitch_7
    if-eqz p5, :cond_2e

    #@43d
    const-string/jumbo v0, "g"

    #@440
    :goto_1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@443
    goto/16 :goto_9

    #@445
    :cond_2e
    const-string/jumbo v0, "good"

    #@448
    goto :goto_1e

    #@449
    .line 4855
    :pswitch_8
    if-eqz p5, :cond_2f

    #@44b
    const-string/jumbo v0, "h"

    #@44e
    :goto_1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@451
    goto/16 :goto_9

    #@453
    :cond_2f
    const-string/jumbo v0, "overheat"

    #@456
    goto :goto_1f

    #@457
    .line 4858
    :pswitch_9
    if-eqz p5, :cond_30

    #@459
    const-string/jumbo v0, "d"

    #@45c
    :goto_20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45f
    goto/16 :goto_9

    #@461
    :cond_30
    const-string/jumbo v0, "dead"

    #@464
    goto :goto_20

    #@465
    .line 4861
    :pswitch_a
    if-eqz p5, :cond_31

    #@467
    const-string/jumbo v0, "v"

    #@46a
    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46d
    goto/16 :goto_9

    #@46f
    :cond_31
    const-string/jumbo v0, "over-voltage"

    #@472
    goto :goto_21

    #@473
    .line 4864
    :pswitch_b
    if-eqz p5, :cond_32

    #@475
    const-string/jumbo v0, "f"

    #@478
    :goto_22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47b
    goto/16 :goto_9

    #@47d
    :cond_32
    const-string/jumbo v0, "failure"

    #@480
    goto :goto_22

    #@481
    .line 4867
    :pswitch_c
    if-eqz p5, :cond_33

    #@483
    const-string/jumbo v0, "c"

    #@486
    :goto_23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@489
    goto/16 :goto_9

    #@48b
    :cond_33
    const-string/jumbo v0, "cold"

    #@48e
    goto :goto_23

    #@48f
    .line 4876
    :cond_34
    const-string/jumbo v0, " plug="

    #@492
    goto/16 :goto_a

    #@494
    .line 4879
    :pswitch_d
    if-eqz p5, :cond_35

    #@496
    const-string/jumbo v0, "n"

    #@499
    :goto_24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49c
    goto/16 :goto_b

    #@49e
    :cond_35
    const-string/jumbo v0, "none"

    #@4a1
    goto :goto_24

    #@4a2
    .line 4882
    :pswitch_e
    if-eqz p5, :cond_36

    #@4a4
    const-string/jumbo v0, "a"

    #@4a7
    :goto_25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4aa
    goto/16 :goto_b

    #@4ac
    :cond_36
    const-string/jumbo v0, "ac"

    #@4af
    goto :goto_25

    #@4b0
    .line 4885
    :pswitch_f
    if-eqz p5, :cond_37

    #@4b2
    const-string/jumbo v0, "u"

    #@4b5
    :goto_26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b8
    goto/16 :goto_b

    #@4ba
    :cond_37
    const-string/jumbo v0, "usb"

    #@4bd
    goto :goto_26

    #@4be
    .line 4888
    :pswitch_10
    if-eqz p5, :cond_38

    #@4c0
    const-string/jumbo v0, "w"

    #@4c3
    :goto_27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c6
    goto/16 :goto_b

    #@4c8
    :cond_38
    const-string/jumbo v0, "wireless"

    #@4cb
    goto :goto_27

    #@4cc
    .line 4897
    :cond_39
    const-string/jumbo v0, " temp="

    #@4cf
    goto/16 :goto_c

    #@4d1
    .line 4902
    :cond_3a
    const-string/jumbo v0, " volt="

    #@4d4
    goto/16 :goto_d

    #@4d6
    .line 4908
    .restart local v6    # "chargeMAh":I
    :cond_3b
    const-string/jumbo v0, " charge="

    #@4d9
    goto/16 :goto_e

    #@4db
    .line 4912
    :cond_3c
    const/4 v5, 0x1

    #@4dc
    goto/16 :goto_f

    #@4de
    .line 4914
    :cond_3d
    const/4 v5, 0x1

    #@4df
    goto/16 :goto_10

    #@4e1
    .line 4920
    :cond_3e
    const-string/jumbo v0, " wake_reason="

    #@4e4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e7
    .line 4921
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@4e9
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@4eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@4ee
    .line 4922
    const-string/jumbo v0, ":\""

    #@4f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f4
    .line 4923
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@4f6
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4f8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fb
    .line 4924
    const-string/jumbo v0, "\""

    #@4fe
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@501
    goto/16 :goto_11

    #@503
    .line 4928
    :cond_3f
    const-string/jumbo v0, " "

    #@506
    goto/16 :goto_12

    #@508
    .line 4931
    :cond_40
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@50a
    and-int/lit16 v0, v0, 0x4000

    #@50c
    if-eqz v0, :cond_17

    #@50e
    .line 4932
    const-string/jumbo v0, "-"

    #@511
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@514
    goto/16 :goto_13

    #@516
    .line 4935
    :cond_41
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    #@518
    .restart local v7    # "eventNames":[Ljava/lang/String;
    goto/16 :goto_14

    #@51a
    .line 4941
    .restart local v8    # "idx":I
    :cond_42
    if-eqz p5, :cond_43

    #@51c
    const-string/jumbo v0, "Ev"

    #@51f
    :goto_28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@522
    .line 4942
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@525
    goto/16 :goto_15

    #@527
    .line 4941
    :cond_43
    const-string/jumbo v0, "event"

    #@52a
    goto :goto_28

    #@52b
    .line 4948
    :cond_44
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@52d
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@52f
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@532
    .line 4949
    const-string/jumbo v0, ":\""

    #@535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@538
    .line 4950
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@53a
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@53c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53f
    .line 4951
    const-string/jumbo v0, "\""

    #@542
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@545
    goto/16 :goto_16

    #@547
    .line 5010
    .end local v7    # "eventNames":[Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_45
    const/16 v0, 0x9

    #@549
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@54c
    const/16 v0, 0x2c

    #@54e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@551
    .line 5011
    const-string/jumbo v0, "h"

    #@554
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@557
    const-string/jumbo v0, ",0,Dcpu="

    #@55a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55d
    .line 5012
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@55f
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@561
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@564
    .line 5013
    const-string/jumbo v0, ":"

    #@567
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56a
    .line 5014
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@56c
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@56e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@571
    .line 5015
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@573
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@575
    if-ltz v0, :cond_47

    #@577
    .line 5016
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@579
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@57b
    .line 5017
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@57d
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@57f
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@581
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@583
    .line 5016
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@586
    .line 5018
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@588
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@58a
    if-ltz v0, :cond_46

    #@58c
    .line 5019
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@58e
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@590
    .line 5020
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@592
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@594
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@596
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@598
    .line 5019
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@59b
    .line 5022
    :cond_46
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@59d
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@59f
    if-ltz v0, :cond_47

    #@5a1
    .line 5023
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5a3
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@5a5
    .line 5024
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5a7
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@5a9
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5ab
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@5ad
    .line 5023
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@5b0
    .line 5027
    :cond_47
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@5b3
    .line 5028
    const/16 v0, 0x9

    #@5b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5b8
    const/16 v0, 0x2c

    #@5ba
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5bd
    .line 5029
    const-string/jumbo v0, "h"

    #@5c0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c3
    const-string/jumbo v0, ",0,Dpst="

    #@5c6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c9
    .line 5030
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5cb
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@5cd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5d0
    .line 5031
    const/16 v0, 0x2c

    #@5d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5d5
    .line 5032
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5d7
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@5d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5dc
    .line 5033
    const/16 v0, 0x2c

    #@5de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5e1
    .line 5034
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5e3
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@5e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5e8
    .line 5035
    const/16 v0, 0x2c

    #@5ea
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5ed
    .line 5036
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5ef
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@5f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5f4
    .line 5037
    const/16 v0, 0x2c

    #@5f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5f9
    .line 5038
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5fb
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@5fd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@600
    .line 5039
    const/16 v0, 0x2c

    #@602
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@605
    .line 5040
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@607
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@609
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@60c
    .line 5041
    const/16 v0, 0x2c

    #@60e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@611
    .line 5042
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@613
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    #@615
    if-eqz v0, :cond_48

    #@617
    .line 5043
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@619
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    #@61b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61e
    .line 5045
    :cond_48
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@621
    goto/16 :goto_17

    #@623
    .line 4823
    nop

    #@624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@632
    .line 4847
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    #@644
    .line 4877
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 4736
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@4
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@6
    .line 4737
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@8
    .line 4738
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@a
    .line 4739
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@c
    .line 4740
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@e
    .line 4741
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@10
    .line 4742
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@12
    .line 4743
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@14
    .line 4735
    return-void
.end method
