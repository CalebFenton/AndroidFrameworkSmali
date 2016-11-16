.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPhysicalAddress"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x2


# instance fields
.field private final mPhysicalAddress:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 727
    const/4 v0, 0x5

    #@1
    const/4 v1, 0x2

    #@2
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    #@5
    .line 728
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    #@7
    .line 726
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;)V
    .locals 0
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 733
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    #@2
    int-to-short v0, v0

    #@3
    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->-wrap0(S[BI)I

    #@6
    .line 734
    const/4 v0, 0x2

    #@7
    return v0
.end method
