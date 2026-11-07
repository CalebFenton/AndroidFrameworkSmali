.class Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeUnit"
.end annotation


# instance fields
.field final greylist-max-o mHour:I

.field final greylist-max-o mMinute:I


# direct methods
.method constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 196
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    .line 197
    return-void
.end method

.method static greylist-max-o toBcdByte(I)B
    .registers 4
    .param p0, "value"    # I

    .line 206
    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v0, v0, 0xa

    .line 207
    .local v0, "digitOfTen":I
    rem-int/lit8 v1, p0, 0xa

    .line 208
    .local v1, "digitOfOne":I
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    int-to-byte v2, v2

    return v2
.end method


# virtual methods
.method greylist-max-o toByteArray([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 200
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v0

    aput-byte v0, p1, p2

    .line 201
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    move-result v1

    aput-byte v1, p1, v0

    .line 202
    const/4 v0, 0x2

    return v0
.end method
