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
    .line 4606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4607
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@7
    .line 4608
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@9
    .line 4609
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@b
    .line 4610
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@d
    .line 4611
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@f
    .line 4612
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@11
    .line 4613
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@13
    .line 4614
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@15
    .line 4615
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@17
    .line 4616
    const-wide/16 v0, -0x1

    #@19
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@1b
    .line 4606
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
    .line 4944
    const/16 v0, 0x2f

    #@2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 4945
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    #@8
    .line 4946
    const-string/jumbo v0, ":"

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 4947
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@11
    .line 4948
    const-string/jumbo v0, ":"

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 4949
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    .line 4943
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
    .line 4935
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@3
    .line 4936
    const-string/jumbo v0, "="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 4937
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@c
    .line 4938
    const-string/jumbo v0, "u+"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 4939
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@15
    .line 4940
    const-string/jumbo v0, "s"

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 4934
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
    .line 4631
    if-nez p5, :cond_1

    #@2
    .line 4632
    const-string/jumbo v0, "  "

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 4633
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@a
    sub-long v0, v0, p3

    #@c
    const/16 v2, 0x13

    #@e
    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@11
    .line 4634
    const-string/jumbo v0, " ("

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 4635
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1c
    .line 4636
    const-string/jumbo v0, ") "

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 4647
    :goto_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@24
    const/4 v1, 0x4

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 4648
    if-eqz p5, :cond_0

    #@29
    .line 4649
    const-string/jumbo v0, ":"

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 4651
    :cond_0
    const-string/jumbo v0, "START"

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 4652
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    #@38
    .line 4630
    :goto_1
    return-void

    #@39
    .line 4638
    :cond_1
    const/16 v0, 0x9

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3e
    const/16 v0, 0x2c

    #@40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@43
    .line 4639
    const-string/jumbo v0, "h"

    #@46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    const/16 v0, 0x2c

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@4e
    .line 4640
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@50
    const-wide/16 v2, 0x0

    #@52
    cmp-long v0, v0, v2

    #@54
    if-gez v0, :cond_2

    #@56
    .line 4641
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@58
    sub-long v0, v0, p3

    #@5a
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@5d
    .line 4645
    :goto_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@5f
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@61
    goto :goto_0

    #@62
    .line 4643
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
    .line 4653
    :cond_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6d
    const/4 v1, 0x5

    #@6e
    if-eq v0, v1, :cond_4

    #@70
    .line 4654
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@72
    const/4 v1, 0x7

    #@73
    if-ne v0, v1, :cond_8

    #@75
    .line 4655
    :cond_4
    if-eqz p5, :cond_5

    #@77
    .line 4656
    const-string/jumbo v0, ":"

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 4658
    :cond_5
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@7f
    const/4 v1, 0x7

    #@80
    if-ne v0, v1, :cond_6

    #@82
    .line 4659
    const-string/jumbo v0, "RESET:"

    #@85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    .line 4660
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    #@8b
    .line 4662
    :cond_6
    const-string/jumbo v0, "TIME:"

    #@8e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    .line 4663
    if-eqz p5, :cond_7

    #@93
    .line 4664
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@95
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    #@98
    goto :goto_1

    #@99
    .line 4666
    :cond_7
    const-string/jumbo v0, " "

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    .line 4667
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    #@a2
    .line 4668
    iget-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@a4
    .line 4667
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
    .line 4670
    :cond_8
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@b2
    const/16 v1, 0x8

    #@b4
    if-ne v0, v1, :cond_a

    #@b6
    .line 4671
    if-eqz p5, :cond_9

    #@b8
    .line 4672
    const-string/jumbo v0, ":"

    #@bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 4674
    :cond_9
    const-string/jumbo v0, "SHUTDOWN"

    #@c1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    goto/16 :goto_1

    #@c6
    .line 4675
    :cond_a
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@c8
    const/4 v1, 0x6

    #@c9
    if-ne v0, v1, :cond_c

    #@cb
    .line 4676
    if-eqz p5, :cond_b

    #@cd
    .line 4677
    const-string/jumbo v0, ":"

    #@d0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 4679
    :cond_b
    const-string/jumbo v0, "*OVERFLOW*"

    #@d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d9
    goto/16 :goto_1

    #@db
    .line 4681
    :cond_c
    if-nez p5, :cond_25

    #@dd
    .line 4682
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
    .line 4684
    :cond_d
    :goto_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ee
    .line 4685
    if-eqz p6, :cond_f

    #@f0
    .line 4686
    const-string/jumbo v0, " "

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 4687
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@f8
    if-ltz v0, :cond_e

    #@fa
    .line 4688
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
    .line 4695
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
    .line 4703
    :cond_f
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@111
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@113
    if-eq v0, v1, :cond_10

    #@115
    .line 4704
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@117
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@119
    .line 4705
    if-eqz p5, :cond_26

    #@11b
    const-string/jumbo v0, ",Bs="

    #@11e
    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    .line 4706
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@123
    packed-switch v0, :pswitch_data_0

    #@126
    .line 4723
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@12b
    .line 4727
    :cond_10
    :goto_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@12d
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@12f
    if-eq v0, v1, :cond_11

    #@131
    .line 4728
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@133
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@135
    .line 4729
    if-eqz p5, :cond_2c

    #@137
    const-string/jumbo v0, ",Bh="

    #@13a
    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 4730
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@13f
    packed-switch v0, :pswitch_data_1

    #@142
    .line 4753
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@147
    .line 4757
    :cond_11
    :goto_9
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@149
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@14b
    if-eq v0, v1, :cond_12

    #@14d
    .line 4758
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@14f
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@151
    .line 4759
    if-eqz p5, :cond_34

    #@153
    const-string/jumbo v0, ",Bp="

    #@156
    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    .line 4760
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@15b
    packed-switch v0, :pswitch_data_2

    #@15e
    .line 4774
    :pswitch_0
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@163
    .line 4778
    :cond_12
    :goto_b
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@165
    iget-short v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@167
    if-eq v0, v1, :cond_13

    #@169
    .line 4779
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@16b
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@16d
    .line 4780
    if-eqz p5, :cond_39

    #@16f
    const-string/jumbo v0, ",Bt="

    #@172
    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@175
    .line 4781
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@17a
    .line 4783
    :cond_13
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@17c
    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@17e
    if-eq v0, v1, :cond_14

    #@180
    .line 4784
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@182
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@184
    .line 4785
    if-eqz p5, :cond_3a

    #@186
    const-string/jumbo v0, ",Bv="

    #@189
    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    .line 4786
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@18e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@191
    .line 4788
    :cond_14
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@193
    div-int/lit16 v6, v0, 0x3e8

    #@195
    .line 4789
    .local v6, "chargeMAh":I
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@197
    if-eq v0, v6, :cond_15

    #@199
    .line 4790
    iput v6, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@19b
    .line 4791
    if-eqz p5, :cond_3b

    #@19d
    const-string/jumbo v0, ",Bcc="

    #@1a0
    :goto_e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a3
    .line 4792
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@1a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a8
    .line 4794
    :cond_15
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@1aa
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1ac
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1ae
    .line 4795
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@1b0
    if-eqz p5, :cond_3c

    #@1b2
    const/4 v5, 0x0

    #@1b3
    :goto_f
    move-object v0, p1

    #@1b4
    .line 4794
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    #@1b7
    .line 4796
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@1b9
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1bb
    .line 4797
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@1bd
    if-eqz p5, :cond_3d

    #@1bf
    const/4 v5, 0x0

    #@1c0
    .line 4796
    :goto_10
    const/4 v3, 0x0

    #@1c1
    move-object v0, p1

    #@1c2
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    #@1c5
    .line 4798
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1c7
    if-eqz v0, :cond_16

    #@1c9
    .line 4799
    if-eqz p5, :cond_3e

    #@1cb
    .line 4800
    const-string/jumbo v0, ",wr="

    #@1ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 4801
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1d3
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@1d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1d8
    .line 4810
    :cond_16
    :goto_11
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1da
    if-eqz v0, :cond_18

    #@1dc
    .line 4811
    if-eqz p5, :cond_3f

    #@1de
    const-string/jumbo v0, ","

    #@1e1
    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e4
    .line 4812
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1e6
    const v1, 0x8000

    #@1e9
    and-int/2addr v0, v1

    #@1ea
    if-eqz v0, :cond_40

    #@1ec
    .line 4813
    const-string/jumbo v0, "+"

    #@1ef
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f2
    .line 4817
    :cond_17
    :goto_13
    if-eqz p5, :cond_41

    #@1f4
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    #@1f6
    .line 4819
    .local v7, "eventNames":[Ljava/lang/String;
    :goto_14
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1f8
    const v1, -0xc001

    #@1fb
    and-int v8, v0, v1

    #@1fd
    .line 4821
    .local v8, "idx":I
    if-ltz v8, :cond_42

    #@1ff
    array-length v0, v7

    #@200
    if-ge v8, v0, :cond_42

    #@202
    .line 4822
    aget-object v0, v7, v8

    #@204
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@207
    .line 4827
    :goto_15
    const-string/jumbo v0, "="

    #@20a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20d
    .line 4828
    if-eqz p5, :cond_44

    #@20f
    .line 4829
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@211
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@213
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@216
    .line 4837
    .end local v7    # "eventNames":[Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_18
    :goto_16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@219
    .line 4838
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@21b
    if-eqz v0, :cond_1d

    #@21d
    .line 4839
    if-nez p5, :cond_45

    #@21f
    .line 4840
    const-string/jumbo v0, "                 Details: cpu="

    #@222
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@225
    .line 4841
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@227
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@229
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@22c
    .line 4842
    const-string/jumbo v0, "u+"

    #@22f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@232
    .line 4843
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@234
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@239
    .line 4844
    const-string/jumbo v0, "s"

    #@23c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23f
    .line 4845
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@241
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@243
    if-ltz v0, :cond_1b

    #@245
    .line 4846
    const-string/jumbo v0, " ("

    #@248
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24b
    .line 4847
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@24d
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@24f
    .line 4848
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@251
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@253
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@255
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@257
    .line 4847
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@25a
    .line 4849
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@25c
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@25e
    if-ltz v0, :cond_19

    #@260
    .line 4850
    const-string/jumbo v0, ", "

    #@263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@266
    .line 4851
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@268
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@26a
    .line 4852
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@26c
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@26e
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@270
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@272
    .line 4851
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@275
    .line 4854
    :cond_19
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@277
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@279
    if-ltz v0, :cond_1a

    #@27b
    .line 4855
    const-string/jumbo v0, ", "

    #@27e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@281
    .line 4856
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@283
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@285
    .line 4857
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@287
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@289
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@28b
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@28d
    .line 4856
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@290
    .line 4859
    :cond_1a
    const/16 v0, 0x29

    #@292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@295
    .line 4861
    :cond_1b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@298
    .line 4862
    const-string/jumbo v0, "                          /proc/stat="

    #@29b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29e
    .line 4863
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2a0
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@2a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2a5
    .line 4864
    const-string/jumbo v0, " usr, "

    #@2a8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ab
    .line 4865
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ad
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@2af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2b2
    .line 4866
    const-string/jumbo v0, " sys, "

    #@2b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b8
    .line 4867
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ba
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@2bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2bf
    .line 4868
    const-string/jumbo v0, " io, "

    #@2c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c5
    .line 4869
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2c7
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@2c9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2cc
    .line 4870
    const-string/jumbo v0, " irq, "

    #@2cf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d2
    .line 4871
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2d4
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@2d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2d9
    .line 4872
    const-string/jumbo v0, " sirq, "

    #@2dc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2df
    .line 4873
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2e1
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@2e3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2e6
    .line 4874
    const-string/jumbo v0, " idle"

    #@2e9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    .line 4875
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
    .line 4876
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2f7
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@2f9
    .line 4875
    add-int/2addr v0, v1

    #@2fa
    .line 4876
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2fc
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@2fe
    .line 4875
    add-int/2addr v0, v1

    #@2ff
    .line 4877
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@301
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@303
    .line 4875
    add-int v12, v0, v1

    #@305
    .line 4878
    .local v12, "totalRun":I
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@307
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@309
    add-int v11, v12, v0

    #@30b
    .line 4879
    .local v11, "total":I
    if-lez v11, :cond_1c

    #@30d
    .line 4880
    const-string/jumbo v0, " ("

    #@310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@313
    .line 4881
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
    .line 4882
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
    .line 4883
    const-string/jumbo v0, " of "

    #@331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@334
    .line 4884
    new-instance v10, Ljava/lang/StringBuilder;

    #@336
    const/16 v0, 0x40

    #@338
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@33b
    .line 4885
    .local v10, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v0, v11, 0xa

    #@33d
    int-to-long v0, v0

    #@33e
    invoke-static {v10, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@341
    .line 4886
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@344
    .line 4887
    const-string/jumbo v0, ")"

    #@347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34a
    .line 4889
    .end local v9    # "perc":F
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_1c
    const-string/jumbo v0, ", PlatformIdleStat "

    #@34d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@350
    .line 4890
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@352
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    #@354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@357
    .line 4891
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@35a
    .line 4929
    .end local v11    # "total":I
    .end local v12    # "totalRun":I
    :cond_1d
    :goto_17
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@35c
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@35e
    .line 4930
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@360
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@362
    goto/16 :goto_1

    #@364
    .line 4683
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
    .line 4689
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
    .line 4690
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
    .line 4691
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
    .line 4692
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
    .line 4693
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
    .line 4694
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
    .line 4698
    :cond_25
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@3c8
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3ca
    if-eq v0, v1, :cond_f

    #@3cc
    .line 4699
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3ce
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@3d0
    .line 4700
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
    .line 4705
    :cond_26
    const-string/jumbo v0, " status="

    #@3e0
    goto/16 :goto_6

    #@3e2
    .line 4708
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
    .line 4711
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
    .line 4714
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
    .line 4717
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
    .line 4720
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
    .line 4729
    :cond_2c
    const-string/jumbo v0, " health="

    #@42b
    goto/16 :goto_8

    #@42d
    .line 4732
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
    .line 4735
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
    .line 4738
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
    .line 4741
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
    .line 4744
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
    .line 4747
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
    .line 4750
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
    .line 4759
    :cond_34
    const-string/jumbo v0, " plug="

    #@492
    goto/16 :goto_a

    #@494
    .line 4762
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
    .line 4765
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
    .line 4768
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
    .line 4771
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
    .line 4780
    :cond_39
    const-string/jumbo v0, " temp="

    #@4cf
    goto/16 :goto_c

    #@4d1
    .line 4785
    :cond_3a
    const-string/jumbo v0, " volt="

    #@4d4
    goto/16 :goto_d

    #@4d6
    .line 4791
    .restart local v6    # "chargeMAh":I
    :cond_3b
    const-string/jumbo v0, " charge="

    #@4d9
    goto/16 :goto_e

    #@4db
    .line 4795
    :cond_3c
    const/4 v5, 0x1

    #@4dc
    goto/16 :goto_f

    #@4de
    .line 4797
    :cond_3d
    const/4 v5, 0x1

    #@4df
    goto/16 :goto_10

    #@4e1
    .line 4803
    :cond_3e
    const-string/jumbo v0, " wake_reason="

    #@4e4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e7
    .line 4804
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@4e9
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@4eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@4ee
    .line 4805
    const-string/jumbo v0, ":\""

    #@4f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f4
    .line 4806
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@4f6
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4f8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fb
    .line 4807
    const-string/jumbo v0, "\""

    #@4fe
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@501
    goto/16 :goto_11

    #@503
    .line 4811
    :cond_3f
    const-string/jumbo v0, " "

    #@506
    goto/16 :goto_12

    #@508
    .line 4814
    :cond_40
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@50a
    and-int/lit16 v0, v0, 0x4000

    #@50c
    if-eqz v0, :cond_17

    #@50e
    .line 4815
    const-string/jumbo v0, "-"

    #@511
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@514
    goto/16 :goto_13

    #@516
    .line 4818
    :cond_41
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    #@518
    .restart local v7    # "eventNames":[Ljava/lang/String;
    goto/16 :goto_14

    #@51a
    .line 4824
    .restart local v8    # "idx":I
    :cond_42
    if-eqz p5, :cond_43

    #@51c
    const-string/jumbo v0, "Ev"

    #@51f
    :goto_28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@522
    .line 4825
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@525
    goto/16 :goto_15

    #@527
    .line 4824
    :cond_43
    const-string/jumbo v0, "event"

    #@52a
    goto :goto_28

    #@52b
    .line 4831
    :cond_44
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@52d
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@52f
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@532
    .line 4832
    const-string/jumbo v0, ":\""

    #@535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@538
    .line 4833
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@53a
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@53c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53f
    .line 4834
    const-string/jumbo v0, "\""

    #@542
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@545
    goto/16 :goto_16

    #@547
    .line 4893
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
    .line 4894
    const-string/jumbo v0, "h"

    #@554
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@557
    const-string/jumbo v0, ",0,Dcpu="

    #@55a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55d
    .line 4895
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@55f
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@561
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@564
    .line 4896
    const-string/jumbo v0, ":"

    #@567
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56a
    .line 4897
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@56c
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@56e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@571
    .line 4898
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@573
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@575
    if-ltz v0, :cond_47

    #@577
    .line 4899
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@579
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@57b
    .line 4900
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@57d
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@57f
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@581
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@583
    .line 4899
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@586
    .line 4901
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@588
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@58a
    if-ltz v0, :cond_46

    #@58c
    .line 4902
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@58e
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@590
    .line 4903
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@592
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@594
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@596
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@598
    .line 4902
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@59b
    .line 4905
    :cond_46
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@59d
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@59f
    if-ltz v0, :cond_47

    #@5a1
    .line 4906
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5a3
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@5a5
    .line 4907
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5a7
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@5a9
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5ab
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@5ad
    .line 4906
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@5b0
    .line 4910
    :cond_47
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@5b3
    .line 4911
    const/16 v0, 0x9

    #@5b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5b8
    const/16 v0, 0x2c

    #@5ba
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5bd
    .line 4912
    const-string/jumbo v0, "h"

    #@5c0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c3
    const-string/jumbo v0, ",0,Dpst="

    #@5c6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c9
    .line 4913
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5cb
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@5cd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5d0
    .line 4914
    const/16 v0, 0x2c

    #@5d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5d5
    .line 4915
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5d7
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@5d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5dc
    .line 4916
    const/16 v0, 0x2c

    #@5de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5e1
    .line 4917
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5e3
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@5e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5e8
    .line 4918
    const/16 v0, 0x2c

    #@5ea
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5ed
    .line 4919
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5ef
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@5f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5f4
    .line 4920
    const/16 v0, 0x2c

    #@5f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5f9
    .line 4921
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5fb
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@5fd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@600
    .line 4922
    const/16 v0, 0x2c

    #@602
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@605
    .line 4923
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@607
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@609
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@60c
    .line 4924
    const/16 v0, 0x2c

    #@60e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@611
    .line 4925
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@613
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    #@615
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@618
    .line 4926
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@61b
    goto/16 :goto_17

    #@61d
    .line 4706
    nop

    #@61e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@62c
    .line 4730
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

    #@63e
    .line 4760
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
    .line 4619
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@4
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@6
    .line 4620
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@8
    .line 4621
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@a
    .line 4622
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@c
    .line 4623
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@e
    .line 4624
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@10
    .line 4625
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@12
    .line 4626
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    #@14
    .line 4618
    return-void
.end method
