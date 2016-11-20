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
.field private final mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V
    .locals 0
    .param p1, "id"    # Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    #@5
    .line 326
    return-void
.end method

.method public static ofOneNumber(I)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .locals 5
    .param p0, "number"    # I

    #@0
    .prologue
    .line 322
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    #@2
    .line 323
    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    invoke-direct {v1, v2, v3, p0, v4}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    #@a
    .line 322
    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    #@d
    return-object v0
.end method

.method public static ofTwoNumbers(II)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .locals 4
    .param p0, "majorNumber"    # I
    .param p1, "minorNumber"    # I

    #@0
    .prologue
    .line 317
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    #@2
    .line 318
    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    #@4
    const/4 v2, 0x2

    #@5
    const/4 v3, 0x0

    #@6
    invoke-direct {v1, v2, p0, p1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    #@9
    .line 317
    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    #@c
    return-object v0
.end method


# virtual methods
.method public toByteArray([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 332
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    #@3
    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->-wrap0(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I

    #@6
    .line 334
    add-int/lit8 v0, p2, 0x4

    #@8
    aput-byte v1, p1, v0

    #@a
    .line 335
    add-int/lit8 v0, p2, 0x5

    #@c
    aput-byte v1, p1, v0

    #@e
    .line 336
    const/4 v0, 0x6

    #@f
    return v0
.end method
