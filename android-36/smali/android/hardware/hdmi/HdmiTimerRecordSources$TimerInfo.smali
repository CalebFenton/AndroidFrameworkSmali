.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerInfo"
.end annotation


# static fields
.field private static final greylist-max-o BASIC_INFO_SIZE:I = 0x7

.field private static final greylist-max-o DAY_OF_MONTH_SIZE:I = 0x1

.field private static final greylist-max-o DURATION_SIZE:I = 0x2

.field private static final greylist-max-o MONTH_OF_YEAR_SIZE:I = 0x1

.field private static final greylist-max-o RECORDING_SEQUENCE_SIZE:I = 0x1

.field private static final greylist-max-o START_TIME_SIZE:I = 0x2


# instance fields
.field private final greylist-max-o mDayOfMonth:I

.field private final greylist-max-o mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

.field private final greylist-max-o mMonthOfYear:I

.field private final greylist-max-o mRecordingSequence:I

.field private final greylist-max-o mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;


# direct methods
.method private constructor greylist-max-o <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)V
    .registers 6
    .param p1, "dayOfMonth"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "startTime"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p4, "duration"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p5, "recordingSequence"    # I

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDayOfMonth:I

    .line 339
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mMonthOfYear:I

    .line 340
    iput-object p3, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    .line 341
    iput-object p4, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    .line 342
    iput p5, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mRecordingSequence:I

    .line 343
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)V

    return-void
.end method


# virtual methods
.method greylist-max-o getDataSize()I
    .registers 2

    .line 362
    const/4 v0, 0x7

    return v0
.end method

.method greylist-max-o toByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 347
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDayOfMonth:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 348
    add-int/lit8 p2, p2, 0x1

    .line 350
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mMonthOfYear:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 351
    add-int/lit8 p2, p2, 0x1

    .line 353
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->toByteArray([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 354
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->toByteArray([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 357
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mRecordingSequence:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 358
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->getDataSize()I

    move-result v0

    return v0
.end method
