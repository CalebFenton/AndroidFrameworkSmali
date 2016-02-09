.class Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSourceDecorator"
.end annotation


# instance fields
.field private final mExternalSourceSpecifier:I

.field private final mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;I)V
    .locals 2
    .param p1, "recordSource"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    .param p2, "externalSourceSpecifier"    # I

    #@0
    .prologue
    .line 420
    iget v0, p1, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    #@c
    .line 421
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    #@e
    .line 422
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mExternalSourceSpecifier:I

    #@10
    .line 418
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;)V
    .locals 0
    .param p1, "recordSource"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    .param p2, "externalSourceSpecifier"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;I)V

    #@3
    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 427
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mExternalSourceSpecifier:I

    #@3
    int-to-byte v0, v0

    #@4
    aput-byte v0, p1, p2

    #@6
    .line 428
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    #@8
    add-int/lit8 v1, p2, 0x1

    #@a
    invoke-virtual {v0, v2, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    #@d
    .line 429
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->getDataSize(Z)I

    #@10
    move-result v0

    #@11
    return v0
.end method
