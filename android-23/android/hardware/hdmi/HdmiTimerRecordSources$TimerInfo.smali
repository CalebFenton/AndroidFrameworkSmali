.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerInfo"
.end annotation


# static fields
.field private static final BASIC_INFO_SIZE:I = 0x7

.field private static final DAY_OF_MONTH_SIZE:I = 0x1

.field private static final DURATION_SIZE:I = 0x2

.field private static final MONTH_OF_YEAR_SIZE:I = 0x1

.field private static final RECORDING_SEQUENCE_SIZE:I = 0x1

.field private static final START_TIME_SIZE:I = 0x2


# instance fields
.field private final mDayOfMonth:I

.field private final mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

.field private final mMonthOfYear:I

.field private final mRecordingSequence:I

.field private final mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;


# direct methods
.method private constructor <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)V
    .locals 0
    .param p1, "dayOfMonth"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "startTime"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p4, "duration"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p5, "recordingSequence"    # I

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 339
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDayOfMonth:I

    #@5
    .line 340
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mMonthOfYear:I

    #@7
    .line 341
    iput-object p3, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    #@9
    .line 342
    iput-object p4, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    #@b
    .line 343
    iput p5, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mRecordingSequence:I

    #@d
    .line 338
    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;)V
    .locals 0
    .param p1, "dayOfMonth"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "startTime"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p4, "duration"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p5, "recordingSequence"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)V

    #@3
    return-void
.end method


# virtual methods
.method getDataSize()I
    .locals 1

    #@0
    .prologue
    .line 363
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method toByteArray([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 348
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDayOfMonth:I

    #@2
    int-to-byte v0, v0

    #@3
    aput-byte v0, p1, p2

    #@5
    .line 349
    add-int/lit8 p2, p2, 0x1

    #@7
    .line 351
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mMonthOfYear:I

    #@9
    int-to-byte v0, v0

    #@a
    aput-byte v0, p1, p2

    #@c
    .line 352
    add-int/lit8 p2, p2, 0x1

    #@e
    .line 354
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    #@10
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->toByteArray([BI)I

    #@13
    move-result v0

    #@14
    add-int/2addr p2, v0

    #@15
    .line 355
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->toByteArray([BI)I

    #@1a
    move-result v0

    #@1b
    add-int/2addr p2, v0

    #@1c
    .line 358
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mRecordingSequence:I

    #@1e
    int-to-byte v0, v0

    #@1f
    aput-byte v0, p1, p2

    #@21
    .line 359
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->getDataSize()I

    #@24
    move-result v0

    #@25
    return v0
.end method
