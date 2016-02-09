.class public Landroid/hardware/hdmi/HdmiTimerRecordSources;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;,
        Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;
    }
.end annotation


# static fields
.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PLUG:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_FRIDAY:I = 0x20

.field private static final RECORDING_SEQUENCE_REPEAT_MASK:I = 0x7f

.field public static final RECORDING_SEQUENCE_REPEAT_MONDAY:I = 0x2

.field public static final RECORDING_SEQUENCE_REPEAT_ONCE_ONLY:I = 0x0

.field public static final RECORDING_SEQUENCE_REPEAT_SATUREDAY:I = 0x40

.field public static final RECORDING_SEQUENCE_REPEAT_SUNDAY:I = 0x1

.field public static final RECORDING_SEQUENCE_REPEAT_THURSDAY:I = 0x10

.field public static final RECORDING_SEQUENCE_REPEAT_TUESDAY:I = 0x4

.field public static final RECORDING_SEQUENCE_REPEAT_WEDNESDAY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HdmiTimerRecordingSources"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkDurationValue(II)V
    .locals 3
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 178
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x63

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Hour should be in rage of [0, 99]:"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 181
    :cond_1
    if-ltz p1, :cond_2

    #@22
    const/16 v0, 0x3b

    #@24
    if-le p1, v0, :cond_3

    #@26
    .line 182
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "minute should be in rage of [0, 59]:"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 177
    :cond_3
    return-void
.end method

.method private static checkTimeValue(II)V
    .locals 3
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 156
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x17

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Hour should be in rage of [0, 23]:"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 159
    :cond_1
    if-ltz p1, :cond_2

    #@22
    const/16 v0, 0x3b

    #@24
    if-le p1, v0, :cond_3

    #@26
    .line 160
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Minute should be in rage of [0, 59]:"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 155
    :cond_3
    return-void
.end method

.method public static checkTimerRecordSource(I[B)Z
    .locals 7
    .param p0, "sourcetype"    # I
    .param p1, "recordSource"    # [B

    #@0
    .prologue
    const/4 v6, 0x7

    #@1
    const/4 v5, 0x4

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 441
    array-length v4, p1

    #@5
    add-int/lit8 v0, v4, -0x7

    #@7
    .line 442
    .local v0, "recordSourceSize":I
    packed-switch p0, :pswitch_data_0

    #@a
    .line 460
    return v3

    #@b
    .line 444
    :pswitch_0
    if-ne v6, v0, :cond_0

    #@d
    :goto_0
    return v2

    #@e
    :cond_0
    move v2, v3

    #@f
    goto :goto_0

    #@10
    .line 446
    :pswitch_1
    if-ne v5, v0, :cond_1

    #@12
    :goto_1
    return v2

    #@13
    :cond_1
    move v2, v3

    #@14
    goto :goto_1

    #@15
    .line 448
    :pswitch_2
    aget-byte v1, p1, v6

    #@17
    .line 449
    .local v1, "specifier":I
    if-ne v1, v5, :cond_3

    #@19
    .line 451
    const/4 v4, 0x2

    #@1a
    if-ne v4, v0, :cond_2

    #@1c
    :goto_2
    return v2

    #@1d
    :cond_2
    move v2, v3

    #@1e
    goto :goto_2

    #@1f
    .line 452
    :cond_3
    const/4 v4, 0x5

    #@20
    if-ne v1, v4, :cond_5

    #@22
    .line 454
    const/4 v4, 0x3

    #@23
    if-ne v4, v0, :cond_4

    #@25
    :goto_3
    return v2

    #@26
    :cond_4
    move v2, v3

    #@27
    goto :goto_3

    #@28
    .line 457
    :cond_5
    return v3

    #@29
    .line 442
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .locals 2
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    #@0
    .prologue
    .line 132
    if-nez p0, :cond_0

    #@2
    .line 133
    const-string/jumbo v0, "HdmiTimerRecordingSources"

    #@5
    const-string/jumbo v1, "TimerInfo should not be null."

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "TimerInfo should not be null."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 136
    :cond_0
    if-nez p1, :cond_1

    #@16
    .line 137
    const-string/jumbo v0, "HdmiTimerRecordingSources"

    #@19
    const-string/jumbo v1, "source should not be null."

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "source should not be null."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 131
    :cond_1
    return-void
.end method

.method public static durationOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .locals 2
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 173
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    #@3
    .line 174
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Duration;)V

    #@9
    return-object v0
.end method

.method public static ofAnalogueSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 2
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;

    #@0
    .prologue
    .line 95
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    #@3
    .line 96
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    #@9
    return-object v0
.end method

.method public static ofDigitalSource(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 2
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    #@0
    .prologue
    .line 80
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    #@3
    .line 81
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    #@9
    return-object v0
.end method

.method public static ofExternalPhysicalAddress(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 4
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 125
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    #@4
    .line 126
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    #@6
    .line 127
    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    #@8
    .line 128
    const/4 v2, 0x5

    #@9
    .line 127
    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;)V

    #@c
    .line 126
    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    #@f
    return-object v0
.end method

.method public static ofExternalPlug(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
    .locals 4
    .param p0, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p1, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 109
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSourceInputs(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    #@4
    .line 110
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    #@6
    .line 111
    new-instance v1, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;

    #@8
    const/4 v2, 0x4

    #@9
    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;)V

    #@c
    .line 110
    invoke-direct {v0, p0, v1, v3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V

    #@f
    return-object v0
.end method

.method public static timeOf(II)Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .locals 2
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 151
    invoke-static {p0, p1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    #@3
    .line 152
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;)V

    #@9
    return-object v0
.end method

.method public static timerInfoOf(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .locals 7
    .param p0, "dayOfMonth"    # I
    .param p1, "monthOfYear"    # I
    .param p2, "startTime"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p3, "duration"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p4, "recordingSequence"    # I

    #@0
    .prologue
    .line 274
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0x1f

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Day of month should be in range of [0, 31]:"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 275
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 278
    :cond_1
    const/4 v0, 0x1

    #@21
    if-lt p1, v0, :cond_2

    #@23
    const/16 v0, 0xc

    #@25
    if-le p1, v0, :cond_3

    #@27
    .line 279
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "Month of year should be in range of [1, 12]:"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 282
    :cond_3
    iget v0, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->mHour:I

    #@43
    iget v1, p2, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->mMinute:I

    #@45
    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimeValue(II)V

    #@48
    .line 283
    iget v0, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->mHour:I

    #@4a
    iget v1, p3, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->mMinute:I

    #@4c
    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkDurationValue(II)V

    #@4f
    .line 285
    if-eqz p4, :cond_4

    #@51
    .line 286
    and-int/lit8 v0, p4, -0x80

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@57
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "Invalid reecording sequence value:"

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0

    #@6f
    .line 291
    :cond_4
    new-instance v0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    #@71
    const/4 v6, 0x0

    #@72
    move v1, p0

    #@73
    move v2, p1

    #@74
    move-object v3, p2

    #@75
    move-object v4, p3

    #@76
    move v5, p4

    #@77
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;)V

    #@7a
    return-object v0
.end method
