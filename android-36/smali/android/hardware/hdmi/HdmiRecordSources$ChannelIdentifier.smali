.class final Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChannelIdentifier"
.end annotation


# instance fields
.field private final greylist-max-o mChannelNumberFormat:I

.field private final greylist-max-o mMajorChannelNumber:I

.field private final greylist-max-o mMinorChannelNumber:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->toByteArray([BI)I

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "majorNumber"    # I
    .param p3, "minorNumer"    # I

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mChannelNumberFormat:I

    .line 286
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    .line 287
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMinorChannelNumber:I

    .line 288
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/hardware/hdmi/HdmiRecordSources-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(III)V

    return-void
.end method

.method private greylist-max-o toByteArray([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 292
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mChannelNumberFormat:I

    shl-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 293
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 295
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMinorChannelNumber:I

    int-to-short v0, v0

    add-int/lit8 v1, p2, 0x2

    invoke-static {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->-$$Nest$smshortToByteArray(S[BI)I

    .line 296
    const/4 v0, 0x4

    return v0
.end method
