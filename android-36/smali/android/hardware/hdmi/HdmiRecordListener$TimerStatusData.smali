.class public Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerStatusData"
.end annotation


# instance fields
.field private greylist-max-o mDurationHour:I

.field private greylist-max-o mDurationMinute:I

.field private greylist-max-o mExtraError:I

.field private greylist-max-o mMediaInfo:I

.field private greylist-max-o mNotProgrammedError:I

.field private greylist-max-o mOverlapped:Z

.field private greylist-max-o mProgrammed:Z

.field private greylist-max-o mProgrammedInfo:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o bcdByteToInt(B)I
    .registers 2
    .param p0, "value"    # B

    .line 109
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method static greylist-max-o parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    .registers 5
    .param p0, "result"    # I

    .line 83
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;-><init>()V

    .line 85
    .local v0, "data":Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    shr-int/lit8 v1, p0, 0x1f

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    iput-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    .line 87
    shr-int/lit8 v1, p0, 0x1d

    and-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    .line 89
    shr-int/lit8 v1, p0, 0x1c

    and-int/2addr v1, v2

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    iput-boolean v2, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    .line 90
    iget-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    if-eqz v1, :cond_41

    .line 91
    shr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    .line 92
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 93
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    goto :goto_5d

    .line 96
    :cond_41
    shr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    .line 97
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 98
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    .line 102
    :goto_5d
    and-int/lit16 v1, p0, 0xff

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    .line 103
    return-object v0
.end method


# virtual methods
.method public whitelist getDurationHour()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    return v0
.end method

.method public whitelist getDurationMinute()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    return v0
.end method

.method public whitelist getExtraError()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    return v0
.end method

.method public whitelist getMediaInfo()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    return v0
.end method

.method public whitelist getNotProgammedError()I
    .registers 3

    .line 187
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 191
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    return v0

    .line 188
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Has no not-programmed error. Call getProgrammedInfo() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProgrammedInfo()I
    .registers 3

    .line 159
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    return v0

    .line 160
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No programmed info. Call getNotProgammedError() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isOverlapped()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    return v0
.end method

.method public whitelist isProgrammed()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    return v0
.end method
