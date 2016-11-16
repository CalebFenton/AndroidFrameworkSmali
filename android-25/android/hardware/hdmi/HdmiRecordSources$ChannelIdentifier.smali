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
.field private final mChannelNumberFormat:I

.field private final mMajorChannelNumber:I

.field private final mMinorChannelNumber:I


# direct methods
.method static synthetic -wrap0(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->toByteArray([BI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "majorNumber"    # I
    .param p3, "minorNumer"    # I

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 285
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mChannelNumberFormat:I

    #@5
    .line 286
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    #@7
    .line 287
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMinorChannelNumber:I

    #@9
    .line 284
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "majorNumber"    # I
    .param p3, "minorNumer"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(III)V

    #@3
    return-void
.end method

.method private toByteArray([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 292
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mChannelNumberFormat:I

    #@2
    shl-int/lit8 v0, v0, 0x2

    #@4
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    #@6
    ushr-int/lit8 v1, v1, 0x8

    #@8
    and-int/lit8 v1, v1, 0x3

    #@a
    or-int/2addr v0, v1

    #@b
    int-to-byte v0, v0

    #@c
    aput-byte v0, p1, p2

    #@e
    .line 293
    add-int/lit8 v0, p2, 0x1

    #@10
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    #@12
    and-int/lit16 v1, v1, 0xff

    #@14
    int-to-byte v1, v1

    #@15
    aput-byte v1, p1, v0

    #@17
    .line 295
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMinorChannelNumber:I

    #@19
    int-to-short v0, v0

    #@1a
    add-int/lit8 v1, p2, 0x2

    #@1c
    invoke-static {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->-wrap0(S[BI)I

    #@1f
    .line 296
    const/4 v0, 0x4

    #@20
    return v0
.end method
