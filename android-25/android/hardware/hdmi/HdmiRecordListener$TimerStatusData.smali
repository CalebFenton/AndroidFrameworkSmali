.class public Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerStatusData"
.end annotation


# instance fields
.field private mDurationHour:I

.field private mDurationMinute:I

.field private mExtraError:I

.field private mMediaInfo:I

.field private mNotProgrammedError:I

.field private mOverlapped:Z

.field private mProgrammed:Z

.field private mProgrammedInfo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static bcdByteToInt(B)I
    .locals 1
    .param p0, "value"    # B

    #@0
    .prologue
    .line 109
    shr-int/lit8 v0, p0, 0x4

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    mul-int/lit8 v0, v0, 0xa

    #@6
    add-int/2addr v0, p0

    #@7
    and-int/lit8 v0, v0, 0xf

    #@9
    return v0
.end method

.method static parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    .locals 4
    .param p0, "result"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 83
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    #@4
    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;-><init>()V

    #@7
    .line 85
    .local v0, "data":Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    shr-int/lit8 v1, p0, 0x1f

    #@9
    and-int/lit8 v1, v1, 0x1

    #@b
    if-eqz v1, :cond_0

    #@d
    move v1, v2

    #@e
    :goto_0
    iput-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    #@10
    .line 87
    shr-int/lit8 v1, p0, 0x1d

    #@12
    and-int/lit8 v1, v1, 0x3

    #@14
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    #@16
    .line 89
    shr-int/lit8 v1, p0, 0x1c

    #@18
    and-int/lit8 v1, v1, 0x1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    :goto_1
    iput-boolean v2, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    #@1e
    .line 90
    iget-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 91
    shr-int/lit8 v1, p0, 0x18

    #@24
    and-int/lit8 v1, v1, 0xf

    #@26
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    #@28
    .line 92
    shr-int/lit8 v1, p0, 0x10

    #@2a
    and-int/lit16 v1, v1, 0xff

    #@2c
    int-to-byte v1, v1

    #@2d
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    #@30
    move-result v1

    #@31
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    #@33
    .line 93
    shr-int/lit8 v1, p0, 0x8

    #@35
    and-int/lit16 v1, v1, 0xff

    #@37
    int-to-byte v1, v1

    #@38
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    #@3b
    move-result v1

    #@3c
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    #@3e
    .line 102
    :goto_2
    and-int/lit16 v1, p0, 0xff

    #@40
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    #@42
    .line 103
    return-object v0

    #@43
    :cond_0
    move v1, v3

    #@44
    .line 85
    goto :goto_0

    #@45
    :cond_1
    move v2, v3

    #@46
    .line 89
    goto :goto_1

    #@47
    .line 96
    :cond_2
    shr-int/lit8 v1, p0, 0x18

    #@49
    and-int/lit8 v1, v1, 0xf

    #@4b
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    #@4d
    .line 97
    shr-int/lit8 v1, p0, 0x10

    #@4f
    and-int/lit16 v1, v1, 0xff

    #@51
    int-to-byte v1, v1

    #@52
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    #@55
    move-result v1

    #@56
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    #@58
    .line 98
    shr-int/lit8 v1, p0, 0x8

    #@5a
    and-int/lit16 v1, v1, 0xff

    #@5c
    int-to-byte v1, v1

    #@5d
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    #@60
    move-result v1

    #@61
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    #@63
    goto :goto_2
.end method


# virtual methods
.method public getDurationHour()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    #@2
    return v0
.end method

.method public getDurationMinute()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    #@2
    return v0
.end method

.method public getExtraError()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    #@2
    return v0
.end method

.method public getMediaInfo()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    #@2
    return v0
.end method

.method public getNotProgammedError()I
    .locals 2

    #@0
    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 189
    const-string/jumbo v1, "Has no not-programmed error. Call getProgrammedInfo() instead."

    #@b
    .line 188
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 191
    :cond_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    #@11
    return v0
.end method

.method public getProgrammedInfo()I
    .locals 2

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 161
    const-string/jumbo v1, "No programmed info. Call getNotProgammedError() instead."

    #@b
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 163
    :cond_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    #@11
    return v0
.end method

.method public isOverlapped()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    #@2
    return v0
.end method

.method public isProgrammed()Z
    .locals 1

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    #@2
    return v0
.end method
