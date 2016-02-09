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
    .line 4252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4253
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@7
    .line 4254
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@9
    .line 4255
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@b
    .line 4256
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@d
    .line 4257
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@f
    .line 4258
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@11
    .line 4259
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@13
    .line 4260
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@15
    .line 4261
    const-wide/16 v0, -0x1

    #@17
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@19
    .line 4252
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
    .line 4578
    const/16 v0, 0x2f

    #@2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5
    .line 4579
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    #@8
    .line 4580
    const-string/jumbo v0, ":"

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 4581
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@11
    .line 4582
    const-string/jumbo v0, ":"

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 4583
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    .line 4577
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
    .line 4569
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@3
    .line 4570
    const-string/jumbo v0, "="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 4571
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@c
    .line 4572
    const-string/jumbo v0, "u+"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 4573
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@15
    .line 4574
    const-string/jumbo v0, "s"

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 4568
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
    .line 4275
    if-nez p5, :cond_1

    #@2
    .line 4276
    const-string/jumbo v0, "  "

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 4277
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@a
    sub-long v0, v0, p3

    #@c
    const/16 v2, 0x13

    #@e
    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@11
    .line 4278
    const-string/jumbo v0, " ("

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 4279
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1c
    .line 4280
    const-string/jumbo v0, ") "

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 4291
    :goto_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@24
    const/4 v1, 0x4

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 4292
    if-eqz p5, :cond_0

    #@29
    .line 4293
    const-string/jumbo v0, ":"

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 4295
    :cond_0
    const-string/jumbo v0, "START"

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 4296
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    #@38
    .line 4274
    :goto_1
    return-void

    #@39
    .line 4282
    :cond_1
    const/16 v0, 0x9

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3e
    const/16 v0, 0x2c

    #@40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@43
    .line 4283
    const-string/jumbo v0, "h"

    #@46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    const/16 v0, 0x2c

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@4e
    .line 4284
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@50
    const-wide/16 v2, 0x0

    #@52
    cmp-long v0, v0, v2

    #@54
    if-gez v0, :cond_2

    #@56
    .line 4285
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@58
    sub-long v0, v0, p3

    #@5a
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@5d
    .line 4289
    :goto_2
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@5f
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    #@61
    goto :goto_0

    #@62
    .line 4287
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
    .line 4297
    :cond_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6d
    const/4 v1, 0x5

    #@6e
    if-eq v0, v1, :cond_4

    #@70
    .line 4298
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@72
    const/4 v1, 0x7

    #@73
    if-ne v0, v1, :cond_8

    #@75
    .line 4299
    :cond_4
    if-eqz p5, :cond_5

    #@77
    .line 4300
    const-string/jumbo v0, ":"

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 4302
    :cond_5
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@7f
    const/4 v1, 0x7

    #@80
    if-ne v0, v1, :cond_6

    #@82
    .line 4303
    const-string/jumbo v0, "RESET:"

    #@85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    .line 4304
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    #@8b
    .line 4306
    :cond_6
    const-string/jumbo v0, "TIME:"

    #@8e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    .line 4307
    if-eqz p5, :cond_7

    #@93
    .line 4308
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@95
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    #@98
    goto :goto_1

    #@99
    .line 4310
    :cond_7
    const-string/jumbo v0, " "

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    .line 4311
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    #@a2
    .line 4312
    iget-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@a4
    .line 4311
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
    .line 4314
    :cond_8
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@b2
    const/16 v1, 0x8

    #@b4
    if-ne v0, v1, :cond_a

    #@b6
    .line 4315
    if-eqz p5, :cond_9

    #@b8
    .line 4316
    const-string/jumbo v0, ":"

    #@bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 4318
    :cond_9
    const-string/jumbo v0, "SHUTDOWN"

    #@c1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    goto/16 :goto_1

    #@c6
    .line 4319
    :cond_a
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@c8
    const/4 v1, 0x6

    #@c9
    if-ne v0, v1, :cond_c

    #@cb
    .line 4320
    if-eqz p5, :cond_b

    #@cd
    .line 4321
    const-string/jumbo v0, ":"

    #@d0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 4323
    :cond_b
    const-string/jumbo v0, "*OVERFLOW*"

    #@d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d9
    goto/16 :goto_1

    #@db
    .line 4325
    :cond_c
    if-nez p5, :cond_24

    #@dd
    .line 4326
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@df
    const/16 v1, 0xa

    #@e1
    if-ge v0, v1, :cond_1d

    #@e3
    const-string/jumbo v0, "00"

    #@e6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    .line 4328
    :cond_d
    :goto_3
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ee
    .line 4329
    if-eqz p6, :cond_f

    #@f0
    .line 4330
    const-string/jumbo v0, " "

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 4331
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@f8
    if-ltz v0, :cond_e

    #@fa
    .line 4332
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@fc
    const/16 v1, 0x10

    #@fe
    if-ge v0, v1, :cond_1e

    #@100
    const-string/jumbo v0, "0000000"

    #@103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@106
    .line 4339
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
    .line 4347
    :cond_f
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@111
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@113
    if-eq v0, v1, :cond_10

    #@115
    .line 4348
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@117
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@119
    .line 4349
    if-eqz p5, :cond_25

    #@11b
    const-string/jumbo v0, ",Bs="

    #@11e
    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    .line 4350
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@123
    packed-switch v0, :pswitch_data_0

    #@126
    .line 4367
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@12b
    .line 4371
    :cond_10
    :goto_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@12d
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@12f
    if-eq v0, v1, :cond_11

    #@131
    .line 4372
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@133
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@135
    .line 4373
    if-eqz p5, :cond_2b

    #@137
    const-string/jumbo v0, ",Bh="

    #@13a
    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 4374
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@13f
    packed-switch v0, :pswitch_data_1

    #@142
    .line 4397
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@147
    .line 4401
    :cond_11
    :goto_9
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@149
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@14b
    if-eq v0, v1, :cond_12

    #@14d
    .line 4402
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@14f
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@151
    .line 4403
    if-eqz p5, :cond_33

    #@153
    const-string/jumbo v0, ",Bp="

    #@156
    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    .line 4404
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@15b
    packed-switch v0, :pswitch_data_2

    #@15e
    .line 4418
    :pswitch_0
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@163
    .line 4422
    :cond_12
    :goto_b
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@165
    iget-short v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@167
    if-eq v0, v1, :cond_13

    #@169
    .line 4423
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@16b
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@16d
    .line 4424
    if-eqz p5, :cond_38

    #@16f
    const-string/jumbo v0, ",Bt="

    #@172
    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@175
    .line 4425
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@17a
    .line 4427
    :cond_13
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@17c
    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@17e
    if-eq v0, v1, :cond_14

    #@180
    .line 4428
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@182
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@184
    .line 4429
    if-eqz p5, :cond_39

    #@186
    const-string/jumbo v0, ",Bv="

    #@189
    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    .line 4430
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@18e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@191
    .line 4432
    :cond_14
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@193
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@195
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@197
    .line 4433
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@199
    if-eqz p5, :cond_3a

    #@19b
    const/4 v5, 0x0

    #@19c
    :goto_e
    move-object v0, p1

    #@19d
    .line 4432
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    #@1a0
    .line 4434
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@1a2
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1a4
    .line 4435
    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    #@1a6
    if-eqz p5, :cond_3b

    #@1a8
    const/4 v5, 0x0

    #@1a9
    .line 4434
    :goto_f
    const/4 v3, 0x0

    #@1aa
    move-object v0, p1

    #@1ab
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    #@1ae
    .line 4436
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1b0
    if-eqz v0, :cond_15

    #@1b2
    .line 4437
    if-eqz p5, :cond_3c

    #@1b4
    .line 4438
    const-string/jumbo v0, ",wr="

    #@1b7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ba
    .line 4439
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1bc
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@1be
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1c1
    .line 4448
    :cond_15
    :goto_10
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1c3
    if-eqz v0, :cond_17

    #@1c5
    .line 4449
    if-eqz p5, :cond_3d

    #@1c7
    const-string/jumbo v0, ","

    #@1ca
    :goto_11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cd
    .line 4450
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1cf
    const v1, 0x8000

    #@1d2
    and-int/2addr v0, v1

    #@1d3
    if-eqz v0, :cond_3e

    #@1d5
    .line 4451
    const-string/jumbo v0, "+"

    #@1d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1db
    .line 4455
    :cond_16
    :goto_12
    if-eqz p5, :cond_3f

    #@1dd
    sget-object v6, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    #@1df
    .line 4457
    .local v6, "eventNames":[Ljava/lang/String;
    :goto_13
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1e1
    const v1, -0xc001

    #@1e4
    and-int v7, v0, v1

    #@1e6
    .line 4459
    .local v7, "idx":I
    if-ltz v7, :cond_40

    #@1e8
    array-length v0, v6

    #@1e9
    if-ge v7, v0, :cond_40

    #@1eb
    .line 4460
    aget-object v0, v6, v7

    #@1ed
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    .line 4465
    :goto_14
    const-string/jumbo v0, "="

    #@1f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    .line 4466
    if-eqz p5, :cond_42

    #@1f8
    .line 4467
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@1fa
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@1fc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1ff
    .line 4475
    .end local v6    # "eventNames":[Ljava/lang/String;
    .end local v7    # "idx":I
    :cond_17
    :goto_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@202
    .line 4476
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@204
    if-eqz v0, :cond_1c

    #@206
    .line 4477
    if-nez p5, :cond_43

    #@208
    .line 4478
    const-string/jumbo v0, "                 Details: cpu="

    #@20b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20e
    .line 4479
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@210
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@212
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@215
    .line 4480
    const-string/jumbo v0, "u+"

    #@218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    .line 4481
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@21d
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@21f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@222
    .line 4482
    const-string/jumbo v0, "s"

    #@225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@228
    .line 4483
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@22a
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@22c
    if-ltz v0, :cond_1a

    #@22e
    .line 4484
    const-string/jumbo v0, " ("

    #@231
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@234
    .line 4485
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@236
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@238
    .line 4486
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@23a
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@23c
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@23e
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@240
    .line 4485
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@243
    .line 4487
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@245
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@247
    if-ltz v0, :cond_18

    #@249
    .line 4488
    const-string/jumbo v0, ", "

    #@24c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24f
    .line 4489
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@251
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@253
    .line 4490
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@255
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@257
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@259
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@25b
    .line 4489
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@25e
    .line 4492
    :cond_18
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@260
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@262
    if-ltz v0, :cond_19

    #@264
    .line 4493
    const-string/jumbo v0, ", "

    #@267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    .line 4494
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@26c
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@26e
    .line 4495
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@270
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@272
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@274
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@276
    .line 4494
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    #@279
    .line 4497
    :cond_19
    const/16 v0, 0x29

    #@27b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@27e
    .line 4499
    :cond_1a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@281
    .line 4500
    const-string/jumbo v0, "                          /proc/stat="

    #@284
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@287
    .line 4501
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@289
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@28b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@28e
    .line 4502
    const-string/jumbo v0, " usr, "

    #@291
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@294
    .line 4503
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@296
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@298
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@29b
    .line 4504
    const-string/jumbo v0, " sys, "

    #@29e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a1
    .line 4505
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2a3
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@2a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2a8
    .line 4506
    const-string/jumbo v0, " io, "

    #@2ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ae
    .line 4507
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2b0
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@2b2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2b5
    .line 4508
    const-string/jumbo v0, " irq, "

    #@2b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bb
    .line 4509
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2bd
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@2bf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2c2
    .line 4510
    const-string/jumbo v0, " sirq, "

    #@2c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    .line 4511
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ca
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@2cc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2cf
    .line 4512
    const-string/jumbo v0, " idle"

    #@2d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d5
    .line 4513
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2d7
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@2d9
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2db
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@2dd
    add-int/2addr v0, v1

    #@2de
    .line 4514
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2e0
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@2e2
    .line 4513
    add-int/2addr v0, v1

    #@2e3
    .line 4514
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2e5
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@2e7
    .line 4513
    add-int/2addr v0, v1

    #@2e8
    .line 4515
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2ea
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@2ec
    .line 4513
    add-int v11, v0, v1

    #@2ee
    .line 4516
    .local v11, "totalRun":I
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@2f0
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@2f2
    add-int v10, v11, v0

    #@2f4
    .line 4517
    .local v10, "total":I
    if-lez v10, :cond_1b

    #@2f6
    .line 4518
    const-string/jumbo v0, " ("

    #@2f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fc
    .line 4519
    int-to-float v0, v11

    #@2fd
    int-to-float v1, v10

    #@2fe
    div-float/2addr v0, v1

    #@2ff
    const/high16 v1, 0x42c80000    # 100.0f

    #@301
    mul-float v8, v0, v1

    #@303
    .line 4520
    .local v8, "perc":F
    const-string/jumbo v0, "%.1f%%"

    #@306
    const/4 v1, 0x1

    #@307
    new-array v1, v1, [Ljava/lang/Object;

    #@309
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@30c
    move-result-object v2

    #@30d
    const/4 v3, 0x0

    #@30e
    aput-object v2, v1, v3

    #@310
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@313
    move-result-object v0

    #@314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@317
    .line 4521
    const-string/jumbo v0, " of "

    #@31a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31d
    .line 4522
    new-instance v9, Ljava/lang/StringBuilder;

    #@31f
    const/16 v0, 0x40

    #@321
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@324
    .line 4523
    .local v9, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v0, v10, 0xa

    #@326
    int-to-long v0, v0

    #@327
    invoke-static {v9, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    #@32a
    .line 4524
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@32d
    .line 4525
    const-string/jumbo v0, ")"

    #@330
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@333
    .line 4527
    .end local v8    # "perc":F
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_1b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@336
    .line 4563
    .end local v10    # "total":I
    .end local v11    # "totalRun":I
    :cond_1c
    :goto_16
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@338
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@33a
    .line 4564
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@33c
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@33e
    goto/16 :goto_1

    #@340
    .line 4327
    :cond_1d
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@342
    const/16 v1, 0x64

    #@344
    if-ge v0, v1, :cond_d

    #@346
    const-string/jumbo v0, "0"

    #@349
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34c
    goto/16 :goto_3

    #@34e
    .line 4333
    :cond_1e
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@350
    const/16 v1, 0x100

    #@352
    if-ge v0, v1, :cond_1f

    #@354
    const-string/jumbo v0, "000000"

    #@357
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35a
    goto/16 :goto_4

    #@35c
    .line 4334
    :cond_1f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@35e
    const/16 v1, 0x1000

    #@360
    if-ge v0, v1, :cond_20

    #@362
    const-string/jumbo v0, "00000"

    #@365
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@368
    goto/16 :goto_4

    #@36a
    .line 4335
    :cond_20
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@36c
    const/high16 v1, 0x10000

    #@36e
    if-ge v0, v1, :cond_21

    #@370
    const-string/jumbo v0, "0000"

    #@373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@376
    goto/16 :goto_4

    #@378
    .line 4336
    :cond_21
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@37a
    const/high16 v1, 0x100000

    #@37c
    if-ge v0, v1, :cond_22

    #@37e
    const-string/jumbo v0, "000"

    #@381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@384
    goto/16 :goto_4

    #@386
    .line 4337
    :cond_22
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@388
    const/high16 v1, 0x1000000

    #@38a
    if-ge v0, v1, :cond_23

    #@38c
    const-string/jumbo v0, "00"

    #@38f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@392
    goto/16 :goto_4

    #@394
    .line 4338
    :cond_23
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@396
    const/high16 v1, 0x10000000

    #@398
    if-ge v0, v1, :cond_e

    #@39a
    const-string/jumbo v0, "0"

    #@39d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a0
    goto/16 :goto_4

    #@3a2
    .line 4342
    :cond_24
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@3a4
    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3a6
    if-eq v0, v1, :cond_f

    #@3a8
    .line 4343
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3aa
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@3ac
    .line 4344
    const-string/jumbo v0, ",Bl="

    #@3af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b2
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3b4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3b7
    goto/16 :goto_5

    #@3b9
    .line 4349
    :cond_25
    const-string/jumbo v0, " status="

    #@3bc
    goto/16 :goto_6

    #@3be
    .line 4352
    :pswitch_1
    if-eqz p5, :cond_26

    #@3c0
    const-string/jumbo v0, "?"

    #@3c3
    :goto_17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c6
    goto/16 :goto_7

    #@3c8
    :cond_26
    const-string/jumbo v0, "unknown"

    #@3cb
    goto :goto_17

    #@3cc
    .line 4355
    :pswitch_2
    if-eqz p5, :cond_27

    #@3ce
    const-string/jumbo v0, "c"

    #@3d1
    :goto_18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d4
    goto/16 :goto_7

    #@3d6
    :cond_27
    const-string/jumbo v0, "charging"

    #@3d9
    goto :goto_18

    #@3da
    .line 4358
    :pswitch_3
    if-eqz p5, :cond_28

    #@3dc
    const-string/jumbo v0, "d"

    #@3df
    :goto_19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e2
    goto/16 :goto_7

    #@3e4
    :cond_28
    const-string/jumbo v0, "discharging"

    #@3e7
    goto :goto_19

    #@3e8
    .line 4361
    :pswitch_4
    if-eqz p5, :cond_29

    #@3ea
    const-string/jumbo v0, "n"

    #@3ed
    :goto_1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f0
    goto/16 :goto_7

    #@3f2
    :cond_29
    const-string/jumbo v0, "not-charging"

    #@3f5
    goto :goto_1a

    #@3f6
    .line 4364
    :pswitch_5
    if-eqz p5, :cond_2a

    #@3f8
    const-string/jumbo v0, "f"

    #@3fb
    :goto_1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fe
    goto/16 :goto_7

    #@400
    :cond_2a
    const-string/jumbo v0, "full"

    #@403
    goto :goto_1b

    #@404
    .line 4373
    :cond_2b
    const-string/jumbo v0, " health="

    #@407
    goto/16 :goto_8

    #@409
    .line 4376
    :pswitch_6
    if-eqz p5, :cond_2c

    #@40b
    const-string/jumbo v0, "?"

    #@40e
    :goto_1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@411
    goto/16 :goto_9

    #@413
    :cond_2c
    const-string/jumbo v0, "unknown"

    #@416
    goto :goto_1c

    #@417
    .line 4379
    :pswitch_7
    if-eqz p5, :cond_2d

    #@419
    const-string/jumbo v0, "g"

    #@41c
    :goto_1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41f
    goto/16 :goto_9

    #@421
    :cond_2d
    const-string/jumbo v0, "good"

    #@424
    goto :goto_1d

    #@425
    .line 4382
    :pswitch_8
    if-eqz p5, :cond_2e

    #@427
    const-string/jumbo v0, "h"

    #@42a
    :goto_1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42d
    goto/16 :goto_9

    #@42f
    :cond_2e
    const-string/jumbo v0, "overheat"

    #@432
    goto :goto_1e

    #@433
    .line 4385
    :pswitch_9
    if-eqz p5, :cond_2f

    #@435
    const-string/jumbo v0, "d"

    #@438
    :goto_1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43b
    goto/16 :goto_9

    #@43d
    :cond_2f
    const-string/jumbo v0, "dead"

    #@440
    goto :goto_1f

    #@441
    .line 4388
    :pswitch_a
    if-eqz p5, :cond_30

    #@443
    const-string/jumbo v0, "v"

    #@446
    :goto_20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@449
    goto/16 :goto_9

    #@44b
    :cond_30
    const-string/jumbo v0, "over-voltage"

    #@44e
    goto :goto_20

    #@44f
    .line 4391
    :pswitch_b
    if-eqz p5, :cond_31

    #@451
    const-string/jumbo v0, "f"

    #@454
    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@457
    goto/16 :goto_9

    #@459
    :cond_31
    const-string/jumbo v0, "failure"

    #@45c
    goto :goto_21

    #@45d
    .line 4394
    :pswitch_c
    if-eqz p5, :cond_32

    #@45f
    const-string/jumbo v0, "c"

    #@462
    :goto_22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@465
    goto/16 :goto_9

    #@467
    :cond_32
    const-string/jumbo v0, "cold"

    #@46a
    goto :goto_22

    #@46b
    .line 4403
    :cond_33
    const-string/jumbo v0, " plug="

    #@46e
    goto/16 :goto_a

    #@470
    .line 4406
    :pswitch_d
    if-eqz p5, :cond_34

    #@472
    const-string/jumbo v0, "n"

    #@475
    :goto_23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@478
    goto/16 :goto_b

    #@47a
    :cond_34
    const-string/jumbo v0, "none"

    #@47d
    goto :goto_23

    #@47e
    .line 4409
    :pswitch_e
    if-eqz p5, :cond_35

    #@480
    const-string/jumbo v0, "a"

    #@483
    :goto_24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@486
    goto/16 :goto_b

    #@488
    :cond_35
    const-string/jumbo v0, "ac"

    #@48b
    goto :goto_24

    #@48c
    .line 4412
    :pswitch_f
    if-eqz p5, :cond_36

    #@48e
    const-string/jumbo v0, "u"

    #@491
    :goto_25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@494
    goto/16 :goto_b

    #@496
    :cond_36
    const-string/jumbo v0, "usb"

    #@499
    goto :goto_25

    #@49a
    .line 4415
    :pswitch_10
    if-eqz p5, :cond_37

    #@49c
    const-string/jumbo v0, "w"

    #@49f
    :goto_26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a2
    goto/16 :goto_b

    #@4a4
    :cond_37
    const-string/jumbo v0, "wireless"

    #@4a7
    goto :goto_26

    #@4a8
    .line 4424
    :cond_38
    const-string/jumbo v0, " temp="

    #@4ab
    goto/16 :goto_c

    #@4ad
    .line 4429
    :cond_39
    const-string/jumbo v0, " volt="

    #@4b0
    goto/16 :goto_d

    #@4b2
    .line 4433
    :cond_3a
    const/4 v5, 0x1

    #@4b3
    goto/16 :goto_e

    #@4b5
    .line 4435
    :cond_3b
    const/4 v5, 0x1

    #@4b6
    goto/16 :goto_f

    #@4b8
    .line 4441
    :cond_3c
    const-string/jumbo v0, " wake_reason="

    #@4bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4be
    .line 4442
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@4c0
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@4c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@4c5
    .line 4443
    const-string/jumbo v0, ":\""

    #@4c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cb
    .line 4444
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@4cd
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4cf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d2
    .line 4445
    const-string/jumbo v0, "\""

    #@4d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d8
    goto/16 :goto_10

    #@4da
    .line 4449
    :cond_3d
    const-string/jumbo v0, " "

    #@4dd
    goto/16 :goto_11

    #@4df
    .line 4452
    :cond_3e
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@4e1
    and-int/lit16 v0, v0, 0x4000

    #@4e3
    if-eqz v0, :cond_16

    #@4e5
    .line 4453
    const-string/jumbo v0, "-"

    #@4e8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4eb
    goto/16 :goto_12

    #@4ed
    .line 4456
    :cond_3f
    sget-object v6, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    #@4ef
    .restart local v6    # "eventNames":[Ljava/lang/String;
    goto/16 :goto_13

    #@4f1
    .line 4462
    .restart local v7    # "idx":I
    :cond_40
    if-eqz p5, :cond_41

    #@4f3
    const-string/jumbo v0, "Ev"

    #@4f6
    :goto_27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f9
    .line 4463
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    #@4fc
    goto/16 :goto_14

    #@4fe
    .line 4462
    :cond_41
    const-string/jumbo v0, "event"

    #@501
    goto :goto_27

    #@502
    .line 4469
    :cond_42
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@504
    iget v0, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@506
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@509
    .line 4470
    const-string/jumbo v0, ":\""

    #@50c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50f
    .line 4471
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@511
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@513
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@516
    .line 4472
    const-string/jumbo v0, "\""

    #@519
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51c
    goto/16 :goto_15

    #@51e
    .line 4529
    .end local v6    # "eventNames":[Ljava/lang/String;
    .end local v7    # "idx":I
    :cond_43
    const/16 v0, 0x9

    #@520
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@523
    const/16 v0, 0x2c

    #@525
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@528
    .line 4530
    const-string/jumbo v0, "h"

    #@52b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52e
    const-string/jumbo v0, ",0,Dcpu="

    #@531
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@534
    .line 4531
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@536
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@538
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@53b
    .line 4532
    const-string/jumbo v0, ":"

    #@53e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@541
    .line 4533
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@543
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@548
    .line 4534
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@54a
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@54c
    if-ltz v0, :cond_45

    #@54e
    .line 4535
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@550
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@552
    .line 4536
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@554
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@556
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@558
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@55a
    .line 4535
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@55d
    .line 4537
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@55f
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@561
    if-ltz v0, :cond_44

    #@563
    .line 4538
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@565
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@567
    .line 4539
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@569
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@56b
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@56d
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@56f
    .line 4538
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@572
    .line 4541
    :cond_44
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@574
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@576
    if-ltz v0, :cond_45

    #@578
    .line 4542
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@57a
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@57c
    .line 4543
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@57e
    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@580
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@582
    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@584
    .line 4542
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    #@587
    .line 4546
    :cond_45
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@58a
    .line 4547
    const/16 v0, 0x9

    #@58c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@58f
    const/16 v0, 0x2c

    #@591
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@594
    .line 4548
    const-string/jumbo v0, "h"

    #@597
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59a
    const-string/jumbo v0, ",0,Dpst="

    #@59d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a0
    .line 4549
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5a2
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@5a4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5a7
    .line 4550
    const/16 v0, 0x2c

    #@5a9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5ac
    .line 4551
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5ae
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@5b0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5b3
    .line 4552
    const/16 v0, 0x2c

    #@5b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5b8
    .line 4553
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5ba
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@5bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5bf
    .line 4554
    const/16 v0, 0x2c

    #@5c1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5c4
    .line 4555
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5c6
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@5c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5cb
    .line 4556
    const/16 v0, 0x2c

    #@5cd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5d0
    .line 4557
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5d2
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@5d4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5d7
    .line 4558
    const/16 v0, 0x2c

    #@5d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@5dc
    .line 4559
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@5de
    iget v0, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@5e0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5e3
    .line 4560
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@5e6
    goto/16 :goto_16

    #@5e8
    .line 4350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@5f6
    .line 4374
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

    #@608
    .line 4404
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
    .line 4264
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    #@4
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    #@6
    .line 4265
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    #@8
    .line 4266
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    #@a
    .line 4267
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    #@c
    .line 4268
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    #@e
    .line 4269
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    #@10
    .line 4270
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    #@12
    .line 4263
    return-void
.end method
