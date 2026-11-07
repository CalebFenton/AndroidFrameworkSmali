.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DigitalChannelData"
.end annotation


# instance fields
.field private final greylist-max-o mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V
    .registers 2
    .param p1, "id"    # Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    .line 328
    return-void
.end method

.method public static greylist-max-o ofOneNumber(I)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .registers 6
    .param p0, "number"    # I

    .line 322
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, p0, v3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources-IA;)V

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    return-object v0
.end method

.method public static greylist-max-o ofTwoNumbers(II)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .registers 6
    .param p0, "majorNumber"    # I
    .param p1, "minorNumber"    # I

    .line 317
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources-IA;)V

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o toByteArray([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 332
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->-$$Nest$mtoByteArray(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I

    .line 334
    add-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 335
    add-int/lit8 v0, p2, 0x5

    aput-byte v1, p1, v0

    .line 336
    const/4 v0, 0x6

    return v0
.end method
